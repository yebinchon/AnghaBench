; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_req.c_drbd_req_put_completion_ref.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_req.c_drbd_req_put_completion_ref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drbd_request = type { i32, i32, i32, %struct.drbd_device* }
%struct.drbd_device = type { i32 }
%struct.bio_and_error = type { i32 }

@RQ_POSTPONED = common dso_local global i32 0, align 4
@RQ_LOCAL_ABORTED = common dso_local global i32 0, align 4
@drbd_req_destroy = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drbd_request*, %struct.bio_and_error*, i32)* @drbd_req_put_completion_ref to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @drbd_req_put_completion_ref(%struct.drbd_request* %0, %struct.bio_and_error* %1, i32 %2) #0 {
  %4 = alloca %struct.drbd_request*, align 8
  %5 = alloca %struct.bio_and_error*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.drbd_device*, align 8
  store %struct.drbd_request* %0, %struct.drbd_request** %4, align 8
  store %struct.bio_and_error* %1, %struct.bio_and_error** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.drbd_request*, %struct.drbd_request** %4, align 8
  %9 = getelementptr inbounds %struct.drbd_request, %struct.drbd_request* %8, i32 0, i32 3
  %10 = load %struct.drbd_device*, %struct.drbd_device** %9, align 8
  store %struct.drbd_device* %10, %struct.drbd_device** %7, align 8
  %11 = load %struct.drbd_device*, %struct.drbd_device** %7, align 8
  %12 = load %struct.bio_and_error*, %struct.bio_and_error** %5, align 8
  %13 = icmp ne %struct.bio_and_error* %12, null
  br i1 %13, label %21, label %14

14:                                               ; preds = %3
  %15 = load %struct.drbd_request*, %struct.drbd_request** %4, align 8
  %16 = getelementptr inbounds %struct.drbd_request, %struct.drbd_request* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @RQ_POSTPONED, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br label %21

21:                                               ; preds = %14, %3
  %22 = phi i1 [ true, %3 ], [ %20, %14 ]
  %23 = zext i1 %22 to i32
  %24 = call i32 @D_ASSERT(%struct.drbd_device* %11, i32 %23)
  %25 = load i32, i32* %6, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %21
  br label %61

28:                                               ; preds = %21
  %29 = load i32, i32* %6, align 4
  %30 = load %struct.drbd_request*, %struct.drbd_request** %4, align 8
  %31 = getelementptr inbounds %struct.drbd_request, %struct.drbd_request* %30, i32 0, i32 2
  %32 = call i32 @atomic_sub_and_test(i32 %29, i32* %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %28
  br label %61

35:                                               ; preds = %28
  %36 = load %struct.drbd_request*, %struct.drbd_request** %4, align 8
  %37 = load %struct.bio_and_error*, %struct.bio_and_error** %5, align 8
  %38 = call i32 @drbd_req_complete(%struct.drbd_request* %36, %struct.bio_and_error* %37)
  %39 = load %struct.drbd_request*, %struct.drbd_request** %4, align 8
  %40 = getelementptr inbounds %struct.drbd_request, %struct.drbd_request* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @RQ_LOCAL_ABORTED, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %35
  br label %61

46:                                               ; preds = %35
  %47 = load %struct.drbd_request*, %struct.drbd_request** %4, align 8
  %48 = getelementptr inbounds %struct.drbd_request, %struct.drbd_request* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @RQ_POSTPONED, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %46
  %54 = load %struct.drbd_request*, %struct.drbd_request** %4, align 8
  %55 = call i32 @drbd_restart_request(%struct.drbd_request* %54)
  br label %61

56:                                               ; preds = %46
  %57 = load %struct.drbd_request*, %struct.drbd_request** %4, align 8
  %58 = getelementptr inbounds %struct.drbd_request, %struct.drbd_request* %57, i32 0, i32 1
  %59 = load i32, i32* @drbd_req_destroy, align 4
  %60 = call i32 @kref_put(i32* %58, i32 %59)
  br label %61

61:                                               ; preds = %56, %53, %45, %34, %27
  ret void
}

declare dso_local i32 @D_ASSERT(%struct.drbd_device*, i32) #1

declare dso_local i32 @atomic_sub_and_test(i32, i32*) #1

declare dso_local i32 @drbd_req_complete(%struct.drbd_request*, %struct.bio_and_error*) #1

declare dso_local i32 @drbd_restart_request(%struct.drbd_request*) #1

declare dso_local i32 @kref_put(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
