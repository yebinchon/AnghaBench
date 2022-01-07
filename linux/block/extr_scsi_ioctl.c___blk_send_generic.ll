; ModuleID = '/home/carl/AnghaBench/linux/block/extr_scsi_ioctl.c___blk_send_generic.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_scsi_ioctl.c___blk_send_generic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request_queue = type { i32 }
%struct.gendisk = type { i32 }
%struct.request = type { i32 }
%struct.TYPE_2__ = type { i32*, i32, i64 }

@REQ_OP_SCSI_OUT = common dso_local global i32 0, align 4
@BLK_DEFAULT_SG_TIMEOUT = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.request_queue*, %struct.gendisk*, i32, i32)* @__blk_send_generic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__blk_send_generic(%struct.request_queue* %0, %struct.gendisk* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.request_queue*, align 8
  %7 = alloca %struct.gendisk*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.request*, align 8
  %11 = alloca i32, align 4
  store %struct.request_queue* %0, %struct.request_queue** %6, align 8
  store %struct.gendisk* %1, %struct.gendisk** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %13 = load i32, i32* @REQ_OP_SCSI_OUT, align 4
  %14 = call %struct.request* @blk_get_request(%struct.request_queue* %12, i32 %13, i32 0)
  store %struct.request* %14, %struct.request** %10, align 8
  %15 = load %struct.request*, %struct.request** %10, align 8
  %16 = call i64 @IS_ERR(%struct.request* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %4
  %19 = load %struct.request*, %struct.request** %10, align 8
  %20 = call i32 @PTR_ERR(%struct.request* %19)
  store i32 %20, i32* %5, align 4
  br label %58

21:                                               ; preds = %4
  %22 = load i32, i32* @BLK_DEFAULT_SG_TIMEOUT, align 4
  %23 = load %struct.request*, %struct.request** %10, align 8
  %24 = getelementptr inbounds %struct.request, %struct.request* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 4
  %25 = load i32, i32* %8, align 4
  %26 = load %struct.request*, %struct.request** %10, align 8
  %27 = call %struct.TYPE_2__* @scsi_req(%struct.request* %26)
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 0
  store i32 %25, i32* %30, align 4
  %31 = load i32, i32* %9, align 4
  %32 = load %struct.request*, %struct.request** %10, align 8
  %33 = call %struct.TYPE_2__* @scsi_req(%struct.request* %32)
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 4
  store i32 %31, i32* %36, align 4
  %37 = load %struct.request*, %struct.request** %10, align 8
  %38 = call %struct.TYPE_2__* @scsi_req(%struct.request* %37)
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  store i32 6, i32* %39, align 8
  %40 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %41 = load %struct.gendisk*, %struct.gendisk** %7, align 8
  %42 = load %struct.request*, %struct.request** %10, align 8
  %43 = call i32 @blk_execute_rq(%struct.request_queue* %40, %struct.gendisk* %41, %struct.request* %42, i32 0)
  %44 = load %struct.request*, %struct.request** %10, align 8
  %45 = call %struct.TYPE_2__* @scsi_req(%struct.request* %44)
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %21
  %50 = load i32, i32* @EIO, align 4
  %51 = sub nsw i32 0, %50
  br label %53

52:                                               ; preds = %21
  br label %53

53:                                               ; preds = %52, %49
  %54 = phi i32 [ %51, %49 ], [ 0, %52 ]
  store i32 %54, i32* %11, align 4
  %55 = load %struct.request*, %struct.request** %10, align 8
  %56 = call i32 @blk_put_request(%struct.request* %55)
  %57 = load i32, i32* %11, align 4
  store i32 %57, i32* %5, align 4
  br label %58

58:                                               ; preds = %53, %18
  %59 = load i32, i32* %5, align 4
  ret i32 %59
}

declare dso_local %struct.request* @blk_get_request(%struct.request_queue*, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.request*) #1

declare dso_local i32 @PTR_ERR(%struct.request*) #1

declare dso_local %struct.TYPE_2__* @scsi_req(%struct.request*) #1

declare dso_local i32 @blk_execute_rq(%struct.request_queue*, %struct.gendisk*, %struct.request*, i32) #1

declare dso_local i32 @blk_put_request(%struct.request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
