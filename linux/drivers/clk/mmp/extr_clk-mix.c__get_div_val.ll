; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/mmp/extr_clk-mix.c__get_div_val.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/mmp/extr_clk-mix.c__get_div_val.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmp_clk_mix = type { i32, %struct.clk_div_table* }
%struct.clk_div_table = type { i32, i32 }

@CLK_DIVIDER_ONE_BASED = common dso_local global i32 0, align 4
@CLK_DIVIDER_POWER_OF_TWO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mmp_clk_mix*, i32)* @_get_div_val to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_get_div_val(%struct.mmp_clk_mix* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mmp_clk_mix*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.clk_div_table*, align 8
  store %struct.mmp_clk_mix* %0, %struct.mmp_clk_mix** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.mmp_clk_mix*, %struct.mmp_clk_mix** %4, align 8
  %8 = getelementptr inbounds %struct.mmp_clk_mix, %struct.mmp_clk_mix* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @CLK_DIVIDER_ONE_BASED, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i32, i32* %5, align 4
  store i32 %14, i32* %3, align 4
  br label %63

15:                                               ; preds = %2
  %16 = load %struct.mmp_clk_mix*, %struct.mmp_clk_mix** %4, align 8
  %17 = getelementptr inbounds %struct.mmp_clk_mix, %struct.mmp_clk_mix* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @CLK_DIVIDER_POWER_OF_TWO, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %15
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @__ffs(i32 %23)
  store i32 %24, i32* %3, align 4
  br label %63

25:                                               ; preds = %15
  %26 = load %struct.mmp_clk_mix*, %struct.mmp_clk_mix** %4, align 8
  %27 = getelementptr inbounds %struct.mmp_clk_mix, %struct.mmp_clk_mix* %26, i32 0, i32 1
  %28 = load %struct.clk_div_table*, %struct.clk_div_table** %27, align 8
  %29 = icmp ne %struct.clk_div_table* %28, null
  br i1 %29, label %30, label %60

30:                                               ; preds = %25
  %31 = load %struct.mmp_clk_mix*, %struct.mmp_clk_mix** %4, align 8
  %32 = getelementptr inbounds %struct.mmp_clk_mix, %struct.mmp_clk_mix* %31, i32 0, i32 1
  %33 = load %struct.clk_div_table*, %struct.clk_div_table** %32, align 8
  store %struct.clk_div_table* %33, %struct.clk_div_table** %6, align 8
  br label %34

34:                                               ; preds = %50, %30
  %35 = load %struct.clk_div_table*, %struct.clk_div_table** %6, align 8
  %36 = getelementptr inbounds %struct.clk_div_table, %struct.clk_div_table* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %53

39:                                               ; preds = %34
  %40 = load %struct.clk_div_table*, %struct.clk_div_table** %6, align 8
  %41 = getelementptr inbounds %struct.clk_div_table, %struct.clk_div_table* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %5, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %49

45:                                               ; preds = %39
  %46 = load %struct.clk_div_table*, %struct.clk_div_table** %6, align 8
  %47 = getelementptr inbounds %struct.clk_div_table, %struct.clk_div_table* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* %3, align 4
  br label %63

49:                                               ; preds = %39
  br label %50

50:                                               ; preds = %49
  %51 = load %struct.clk_div_table*, %struct.clk_div_table** %6, align 8
  %52 = getelementptr inbounds %struct.clk_div_table, %struct.clk_div_table* %51, i32 1
  store %struct.clk_div_table* %52, %struct.clk_div_table** %6, align 8
  br label %34

53:                                               ; preds = %34
  %54 = load %struct.clk_div_table*, %struct.clk_div_table** %6, align 8
  %55 = getelementptr inbounds %struct.clk_div_table, %struct.clk_div_table* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %53
  store i32 0, i32* %3, align 4
  br label %63

59:                                               ; preds = %53
  br label %60

60:                                               ; preds = %59, %25
  %61 = load i32, i32* %5, align 4
  %62 = sub i32 %61, 1
  store i32 %62, i32* %3, align 4
  br label %63

63:                                               ; preds = %60, %58, %45, %22, %13
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local i32 @__ffs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
