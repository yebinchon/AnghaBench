; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/st/extr_clkgen-fsyn.c_quadfs_pll_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/st/extr_clkgen-fsyn.c_quadfs_pll_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.st_clk_quadfs_pll = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i32 }

@npda = common dso_local global i32 0, align 4
@nreset = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.clk_hw*)* @quadfs_pll_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @quadfs_pll_disable(%struct.clk_hw* %0) #0 {
  %2 = alloca %struct.clk_hw*, align 8
  %3 = alloca %struct.st_clk_quadfs_pll*, align 8
  %4 = alloca i64, align 8
  store %struct.clk_hw* %0, %struct.clk_hw** %2, align 8
  %5 = load %struct.clk_hw*, %struct.clk_hw** %2, align 8
  %6 = call %struct.st_clk_quadfs_pll* @to_quadfs_pll(%struct.clk_hw* %5)
  store %struct.st_clk_quadfs_pll* %6, %struct.st_clk_quadfs_pll** %3, align 8
  store i64 0, i64* %4, align 8
  %7 = load %struct.st_clk_quadfs_pll*, %struct.st_clk_quadfs_pll** %3, align 8
  %8 = getelementptr inbounds %struct.st_clk_quadfs_pll, %struct.st_clk_quadfs_pll* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %1
  %12 = load %struct.st_clk_quadfs_pll*, %struct.st_clk_quadfs_pll** %3, align 8
  %13 = getelementptr inbounds %struct.st_clk_quadfs_pll, %struct.st_clk_quadfs_pll* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* %4, align 8
  %16 = call i32 @spin_lock_irqsave(i64 %14, i64 %15)
  br label %17

17:                                               ; preds = %11, %1
  %18 = load %struct.st_clk_quadfs_pll*, %struct.st_clk_quadfs_pll** %3, align 8
  %19 = load i32, i32* @npda, align 4
  %20 = load %struct.st_clk_quadfs_pll*, %struct.st_clk_quadfs_pll** %3, align 8
  %21 = getelementptr inbounds %struct.st_clk_quadfs_pll, %struct.st_clk_quadfs_pll* %20, i32 0, i32 1
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @CLKGEN_WRITE(%struct.st_clk_quadfs_pll* %18, i32 %19, i32 %24)
  %26 = load %struct.st_clk_quadfs_pll*, %struct.st_clk_quadfs_pll** %3, align 8
  %27 = getelementptr inbounds %struct.st_clk_quadfs_pll, %struct.st_clk_quadfs_pll* %26, i32 0, i32 1
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %17
  %33 = load %struct.st_clk_quadfs_pll*, %struct.st_clk_quadfs_pll** %3, align 8
  %34 = load i32, i32* @nreset, align 4
  %35 = call i32 @CLKGEN_WRITE(%struct.st_clk_quadfs_pll* %33, i32 %34, i32 0)
  br label %36

36:                                               ; preds = %32, %17
  %37 = load %struct.st_clk_quadfs_pll*, %struct.st_clk_quadfs_pll** %3, align 8
  %38 = getelementptr inbounds %struct.st_clk_quadfs_pll, %struct.st_clk_quadfs_pll* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %36
  %42 = load %struct.st_clk_quadfs_pll*, %struct.st_clk_quadfs_pll** %3, align 8
  %43 = getelementptr inbounds %struct.st_clk_quadfs_pll, %struct.st_clk_quadfs_pll* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* %4, align 8
  %46 = call i32 @spin_unlock_irqrestore(i64 %44, i64 %45)
  br label %47

47:                                               ; preds = %41, %36
  ret void
}

declare dso_local %struct.st_clk_quadfs_pll* @to_quadfs_pll(%struct.clk_hw*) #1

declare dso_local i32 @spin_lock_irqsave(i64, i64) #1

declare dso_local i32 @CLKGEN_WRITE(%struct.st_clk_quadfs_pll*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
