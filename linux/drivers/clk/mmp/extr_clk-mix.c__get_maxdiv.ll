; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/mmp/extr_clk-mix.c__get_maxdiv.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/mmp/extr_clk-mix.c__get_maxdiv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmp_clk_mix = type { i32, %struct.clk_div_table*, %struct.TYPE_2__ }
%struct.clk_div_table = type { i32 }
%struct.TYPE_2__ = type { i32 }

@CLK_DIVIDER_ONE_BASED = common dso_local global i32 0, align 4
@CLK_DIVIDER_POWER_OF_TWO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mmp_clk_mix*)* @_get_maxdiv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_get_maxdiv(%struct.mmp_clk_mix* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mmp_clk_mix*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.clk_div_table*, align 8
  store %struct.mmp_clk_mix* %0, %struct.mmp_clk_mix** %3, align 8
  %7 = load %struct.mmp_clk_mix*, %struct.mmp_clk_mix** %3, align 8
  %8 = getelementptr inbounds %struct.mmp_clk_mix, %struct.mmp_clk_mix* %7, i32 0, i32 2
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = shl i32 1, %10
  %12 = sub nsw i32 %11, 1
  store i32 %12, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %13 = load %struct.mmp_clk_mix*, %struct.mmp_clk_mix** %3, align 8
  %14 = getelementptr inbounds %struct.mmp_clk_mix, %struct.mmp_clk_mix* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @CLK_DIVIDER_ONE_BASED, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %1
  %20 = load i32, i32* %4, align 4
  store i32 %20, i32* %2, align 4
  br label %64

21:                                               ; preds = %1
  %22 = load %struct.mmp_clk_mix*, %struct.mmp_clk_mix** %3, align 8
  %23 = getelementptr inbounds %struct.mmp_clk_mix, %struct.mmp_clk_mix* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @CLK_DIVIDER_POWER_OF_TWO, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %21
  %29 = load i32, i32* %4, align 4
  %30 = shl i32 1, %29
  store i32 %30, i32* %2, align 4
  br label %64

31:                                               ; preds = %21
  %32 = load %struct.mmp_clk_mix*, %struct.mmp_clk_mix** %3, align 8
  %33 = getelementptr inbounds %struct.mmp_clk_mix, %struct.mmp_clk_mix* %32, i32 0, i32 1
  %34 = load %struct.clk_div_table*, %struct.clk_div_table** %33, align 8
  %35 = icmp ne %struct.clk_div_table* %34, null
  br i1 %35, label %36, label %61

36:                                               ; preds = %31
  %37 = load %struct.mmp_clk_mix*, %struct.mmp_clk_mix** %3, align 8
  %38 = getelementptr inbounds %struct.mmp_clk_mix, %struct.mmp_clk_mix* %37, i32 0, i32 1
  %39 = load %struct.clk_div_table*, %struct.clk_div_table** %38, align 8
  store %struct.clk_div_table* %39, %struct.clk_div_table** %6, align 8
  br label %40

40:                                               ; preds = %56, %36
  %41 = load %struct.clk_div_table*, %struct.clk_div_table** %6, align 8
  %42 = getelementptr inbounds %struct.clk_div_table, %struct.clk_div_table* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %59

45:                                               ; preds = %40
  %46 = load %struct.clk_div_table*, %struct.clk_div_table** %6, align 8
  %47 = getelementptr inbounds %struct.clk_div_table, %struct.clk_div_table* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %5, align 4
  %50 = icmp ugt i32 %48, %49
  br i1 %50, label %51, label %55

51:                                               ; preds = %45
  %52 = load %struct.clk_div_table*, %struct.clk_div_table** %6, align 8
  %53 = getelementptr inbounds %struct.clk_div_table, %struct.clk_div_table* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  store i32 %54, i32* %5, align 4
  br label %55

55:                                               ; preds = %51, %45
  br label %56

56:                                               ; preds = %55
  %57 = load %struct.clk_div_table*, %struct.clk_div_table** %6, align 8
  %58 = getelementptr inbounds %struct.clk_div_table, %struct.clk_div_table* %57, i32 1
  store %struct.clk_div_table* %58, %struct.clk_div_table** %6, align 8
  br label %40

59:                                               ; preds = %40
  %60 = load i32, i32* %5, align 4
  store i32 %60, i32* %2, align 4
  br label %64

61:                                               ; preds = %31
  %62 = load i32, i32* %4, align 4
  %63 = add i32 %62, 1
  store i32 %63, i32* %2, align 4
  br label %64

64:                                               ; preds = %61, %59, %28, %19
  %65 = load i32, i32* %2, align 4
  ret i32 %65
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
