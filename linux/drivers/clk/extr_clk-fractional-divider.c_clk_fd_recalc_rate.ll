; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/extr_clk-fractional-divider.c_clk_fd_recalc_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/extr_clk-fractional-divider.c_clk_fd_recalc_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.clk_fractional_divider = type { i64, i64, i64, i64, i32, i64 }

@CLK_FRAC_DIVIDER_ZERO_BASED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.clk_hw*, i64)* @clk_fd_recalc_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @clk_fd_recalc_rate(%struct.clk_hw* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.clk_hw*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.clk_fractional_divider*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.clk_hw* %0, %struct.clk_hw** %4, align 8
  store i64 %1, i64* %5, align 8
  %12 = load %struct.clk_hw*, %struct.clk_hw** %4, align 8
  %13 = call %struct.clk_fractional_divider* @to_clk_fd(%struct.clk_hw* %12)
  store %struct.clk_fractional_divider* %13, %struct.clk_fractional_divider** %6, align 8
  store i64 0, i64* %7, align 8
  %14 = load %struct.clk_fractional_divider*, %struct.clk_fractional_divider** %6, align 8
  %15 = getelementptr inbounds %struct.clk_fractional_divider, %struct.clk_fractional_divider* %14, i32 0, i32 5
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %2
  %19 = load %struct.clk_fractional_divider*, %struct.clk_fractional_divider** %6, align 8
  %20 = getelementptr inbounds %struct.clk_fractional_divider, %struct.clk_fractional_divider* %19, i32 0, i32 5
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* %7, align 8
  %23 = call i32 @spin_lock_irqsave(i64 %21, i64 %22)
  br label %29

24:                                               ; preds = %2
  %25 = load %struct.clk_fractional_divider*, %struct.clk_fractional_divider** %6, align 8
  %26 = getelementptr inbounds %struct.clk_fractional_divider, %struct.clk_fractional_divider* %25, i32 0, i32 5
  %27 = load i64, i64* %26, align 8
  %28 = call i32 @__acquire(i64 %27)
  br label %29

29:                                               ; preds = %24, %18
  %30 = load %struct.clk_fractional_divider*, %struct.clk_fractional_divider** %6, align 8
  %31 = call i64 @clk_fd_readl(%struct.clk_fractional_divider* %30)
  store i64 %31, i64* %10, align 8
  %32 = load %struct.clk_fractional_divider*, %struct.clk_fractional_divider** %6, align 8
  %33 = getelementptr inbounds %struct.clk_fractional_divider, %struct.clk_fractional_divider* %32, i32 0, i32 5
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %29
  %37 = load %struct.clk_fractional_divider*, %struct.clk_fractional_divider** %6, align 8
  %38 = getelementptr inbounds %struct.clk_fractional_divider, %struct.clk_fractional_divider* %37, i32 0, i32 5
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* %7, align 8
  %41 = call i32 @spin_unlock_irqrestore(i64 %39, i64 %40)
  br label %47

42:                                               ; preds = %29
  %43 = load %struct.clk_fractional_divider*, %struct.clk_fractional_divider** %6, align 8
  %44 = getelementptr inbounds %struct.clk_fractional_divider, %struct.clk_fractional_divider* %43, i32 0, i32 5
  %45 = load i64, i64* %44, align 8
  %46 = call i32 @__release(i64 %45)
  br label %47

47:                                               ; preds = %42, %36
  %48 = load i64, i64* %10, align 8
  %49 = load %struct.clk_fractional_divider*, %struct.clk_fractional_divider** %6, align 8
  %50 = getelementptr inbounds %struct.clk_fractional_divider, %struct.clk_fractional_divider* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = and i64 %48, %51
  %53 = load %struct.clk_fractional_divider*, %struct.clk_fractional_divider** %6, align 8
  %54 = getelementptr inbounds %struct.clk_fractional_divider, %struct.clk_fractional_divider* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = lshr i64 %52, %55
  store i64 %56, i64* %8, align 8
  %57 = load i64, i64* %10, align 8
  %58 = load %struct.clk_fractional_divider*, %struct.clk_fractional_divider** %6, align 8
  %59 = getelementptr inbounds %struct.clk_fractional_divider, %struct.clk_fractional_divider* %58, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  %61 = and i64 %57, %60
  %62 = load %struct.clk_fractional_divider*, %struct.clk_fractional_divider** %6, align 8
  %63 = getelementptr inbounds %struct.clk_fractional_divider, %struct.clk_fractional_divider* %62, i32 0, i32 3
  %64 = load i64, i64* %63, align 8
  %65 = lshr i64 %61, %64
  store i64 %65, i64* %9, align 8
  %66 = load %struct.clk_fractional_divider*, %struct.clk_fractional_divider** %6, align 8
  %67 = getelementptr inbounds %struct.clk_fractional_divider, %struct.clk_fractional_divider* %66, i32 0, i32 4
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @CLK_FRAC_DIVIDER_ZERO_BASED, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %47
  %73 = load i64, i64* %8, align 8
  %74 = add i64 %73, 1
  store i64 %74, i64* %8, align 8
  %75 = load i64, i64* %9, align 8
  %76 = add i64 %75, 1
  store i64 %76, i64* %9, align 8
  br label %77

77:                                               ; preds = %72, %47
  %78 = load i64, i64* %9, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %77
  %81 = load i64, i64* %8, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %85, label %83

83:                                               ; preds = %80, %77
  %84 = load i64, i64* %5, align 8
  store i64 %84, i64* %3, align 8
  br label %93

85:                                               ; preds = %80
  %86 = load i64, i64* %5, align 8
  %87 = load i64, i64* %8, align 8
  %88 = mul i64 %86, %87
  store i64 %88, i64* %11, align 8
  %89 = load i64, i64* %11, align 8
  %90 = load i64, i64* %9, align 8
  %91 = call i32 @do_div(i64 %89, i64 %90)
  %92 = load i64, i64* %11, align 8
  store i64 %92, i64* %3, align 8
  br label %93

93:                                               ; preds = %85, %83
  %94 = load i64, i64* %3, align 8
  ret i64 %94
}

declare dso_local %struct.clk_fractional_divider* @to_clk_fd(%struct.clk_hw*) #1

declare dso_local i32 @spin_lock_irqsave(i64, i64) #1

declare dso_local i32 @__acquire(i64) #1

declare dso_local i64 @clk_fd_readl(%struct.clk_fractional_divider*) #1

declare dso_local i32 @spin_unlock_irqrestore(i64, i64) #1

declare dso_local i32 @__release(i64) #1

declare dso_local i32 @do_div(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
