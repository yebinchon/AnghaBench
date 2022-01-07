; ModuleID = '/home/carl/AnghaBench/linux/block/extr_bsg-lib.c_bsg_init_rq.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_bsg-lib.c_bsg_init_rq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blk_mq_tag_set = type { i32 }
%struct.request = type { i32 }
%struct.bsg_job = type { i32 }

@SCSI_SENSE_BUFFERSIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.blk_mq_tag_set*, %struct.request*, i32, i32)* @bsg_init_rq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bsg_init_rq(%struct.blk_mq_tag_set* %0, %struct.request* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.blk_mq_tag_set*, align 8
  %7 = alloca %struct.request*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.bsg_job*, align 8
  store %struct.blk_mq_tag_set* %0, %struct.blk_mq_tag_set** %6, align 8
  store %struct.request* %1, %struct.request** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load %struct.request*, %struct.request** %7, align 8
  %12 = call %struct.bsg_job* @blk_mq_rq_to_pdu(%struct.request* %11)
  store %struct.bsg_job* %12, %struct.bsg_job** %10, align 8
  %13 = load i32, i32* @SCSI_SENSE_BUFFERSIZE, align 4
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call i32 @kzalloc(i32 %13, i32 %14)
  %16 = load %struct.bsg_job*, %struct.bsg_job** %10, align 8
  %17 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 4
  %18 = load %struct.bsg_job*, %struct.bsg_job** %10, align 8
  %19 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %4
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %5, align 4
  br label %26

25:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %26

26:                                               ; preds = %25, %22
  %27 = load i32, i32* %5, align 4
  ret i32 %27
}

declare dso_local %struct.bsg_job* @blk_mq_rq_to_pdu(%struct.request*) #1

declare dso_local i32 @kzalloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
