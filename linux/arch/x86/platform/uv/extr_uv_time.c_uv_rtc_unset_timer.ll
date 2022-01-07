; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/platform/uv/extr_uv_time.c_uv_rtc_unset_timer.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/platform/uv/extr_uv_time.c_uv_rtc_unset_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uv_rtc_timer_head = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@blade_info = common dso_local global %struct.uv_rtc_timer_head** null, align 8
@ULLONG_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @uv_rtc_unset_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uv_rtc_unset_timer(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.uv_rtc_timer_head*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %12 = load i32, i32* %3, align 4
  %13 = call i32 @uv_cpu_to_pnode(i32 %12)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %3, align 4
  %15 = call i32 @uv_cpu_to_blade_id(i32 %14)
  store i32 %15, i32* %6, align 4
  %16 = load %struct.uv_rtc_timer_head**, %struct.uv_rtc_timer_head*** @blade_info, align 8
  %17 = load i32, i32* %6, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.uv_rtc_timer_head*, %struct.uv_rtc_timer_head** %16, i64 %18
  %20 = load %struct.uv_rtc_timer_head*, %struct.uv_rtc_timer_head** %19, align 8
  store %struct.uv_rtc_timer_head* %20, %struct.uv_rtc_timer_head** %7, align 8
  %21 = load i32, i32* %3, align 4
  %22 = call i32 @uv_cpu_blade_processor_id(i32 %21)
  store i32 %22, i32* %8, align 4
  %23 = load %struct.uv_rtc_timer_head*, %struct.uv_rtc_timer_head** %7, align 8
  %24 = getelementptr inbounds %struct.uv_rtc_timer_head, %struct.uv_rtc_timer_head* %23, i32 0, i32 2
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = load i32, i32* %8, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  store i64* %29, i64** %9, align 8
  store i32 0, i32* %11, align 4
  %30 = load %struct.uv_rtc_timer_head*, %struct.uv_rtc_timer_head** %7, align 8
  %31 = getelementptr inbounds %struct.uv_rtc_timer_head, %struct.uv_rtc_timer_head* %30, i32 0, i32 1
  %32 = load i64, i64* %10, align 8
  %33 = call i32 @spin_lock_irqsave(i32* %31, i64 %32)
  %34 = load %struct.uv_rtc_timer_head*, %struct.uv_rtc_timer_head** %7, align 8
  %35 = getelementptr inbounds %struct.uv_rtc_timer_head, %struct.uv_rtc_timer_head* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* %8, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %44

39:                                               ; preds = %2
  %40 = call i64 @uv_read_rtc(i32* null)
  %41 = load i64*, i64** %9, align 8
  %42 = load i64, i64* %41, align 8
  %43 = icmp sge i64 %40, %42
  br i1 %43, label %47, label %44

44:                                               ; preds = %39, %2
  %45 = load i32, i32* %4, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %44, %39
  store i32 1, i32* %11, align 4
  br label %48

48:                                               ; preds = %47, %44
  %49 = load i32, i32* %11, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %64

51:                                               ; preds = %48
  %52 = load i64, i64* @ULLONG_MAX, align 8
  %53 = load i64*, i64** %9, align 8
  store i64 %52, i64* %53, align 8
  %54 = load %struct.uv_rtc_timer_head*, %struct.uv_rtc_timer_head** %7, align 8
  %55 = getelementptr inbounds %struct.uv_rtc_timer_head, %struct.uv_rtc_timer_head* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* %8, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %63

59:                                               ; preds = %51
  %60 = load %struct.uv_rtc_timer_head*, %struct.uv_rtc_timer_head** %7, align 8
  %61 = load i32, i32* %5, align 4
  %62 = call i32 @uv_rtc_find_next_timer(%struct.uv_rtc_timer_head* %60, i32 %61)
  br label %63

63:                                               ; preds = %59, %51
  br label %64

64:                                               ; preds = %63, %48
  %65 = load %struct.uv_rtc_timer_head*, %struct.uv_rtc_timer_head** %7, align 8
  %66 = getelementptr inbounds %struct.uv_rtc_timer_head, %struct.uv_rtc_timer_head* %65, i32 0, i32 1
  %67 = load i64, i64* %10, align 8
  %68 = call i32 @spin_unlock_irqrestore(i32* %66, i64 %67)
  %69 = load i32, i32* %11, align 4
  ret i32 %69
}

declare dso_local i32 @uv_cpu_to_pnode(i32) #1

declare dso_local i32 @uv_cpu_to_blade_id(i32) #1

declare dso_local i32 @uv_cpu_blade_processor_id(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @uv_read_rtc(i32*) #1

declare dso_local i32 @uv_rtc_find_next_timer(%struct.uv_rtc_timer_head*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
