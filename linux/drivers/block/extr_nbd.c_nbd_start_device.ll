; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_nbd.c_nbd_start_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_nbd.c_nbd_start_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nbd_device = type { i32, i32, %struct.TYPE_8__, i32, i64, i32, %struct.nbd_config* }
%struct.TYPE_8__ = type { i64 }
%struct.nbd_config = type { i32, i32, i32, %struct.TYPE_6__**, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64 }
%struct.recv_thread_args = type { i32, i32, %struct.nbd_device* }

@EBUSY = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@NBD_FLAG_CAN_MULTI_CONN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [58 x i8] c"server does not support multiple connections per device.\0A\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"knbd%d-recv\00", align 1
@WQ_MEM_RECLAIM = common dso_local global i32 0, align 4
@WQ_HIGHPRI = common dso_local global i32 0, align 4
@WQ_UNBOUND = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [42 x i8] c"Could not allocate knbd recv work queue.\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@current = common dso_local global i64 0, align 8
@pid_attr = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [28 x i8] c"device_create_file failed!\0A\00", align 1
@NBD_RT_HAS_PID_FILE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@recv_work = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nbd_device*)* @nbd_start_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nbd_start_device(%struct.nbd_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nbd_device*, align 8
  %4 = alloca %struct.nbd_config*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.recv_thread_args*, align 8
  store %struct.nbd_device* %0, %struct.nbd_device** %3, align 8
  %9 = load %struct.nbd_device*, %struct.nbd_device** %3, align 8
  %10 = getelementptr inbounds %struct.nbd_device, %struct.nbd_device* %9, i32 0, i32 6
  %11 = load %struct.nbd_config*, %struct.nbd_config** %10, align 8
  store %struct.nbd_config* %11, %struct.nbd_config** %4, align 8
  %12 = load %struct.nbd_config*, %struct.nbd_config** %4, align 8
  %13 = getelementptr inbounds %struct.nbd_config, %struct.nbd_config* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %15 = load %struct.nbd_device*, %struct.nbd_device** %3, align 8
  %16 = getelementptr inbounds %struct.nbd_device, %struct.nbd_device* %15, i32 0, i32 4
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %1
  %20 = load i32, i32* @EBUSY, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %184

22:                                               ; preds = %1
  %23 = load %struct.nbd_config*, %struct.nbd_config** %4, align 8
  %24 = getelementptr inbounds %struct.nbd_config, %struct.nbd_config* %23, i32 0, i32 3
  %25 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %24, align 8
  %26 = icmp ne %struct.TYPE_6__** %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %22
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %2, align 4
  br label %184

30:                                               ; preds = %22
  %31 = load i32, i32* %5, align 4
  %32 = icmp sgt i32 %31, 1
  br i1 %32, label %33, label %48

33:                                               ; preds = %30
  %34 = load %struct.nbd_config*, %struct.nbd_config** %4, align 8
  %35 = getelementptr inbounds %struct.nbd_config, %struct.nbd_config* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @NBD_FLAG_CAN_MULTI_CONN, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %48, label %40

40:                                               ; preds = %33
  %41 = load %struct.nbd_device*, %struct.nbd_device** %3, align 8
  %42 = getelementptr inbounds %struct.nbd_device, %struct.nbd_device* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @disk_to_dev(i32 %43)
  %45 = call i32 @dev_err(i32 %44, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0))
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %2, align 4
  br label %184

48:                                               ; preds = %33, %30
  %49 = load i32, i32* @WQ_MEM_RECLAIM, align 4
  %50 = load i32, i32* @WQ_HIGHPRI, align 4
  %51 = or i32 %49, %50
  %52 = load i32, i32* @WQ_UNBOUND, align 4
  %53 = or i32 %51, %52
  %54 = load %struct.nbd_device*, %struct.nbd_device** %3, align 8
  %55 = getelementptr inbounds %struct.nbd_device, %struct.nbd_device* %54, i32 0, i32 5
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @alloc_workqueue(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %53, i32 0, i32 %56)
  %58 = load %struct.nbd_device*, %struct.nbd_device** %3, align 8
  %59 = getelementptr inbounds %struct.nbd_device, %struct.nbd_device* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 8
  %60 = load %struct.nbd_device*, %struct.nbd_device** %3, align 8
  %61 = getelementptr inbounds %struct.nbd_device, %struct.nbd_device* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %72, label %64

