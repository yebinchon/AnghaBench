; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/extr_clk-fractional-divider.c_clk_fd_set_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/extr_clk-fractional-divider.c_clk_fd_set_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.clk_fractional_divider = type { i32, i64, i64, i64, i64, i64, i64, i64 }

@CLK_FRAC_DIVIDER_ZERO_BASED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*, i64, i64)* @clk_fd_set_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clk_fd_set_rate(%struct.clk_hw* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.clk_hw*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.clk_fractional_divider*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.clk_hw* %0, %struct.clk_hw** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %12 = load %struct.clk_hw*, %struct.clk_hw** %4, align 8
  %13 = call %struct.clk_fractional_divider* @to_clk_fd(%struct.clk_hw* %12)
  store %struct.clk_fractional_divider* %13, %struct.clk_fractional_divider** %7, align 8
  store i64 0, i64* %8, align 8
  %14 = load i64, i64* %5, align 8
  %15 = load i64, i64* %6, align 8
  %16 = load %struct.clk_fractional_divider*, %struct.clk_fractional_divider** %7, align 8
  %17 = getelementptr inbounds %struct.clk_fractional_divider, %struct.clk_fractional_divider* %16, i32 0, i32 7
  %18 = load i64, i64* %17, align 8
  %19 = sub nsw i64 %18, 1
  %20 = call i32 @GENMASK(i64 %19, i32 0)
  %21 = load %struct.clk_fractional_divider*, %struct.clk_fractional_divider** %7, align 8
  %22 = getelementptr inbounds %struct.clk_fractional_divider, %struct.clk_fractional_divider* %21, i32 0, i32 6
  %23 = load i64, i64* %22, align 8
  %24 = sub nsw i64 %23, 1
  %25 = call i32 @GENMASK(i64 %24, i32 0)
  %26 = call i32 @rational_best_approximation(i64 %14, i64 %15, i32 %20, i32 %25, i64* %9, i64* %10)
  %27 = load %struct.clk_fractional_divider*, %struct.clk_fractional_divider** %7, align 8
  %28 = getelementptr inbounds %struct.clk_fractional_divider, %struct.clk_fractional_divider* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @CLK_FRAC_DIVIDER_ZERO_BASED, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %3
  %34 = load i64, i64* %9, align 8
  %35 = add i64 %34, -1
  store i64 %35, i64* %9, align 8
  %36 = load i64, i64* %10, align 8
  %37 = add i64 %36, -1
  store i64 %37, i64* %10, align 8
  br label %38

38:                                               ; preds = %33, %3
  %39 = load %struct.clk_fractional_divider*, %struct.clk_fractional_divider** %7, align 8
  %40 = getelementptr inbounds %struct.clk_fractional_divider, %struct.clk_fractional_divider* %39, i32 0, i32 5
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %38
  %44 = load %struct.clk_fractional_divider*, %struct.clk_fractional_divider** %7, align 8
  %45 = getelementptr inbounds %struct.clk_fractional_divider, %struct.clk_fractional_divider* %44, i32 0, i32 5
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* %8, align 8
  %48 = call i32 @spin_lock_irqsave(i64 %46, i64 %47)
  br label %54

49:                                               ; preds = %38
  %50 = load %struct.clk_fractional_divider*, %struct.clk_fractional_divider** %7, align 8
  %51 = getelementptr inbounds %struct.clk_fractional_divider, %struct.clk_fractional_divider* %50, i32 0, i32 5
  %52 = load i64, i64* %51, align 8
  %53 = call i32 @__acquire(i64 %52)
  br label %54

54:                                               ; preds = %49, %43
  %55 = load %struct.clk_fractional_divider*, %struct.clk_fractional_divider** %7, align 8
  %56 = call i64 @clk_fd_readl(%struct.clk_fractional_divider* %55)
  store i64 %56, i64* %11, align 8
  %57 = load %struct.clk_fractional_divider*, %struct.clk_fractional_divider** %7, align 8
  %58 = getelementptr inbounds %struct.clk_fractional_divider, %struct.clk_fractional_divider* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.clk_fractional_divider*, %struct.clk_fractional_divider** %7, align 8
  %61 = getelementptr inbounds %struct.clk_fractional_divider, %struct.clk_fractional_divider* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = or i64 %59, %62
  %64 = xor i64 %63, -1
  %65 = load i64, i64* %11, align 8
  %66 = and i64 %65, %64
  store i64 %66, i64* %11, align 8
  %67 = load i64, i64* %9, align 8
  %68 = load %struct.clk_fractional_divider*, %struct.clk_fractional_divider** %7, align 8
  %69 = getelementptr inbounds %struct.clk_fractional_divider, %struct.clk_fractional_divider* %68, i32 0, i32 3
  %70 = load i64, i64* %69, align 8
  %71 = shl i64 %67, %70
  %72 = load i64, i64* %10, align 8
  %73 = load %struct.clk_fractional_divider*, %struct.clk_fractional_divider** %7, align 8
  %74 = getelementptr inbounds %struct.clk_fractional_divider, %struct.clk_fractional_divider* %73, i32 0, i32 4
  %75 = load i64, i64* %74, align 8
  %76 = shl i64 %72, %75
  %77 = or i64 %71, %76
  %78 = load i64, i64* %11, align 8
  %79 = or i64 %78, %77
  store i64 %79, i64* %11, align 8
  %80 = load %struct.clk_fractional_divider*, %struct.clk_fractional_divider** %7, align 8
  %81 = load i64, i64* %11, align 8
  %82 = call i32 @clk_fd_writel(%struct.clk_fractional_divider* %80, i64 %81)
  %83 = load %struct.clk_fractional_divider*, %struct.clk_fractional_divider** %7, align 8
  %84 = getelementptr inbounds %struct.clk_fractional_divider, %struct.clk_fractional_divider* %83, i32 0, i32 5
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %93

87:                                               ; preds = %54
  %88 = load %struct.clk_fractional_divider*, %struct.clk_fractional_divider** %7, align 8
  %89 = getelementptr inbounds %struct.clk_fractional_divider, %struct.clk_fractional_divider* %88, i32 0, i32 5
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* %8, align 8
  %92 = call i32 @spin_unlock_irqrestore(i64 %90, i64 %91)
  br label %98

93:                                               ; preds = %54
  %94 = load %struct.clk_fractional_divider*, %struct.clk_fractional_divider** %7, align 8
  %95 = getelementptr inbounds %struct.clk_fractional_divider, %struct.clk_fractional_divider* %94, i32 0, i32 5
  %96 = load i64, i64* %95, align 8
  %97 = call i32 @__release(i64 %96)
  br label %98

98:                                               ; preds = %93, %87
  ret i32 0
}

declare dso_local %struct.clk_fractional_divider* @to_clk_fd(%struct.clk_hw*) #1

declare dso_local i32 @rational_best_approximation(i64, i64, i32, i32, i64*, i64*) #1

declare dso_local i32 @GENMASK(i64, i32) #1

declare dso_local i32 @spin_lock_irqsave(i64, i64) #1

declare dso_local i32 @__acquire(i64) #1

declare dso_local i64 @clk_fd_readl(%struct.clk_fractional_divider*) #1

declare dso_local i32 @clk_fd_writel(%struct.clk_fractional_divider*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i64, i64) #1

declare dso_local i32 @__release(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
