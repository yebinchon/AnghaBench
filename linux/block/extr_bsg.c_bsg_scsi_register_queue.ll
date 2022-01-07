; ModuleID = '/home/carl/AnghaBench/linux/block/extr_bsg.c_bsg_scsi_register_queue.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_bsg.c_bsg_scsi_register_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request_queue = type { i32 }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [38 x i8] c"Attempt to register a non-SCSI queue\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@bsg_scsi_ops = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bsg_scsi_register_queue(%struct.request_queue* %0, %struct.device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.request_queue*, align 8
  %5 = alloca %struct.device*, align 8
  store %struct.request_queue* %0, %struct.request_queue** %4, align 8
  store %struct.device* %1, %struct.device** %5, align 8
  %6 = load %struct.request_queue*, %struct.request_queue** %4, align 8
  %7 = call i32 @blk_queue_scsi_passthrough(%struct.request_queue* %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %2
  %10 = call i32 @WARN_ONCE(i32 1, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %11 = load i32, i32* @EINVAL, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %3, align 4
  br label %19

13:                                               ; preds = %2
  %14 = load %struct.request_queue*, %struct.request_queue** %4, align 8
  %15 = load %struct.device*, %struct.device** %5, align 8
  %16 = load %struct.device*, %struct.device** %5, align 8
  %17 = call i32 @dev_name(%struct.device* %16)
  %18 = call i32 @bsg_register_queue(%struct.request_queue* %14, %struct.device* %15, i32 %17, i32* @bsg_scsi_ops)
  store i32 %18, i32* %3, align 4
  br label %19

19:                                               ; preds = %13, %9
  %20 = load i32, i32* %3, align 4
  ret i32 %20
}

declare dso_local i32 @blk_queue_scsi_passthrough(%struct.request_queue*) #1

declare dso_local i32 @WARN_ONCE(i32, i8*) #1

declare dso_local i32 @bsg_register_queue(%struct.request_queue*, %struct.device*, i32, i32*) #1

declare dso_local i32 @dev_name(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
