; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/extr_clk-divider.c__div_round_closest.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/extr_clk-divider.c__div_round_closest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_div_table = type { i32 }

@CLK_DIVIDER_POWER_OF_TWO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_div_table*, i64, i64, i64)* @_div_round_closest to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_div_round_closest(%struct.clk_div_table* %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.clk_div_table*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.clk_div_table* %0, %struct.clk_div_table** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %13 = load i64, i64* %6, align 8
  %14 = trunc i64 %13 to i32
  %15 = load i64, i64* %7, align 8
  %16 = trunc i64 %15 to i32
  %17 = call i8* @DIV_ROUND_UP_ULL(i32 %14, i32 %16)
  %18 = ptrtoint i8* %17 to i32
  store i32 %18, i32* %9, align 4
  %19 = load i64, i64* %6, align 8
  %20 = load i64, i64* %7, align 8
  %21 = udiv i64 %19, %20
  %22 = trunc i64 %21 to i32
  store i32 %22, i32* %10, align 4
  %23 = load i64, i64* %8, align 8
  %24 = load i64, i64* @CLK_DIVIDER_POWER_OF_TWO, align 8
  %25 = and i64 %23, %24
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %4
  %28 = load i32, i32* %9, align 4
  %29 = call i32 @__roundup_pow_of_two(i32 %28)
  store i32 %29, i32* %9, align 4
  %30 = load i32, i32* %10, align 4
  %31 = call i32 @__rounddown_pow_of_two(i32 %30)
  store i32 %31, i32* %10, align 4
  br label %43

32:                                               ; preds = %4
  %33 = load %struct.clk_div_table*, %struct.clk_div_table** %5, align 8
  %34 = icmp ne %struct.clk_div_table* %33, null
  br i1 %34, label %35, label %42

35:                                               ; preds = %32
  %36 = load %struct.clk_div_table*, %struct.clk_div_table** %5, align 8
  %37 = load i32, i32* %9, align 4
  %38 = call i32 @_round_up_table(%struct.clk_div_table* %36, i32 %37)
  store i32 %38, i32* %9, align 4
  %39 = load %struct.clk_div_table*, %struct.clk_div_table** %5, align 8
  %40 = load i32, i32* %10, align 4
  %41 = call i32 @_round_down_table(%struct.clk_div_table* %39, i32 %40)
  store i32 %41, i32* %10, align 4
  br label %42

42:                                               ; preds = %35, %32
  br label %43

43:                                               ; preds = %42, %27
  %44 = load i64, i64* %6, align 8
  %45 = trunc i64 %44 to i32
  %46 = load i32, i32* %9, align 4
  %47 = call i8* @DIV_ROUND_UP_ULL(i32 %45, i32 %46)
  %48 = ptrtoint i8* %47 to i64
  store i64 %48, i64* %11, align 8
  %49 = load i64, i64* %6, align 8
  %50 = trunc i64 %49 to i32
  %51 = load i32, i32* %10, align 4
  %52 = call i8* @DIV_ROUND_UP_ULL(i32 %50, i32 %51)
  %53 = ptrtoint i8* %52 to i64
  store i64 %53, i64* %12, align 8
  %54 = load i64, i64* %7, align 8
  %55 = load i64, i64* %11, align 8
  %56 = sub i64 %54, %55
  %57 = load i64, i64* %12, align 8
  %58 = load i64, i64* %7, align 8
  %59 = sub i64 %57, %58
  %60 = icmp ule i64 %56, %59
  br i1 %60, label %61, label %63

61:                                               ; preds = %43
  %62 = load i32, i32* %9, align 4
  br label %65

63:                                               ; preds = %43
  %64 = load i32, i32* %10, align 4
  br label %65

65:                                               ; preds = %63, %61
  %66 = phi i32 [ %62, %61 ], [ %64, %63 ]
  ret i32 %66
}

declare dso_local i8* @DIV_ROUND_UP_ULL(i32, i32) #1

declare dso_local i32 @__roundup_pow_of_two(i32) #1

declare dso_local i32 @__rounddown_pow_of_two(i32) #1

declare dso_local i32 @_round_up_table(%struct.clk_div_table*, i32) #1

declare dso_local i32 @_round_down_table(%struct.clk_div_table*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
