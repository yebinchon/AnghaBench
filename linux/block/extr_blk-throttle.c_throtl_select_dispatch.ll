; ModuleID = '/home/carl/AnghaBench/linux/block/extr_blk-throttle.c_throtl_select_dispatch.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_blk-throttle.c_throtl_select_dispatch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.throtl_service_queue = type { i64* }
%struct.throtl_grp = type { %struct.throtl_service_queue, i32 }

@jiffies = common dso_local global i32 0, align 4
@throtl_quantum = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.throtl_service_queue*)* @throtl_select_dispatch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @throtl_select_dispatch(%struct.throtl_service_queue* %0) #0 {
  %2 = alloca %struct.throtl_service_queue*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.throtl_grp*, align 8
  %5 = alloca %struct.throtl_service_queue*, align 8
  store %struct.throtl_service_queue* %0, %struct.throtl_service_queue** %2, align 8
  store i32 0, i32* %3, align 4
  br label %6

6:                                                ; preds = %1, %52
  %7 = load %struct.throtl_service_queue*, %struct.throtl_service_queue** %2, align 8
  %8 = call %struct.throtl_grp* @throtl_rb_first(%struct.throtl_service_queue* %7)
  store %struct.throtl_grp* %8, %struct.throtl_grp** %4, align 8
  %9 = load %struct.throtl_grp*, %struct.throtl_grp** %4, align 8
  %10 = icmp ne %struct.throtl_grp* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %6
  br label %53

12:                                               ; preds = %6
  %13 = load i32, i32* @jiffies, align 4
  %14 = load %struct.throtl_grp*, %struct.throtl_grp** %4, align 8
  %15 = getelementptr inbounds %struct.throtl_grp, %struct.throtl_grp* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = call i64 @time_before(i32 %13, i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %12
  br label %53

20:                                               ; preds = %12
  %21 = load %struct.throtl_grp*, %struct.throtl_grp** %4, align 8
  %22 = call i32 @throtl_dequeue_tg(%struct.throtl_grp* %21)
  %23 = load %struct.throtl_grp*, %struct.throtl_grp** %4, align 8
  %24 = call i64 @throtl_dispatch_tg(%struct.throtl_grp* %23)
  %25 = load i32, i32* %3, align 4
  %26 = zext i32 %25 to i64
  %27 = add nsw i64 %26, %24
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* %3, align 4
  %29 = load %struct.throtl_grp*, %struct.throtl_grp** %4, align 8
  %30 = getelementptr inbounds %struct.throtl_grp, %struct.throtl_grp* %29, i32 0, i32 0
  store %struct.throtl_service_queue* %30, %struct.throtl_service_queue** %5, align 8
  %31 = load %struct.throtl_service_queue*, %struct.throtl_service_queue** %5, align 8
  %32 = getelementptr inbounds %struct.throtl_service_queue, %struct.throtl_service_queue* %31, i32 0, i32 0
  %33 = load i64*, i64** %32, align 8
  %34 = getelementptr inbounds i64, i64* %33, i64 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %44, label %37

37:                                               ; preds = %20
  %38 = load %struct.throtl_service_queue*, %struct.throtl_service_queue** %5, align 8
  %39 = getelementptr inbounds %struct.throtl_service_queue, %struct.throtl_service_queue* %38, i32 0, i32 0
  %40 = load i64*, i64** %39, align 8
  %41 = getelementptr inbounds i64, i64* %40, i64 1
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %37, %20
  %45 = load %struct.throtl_grp*, %struct.throtl_grp** %4, align 8
  %46 = call i32 @tg_update_disptime(%struct.throtl_grp* %45)
  br label %47

47:                                               ; preds = %44, %37
  %48 = load i32, i32* %3, align 4
  %49 = load i32, i32* @throtl_quantum, align 4
  %50 = icmp uge i32 %48, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %47
  br label %53

52:                                               ; preds = %47
  br label %6

53:                                               ; preds = %51, %19, %11
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local %struct.throtl_grp* @throtl_rb_first(%struct.throtl_service_queue*) #1

declare dso_local i64 @time_before(i32, i32) #1

declare dso_local i32 @throtl_dequeue_tg(%struct.throtl_grp*) #1

declare dso_local i64 @throtl_dispatch_tg(%struct.throtl_grp*) #1

declare dso_local i32 @tg_update_disptime(%struct.throtl_grp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
