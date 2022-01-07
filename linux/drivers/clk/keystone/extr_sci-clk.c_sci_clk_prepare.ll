; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/keystone/extr_sci-clk.c_sci_clk_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/keystone/extr_sci-clk.c_sci_clk_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.sci_clk = type { i32, i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (i32, i32, i32, i32, i32, i32)* }

@SCI_CLK_SSC_ENABLE = common dso_local global i32 0, align 4
@SCI_CLK_ALLOW_FREQ_CHANGE = common dso_local global i32 0, align 4
@SCI_CLK_INPUT_TERMINATION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*)* @sci_clk_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sci_clk_prepare(%struct.clk_hw* %0) #0 {
  %2 = alloca %struct.clk_hw*, align 8
  %3 = alloca %struct.sci_clk*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %2, align 8
  %7 = load %struct.clk_hw*, %struct.clk_hw** %2, align 8
  %8 = call %struct.sci_clk* @to_sci_clk(%struct.clk_hw* %7)
  store %struct.sci_clk* %8, %struct.sci_clk** %3, align 8
  %9 = load %struct.sci_clk*, %struct.sci_clk** %3, align 8
  %10 = getelementptr inbounds %struct.sci_clk, %struct.sci_clk* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @SCI_CLK_SSC_ENABLE, align 4
  %13 = and i32 %11, %12
  store i32 %13, i32* %4, align 4
  %14 = load %struct.sci_clk*, %struct.sci_clk** %3, align 8
  %15 = getelementptr inbounds %struct.sci_clk, %struct.sci_clk* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @SCI_CLK_ALLOW_FREQ_CHANGE, align 4
  %18 = and i32 %16, %17
  store i32 %18, i32* %5, align 4
  %19 = load %struct.sci_clk*, %struct.sci_clk** %3, align 8
  %20 = getelementptr inbounds %struct.sci_clk, %struct.sci_clk* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @SCI_CLK_INPUT_TERMINATION, align 4
  %23 = and i32 %21, %22
  store i32 %23, i32* %6, align 4
  %24 = load %struct.sci_clk*, %struct.sci_clk** %3, align 8
  %25 = getelementptr inbounds %struct.sci_clk, %struct.sci_clk* %24, i32 0, i32 3
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 1
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32 (i32, i32, i32, i32, i32, i32)*, i32 (i32, i32, i32, i32, i32, i32)** %29, align 8
  %31 = load %struct.sci_clk*, %struct.sci_clk** %3, align 8
  %32 = getelementptr inbounds %struct.sci_clk, %struct.sci_clk* %31, i32 0, i32 3
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.sci_clk*, %struct.sci_clk** %3, align 8
  %37 = getelementptr inbounds %struct.sci_clk, %struct.sci_clk* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.sci_clk*, %struct.sci_clk** %3, align 8
  %40 = getelementptr inbounds %struct.sci_clk, %struct.sci_clk* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %4, align 4
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* %6, align 4
  %45 = call i32 %30(i32 %35, i32 %38, i32 %41, i32 %42, i32 %43, i32 %44)
  ret i32 %45
}

declare dso_local %struct.sci_clk* @to_sci_clk(%struct.clk_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
