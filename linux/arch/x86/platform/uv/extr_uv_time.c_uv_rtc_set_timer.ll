; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/platform/uv/extr_uv_time.c_uv_rtc_set_timer.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/platform/uv/extr_uv_time.c_uv_rtc_set_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uv_rtc_timer_head = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@blade_info = common dso_local global %struct.uv_rtc_timer_head** null, align 8
@ULLONG_MAX = common dso_local global i32 0, align 4
@ETIME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @uv_rtc_set_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uv_rtc_set_timer(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.uv_rtc_timer_head*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @uv_cpu_to_pnode(i32 %13)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @uv_cpu_to_blade_id(i32 %15)
  store i32 %16, i32* %7, align 4
  %17 = load %struct.uv_rtc_timer_head**, %struct.uv_rtc_timer_head*** @blade_info, align 8
  %18 = load i32, i32* %7, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.uv_rtc_timer_head*, %struct.uv_rtc_timer_head** %17, i64 %19
  %21 = load %struct.uv_rtc_timer_head*, %struct.uv_rtc_timer_head** %20, align 8
  store %struct.uv_rtc_timer_head* %21, %struct.uv_rtc_timer_head** %8, align 8
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @uv_cpu_blade_processor_id(i32 %22)
  store i32 %23, i32* %9, align 4
  %24 = load %struct.uv_rtc_timer_head*, %struct.uv_rtc_timer_head** %8, align 8
  %25 = getelementptr inbounds %struct.uv_rtc_timer_head, %struct.uv_rtc_timer_head* %24, i32 0, i32 2
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = load i32, i32* %9, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  store i32* %30, i32** %10, align 8
  %31 = load %struct.uv_rtc_timer_head*, %struct.uv_rtc_timer_head** %8, align 8
  %32 = getelementptr inbounds %struct.uv_rtc_timer_head, %struct.uv_rtc_timer_head* %31, i32 0, i32 1
  %33 = load i64, i64* %11, align 8
  %34 = call i32 @spin_lock_irqsave(i32* %32, i64 %33)
  %35 = load %struct.uv_rtc_timer_head*, %struct.uv_rtc_timer_head** %8, align 8
  %36 = getelementptr inbounds %struct.uv_rtc_timer_head, %struct.uv_rtc_timer_head* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  store i32 %37, i32* %12, align 4
  %38 = load i32, i32* %5, align 4
  %39 = load i32*, i32** %10, align 8
  store i32 %38, i32* %39, align 4
  %40 = load i32, i32* %12, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %57, label %42

42:                                               ; preds = %2
  %43 = load i32, i32* %9, align 4
  %44 = load i32, i32* %12, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %57, label %46

46:                                               ; preds = %42
  %47 = load i32, i32* %5, align 4
  %48 = load %struct.uv_rtc_timer_head*, %struct.uv_rtc_timer_head** %8, align 8
  %49 = getelementptr inbounds %struct.uv_rtc_timer_head, %struct.uv_rtc_timer_head* %48, i32 0, i32 2
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = load i32, i32* %12, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = icmp slt i32 %47, %55
  br i1 %56, label %57, label %78

57:                                               ; preds = %46, %42, %2
  %58 = load i32, i32* %9, align 4
  %59 = load %struct.uv_rtc_timer_head*, %struct.uv_rtc_timer_head** %8, align 8
  %60 = getelementptr inbounds %struct.uv_rtc_timer_head, %struct.uv_rtc_timer_head* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 8
  %61 = load i32, i32* %4, align 4
  %62 = load i32, i32* %5, align 4
  %63 = call i64 @uv_setup_intr(i32 %61, i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %77

65:                                               ; preds = %57
  %66 = load i32, i32* @ULLONG_MAX, align 4
  %67 = load i32*, i32** %10, align 8
  store i32 %66, i32* %67, align 4
  %68 = load %struct.uv_rtc_timer_head*, %struct.uv_rtc_timer_head** %8, align 8
  %69 = load i32, i32* %6, align 4
  %70 = call i32 @uv_rtc_find_next_timer(%struct.uv_rtc_timer_head* %68, i32 %69)
  %71 = load %struct.uv_rtc_timer_head*, %struct.uv_rtc_timer_head** %8, align 8
  %72 = getelementptr inbounds %struct.uv_rtc_timer_head, %struct.uv_rtc_timer_head* %71, i32 0, i32 1
  %73 = load i64, i64* %11, align 8
  %74 = call i32 @spin_unlock_irqrestore(i32* %72, i64 %73)
  %75 = load i32, i32* @ETIME, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %3, align 4
  br label %83

77:                                               ; preds = %57
  br label %78

78:                                               ; preds = %77, %46
  %79 = load %struct.uv_rtc_timer_head*, %struct.uv_rtc_timer_head** %8, align 8
  %80 = getelementptr inbounds %struct.uv_rtc_timer_head, %struct.uv_rtc_timer_head* %79, i32 0, i32 1
  %81 = load i64, i64* %11, align 8
  %82 = call i32 @spin_unlock_irqrestore(i32* %80, i64 %81)
  store i32 0, i32* %3, align 4
  br label %83

83:                                               ; preds = %78, %65
  %84 = load i32, i32* %3, align 4
  ret i32 %84
}

declare dso_local i32 @uv_cpu_to_pnode(i32) #1

declare dso_local i32 @uv_cpu_to_blade_id(i32) #1

declare dso_local i32 @uv_cpu_blade_processor_id(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @uv_setup_intr(i32, i32) #1

declare dso_local i32 @uv_rtc_find_next_timer(%struct.uv_rtc_timer_head*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
