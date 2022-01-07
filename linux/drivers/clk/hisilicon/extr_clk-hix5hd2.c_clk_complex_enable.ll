; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/hisilicon/extr_clk-hix5hd2.c_clk_complex_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/hisilicon/extr_clk-hix5hd2.c_clk_complex_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.hix5hd2_clk_complex = type { i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*)* @clk_complex_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clk_complex_enable(%struct.clk_hw* %0) #0 {
  %2 = alloca %struct.clk_hw*, align 8
  %3 = alloca %struct.hix5hd2_clk_complex*, align 8
  %4 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %2, align 8
  %5 = load %struct.clk_hw*, %struct.clk_hw** %2, align 8
  %6 = call %struct.hix5hd2_clk_complex* @to_complex_clk(%struct.clk_hw* %5)
  store %struct.hix5hd2_clk_complex* %6, %struct.hix5hd2_clk_complex** %3, align 8
  %7 = load %struct.hix5hd2_clk_complex*, %struct.hix5hd2_clk_complex** %3, align 8
  %8 = getelementptr inbounds %struct.hix5hd2_clk_complex, %struct.hix5hd2_clk_complex* %7, i32 0, i32 3
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @readl_relaxed(i32 %9)
  store i32 %10, i32* %4, align 4
  %11 = load %struct.hix5hd2_clk_complex*, %struct.hix5hd2_clk_complex** %3, align 8
  %12 = getelementptr inbounds %struct.hix5hd2_clk_complex, %struct.hix5hd2_clk_complex* %11, i32 0, i32 5
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* %4, align 4
  %15 = or i32 %14, %13
  store i32 %15, i32* %4, align 4
  %16 = load %struct.hix5hd2_clk_complex*, %struct.hix5hd2_clk_complex** %3, align 8
  %17 = getelementptr inbounds %struct.hix5hd2_clk_complex, %struct.hix5hd2_clk_complex* %16, i32 0, i32 4
  %18 = load i32, i32* %17, align 4
  %19 = xor i32 %18, -1
  %20 = load i32, i32* %4, align 4
  %21 = and i32 %20, %19
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %4, align 4
  %23 = load %struct.hix5hd2_clk_complex*, %struct.hix5hd2_clk_complex** %3, align 8
  %24 = getelementptr inbounds %struct.hix5hd2_clk_complex, %struct.hix5hd2_clk_complex* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @writel_relaxed(i32 %22, i32 %25)
  %27 = load %struct.hix5hd2_clk_complex*, %struct.hix5hd2_clk_complex** %3, align 8
  %28 = getelementptr inbounds %struct.hix5hd2_clk_complex, %struct.hix5hd2_clk_complex* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @readl_relaxed(i32 %29)
  store i32 %30, i32* %4, align 4
  %31 = load %struct.hix5hd2_clk_complex*, %struct.hix5hd2_clk_complex** %3, align 8
  %32 = getelementptr inbounds %struct.hix5hd2_clk_complex, %struct.hix5hd2_clk_complex* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %4, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %4, align 4
  %36 = load %struct.hix5hd2_clk_complex*, %struct.hix5hd2_clk_complex** %3, align 8
  %37 = getelementptr inbounds %struct.hix5hd2_clk_complex, %struct.hix5hd2_clk_complex* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = xor i32 %38, -1
  %40 = load i32, i32* %4, align 4
  %41 = and i32 %40, %39
  store i32 %41, i32* %4, align 4
  %42 = load i32, i32* %4, align 4
  %43 = load %struct.hix5hd2_clk_complex*, %struct.hix5hd2_clk_complex** %3, align 8
  %44 = getelementptr inbounds %struct.hix5hd2_clk_complex, %struct.hix5hd2_clk_complex* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @writel_relaxed(i32 %42, i32 %45)
  ret i32 0
}

declare dso_local %struct.hix5hd2_clk_complex* @to_complex_clk(%struct.clk_hw*) #1

declare dso_local i32 @readl_relaxed(i32) #1

declare dso_local i32 @writel_relaxed(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
