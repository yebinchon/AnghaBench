; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/st/extr_clkgen-fsyn.c_quadfs_pll_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/st/extr_clkgen-fsyn.c_quadfs_pll_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.st_clk_quadfs_pll = type { i32, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i64, i32, i64, i64 }

@jiffies = common dso_local global i64 0, align 8
@nreset = common dso_local global i32 0, align 4
@ref_bw = common dso_local global i32 0, align 4
@PLL_BW_GOODREF = common dso_local global i32 0, align 4
@ndiv = common dso_local global i32 0, align 4
@npda = common dso_local global i32 0, align 4
@lock_status = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*)* @quadfs_pll_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @quadfs_pll_enable(%struct.clk_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.clk_hw*, align 8
  %4 = alloca %struct.st_clk_quadfs_pll*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.clk_hw* %0, %struct.clk_hw** %3, align 8
  %7 = load %struct.clk_hw*, %struct.clk_hw** %3, align 8
  %8 = call %struct.st_clk_quadfs_pll* @to_quadfs_pll(%struct.clk_hw* %7)
  store %struct.st_clk_quadfs_pll* %8, %struct.st_clk_quadfs_pll** %4, align 8
  store i64 0, i64* %5, align 8
  %9 = load i64, i64* @jiffies, align 8
  %10 = call i64 @msecs_to_jiffies(i32 10)
  %11 = add i64 %9, %10
  store i64 %11, i64* %6, align 8
  %12 = load %struct.st_clk_quadfs_pll*, %struct.st_clk_quadfs_pll** %4, align 8
  %13 = getelementptr inbounds %struct.st_clk_quadfs_pll, %struct.st_clk_quadfs_pll* %12, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %1
  %17 = load %struct.st_clk_quadfs_pll*, %struct.st_clk_quadfs_pll** %4, align 8
  %18 = getelementptr inbounds %struct.st_clk_quadfs_pll, %struct.st_clk_quadfs_pll* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* %5, align 8
  %21 = call i32 @spin_lock_irqsave(i64 %19, i64 %20)
  br label %22

22:                                               ; preds = %16, %1
  %23 = load %struct.st_clk_quadfs_pll*, %struct.st_clk_quadfs_pll** %4, align 8
  %24 = getelementptr inbounds %struct.st_clk_quadfs_pll, %struct.st_clk_quadfs_pll* %23, i32 0, i32 1
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 3
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %22
  %30 = load %struct.st_clk_quadfs_pll*, %struct.st_clk_quadfs_pll** %4, align 8
  %31 = load i32, i32* @nreset, align 4
  %32 = call i32 @CLKGEN_WRITE(%struct.st_clk_quadfs_pll* %30, i32 %31, i32 1)
  br label %33

33:                                               ; preds = %29, %22
  %34 = load %struct.st_clk_quadfs_pll*, %struct.st_clk_quadfs_pll** %4, align 8
  %35 = getelementptr inbounds %struct.st_clk_quadfs_pll, %struct.st_clk_quadfs_pll* %34, i32 0, i32 1
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %33
  %41 = load %struct.st_clk_quadfs_pll*, %struct.st_clk_quadfs_pll** %4, align 8
  %42 = load i32, i32* @ref_bw, align 4
  %43 = load i32, i32* @PLL_BW_GOODREF, align 4
  %44 = call i32 @CLKGEN_WRITE(%struct.st_clk_quadfs_pll* %41, i32 %42, i32 %43)
  br label %45

45:                                               ; preds = %40, %33
  %46 = load %struct.st_clk_quadfs_pll*, %struct.st_clk_quadfs_pll** %4, align 8
  %47 = load i32, i32* @ndiv, align 4
  %48 = load %struct.st_clk_quadfs_pll*, %struct.st_clk_quadfs_pll** %4, align 8
  %49 = getelementptr inbounds %struct.st_clk_quadfs_pll, %struct.st_clk_quadfs_pll* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @CLKGEN_WRITE(%struct.st_clk_quadfs_pll* %46, i32 %47, i32 %50)
  %52 = load %struct.st_clk_quadfs_pll*, %struct.st_clk_quadfs_pll** %4, align 8
  %53 = load i32, i32* @npda, align 4
  %54 = load %struct.st_clk_quadfs_pll*, %struct.st_clk_quadfs_pll** %4, align 8
  %55 = getelementptr inbounds %struct.st_clk_quadfs_pll, %struct.st_clk_quadfs_pll* %54, i32 0, i32 1
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = icmp ne i32 %58, 0
  %60 = xor i1 %59, true
  %61 = zext i1 %60 to i32
  %62 = call i32 @CLKGEN_WRITE(%struct.st_clk_quadfs_pll* %52, i32 %53, i32 %61)
  %63 = load %struct.st_clk_quadfs_pll*, %struct.st_clk_quadfs_pll** %4, align 8
  %64 = getelementptr inbounds %struct.st_clk_quadfs_pll, %struct.st_clk_quadfs_pll* %63, i32 0, i32 2
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %73

67:                                               ; preds = %45
  %68 = load %struct.st_clk_quadfs_pll*, %struct.st_clk_quadfs_pll** %4, align 8
  %69 = getelementptr inbounds %struct.st_clk_quadfs_pll, %struct.st_clk_quadfs_pll* %68, i32 0, i32 2
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* %5, align 8
  %72 = call i32 @spin_unlock_irqrestore(i64 %70, i64 %71)
  br label %73

73:                                               ; preds = %67, %45
  %74 = load %struct.st_clk_quadfs_pll*, %struct.st_clk_quadfs_pll** %4, align 8
  %75 = getelementptr inbounds %struct.st_clk_quadfs_pll, %struct.st_clk_quadfs_pll* %74, i32 0, i32 1
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %98

80:                                               ; preds = %73
  br label %81

81:                                               ; preds = %95, %80
  %82 = load %struct.st_clk_quadfs_pll*, %struct.st_clk_quadfs_pll** %4, align 8
  %83 = load i32, i32* @lock_status, align 4
  %84 = call i32 @CLKGEN_READ(%struct.st_clk_quadfs_pll* %82, i32 %83)
  %85 = icmp ne i32 %84, 0
  %86 = xor i1 %85, true
  br i1 %86, label %87, label %97

87:                                               ; preds = %81
  %88 = load i64, i64* @jiffies, align 8
  %89 = load i64, i64* %6, align 8
  %90 = call i64 @time_after(i64 %88, i64 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %87
  %93 = load i32, i32* @ETIMEDOUT, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %2, align 4
  br label %99

95:                                               ; preds = %87
  %96 = call i32 (...) @cpu_relax()
  br label %81

97:                                               ; preds = %81
  br label %98

98:                                               ; preds = %97, %73
  store i32 0, i32* %2, align 4
  br label %99

99:                                               ; preds = %98, %92
  %100 = load i32, i32* %2, align 4
  ret i32 %100
}

declare dso_local %struct.st_clk_quadfs_pll* @to_quadfs_pll(%struct.clk_hw*) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @spin_lock_irqsave(i64, i64) #1

declare dso_local i32 @CLKGEN_WRITE(%struct.st_clk_quadfs_pll*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i64, i64) #1

declare dso_local i32 @CLKGEN_READ(%struct.st_clk_quadfs_pll*, i32) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @cpu_relax(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
