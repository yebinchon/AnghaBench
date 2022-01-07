; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/extr_clk-divider.c__get_val.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/extr_clk-divider.c__get_val.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_div_table = type { i32 }

@CLK_DIVIDER_ONE_BASED = common dso_local global i64 0, align 8
@CLK_DIVIDER_POWER_OF_TWO = common dso_local global i64 0, align 8
@CLK_DIVIDER_MAX_AT_ZERO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_div_table*, i32, i64, i32)* @_get_val to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_get_val(%struct.clk_div_table* %0, i32 %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.clk_div_table*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.clk_div_table* %0, %struct.clk_div_table** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %10 = load i64, i64* %8, align 8
  %11 = load i64, i64* @CLK_DIVIDER_ONE_BASED, align 8
  %12 = and i64 %10, %11
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %4
  %15 = load i32, i32* %7, align 4
  store i32 %15, i32* %5, align 4
  br label %50

16:                                               ; preds = %4
  %17 = load i64, i64* %8, align 8
  %18 = load i64, i64* @CLK_DIVIDER_POWER_OF_TWO, align 8
  %19 = and i64 %17, %18
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %16
  %22 = load i32, i32* %7, align 4
  %23 = call i32 @__ffs(i32 %22)
  store i32 %23, i32* %5, align 4
  br label %50

24:                                               ; preds = %16
  %25 = load i64, i64* %8, align 8
  %26 = load i64, i64* @CLK_DIVIDER_MAX_AT_ZERO, align 8
  %27 = and i64 %25, %26
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %40

29:                                               ; preds = %24
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* %9, align 4
  %32 = call i32 @clk_div_mask(i32 %31)
  %33 = add nsw i32 %32, 1
  %34 = icmp eq i32 %30, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %29
  br label %38

36:                                               ; preds = %29
  %37 = load i32, i32* %7, align 4
  br label %38

38:                                               ; preds = %36, %35
  %39 = phi i32 [ 0, %35 ], [ %37, %36 ]
  store i32 %39, i32* %5, align 4
  br label %50

40:                                               ; preds = %24
  %41 = load %struct.clk_div_table*, %struct.clk_div_table** %6, align 8
  %42 = icmp ne %struct.clk_div_table* %41, null
  br i1 %42, label %43, label %47

43:                                               ; preds = %40
  %44 = load %struct.clk_div_table*, %struct.clk_div_table** %6, align 8
  %45 = load i32, i32* %7, align 4
  %46 = call i32 @_get_table_val(%struct.clk_div_table* %44, i32 %45)
  store i32 %46, i32* %5, align 4
  br label %50

47:                                               ; preds = %40
  %48 = load i32, i32* %7, align 4
  %49 = sub i32 %48, 1
  store i32 %49, i32* %5, align 4
  br label %50

50:                                               ; preds = %47, %43, %38, %21, %14
  %51 = load i32, i32* %5, align 4
  ret i32 %51
}

declare dso_local i32 @__ffs(i32) #1

declare dso_local i32 @clk_div_mask(i32) #1

declare dso_local i32 @_get_table_val(%struct.clk_div_table*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
