; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_nbd.c_nbd_xmit_timeout.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_nbd.c_nbd_xmit_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request = type { i32 }
%struct.nbd_cmd = type { i32, i64, i32, i32, i32, %struct.nbd_device* }
%struct.nbd_device = type { %struct.TYPE_2__, %struct.nbd_config*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.nbd_config = type { i32, i32, %struct.nbd_sock**, i32 }
%struct.nbd_sock = type { i64, i32 }

@BLK_EH_RESET_TIMER = common dso_local global i32 0, align 4
@BLK_STS_TIMEOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"Connection timed out, retrying (%d/%d alive)\0A\00", align 1
@BLK_EH_DONE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [70 x i8] c"Possible stuck request %p: control (%s@%llu,%uB). Runtime %u seconds\0A\00", align 1
@HZ = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"Connection timed out\0A\00", align 1
@NBD_RT_TIMEDOUT = common dso_local global i32 0, align 4
@BLK_STS_IOERR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.request*, i32)* @nbd_xmit_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nbd_xmit_timeout(%struct.request* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.request*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.nbd_cmd*, align 8
  %7 = alloca %struct.nbd_device*, align 8
  %8 = alloca %struct.nbd_config*, align 8
  %9 = alloca %struct.nbd_sock*, align 8
  store %struct.request* %0, %struct.request** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.request*, %struct.request** %4, align 8
  %11 = call %struct.nbd_cmd* @blk_mq_rq_to_pdu(%struct.request* %10)
  store %struct.nbd_cmd* %11, %struct.nbd_cmd** %6, align 8
  %12 = load %struct.nbd_cmd*, %struct.nbd_cmd** %6, align 8
  %13 = getelementptr inbounds %struct.nbd_cmd, %struct.nbd_cmd* %12, i32 0, i32 5
  %14 = load %struct.nbd_device*, %struct.nbd_device** %13, align 8
  store %struct.nbd_device* %14, %struct.nbd_device** %7, align 8
  %15 = load %struct.nbd_cmd*, %struct.nbd_cmd** %6, align 8
  %16 = getelementptr inbounds %struct.nbd_cmd, %struct.nbd_cmd* %15, i32 0, i32 3
  %17 = call i32 @mutex_trylock(i32* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %2
  %20 = load i32, i32* @BLK_EH_RESET_TIMER, align 4
  store i32 %20, i32* %3, align 4
  br label %166

21:                                               ; preds = %2
  %22 = load %struct.nbd_device*, %struct.nbd_device** %7, align 8
  %23 = getelementptr inbounds %struct.nbd_device, %struct.nbd_device* %22, i32 0, i32 2
  %24 = call i32 @refcount_inc_not_zero(i32* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %33, label %26

26:                                               ; preds = %21
  %27 = load i32, i32* @BLK_STS_TIMEOUT, align 4
  %28 = load %struct.nbd_cmd*, %struct.nbd_cmd** %6, align 8
  %29 = getelementptr inbounds %struct.nbd_cmd, %struct.nbd_cmd* %28, i32 0, i32 4
  store i32 %27, i32* %29, align 8
  %30 = load %struct.nbd_cmd*, %struct.nbd_cmd** %6, align 8
  %31 = getelementptr inbounds %struct.nbd_cmd, %struct.nbd_cmd* %30, i32 0, i32 3
  %32 = call i32 @mutex_unlock(i32* %31)
  br label %162

33:                                               ; preds = %21
  %34 = load %struct.nbd_device*, %struct.nbd_device** %7, align 8
  %35 = getelementptr inbounds %struct.nbd_device, %struct.nbd_device* %34, i32 0, i32 1
  %36 = load %struct.nbd_config*, %struct.nbd_config** %35, align 8
  store %struct.nbd_config* %36, %struct.nbd_config** %8, align 8
  %37 = load %struct.nbd_config*, %struct.nbd_config** %8, align 8
  %38 = getelementptr inbounds %struct.nbd_config, %struct.nbd_config* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp sgt i32 %39, 1
  br i1 %40, label %41, label %106

41:                                               ; preds = %33
  %42 = load %struct.nbd_device*, %struct.nbd_device** %7, align 8
  %43 = call i32 @nbd_to_dev(%struct.nbd_device* %42)
  %44 = load %struct.nbd_config*, %struct.nbd_config** %8, align 8
  %45 = getelementptr inbounds %struct.nbd_config, %struct.nbd_config* %44, i32 0, i32 3
  %46 = call i32 @atomic_read(i32* %45)
  %47 = load %struct.nbd_config*, %struct.nbd_config** %8, align 8
  %48 = getelementptr inbounds %struct.nbd_config, %struct.nbd_config* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = call i32 (i32, i8*, ...) @dev_err_ratelimited(i32 %43, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %46, i32 %49)
  %51 = load %struct.nbd_config*, %struct.nbd_config** %8, align 8
  %52 = getelementptr inbounds %struct.nbd_config, %struct.nbd_config* %51, i32 0, i32 2
  %53 = load %struct.nbd_sock**, %struct.nbd_sock*** %52, align 8
  %54 = icmp ne %struct.nbd_sock** %53, null
  br i1 %54, label %55, label %105

55:                                               ; preds = %41
  %56 = load %struct.nbd_config*, %struct.nbd_config** %8, align 8
  %57 = getelementptr inbounds %struct.nbd_config, %struct.nbd_config* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = icmp sgt i32 %58, 1
  br i1 %59, label %60, label %105

60:                                               ; preds = %55
  %61 = load %struct.nbd_cmd*, %struct.nbd_cmd** %6, align 8
  %62 = getelementptr inbounds %struct.nbd_cmd, %struct.nbd_cmd* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.nbd_config*, %struct.nbd_config** %8, align 8
  %65 = getelementptr inbounds %struct.nbd_config, %struct.nbd_config* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = icmp slt i32 %63, %66
  br i1 %67, label %68, label %96

68:                                               ; preds = %60
  %69 = load %struct.nbd_config*, %struct.nbd_config** %8, align 8
  %70 = getelementptr inbounds %struct.nbd_config, %struct.nbd_config* %69, i32 0, i32 2
  %71 = load %struct.nbd_sock**, %struct.nbd_sock*** %70, align 8
  %72 = load %struct.nbd_cmd*, %struct.nbd_cmd** %6, align 8
  %73 = getelementptr inbounds %struct.nbd_cmd, %struct.nbd_cmd* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.nbd_sock*, %struct.nbd_sock** %71, i64 %75
  %77 = load %struct.nbd_sock*, %struct.nbd_sock** %76, align 8
  store %struct.nbd_sock* %77, %struct.nbd_sock** %9, align 8
  %78 = load %struct.nbd_sock*, %struct.nbd_sock** %9, align 8
  %79 = getelementptr inbounds %struct.nbd_sock, %struct.nbd_sock* %78, i32 0, i32 1
  %80 = call i32 @mutex_lock(i32* %79)
  %81 = load %struct.nbd_cmd*, %struct.nbd_cmd** %6, align 8
  %82 = getelementptr inbounds %struct.nbd_cmd, %struct.nbd_cmd* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = load %struct.nbd_sock*, %struct.nbd_sock** %9, align 8
  %85 = getelementptr inbounds %struct.nbd_sock, %struct.nbd_sock* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = icmp eq i64 %83, %86
  br i1 %87, label %88, label %92

88:                                               ; preds = %68
  %89 = load %struct.nbd_device*, %struct.nbd_device** %7, align 8
  %90 = load %struct.nbd_sock*, %struct.nbd_sock** %9, align 8
  %91 = call i32 @nbd_mark_nsock_dead(%struct.nbd_device* %89, %struct.nbd_sock* %90, i32 1)
  br label %92

92:                                               ; preds = %88, %68
  %93 = load %struct.nbd_sock*, %struct.nbd_sock** %9, align 8
  %94 = getelementptr inbounds %struct.nbd_sock, %struct.nbd_sock* %93, i32 0, i32 1
  %95 = call i32 @mutex_unlock(i32* %94)
  br label %96

96:                                               ; preds = %92, %60
  %97 = load %struct.nbd_cmd*, %struct.nbd_cmd** %6, align 8
  %98 = getelementptr inbounds %struct.nbd_cmd, %struct.nbd_cmd* %97, i32 0, i32 3
  %99 = call i32 @mutex_unlock(i32* %98)
  %100 = load %struct.nbd_cmd*, %struct.nbd_cmd** %6, align 8
  %101 = call i32 @nbd_requeue_cmd(%struct.nbd_cmd* %100)
  %102 = load %struct.nbd_device*, %struct.nbd_device** %7, align 8
  %103 = call i32 @nbd_config_put(%struct.nbd_device* %102)
  %104 = load i32, i32* @BLK_EH_DONE, align 4
  store i32 %104, i32* %3, align 4
  br label %166

105:                                              ; preds = %55, %41
  br label %106

106:                                              ; preds = %105, %33
  %107 = load %struct.nbd_device*, %struct.nbd_device** %7, align 8
  %108 = getelementptr inbounds %struct.nbd_device, %struct.nbd_device* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %144, label %112

112:                                              ; preds = %106
  %113 = load %struct.nbd_cmd*, %struct.nbd_cmd** %6, align 8
  %114 = getelementptr inbounds %struct.nbd_cmd, %struct.nbd_cmd* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 8
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %114, align 8
  %117 = load %struct.nbd_device*, %struct.nbd_device** %7, align 8
  %118 = call i32 @nbd_to_dev(%struct.nbd_device* %117)
  %119 = load %struct.request*, %struct.request** %4, align 8
  %120 = load %struct.request*, %struct.request** %4, align 8
  %121 = call i32 @req_to_nbd_cmd_type(%struct.request* %120)
  %122 = call i32 @nbdcmd_to_ascii(i32 %121)
  %123 = load %struct.request*, %struct.request** %4, align 8
  %124 = call i64 @blk_rq_pos(%struct.request* %123)
  %125 = shl i64 %124, 9
  %126 = load %struct.request*, %struct.request** %4, align 8
  %127 = call i32 @blk_rq_bytes(%struct.request* %126)
  %128 = load %struct.request*, %struct.request** %4, align 8
  %129 = getelementptr inbounds %struct.request, %struct.request* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* @HZ, align 4
  %132 = sdiv i32 %130, %131
  %133 = load %struct.nbd_cmd*, %struct.nbd_cmd** %6, align 8
  %134 = getelementptr inbounds %struct.nbd_cmd, %struct.nbd_cmd* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 8
  %136 = mul nsw i32 %132, %135
  %137 = call i32 @dev_info(i32 %118, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.1, i64 0, i64 0), %struct.request* %119, i32 %122, i64 %125, i32 %127, i32 %136)
  %138 = load %struct.nbd_cmd*, %struct.nbd_cmd** %6, align 8
  %139 = getelementptr inbounds %struct.nbd_cmd, %struct.nbd_cmd* %138, i32 0, i32 3
  %140 = call i32 @mutex_unlock(i32* %139)
  %141 = load %struct.nbd_device*, %struct.nbd_device** %7, align 8
  %142 = call i32 @nbd_config_put(%struct.nbd_device* %141)
  %143 = load i32, i32* @BLK_EH_RESET_TIMER, align 4
  store i32 %143, i32* %3, align 4
  br label %166

144:                                              ; preds = %106
  %145 = load %struct.nbd_device*, %struct.nbd_device** %7, align 8
  %146 = call i32 @nbd_to_dev(%struct.nbd_device* %145)
  %147 = call i32 (i32, i8*, ...) @dev_err_ratelimited(i32 %146, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %148 = load i32, i32* @NBD_RT_TIMEDOUT, align 4
  %149 = load %struct.nbd_config*, %struct.nbd_config** %8, align 8
  %150 = getelementptr inbounds %struct.nbd_config, %struct.nbd_config* %149, i32 0, i32 1
  %151 = call i32 @set_bit(i32 %148, i32* %150)
  %152 = load i32, i32* @BLK_STS_IOERR, align 4
  %153 = load %struct.nbd_cmd*, %struct.nbd_cmd** %6, align 8
  %154 = getelementptr inbounds %struct.nbd_cmd, %struct.nbd_cmd* %153, i32 0, i32 4
  store i32 %152, i32* %154, align 8
  %155 = load %struct.nbd_cmd*, %struct.nbd_cmd** %6, align 8
  %156 = getelementptr inbounds %struct.nbd_cmd, %struct.nbd_cmd* %155, i32 0, i32 3
  %157 = call i32 @mutex_unlock(i32* %156)
  %158 = load %struct.nbd_device*, %struct.nbd_device** %7, align 8
  %159 = call i32 @sock_shutdown(%struct.nbd_device* %158)
  %160 = load %struct.nbd_device*, %struct.nbd_device** %7, align 8
  %161 = call i32 @nbd_config_put(%struct.nbd_device* %160)
  br label %162

162:                                              ; preds = %144, %26
  %163 = load %struct.request*, %struct.request** %4, align 8
  %164 = call i32 @blk_mq_complete_request(%struct.request* %163)
  %165 = load i32, i32* @BLK_EH_DONE, align 4
  store i32 %165, i32* %3, align 4
  br label %166

166:                                              ; preds = %162, %112, %96, %19
  %167 = load i32, i32* %3, align 4
  ret i32 %167
}

declare dso_local %struct.nbd_cmd* @blk_mq_rq_to_pdu(%struct.request*) #1

declare dso_local i32 @mutex_trylock(i32*) #1

declare dso_local i32 @refcount_inc_not_zero(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @dev_err_ratelimited(i32, i8*, ...) #1

declare dso_local i32 @nbd_to_dev(%struct.nbd_device*) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @nbd_mark_nsock_dead(%struct.nbd_device*, %struct.nbd_sock*, i32) #1

declare dso_local i32 @nbd_requeue_cmd(%struct.nbd_cmd*) #1

declare dso_local i32 @nbd_config_put(%struct.nbd_device*) #1

declare dso_local i32 @dev_info(i32, i8*, %struct.request*, i32, i64, i32, i32) #1

declare dso_local i32 @nbdcmd_to_ascii(i32) #1

declare dso_local i32 @req_to_nbd_cmd_type(%struct.request*) #1

declare dso_local i64 @blk_rq_pos(%struct.request*) #1

declare dso_local i32 @blk_rq_bytes(%struct.request*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @sock_shutdown(%struct.nbd_device*) #1

declare dso_local i32 @blk_mq_complete_request(%struct.request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
