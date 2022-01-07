; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/ux500/extr_clk-sysctrl.c_clk_sysctrl_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/ux500/extr_clk-sysctrl.c_clk_sysctrl_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.clk_sysctrl = type { i32, i32*, i32*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*)* @clk_sysctrl_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clk_sysctrl_prepare(%struct.clk_hw* %0) #0 {
  %2 = alloca %struct.clk_hw*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.clk_sysctrl*, align 8
  store %struct.clk_hw* %0, %struct.clk_hw** %2, align 8
  %5 = load %struct.clk_hw*, %struct.clk_hw** %2, align 8
  %6 = call %struct.clk_sysctrl* @to_clk_sysctrl(%struct.clk_hw* %5)
  store %struct.clk_sysctrl* %6, %struct.clk_sysctrl** %4, align 8
  %7 = load %struct.clk_sysctrl*, %struct.clk_sysctrl** %4, align 8
  %8 = getelementptr inbounds %struct.clk_sysctrl, %struct.clk_sysctrl* %7, i32 0, i32 3
  %9 = load i32*, i32** %8, align 8
  %10 = getelementptr inbounds i32, i32* %9, i64 0
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.clk_sysctrl*, %struct.clk_sysctrl** %4, align 8
  %13 = getelementptr inbounds %struct.clk_sysctrl, %struct.clk_sysctrl* %12, i32 0, i32 2
  %14 = load i32*, i32** %13, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.clk_sysctrl*, %struct.clk_sysctrl** %4, align 8
  %18 = getelementptr inbounds %struct.clk_sysctrl, %struct.clk_sysctrl* %17, i32 0, i32 1
  %19 = load i32*, i32** %18, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @ab8500_sysctrl_write(i32 %11, i32 %16, i32 %21)
  store i32 %22, i32* %3, align 4
  %23 = load i32, i32* %3, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %43, label %25

25:                                               ; preds = %1
  %26 = load %struct.clk_sysctrl*, %struct.clk_sysctrl** %4, align 8
  %27 = getelementptr inbounds %struct.clk_sysctrl, %struct.clk_sysctrl* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %43

30:                                               ; preds = %25
  %31 = load %struct.clk_sysctrl*, %struct.clk_sysctrl** %4, align 8
  %32 = getelementptr inbounds %struct.clk_sysctrl, %struct.clk_sysctrl* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.clk_sysctrl*, %struct.clk_sysctrl** %4, align 8
  %35 = getelementptr inbounds %struct.clk_sysctrl, %struct.clk_sysctrl* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.clk_sysctrl*, %struct.clk_sysctrl** %4, align 8
  %38 = getelementptr inbounds %struct.clk_sysctrl, %struct.clk_sysctrl* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = ashr i32 %39, 2
  %41 = add nsw i32 %36, %40
  %42 = call i32 @usleep_range(i32 %33, i32 %41)
  br label %43

43:                                               ; preds = %30, %25, %1
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local %struct.clk_sysctrl* @to_clk_sysctrl(%struct.clk_hw*) #1

declare dso_local i32 @ab8500_sysctrl_write(i32, i32, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
