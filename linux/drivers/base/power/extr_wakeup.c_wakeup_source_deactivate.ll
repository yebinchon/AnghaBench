; ModuleID = '/home/carl/AnghaBench/linux/drivers/base/power/extr_wakeup.c_wakeup_source_deactivate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/base/power/extr_wakeup.c_wakeup_source_deactivate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wakeup_source = type { i64, i64, i32, i8*, i32, i64, i64, i32, i8*, i32 }

@MAX_IN_PROGRESS = common dso_local global i32 0, align 4
@combined_event_count = common dso_local global i32 0, align 4
@wakeup_count_wait_queue = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wakeup_source*)* @wakeup_source_deactivate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wakeup_source_deactivate(%struct.wakeup_source* %0) #0 {
  %2 = alloca %struct.wakeup_source*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store %struct.wakeup_source* %0, %struct.wakeup_source** %2, align 8
  %8 = load %struct.wakeup_source*, %struct.wakeup_source** %2, align 8
  %9 = getelementptr inbounds %struct.wakeup_source, %struct.wakeup_source* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = add nsw i64 %10, 1
  store i64 %11, i64* %9, align 8
  %12 = load %struct.wakeup_source*, %struct.wakeup_source** %2, align 8
  %13 = getelementptr inbounds %struct.wakeup_source, %struct.wakeup_source* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.wakeup_source*, %struct.wakeup_source** %2, align 8
  %16 = getelementptr inbounds %struct.wakeup_source, %struct.wakeup_source* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %14, %17
  br i1 %18, label %19, label %24

19:                                               ; preds = %1
  %20 = load %struct.wakeup_source*, %struct.wakeup_source** %2, align 8
  %21 = getelementptr inbounds %struct.wakeup_source, %struct.wakeup_source* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = add nsw i64 %22, -1
  store i64 %23, i64* %21, align 8
  br label %84

24:                                               ; preds = %1
  %25 = load %struct.wakeup_source*, %struct.wakeup_source** %2, align 8
  %26 = getelementptr inbounds %struct.wakeup_source, %struct.wakeup_source* %25, i32 0, i32 2
  store i32 0, i32* %26, align 8
  %27 = call i8* (...) @ktime_get()
  store i8* %27, i8** %7, align 8
  %28 = load i8*, i8** %7, align 8
  %29 = load %struct.wakeup_source*, %struct.wakeup_source** %2, align 8
  %30 = getelementptr inbounds %struct.wakeup_source, %struct.wakeup_source* %29, i32 0, i32 8
  %31 = load i8*, i8** %30, align 8
  %32 = call i8* @ktime_sub(i8* %28, i8* %31)
  store i8* %32, i8** %6, align 8
  %33 = load %struct.wakeup_source*, %struct.wakeup_source** %2, align 8
  %34 = getelementptr inbounds %struct.wakeup_source, %struct.wakeup_source* %33, i32 0, i32 9
  %35 = load i32, i32* %34, align 8
  %36 = load i8*, i8** %6, align 8
  %37 = call i32 @ktime_add(i32 %35, i8* %36)
  %38 = load %struct.wakeup_source*, %struct.wakeup_source** %2, align 8
  %39 = getelementptr inbounds %struct.wakeup_source, %struct.wakeup_source* %38, i32 0, i32 9
  store i32 %37, i32* %39, align 8
  %40 = load i8*, i8** %6, align 8
  %41 = call i64 @ktime_to_ns(i8* %40)
  %42 = load %struct.wakeup_source*, %struct.wakeup_source** %2, align 8
  %43 = getelementptr inbounds %struct.wakeup_source, %struct.wakeup_source* %42, i32 0, i32 3
  %44 = load i8*, i8** %43, align 8
  %45 = call i64 @ktime_to_ns(i8* %44)
  %46 = icmp sgt i64 %41, %45
  br i1 %46, label %47, label %51

47:                                               ; preds = %24
  %48 = load i8*, i8** %6, align 8
  %49 = load %struct.wakeup_source*, %struct.wakeup_source** %2, align 8
  %50 = getelementptr inbounds %struct.wakeup_source, %struct.wakeup_source* %49, i32 0, i32 3
  store i8* %48, i8** %50, align 8
  br label %51

51:                                               ; preds = %47, %24
  %52 = load i8*, i8** %7, align 8
  %53 = load %struct.wakeup_source*, %struct.wakeup_source** %2, align 8
  %54 = getelementptr inbounds %struct.wakeup_source, %struct.wakeup_source* %53, i32 0, i32 8
  store i8* %52, i8** %54, align 8
  %55 = load %struct.wakeup_source*, %struct.wakeup_source** %2, align 8
  %56 = getelementptr inbounds %struct.wakeup_source, %struct.wakeup_source* %55, i32 0, i32 7
  %57 = call i32 @del_timer(i32* %56)
  %58 = load %struct.wakeup_source*, %struct.wakeup_source** %2, align 8
  %59 = getelementptr inbounds %struct.wakeup_source, %struct.wakeup_source* %58, i32 0, i32 6
  store i64 0, i64* %59, align 8
  %60 = load %struct.wakeup_source*, %struct.wakeup_source** %2, align 8
  %61 = getelementptr inbounds %struct.wakeup_source, %struct.wakeup_source* %60, i32 0, i32 5
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %51
  %65 = load %struct.wakeup_source*, %struct.wakeup_source** %2, align 8
  %66 = load i8*, i8** %7, align 8
  %67 = call i32 @update_prevent_sleep_time(%struct.wakeup_source* %65, i8* %66)
  br label %68

68:                                               ; preds = %64, %51
  %69 = load i32, i32* @MAX_IN_PROGRESS, align 4
  %70 = call i32 @atomic_add_return(i32 %69, i32* @combined_event_count)
  store i32 %70, i32* %5, align 4
  %71 = load %struct.wakeup_source*, %struct.wakeup_source** %2, align 8
  %72 = getelementptr inbounds %struct.wakeup_source, %struct.wakeup_source* %71, i32 0, i32 4
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* %5, align 4
  %75 = call i32 @trace_wakeup_source_deactivate(i32 %73, i32 %74)
  %76 = call i32 @split_counters(i32* %3, i32* %4)
  %77 = load i32, i32* %4, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %84, label %79

79:                                               ; preds = %68
  %80 = call i64 @waitqueue_active(i32* @wakeup_count_wait_queue)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %79
  %83 = call i32 @wake_up(i32* @wakeup_count_wait_queue)
  br label %84

84:                                               ; preds = %19, %82, %79, %68
  ret void
}

declare dso_local i8* @ktime_get(...) #1

declare dso_local i8* @ktime_sub(i8*, i8*) #1

declare dso_local i32 @ktime_add(i32, i8*) #1

declare dso_local i64 @ktime_to_ns(i8*) #1

declare dso_local i32 @del_timer(i32*) #1

declare dso_local i32 @update_prevent_sleep_time(%struct.wakeup_source*, i8*) #1

declare dso_local i32 @atomic_add_return(i32, i32*) #1

declare dso_local i32 @trace_wakeup_source_deactivate(i32, i32) #1

declare dso_local i32 @split_counters(i32*, i32*) #1

declare dso_local i64 @waitqueue_active(i32*) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
