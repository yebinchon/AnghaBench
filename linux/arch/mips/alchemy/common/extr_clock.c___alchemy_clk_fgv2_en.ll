; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/alchemy/common/extr_clock.c___alchemy_clk_fgv2_en.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/alchemy/common/extr_clock.c___alchemy_clk_fgv2_en.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.alchemy_fgcs_clk = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.alchemy_fgcs_clk*)* @__alchemy_clk_fgv2_en to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__alchemy_clk_fgv2_en(%struct.alchemy_fgcs_clk* %0) #0 {
  %2 = alloca %struct.alchemy_fgcs_clk*, align 8
  %3 = alloca i64, align 8
  store %struct.alchemy_fgcs_clk* %0, %struct.alchemy_fgcs_clk** %2, align 8
  %4 = load %struct.alchemy_fgcs_clk*, %struct.alchemy_fgcs_clk** %2, align 8
  %5 = getelementptr inbounds %struct.alchemy_fgcs_clk, %struct.alchemy_fgcs_clk* %4, i32 0, i32 3
  %6 = load i32, i32* %5, align 4
  %7 = call i64 @alchemy_rdsys(i32 %6)
  store i64 %7, i64* %3, align 8
  %8 = load %struct.alchemy_fgcs_clk*, %struct.alchemy_fgcs_clk** %2, align 8
  %9 = getelementptr inbounds %struct.alchemy_fgcs_clk, %struct.alchemy_fgcs_clk* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = shl i32 3, %10
  %12 = xor i32 %11, -1
  %13 = sext i32 %12 to i64
  %14 = load i64, i64* %3, align 8
  %15 = and i64 %14, %13
  store i64 %15, i64* %3, align 8
  %16 = load %struct.alchemy_fgcs_clk*, %struct.alchemy_fgcs_clk** %2, align 8
  %17 = getelementptr inbounds %struct.alchemy_fgcs_clk, %struct.alchemy_fgcs_clk* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = and i32 %18, 3
  %20 = load %struct.alchemy_fgcs_clk*, %struct.alchemy_fgcs_clk** %2, align 8
  %21 = getelementptr inbounds %struct.alchemy_fgcs_clk, %struct.alchemy_fgcs_clk* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = shl i32 %19, %22
  %24 = sext i32 %23 to i64
  %25 = load i64, i64* %3, align 8
  %26 = or i64 %25, %24
  store i64 %26, i64* %3, align 8
  %27 = load i64, i64* %3, align 8
  %28 = load %struct.alchemy_fgcs_clk*, %struct.alchemy_fgcs_clk** %2, align 8
  %29 = getelementptr inbounds %struct.alchemy_fgcs_clk, %struct.alchemy_fgcs_clk* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @alchemy_wrsys(i64 %27, i32 %30)
  %32 = load %struct.alchemy_fgcs_clk*, %struct.alchemy_fgcs_clk** %2, align 8
  %33 = getelementptr inbounds %struct.alchemy_fgcs_clk, %struct.alchemy_fgcs_clk* %32, i32 0, i32 2
  store i32 1, i32* %33, align 4
  ret void
}

declare dso_local i64 @alchemy_rdsys(i32) #1

declare dso_local i32 @alchemy_wrsys(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
