; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_nbd.c_nbd_handle_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_nbd.c_nbd_handle_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nbd_cmd = type { i32, %struct.nbd_device* }
%struct.nbd_device = type { i32, %struct.nbd_config*, i32 }
%struct.nbd_config = type { i32, %struct.nbd_sock** }
%struct.nbd_sock = type { i32, %struct.request*, i64 }
%struct.request = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"Socks array is empty\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"Attempted send on invalid socket\0A\00", align 1
@BLK_STS_OK = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"Request send failed, requeueing\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nbd_cmd*, i32)* @nbd_handle_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nbd_handle_cmd(%struct.nbd_cmd* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nbd_cmd*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.request*, align 8
  %7 = alloca %struct.nbd_device*, align 8
  %8 = alloca %struct.nbd_config*, align 8
  %9 = alloca %struct.nbd_sock*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.nbd_cmd* %0, %struct.nbd_cmd** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load %struct.nbd_cmd*, %struct.nbd_cmd** %4, align 8
  %13 = call %struct.request* @blk_mq_rq_from_pdu(%struct.nbd_cmd* %12)
  store %struct.request* %13, %struct.request** %6, align 8
  %14 = load %struct.nbd_cmd*, %struct.nbd_cmd** %4, align 8
  %15 = getelementptr inbounds %struct.nbd_cmd, %struct.nbd_cmd* %14, i32 0, i32 1
  %16 = load %struct.nbd_device*, %struct.nbd_device** %15, align 8
  store %struct.nbd_device* %16, %struct.nbd_device** %7, align 8
  %17 = load %struct.nbd_device*, %struct.nbd_device** %7, align 8
  %18 = getelementptr inbounds %struct.nbd_device, %struct.nbd_device* %17, i32 0, i32 2
  %19 = call i32 @refcount_inc_not_zero(i32* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %31, label %21

21:                                               ; preds = %2
  %22 = load %struct.nbd_device*, %struct.nbd_device** %7, align 8
  %23 = getelementptr inbounds %struct.nbd_device, %struct.nbd_device* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @disk_to_dev(i32 %24)
  %26 = call i32 @dev_err_ratelimited(i32 %25, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %27 = load %struct.request*, %struct.request** %6, align 8
  %28 = call i32 @blk_mq_start_request(%struct.request* %27)
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %146

31:                                               ; preds = %2
  %32 = load %struct.nbd_device*, %struct.nbd_device** %7, align 8
  %33 = getelementptr inbounds %struct.nbd_device, %struct.nbd_device* %32, i32 0, i32 1
  %34 = load %struct.nbd_config*, %struct.nbd_config** %33, align 8
  store %struct.nbd_config* %34, %struct.nbd_config** %8, align 8
  %35 = load i32, i32* %5, align 4
  %36 = load %struct.nbd_config*, %struct.nbd_config** %8, align 8
  %37 = getelementptr inbounds %struct.nbd_config, %struct.nbd_config* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp sge i32 %35, %38
  br i1 %39, label %40, label %52

40:                                               ; preds = %31
  %41 = load %struct.nbd_device*, %struct.nbd_device** %7, align 8
  %42 = getelementptr inbounds %struct.nbd_device, %struct.nbd_device* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @disk_to_dev(i32 %43)
  %45 = call i32 @dev_err_ratelimited(i32 %44, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %46 = load %struct.nbd_device*, %struct.nbd_device** %7, align 8
  %47 = call i32 @nbd_config_put(%struct.nbd_device* %46)
  %48 = load %struct.request*, %struct.request** %6, align 8
  %49 = call i32 @blk_mq_start_request(%struct.request* %48)
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %3, align 4
  br label %146

52:                                               ; preds = %31
  %53 = load i32, i32* @BLK_STS_OK, align 4
  %54 = load %struct.nbd_cmd*, %struct.nbd_cmd** %4, align 8
  %55 = getelementptr inbounds %struct.nbd_cmd, %struct.nbd_cmd* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 8
  br label %56

56:                                               ; preds = %96, %85, %52
  %57 = load %struct.nbd_config*, %struct.nbd_config** %8, align 8
  %58 = getelementptr inbounds %struct.nbd_config, %struct.nbd_config* %57, i32 0, i32 1
  %59 = load %struct.nbd_sock**, %struct.nbd_sock*** %58, align 8
  %60 = load i32, i32* %5, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.nbd_sock*, %struct.nbd_sock** %59, i64 %61
  %63 = load %struct.nbd_sock*, %struct.nbd_sock** %62, align 8
  store %struct.nbd_sock* %63, %struct.nbd_sock** %9, align 8
  %64 = load %struct.nbd_sock*, %struct.nbd_sock** %9, align 8
  %65 = getelementptr inbounds %struct.nbd_sock, %struct.nbd_sock* %64, i32 0, i32 0
  %66 = call i32 @mutex_lock(i32* %65)
  %67 = load %struct.nbd_sock*, %struct.nbd_sock** %9, align 8
  %68 = getelementptr inbounds %struct.nbd_sock, %struct.nbd_sock* %67, i32 0, i32 2
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %97

71:                                               ; preds = %56
  %72 = load i32, i32* %5, align 4
  store i32 %72, i32* %11, align 4
  %73 = load %struct.nbd_device*, %struct.nbd_device** %7, align 8
  %74 = load i32, i32* %5, align 4
  %75 = call i32 @find_fallback(%struct.nbd_device* %73, i32 %74)
  store i32 %75, i32* %5, align 4
  %76 = load %struct.nbd_sock*, %struct.nbd_sock** %9, align 8
  %77 = getelementptr inbounds %struct.nbd_sock, %struct.nbd_sock* %76, i32 0, i32 0
  %78 = call i32 @mutex_unlock(i32* %77)
  %79 = load i32, i32* %5, align 4
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %81, label %96

81:                                               ; preds = %71
  %82 = load %struct.nbd_device*, %struct.nbd_device** %7, align 8
  %83 = call i64 @wait_for_reconnect(%struct.nbd_device* %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %81
  %86 = load i32, i32* %11, align 4
  store i32 %86, i32* %5, align 4
  br label %56

87:                                               ; preds = %81
  %88 = load %struct.nbd_device*, %struct.nbd_device** %7, align 8
  %89 = call i32 @sock_shutdown(%struct.nbd_device* %88)
  %90 = load %struct.nbd_device*, %struct.nbd_device** %7, align 8
  %91 = call i32 @nbd_config_put(%struct.nbd_device* %90)
  %92 = load %struct.request*, %struct.request** %6, align 8
  %93 = call i32 @blk_mq_start_request(%struct.request* %92)
  %94 = load i32, i32* @EIO, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %3, align 4
  br label %146

96:                                               ; preds = %71
  br label %56

97:                                               ; preds = %56
  %98 = load %struct.request*, %struct.request** %6, align 8
  %99 = call i32 @blk_mq_start_request(%struct.request* %98)
  %100 = load %struct.nbd_sock*, %struct.nbd_sock** %9, align 8
  %101 = getelementptr inbounds %struct.nbd_sock, %struct.nbd_sock* %100, i32 0, i32 1
  %102 = load %struct.request*, %struct.request** %101, align 8
  %103 = icmp ne %struct.request* %102, null
  br i1 %103, label %104, label %110

104:                                              ; preds = %97
  %105 = load %struct.nbd_sock*, %struct.nbd_sock** %9, align 8
  %106 = getelementptr inbounds %struct.nbd_sock, %struct.nbd_sock* %105, i32 0, i32 1
  %107 = load %struct.request*, %struct.request** %106, align 8
  %108 = load %struct.request*, %struct.request** %6, align 8
  %109 = icmp ne %struct.request* %107, %108
  br label %110

110:                                              ; preds = %104, %97
  %111 = phi i1 [ false, %97 ], [ %109, %104 ]
  %112 = zext i1 %111 to i32
  %113 = call i64 @unlikely(i32 %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %118

115:                                              ; preds = %110
  %116 = load %struct.nbd_cmd*, %struct.nbd_cmd** %4, align 8
  %117 = call i32 @nbd_requeue_cmd(%struct.nbd_cmd* %116)
  store i32 0, i32* %10, align 4
  br label %139

118:                                              ; preds = %110
  %119 = load %struct.nbd_device*, %struct.nbd_device** %7, align 8
  %120 = load %struct.nbd_cmd*, %struct.nbd_cmd** %4, align 8
  %121 = load i32, i32* %5, align 4
  %122 = call i32 @nbd_send_cmd(%struct.nbd_device* %119, %struct.nbd_cmd* %120, i32 %121)
  store i32 %122, i32* %10, align 4
  %123 = load i32, i32* %10, align 4
  %124 = load i32, i32* @EAGAIN, align 4
  %125 = sub nsw i32 0, %124
  %126 = icmp eq i32 %123, %125
  br i1 %126, label %127, label %138

127:                                              ; preds = %118
  %128 = load %struct.nbd_device*, %struct.nbd_device** %7, align 8
  %129 = getelementptr inbounds %struct.nbd_device, %struct.nbd_device* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = call i32 @disk_to_dev(i32 %130)
  %132 = call i32 @dev_err_ratelimited(i32 %131, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  %133 = load %struct.nbd_device*, %struct.nbd_device** %7, align 8
  %134 = load %struct.nbd_sock*, %struct.nbd_sock** %9, align 8
  %135 = call i32 @nbd_mark_nsock_dead(%struct.nbd_device* %133, %struct.nbd_sock* %134, i32 1)
  %136 = load %struct.nbd_cmd*, %struct.nbd_cmd** %4, align 8
  %137 = call i32 @nbd_requeue_cmd(%struct.nbd_cmd* %136)
  store i32 0, i32* %10, align 4
  br label %138

138:                                              ; preds = %127, %118
  br label %139

139:                                              ; preds = %138, %115
  %140 = load %struct.nbd_sock*, %struct.nbd_sock** %9, align 8
  %141 = getelementptr inbounds %struct.nbd_sock, %struct.nbd_sock* %140, i32 0, i32 0
  %142 = call i32 @mutex_unlock(i32* %141)
  %143 = load %struct.nbd_device*, %struct.nbd_device** %7, align 8
  %144 = call i32 @nbd_config_put(%struct.nbd_device* %143)
  %145 = load i32, i32* %10, align 4
  store i32 %145, i32* %3, align 4
  br label %146

146:                                              ; preds = %139, %87, %40, %21
  %147 = load i32, i32* %3, align 4
  ret i32 %147
}

declare dso_local %struct.request* @blk_mq_rq_from_pdu(%struct.nbd_cmd*) #1

declare dso_local i32 @refcount_inc_not_zero(i32*) #1

declare dso_local i32 @dev_err_ratelimited(i32, i8*) #1

declare dso_local i32 @disk_to_dev(i32) #1

declare dso_local i32 @blk_mq_start_request(%struct.request*) #1

declare dso_local i32 @nbd_config_put(%struct.nbd_device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @find_fallback(%struct.nbd_device*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i64 @wait_for_reconnect(%struct.nbd_device*) #1

declare dso_local i32 @sock_shutdown(%struct.nbd_device*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @nbd_requeue_cmd(%struct.nbd_cmd*) #1

declare dso_local i32 @nbd_send_cmd(%struct.nbd_device*, %struct.nbd_cmd*, i32) #1

declare dso_local i32 @nbd_mark_nsock_dead(%struct.nbd_device*, %struct.nbd_sock*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
