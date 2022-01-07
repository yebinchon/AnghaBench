; ModuleID = '/home/carl/AnghaBench/linux/drivers/base/power/extr_wakeup.c_print_wakeup_source_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/base/power/extr_wakeup.c_print_wakeup_source_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.wakeup_source = type { i64, i32, i64, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64 }

@.str = private unnamed_addr constant [56 x i8] c"%-12s\09%lu\09\09%lu\09\09%lu\09\09%lu\09\09%lld\09\09%lld\09\09%lld\09\09%lld\09\09%lld\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, %struct.wakeup_source*)* @print_wakeup_source_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @print_wakeup_source_stats(%struct.seq_file* %0, %struct.wakeup_source* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca %struct.wakeup_source*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store %struct.wakeup_source* %1, %struct.wakeup_source** %4, align 8
  %12 = load %struct.wakeup_source*, %struct.wakeup_source** %4, align 8
  %13 = getelementptr inbounds %struct.wakeup_source, %struct.wakeup_source* %12, i32 0, i32 1
  %14 = load i64, i64* %5, align 8
  %15 = call i32 @spin_lock_irqsave(i32* %13, i64 %14)
  %16 = load %struct.wakeup_source*, %struct.wakeup_source** %4, align 8
  %17 = getelementptr inbounds %struct.wakeup_source, %struct.wakeup_source* %16, i32 0, i32 12
  %18 = load i64, i64* %17, align 8
  store i64 %18, i64* %6, align 8
  %19 = load %struct.wakeup_source*, %struct.wakeup_source** %4, align 8
  %20 = getelementptr inbounds %struct.wakeup_source, %struct.wakeup_source* %19, i32 0, i32 11
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %7, align 8
  %22 = load %struct.wakeup_source*, %struct.wakeup_source** %4, align 8
  %23 = getelementptr inbounds %struct.wakeup_source, %struct.wakeup_source* %22, i32 0, i32 10
  %24 = load i64, i64* %23, align 8
  store i64 %24, i64* %10, align 8
  %25 = load %struct.wakeup_source*, %struct.wakeup_source** %4, align 8
  %26 = getelementptr inbounds %struct.wakeup_source, %struct.wakeup_source* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  store i64 %27, i64* %8, align 8
  %28 = load %struct.wakeup_source*, %struct.wakeup_source** %4, align 8
  %29 = getelementptr inbounds %struct.wakeup_source, %struct.wakeup_source* %28, i32 0, i32 9
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %61

32:                                               ; preds = %2
  %33 = call i64 (...) @ktime_get()
  store i64 %33, i64* %11, align 8
  %34 = load i64, i64* %11, align 8
  %35 = load %struct.wakeup_source*, %struct.wakeup_source** %4, align 8
  %36 = getelementptr inbounds %struct.wakeup_source, %struct.wakeup_source* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = call i64 @ktime_sub(i64 %34, i64 %37)
  store i64 %38, i64* %9, align 8
  %39 = load i64, i64* %6, align 8
  %40 = load i64, i64* %9, align 8
  %41 = call i64 @ktime_add(i64 %39, i64 %40)
  store i64 %41, i64* %6, align 8
  %42 = load i64, i64* %9, align 8
  %43 = load i64, i64* %7, align 8
  %44 = icmp sgt i64 %42, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %32
  %46 = load i64, i64* %9, align 8
  store i64 %46, i64* %7, align 8
  br label %47

47:                                               ; preds = %45, %32
  %48 = load %struct.wakeup_source*, %struct.wakeup_source** %4, align 8
  %49 = getelementptr inbounds %struct.wakeup_source, %struct.wakeup_source* %48, i32 0, i32 8
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %60

52:                                               ; preds = %47
  %53 = load i64, i64* %10, align 8
  %54 = load i64, i64* %11, align 8
  %55 = load %struct.wakeup_source*, %struct.wakeup_source** %4, align 8
  %56 = getelementptr inbounds %struct.wakeup_source, %struct.wakeup_source* %55, i32 0, i32 7
  %57 = load i64, i64* %56, align 8
  %58 = call i64 @ktime_sub(i64 %54, i64 %57)
  %59 = call i64 @ktime_add(i64 %53, i64 %58)
  store i64 %59, i64* %10, align 8
  br label %60

60:                                               ; preds = %52, %47
  br label %62

61:                                               ; preds = %2
  store i64 0, i64* %9, align 8
  br label %62

62:                                               ; preds = %61, %60
  %63 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %64 = load %struct.wakeup_source*, %struct.wakeup_source** %4, align 8
  %65 = getelementptr inbounds %struct.wakeup_source, %struct.wakeup_source* %64, i32 0, i32 6
  %66 = load i32, i32* %65, align 4
  %67 = load i64, i64* %8, align 8
  %68 = load %struct.wakeup_source*, %struct.wakeup_source** %4, align 8
  %69 = getelementptr inbounds %struct.wakeup_source, %struct.wakeup_source* %68, i32 0, i32 5
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.wakeup_source*, %struct.wakeup_source** %4, align 8
  %72 = getelementptr inbounds %struct.wakeup_source, %struct.wakeup_source* %71, i32 0, i32 4
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.wakeup_source*, %struct.wakeup_source** %4, align 8
  %75 = getelementptr inbounds %struct.wakeup_source, %struct.wakeup_source* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 8
  %77 = load i64, i64* %9, align 8
  %78 = call i32 @ktime_to_ms(i64 %77)
  %79 = load i64, i64* %6, align 8
  %80 = call i32 @ktime_to_ms(i64 %79)
  %81 = load i64, i64* %7, align 8
  %82 = call i32 @ktime_to_ms(i64 %81)
  %83 = load %struct.wakeup_source*, %struct.wakeup_source** %4, align 8
  %84 = getelementptr inbounds %struct.wakeup_source, %struct.wakeup_source* %83, i32 0, i32 2
  %85 = load i64, i64* %84, align 8
  %86 = call i32 @ktime_to_ms(i64 %85)
  %87 = load i64, i64* %10, align 8
  %88 = call i32 @ktime_to_ms(i64 %87)
  %89 = call i32 @seq_printf(%struct.seq_file* %63, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i32 %66, i64 %67, i32 %70, i32 %73, i32 %76, i32 %78, i32 %80, i32 %82, i32 %86, i32 %88)
  %90 = load %struct.wakeup_source*, %struct.wakeup_source** %4, align 8
  %91 = getelementptr inbounds %struct.wakeup_source, %struct.wakeup_source* %90, i32 0, i32 1
  %92 = load i64, i64* %5, align 8
  %93 = call i32 @spin_unlock_irqrestore(i32* %91, i64 %92)
  ret i32 0
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @ktime_get(...) #1

declare dso_local i64 @ktime_sub(i64, i64) #1

declare dso_local i64 @ktime_add(i64, i64) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ktime_to_ms(i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
