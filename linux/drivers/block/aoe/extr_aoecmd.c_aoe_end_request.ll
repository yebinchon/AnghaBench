; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/aoe/extr_aoecmd.c_aoe_end_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/aoe/extr_aoecmd.c_aoe_end_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aoedev = type { %struct.TYPE_4__, %struct.request_queue* }
%struct.TYPE_4__ = type { %struct.request* }
%struct.request_queue = type { i32 }
%struct.request = type { %struct.bio* }
%struct.bio = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@BLK_STS_OK = common dso_local global i32 0, align 4
@BLK_STS_IOERR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @aoe_end_request(%struct.aoedev* %0, %struct.request* %1, i32 %2) #0 {
  %4 = alloca %struct.aoedev*, align 8
  %5 = alloca %struct.request*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.bio*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.request_queue*, align 8
  %10 = alloca i32, align 4
  store %struct.aoedev* %0, %struct.aoedev** %4, align 8
  store %struct.request* %1, %struct.request** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load i32, i32* @BLK_STS_OK, align 4
  store i32 %11, i32* %10, align 4
  %12 = load %struct.aoedev*, %struct.aoedev** %4, align 8
  %13 = getelementptr inbounds %struct.aoedev, %struct.aoedev* %12, i32 0, i32 1
  %14 = load %struct.request_queue*, %struct.request_queue** %13, align 8
  store %struct.request_queue* %14, %struct.request_queue** %9, align 8
  %15 = load %struct.request*, %struct.request** %5, align 8
  %16 = load %struct.aoedev*, %struct.aoedev** %4, align 8
  %17 = getelementptr inbounds %struct.aoedev, %struct.aoedev* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load %struct.request*, %struct.request** %18, align 8
  %20 = icmp eq %struct.request* %15, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %3
  %22 = load %struct.aoedev*, %struct.aoedev** %4, align 8
  %23 = getelementptr inbounds %struct.aoedev, %struct.aoedev* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  store %struct.request* null, %struct.request** %24, align 8
  br label %25

25:                                               ; preds = %21, %3
  br label %26

26:                                               ; preds = %54, %25
  %27 = load %struct.request*, %struct.request** %5, align 8
  %28 = getelementptr inbounds %struct.request, %struct.request* %27, i32 0, i32 0
  %29 = load %struct.bio*, %struct.bio** %28, align 8
  store %struct.bio* %29, %struct.bio** %7, align 8
  %30 = load i32, i32* %6, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %38, label %32

32:                                               ; preds = %26
  %33 = load %struct.bio*, %struct.bio** %7, align 8
  %34 = getelementptr inbounds %struct.bio, %struct.bio* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, 0
  %37 = xor i1 %36, true
  br label %38

38:                                               ; preds = %32, %26
  %39 = phi i1 [ false, %26 ], [ %37, %32 ]
  %40 = zext i1 %39 to i32
  store i32 %40, i32* %8, align 4
  %41 = load i32, i32* %8, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %45, label %43

43:                                               ; preds = %38
  %44 = load i32, i32* @BLK_STS_IOERR, align 4
  store i32 %44, i32* %10, align 4
  br label %45

45:                                               ; preds = %43, %38
  br label %46

46:                                               ; preds = %45
  %47 = load %struct.request*, %struct.request** %5, align 8
  %48 = load i32, i32* %8, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %46
  %51 = load i32, i32* @BLK_STS_OK, align 4
  br label %54

52:                                               ; preds = %46
  %53 = load i32, i32* @BLK_STS_IOERR, align 4
  br label %54

54:                                               ; preds = %52, %50
  %55 = phi i32 [ %51, %50 ], [ %53, %52 ]
  %56 = load %struct.bio*, %struct.bio** %7, align 8
  %57 = getelementptr inbounds %struct.bio, %struct.bio* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i64 @blk_update_request(%struct.request* %47, i32 %55, i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %26, label %62

62:                                               ; preds = %54
  %63 = load %struct.request*, %struct.request** %5, align 8
  %64 = load i32, i32* %10, align 4
  %65 = call i32 @__blk_mq_end_request(%struct.request* %63, i32 %64)
  %66 = load i32, i32* %6, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %71, label %68

68:                                               ; preds = %62
  %69 = load %struct.request_queue*, %struct.request_queue** %9, align 8
  %70 = call i32 @blk_mq_run_hw_queues(%struct.request_queue* %69, i32 1)
  br label %71

71:                                               ; preds = %68, %62
  ret void
}

declare dso_local i64 @blk_update_request(%struct.request*, i32, i32) #1

declare dso_local i32 @__blk_mq_end_request(%struct.request*, i32) #1

declare dso_local i32 @blk_mq_run_hw_queues(%struct.request_queue*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
