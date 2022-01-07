; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/hisilicon/extr_clk-hix5hd2.c_clk_ether_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/hisilicon/extr_clk-hix5hd2.c_clk_ether_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.hix5hd2_clk_complex = type { i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*)* @clk_ether_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clk_ether_prepare(%struct.clk_hw* %0) #0 {
  %2 = alloca %struct.clk_hw*, align 8
  %3 = alloca %struct.hix5hd2_clk_complex*, align 8
  %4 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %2, align 8
  %5 = load %struct.clk_hw*, %struct.clk_hw** %2, align 8
  %6 = call %struct.hix5hd2_clk_complex* @to_complex_clk(%struct.clk_hw* %5)
  store %struct.hix5hd2_clk_complex* %6, %struct.hix5hd2_clk_complex** %3, align 8
  %7 = load %struct.hix5hd2_clk_complex*, %struct.hix5hd2_clk_complex** %3, align 8
  %8 = getelementptr inbounds %struct.hix5hd2_clk_complex, %struct.hix5hd2_clk_complex* %7, i32 0, i32 5
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @readl_relaxed(i32 %9)
  store i32 %10, i32* %4, align 4
  %11 = load %struct.hix5hd2_clk_complex*, %struct.hix5hd2_clk_complex** %3, align 8
  %12 = getelementptr inbounds %struct.hix5hd2_clk_complex, %struct.hix5hd2_clk_complex* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.hix5hd2_clk_complex*, %struct.hix5hd2_clk_complex** %3, align 8
  %15 = getelementptr inbounds %struct.hix5hd2_clk_complex, %struct.hix5hd2_clk_complex* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = or i32 %13, %16
  %18 = load i32, i32* %4, align 4
  %19 = or i32 %18, %17
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* %4, align 4
  %21 = load %struct.hix5hd2_clk_complex*, %struct.hix5hd2_clk_complex** %3, align 8
  %22 = getelementptr inbounds %struct.hix5hd2_clk_complex, %struct.hix5hd2_clk_complex* %21, i32 0, i32 5
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @writel_relaxed(i32 %20, i32 %23)
  %25 = load %struct.hix5hd2_clk_complex*, %struct.hix5hd2_clk_complex** %3, align 8
  %26 = getelementptr inbounds %struct.hix5hd2_clk_complex, %struct.hix5hd2_clk_complex* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = xor i32 %27, -1
  %29 = load i32, i32* %4, align 4
  %30 = and i32 %29, %28
  store i32 %30, i32* %4, align 4
  %31 = load i32, i32* %4, align 4
  %32 = load %struct.hix5hd2_clk_complex*, %struct.hix5hd2_clk_complex** %3, align 8
  %33 = getelementptr inbounds %struct.hix5hd2_clk_complex, %struct.hix5hd2_clk_complex* %32, i32 0, i32 5
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @writel_relaxed(i32 %31, i32 %34)
  %36 = load %struct.hix5hd2_clk_complex*, %struct.hix5hd2_clk_complex** %3, align 8
  %37 = getelementptr inbounds %struct.hix5hd2_clk_complex, %struct.hix5hd2_clk_complex* %36, i32 0, i32 4
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @readl_relaxed(i32 %38)
  store i32 %39, i32* %4, align 4
  %40 = load %struct.hix5hd2_clk_complex*, %struct.hix5hd2_clk_complex** %3, align 8
  %41 = getelementptr inbounds %struct.hix5hd2_clk_complex, %struct.hix5hd2_clk_complex* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %4, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %4, align 4
  %45 = load %struct.hix5hd2_clk_complex*, %struct.hix5hd2_clk_complex** %3, align 8
  %46 = getelementptr inbounds %struct.hix5hd2_clk_complex, %struct.hix5hd2_clk_complex* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 4
  %48 = xor i32 %47, -1
  %49 = load i32, i32* %4, align 4
  %50 = and i32 %49, %48
  store i32 %50, i32* %4, align 4
  %51 = load i32, i32* %4, align 4
  %52 = load %struct.hix5hd2_clk_complex*, %struct.hix5hd2_clk_complex** %3, align 8
  %53 = getelementptr inbounds %struct.hix5hd2_clk_complex, %struct.hix5hd2_clk_complex* %52, i32 0, i32 4
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @writel_relaxed(i32 %51, i32 %54)
  %56 = call i32 @mdelay(i32 10)
  %57 = load %struct.hix5hd2_clk_complex*, %struct.hix5hd2_clk_complex** %3, align 8
  %58 = getelementptr inbounds %struct.hix5hd2_clk_complex, %struct.hix5hd2_clk_complex* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = xor i32 %59, -1
  %61 = load i32, i32* %4, align 4
  %62 = and i32 %61, %60
  store i32 %62, i32* %4, align 4
  %63 = load %struct.hix5hd2_clk_complex*, %struct.hix5hd2_clk_complex** %3, align 8
  %64 = getelementptr inbounds %struct.hix5hd2_clk_complex, %struct.hix5hd2_clk_complex* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* %4, align 4
  %67 = or i32 %66, %65
  store i32 %67, i32* %4, align 4
  %68 = load i32, i32* %4, align 4
  %69 = load %struct.hix5hd2_clk_complex*, %struct.hix5hd2_clk_complex** %3, align 8
  %70 = getelementptr inbounds %struct.hix5hd2_clk_complex, %struct.hix5hd2_clk_complex* %69, i32 0, i32 4
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @writel_relaxed(i32 %68, i32 %71)
  %73 = call i32 @mdelay(i32 10)
  %74 = load %struct.hix5hd2_clk_complex*, %struct.hix5hd2_clk_complex** %3, align 8
  %75 = getelementptr inbounds %struct.hix5hd2_clk_complex, %struct.hix5hd2_clk_complex* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* %4, align 4
  %78 = or i32 %77, %76
  store i32 %78, i32* %4, align 4
  %79 = load %struct.hix5hd2_clk_complex*, %struct.hix5hd2_clk_complex** %3, align 8
  %80 = getelementptr inbounds %struct.hix5hd2_clk_complex, %struct.hix5hd2_clk_complex* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 4
  %82 = xor i32 %81, -1
  %83 = load i32, i32* %4, align 4
  %84 = and i32 %83, %82
  store i32 %84, i32* %4, align 4
  %85 = load i32, i32* %4, align 4
  %86 = load %struct.hix5hd2_clk_complex*, %struct.hix5hd2_clk_complex** %3, align 8
  %87 = getelementptr inbounds %struct.hix5hd2_clk_complex, %struct.hix5hd2_clk_complex* %86, i32 0, i32 4
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @writel_relaxed(i32 %85, i32 %88)
  %90 = call i32 @mdelay(i32 30)
  ret i32 0
}

declare dso_local %struct.hix5hd2_clk_complex* @to_complex_clk(%struct.clk_hw*) #1

declare dso_local i32 @readl_relaxed(i32) #1

declare dso_local i32 @writel_relaxed(i32, i32) #1

declare dso_local i32 @mdelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
