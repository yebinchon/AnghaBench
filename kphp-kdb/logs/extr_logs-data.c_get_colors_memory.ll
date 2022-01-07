; ModuleID = '/home/carl/AnghaBench/kphp-kdb/logs/extr_logs-data.c_get_colors_memory.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/logs/extr_logs-data.c_get_colors_memory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FN = common dso_local global i32 0, align 4
@std_t = common dso_local global i64* null, align 8
@color_ll = common dso_local global i32* null, align 8
@color_int = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @get_colors_memory() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i32, align 4
  store i64 0, i64* %1, align 8
  store i32 0, i32* %2, align 4
  br label %3

3:                                                ; preds = %31, %0
  %4 = load i32, i32* %2, align 4
  %5 = load i32, i32* @FN, align 4
  %6 = icmp slt i32 %4, %5
  br i1 %6, label %7, label %42

7:                                                ; preds = %3
  %8 = load i64*, i64** @std_t, align 8
  %9 = load i32, i32* %2, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds i64, i64* %8, i64 %10
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %22

14:                                               ; preds = %7
  %15 = load i32*, i32** @color_ll, align 8
  %16 = load i32, i32* %2, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %15, i64 %17
  %19 = call i64 @map_ll_int_get_memory_used(i32* %18)
  %20 = load i64, i64* %1, align 8
  %21 = add nsw i64 %20, %19
  store i64 %21, i64* %1, align 8
  br label %30

22:                                               ; preds = %7
  %23 = load i32*, i32** @color_int, align 8
  %24 = load i32, i32* %2, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = call i64 @map_int_int_get_memory_used(i32* %26)
  %28 = load i64, i64* %1, align 8
  %29 = add nsw i64 %28, %27
  store i64 %29, i64* %1, align 8
  br label %30

30:                                               ; preds = %22, %14
  br label %31

31:                                               ; preds = %30
  %32 = load i64*, i64** @std_t, align 8
  %33 = load i32, i32* %2, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i64, i64* %32, i64 %34
  %36 = load i64, i64* %35, align 8
  %37 = add nsw i64 1, %36
  %38 = load i32, i32* %2, align 4
  %39 = sext i32 %38 to i64
  %40 = add nsw i64 %39, %37
  %41 = trunc i64 %40 to i32
  store i32 %41, i32* %2, align 4
  br label %3

42:                                               ; preds = %3
  %43 = load i64, i64* %1, align 8
  ret i64 %43
}

declare dso_local i64 @map_ll_int_get_memory_used(i32*) #1

declare dso_local i64 @map_int_int_get_memory_used(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