64:                                               ; preds = %48
  %65 = load %struct.nbd_device*, %struct.nbd_device** %3, align 8
  %66 = getelementptr inbounds %struct.nbd_device, %struct.nbd_device* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @disk_to_dev(i32 %67)
  %69 = call i32 @dev_err(i32 %68, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0))
  %70 = load i32, i32* @ENOMEM, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %2, align 4
  br label %184

72:                                               ; preds = %48
  %73 = load %struct.nbd_device*, %struct.nbd_device** %3, align 8
  %74 = getelementptr inbounds %struct.nbd_device, %struct.nbd_device* %73, i32 0, i32 2
  %75 = load %struct.nbd_config*, %struct.nbd_config** %4, align 8
  %76 = getelementptr inbounds %struct.nbd_config, %struct.nbd_config* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @blk_mq_update_nr_hw_queues(%struct.TYPE_8__* %74, i32 %77)
  %79 = load i64, i64* @current, align 8
  %80 = load %struct.nbd_device*, %struct.nbd_device** %3, align 8
  %81 = getelementptr inbounds %struct.nbd_device, %struct.nbd_device* %80, i32 0, i32 4
  store i64 %79, i64* %81, align 8
  %82 = load %struct.nbd_device*, %struct.nbd_device** %3, align 8
  %83 = call i32 @nbd_parse_flags(%struct.nbd_device* %82)
  %84 = load %struct.nbd_device*, %struct.nbd_device** %3, align 8
  %85 = getelementptr inbounds %struct.nbd_device, %struct.nbd_device* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @disk_to_dev(i32 %86)
  %88 = call i32 @device_create_file(i32 %87, i32* @pid_attr)
  store i32 %88, i32* %6, align 4
  %89 = load i32, i32* %6, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %98

