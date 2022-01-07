; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/extr_clk-divider.c__get_maxdiv.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/extr_clk-divider.c__get_maxdiv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_div_table = type { i32 }

@CLK_DIVIDER_ONE_BASED = common dso_local global i64 0, align 8
@CLK_DIVIDER_POWER_OF_TWO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_div_table*, i32, i64)* @_get_maxdiv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_get_maxdiv(%struct.clk_div_table* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.clk_div_table*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.clk_div_table* %0, %struct.clk_div_table** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @CLK_DIVIDER_ONE_BASED, align 8
  %10 = and i64 %8, %9
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %3
  %13 = load i32, i32* %6, align 4
  %14 = call i32 @clk_div_mask(i32 %13)
  store i32 %14, i32* %4, align 4
  br label %35

15:                                               ; preds = %3
  %16 = load i64, i64* %7, align 8
  %17 = load i64, i64* @CLK_DIVIDER_POWER_OF_TWO, align 8
  %18 = and i64 %16, %17
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %15
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @clk_div_mask(i32 %21)
  %23 = shl i32 1, %22
  store i32 %23, i32* %4, align 4
  br label %35

24:                                               ; preds = %15
  %25 = load %struct.clk_div_table*, %struct.clk_div_table** %5, align 8
  %26 = icmp ne %struct.clk_div_table* %25, null
  br i1 %26, label %27, label %31

27:                                               ; preds = %24
  %28 = load %struct.clk_div_table*, %struct.clk_div_table** %5, align 8
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @_get_table_maxdiv(%struct.clk_div_table* %28, i32 %29)
  store i32 %30, i32* %4, align 4
  br label %35

31:                                               ; preds = %24
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @clk_div_mask(i32 %32)
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %4, align 4
  br label %35

35:                                               ; preds = %31, %27, %20, %12
  %36 = load i32, i32* %4, align 4
  ret i32 %36
}

declare dso_local i32 @clk_div_mask(i32) #1

declare dso_local i32 @_get_table_maxdiv(%struct.clk_div_table*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
