; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/alchemy/common/extr_clock.c_alchemy_clk_fgv1_isen.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/alchemy/common/extr_clock.c_alchemy_clk_fgv1_isen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.alchemy_fgcs_clk = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*)* @alchemy_clk_fgv1_isen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alchemy_clk_fgv1_isen(%struct.clk_hw* %0) #0 {
  %2 = alloca %struct.clk_hw*, align 8
  %3 = alloca %struct.alchemy_fgcs_clk*, align 8
  %4 = alloca i64, align 8
  store %struct.clk_hw* %0, %struct.clk_hw** %2, align 8
  %5 = load %struct.clk_hw*, %struct.clk_hw** %2, align 8
  %6 = call %struct.alchemy_fgcs_clk* @to_fgcs_clk(%struct.clk_hw* %5)
  store %struct.alchemy_fgcs_clk* %6, %struct.alchemy_fgcs_clk** %3, align 8
  %7 = load %struct.alchemy_fgcs_clk*, %struct.alchemy_fgcs_clk** %3, align 8
  %8 = getelementptr inbounds %struct.alchemy_fgcs_clk, %struct.alchemy_fgcs_clk* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @alchemy_rdsys(i32 %9)
  %11 = load %struct.alchemy_fgcs_clk*, %struct.alchemy_fgcs_clk** %3, align 8
  %12 = getelementptr inbounds %struct.alchemy_fgcs_clk, %struct.alchemy_fgcs_clk* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = add nsw i32 %13, 1
  %15 = ashr i32 %10, %14
  %16 = sext i32 %15 to i64
  store i64 %16, i64* %4, align 8
  %17 = load i64, i64* %4, align 8
  %18 = and i64 %17, 1
  %19 = trunc i64 %18 to i32
  ret i32 %19
}

declare dso_local %struct.alchemy_fgcs_clk* @to_fgcs_clk(%struct.clk_hw*) #1

declare dso_local i32 @alchemy_rdsys(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