91:                                               ; preds = %72
  %92 = load %struct.nbd_device*, %struct.nbd_device** %3, align 8
  %93 = getelementptr inbounds %struct.nbd_device, %struct.nbd_device* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @disk_to_dev(i32 %94)
  %96 = call i32 @dev_err(i32 %95, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  %97 = load i32, i32* %6, align 4
  store i32 %97, i32* %2, align 4
  br label %184

98:                                               ; preds = %72
  %99 = load i32, i32* @NBD_RT_HAS_PID_FILE, align 4
  %100 = load %struct.nbd_config*, %struct.nbd_config** %4, align 8
  %101 = getelementptr inbounds %struct.nbd_config, %struct.nbd_config* %100, i32 0, i32 4
  %102 = call i32 @set_bit(i32 %99, i32* %101)
  %103 = load %struct.nbd_device*, %struct.nbd_device** %3, align 8
  %104 = call i32 @nbd_dev_dbg_init(%struct.nbd_device* %103)
  store i32 0, i32* %7, align 4
  br label %105

105:                                              ; preds = %177, %98
  %106 = load i32, i32* %7, align 4
  %107 = load i32, i32* %5, align 4
  %108 = icmp slt i32 %106, %107
  br i1 %108, label %109, label %180

109:                                              ; preds = %105
  %110 = load i32, i32* @GFP_KERNEL, align 4
  %111 = call %struct.recv_thread_args* @kzalloc(i32 16, i32 %110)
  store %struct.recv_thread_args* %111, %struct.recv_thread_args** %8, align 8
  %112 = load %struct.recv_thread_args*, %struct.recv_thread_args** %8, align 8
  %113 = icmp ne %struct.recv_thread_args* %112, null
  br i1 %113, label %119, label %114

114:                                              ; preds = %109
  %115 = load %struct.nbd_device*, %struct.nbd_device** %3, align 8
  %116 = call i32 @sock_shutdown(%struct.nbd_device* %115)
  %117 = load i32, i32* @ENOMEM, align 4
  %118 = sub nsw i32 0, %117
  store i32 %118, i32* %2, align 4
  br label %184

119:                                              ; preds = %109
  %120 = load %struct.nbd_config*, %struct.nbd_config** %4, align 8
  %121 = getelementptr inbounds %struct.nbd_config, %struct.nbd_config* %120, i32 0, i32 3
  %122 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %121, align 8
  %123 = load i32, i32* %7, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %122, i64 %124
  %126 = load %struct.TYPE_6__*, %struct.TYPE_6__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i32 0, i32 0
  %128 = load %struct.TYPE_5__*, %struct.TYPE_5__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %128, i32 0, i32 0
  %130 = load %struct.TYPE_7__*, %struct.TYPE_7__** %129, align 8
  %131 = call i32 @sk_set_memalloc(%struct.TYPE_7__* %130)
  %132 = load %struct.nbd_device*, %struct.nbd_device** %3, align 8
  %133 = getelementptr inbounds %struct.nbd_device, %struct.nbd_device* %132, i32 0, i32 2
  %134 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %154

137:                                              ; preds = %119
  %138 = load %struct.nbd_device*, %struct.nbd_device** %3, align 8
  %139 = getelementptr inbounds %struct.nbd_device, %struct.nbd_device* %138, i32 0, i32 2
  %140 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = load %struct.nbd_config*, %struct.nbd_config** %4, align 8
  %143 = getelementptr inbounds %struct.nbd_config, %struct.nbd_config* %142, i32 0, i32 3
  %144 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %143, align 8
  %145 = load i32, i32* %7, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %144, i64 %146
  %148 = load %struct.TYPE_6__*, %struct.TYPE_6__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %148, i32 0, i32 0
  %150 = load %struct.TYPE_5__*, %struct.TYPE_5__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %150, i32 0, i32 0
  %152 = load %struct.TYPE_7__*, %struct.TYPE_7__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %152, i32 0, i32 0
  store i64 %141, i64* %153, align 8
  br label %154

154:                                              ; preds = %137, %119
  %155 = load %struct.nbd_config*, %struct.nbd_config** %4, align 8
  %156 = getelementptr inbounds %struct.nbd_config, %struct.nbd_config* %155, i32 0, i32 2
  %157 = call i32 @atomic_inc(i32* %156)
  %158 = load %struct.nbd_device*, %struct.nbd_device** %3, align 8
  %159 = getelementptr inbounds %struct.nbd_device, %struct.nbd_device* %158, i32 0, i32 1
  %160 = call i32 @refcount_inc(i32* %159)
  %161 = load %struct.recv_thread_args*, %struct.recv_thread_args** %8, align 8
  %162 = getelementptr inbounds %struct.recv_thread_args, %struct.recv_thread_args* %161, i32 0, i32 1
  %163 = load i32, i32* @recv_work, align 4
  %164 = call i32 @INIT_WORK(i32* %162, i32 %163)
  %165 = load %struct.nbd_device*, %struct.nbd_device** %3, align 8
  %166 = load %struct.recv_thread_args*, %struct.recv_thread_args** %8, align 8
  %167 = getelementptr inbounds %struct.recv_thread_args, %struct.recv_thread_args* %166, i32 0, i32 2
  store %struct.nbd_device* %165, %struct.nbd_device** %167, align 8
  %168 = load i32, i32* %7, align 4
  %169 = load %struct.recv_thread_args*, %struct.recv_thread_args** %8, align 8
  %170 = getelementptr inbounds %struct.recv_thread_args, %struct.recv_thread_args* %169, i32 0, i32 0
  store i32 %168, i32* %170, align 8
  %171 = load %struct.nbd_device*, %struct.nbd_device** %3, align 8
  %172 = getelementptr inbounds %struct.nbd_device, %struct.nbd_device* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  %174 = load %struct.recv_thread_args*, %struct.recv_thread_args** %8, align 8
  %175 = getelementptr inbounds %struct.recv_thread_args, %struct.recv_thread_args* %174, i32 0, i32 1
  %176 = call i32 @queue_work(i32 %173, i32* %175)
  br label %177

177:                                              ; preds = %154
  %178 = load i32, i32* %7, align 4
  %179 = add nsw i32 %178, 1
  store i32 %179, i32* %7, align 4
  br label %105

180:                                              ; preds = %105
  %181 = load %struct.nbd_device*, %struct.nbd_device** %3, align 8
  %182 = call i32 @nbd_size_update(%struct.nbd_device* %181)
  %183 = load i32, i32* %6, align 4
  store i32 %183, i32* %2, align 4
  br label %184

184:                                              ; preds = %180, %114, %91, %64, %40, %27, %19
  %185 = load i32, i32* %2, align 4
  ret i32 %185
}

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @disk_to_dev(i32) #1

declare dso_local i32 @alloc_workqueue(i8*, i32, i32, i32) #1

declare dso_local i32 @blk_mq_update_nr_hw_queues(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @nbd_parse_flags(%struct.nbd_device*) #1

declare dso_local i32 @device_create_file(i32, i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @nbd_dev_dbg_init(%struct.nbd_device*) #1

declare dso_local %struct.recv_thread_args* @kzalloc(i32, i32) #1

declare dso_local i32 @sock_shutdown(%struct.nbd_device*) #1

declare dso_local i32 @sk_set_memalloc(%struct.TYPE_7__*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @refcount_inc(i32*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @queue_work(i32, i32*) #1

declare dso_local i32 @nbd_size_update(%struct.nbd_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
