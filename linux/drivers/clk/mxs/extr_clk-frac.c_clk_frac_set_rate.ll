; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/mxs/extr_clk-frac.c_clk_frac_set_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/mxs/extr_clk-frac.c_clk_frac_set_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.clk_frac = type { i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@mxs_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*, i64, i64)* @clk_frac_set_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clk_frac_set_rate(%struct.clk_hw* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.clk_hw*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.clk_frac*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %13 = load %struct.clk_hw*, %struct.clk_hw** %5, align 8
  %14 = call %struct.clk_frac* @to_clk_frac(%struct.clk_hw* %13)
  store %struct.clk_frac* %14, %struct.clk_frac** %8, align 8
  %15 = load i64, i64* %6, align 8
  %16 = load i64, i64* %7, align 8
  %17 = icmp ugt i64 %15, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %3
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %78

21:                                               ; preds = %3
  %22 = load i64, i64* %6, align 8
  %23 = trunc i64 %22 to i32
  store i32 %23, i32* %12, align 4
  %24 = load %struct.clk_frac*, %struct.clk_frac** %8, align 8
  %25 = getelementptr inbounds %struct.clk_frac, %struct.clk_frac* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %12, align 4
  %28 = shl i32 %27, %26
  store i32 %28, i32* %12, align 4
  %29 = load i32, i32* %12, align 4
  %30 = load i64, i64* %7, align 8
  %31 = call i32 @do_div(i32 %29, i64 %30)
  %32 = load i32, i32* %12, align 4
  store i32 %32, i32* %10, align 4
  %33 = load i32, i32* %10, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %21
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %4, align 4
  br label %78

38:                                               ; preds = %21
  %39 = load i64, i64* %9, align 8
  %40 = call i32 @spin_lock_irqsave(i32* @mxs_lock, i64 %39)
  %41 = load %struct.clk_frac*, %struct.clk_frac** %8, align 8
  %42 = getelementptr inbounds %struct.clk_frac, %struct.clk_frac* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @readl_relaxed(i32 %43)
  store i32 %44, i32* %11, align 4
  %45 = load %struct.clk_frac*, %struct.clk_frac** %8, align 8
  %46 = getelementptr inbounds %struct.clk_frac, %struct.clk_frac* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = shl i32 1, %47
  %49 = sub nsw i32 %48, 1
  %50 = load %struct.clk_frac*, %struct.clk_frac** %8, align 8
  %51 = getelementptr inbounds %struct.clk_frac, %struct.clk_frac* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = shl i32 %49, %52
  %54 = xor i32 %53, -1
  %55 = load i32, i32* %11, align 4
  %56 = and i32 %55, %54
  store i32 %56, i32* %11, align 4
  %57 = load i32, i32* %10, align 4
  %58 = load %struct.clk_frac*, %struct.clk_frac** %8, align 8
  %59 = getelementptr inbounds %struct.clk_frac, %struct.clk_frac* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = shl i32 %57, %60
  %62 = load i32, i32* %11, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %11, align 4
  %64 = load i32, i32* %11, align 4
  %65 = load %struct.clk_frac*, %struct.clk_frac** %8, align 8
  %66 = getelementptr inbounds %struct.clk_frac, %struct.clk_frac* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @writel_relaxed(i32 %64, i32 %67)
  %69 = load i64, i64* %9, align 8
  %70 = call i32 @spin_unlock_irqrestore(i32* @mxs_lock, i64 %69)
  %71 = load %struct.clk_frac*, %struct.clk_frac** %8, align 8
  %72 = getelementptr inbounds %struct.clk_frac, %struct.clk_frac* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.clk_frac*, %struct.clk_frac** %8, align 8
  %75 = getelementptr inbounds %struct.clk_frac, %struct.clk_frac* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @mxs_clk_wait(i32 %73, i32 %76)
  store i32 %77, i32* %4, align 4
  br label %78

78:                                               ; preds = %38, %35, %18
  %79 = load i32, i32* %4, align 4
  ret i32 %79
}

declare dso_local %struct.clk_frac* @to_clk_frac(%struct.clk_hw*) #1

declare dso_local i32 @do_div(i32, i64) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @readl_relaxed(i32) #1

declare dso_local i32 @writel_relaxed(i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @mxs_clk_wait(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
