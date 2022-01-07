; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/renesas/extr_renesas-cpg-mssr.c_cpg_mstp_clock_is_enabled.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/renesas/extr_renesas-cpg-mssr.c_cpg_mstp_clock_is_enabled.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.mstp_clock = type { i32, %struct.cpg_mssr_priv* }
%struct.cpg_mssr_priv = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*)* @cpg_mstp_clock_is_enabled to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cpg_mstp_clock_is_enabled(%struct.clk_hw* %0) #0 {
  %2 = alloca %struct.clk_hw*, align 8
  %3 = alloca %struct.mstp_clock*, align 8
  %4 = alloca %struct.cpg_mssr_priv*, align 8
  %5 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %2, align 8
  %6 = load %struct.clk_hw*, %struct.clk_hw** %2, align 8
  %7 = call %struct.mstp_clock* @to_mstp_clock(%struct.clk_hw* %6)
  store %struct.mstp_clock* %7, %struct.mstp_clock** %3, align 8
  %8 = load %struct.mstp_clock*, %struct.mstp_clock** %3, align 8
  %9 = getelementptr inbounds %struct.mstp_clock, %struct.mstp_clock* %8, i32 0, i32 1
  %10 = load %struct.cpg_mssr_priv*, %struct.cpg_mssr_priv** %9, align 8
  store %struct.cpg_mssr_priv* %10, %struct.cpg_mssr_priv** %4, align 8
  %11 = load %struct.cpg_mssr_priv*, %struct.cpg_mssr_priv** %4, align 8
  %12 = getelementptr inbounds %struct.cpg_mssr_priv, %struct.cpg_mssr_priv* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %26

15:                                               ; preds = %1
  %16 = load %struct.cpg_mssr_priv*, %struct.cpg_mssr_priv** %4, align 8
  %17 = getelementptr inbounds %struct.cpg_mssr_priv, %struct.cpg_mssr_priv* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.mstp_clock*, %struct.mstp_clock** %3, align 8
  %20 = getelementptr inbounds %struct.mstp_clock, %struct.mstp_clock* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = sdiv i32 %21, 32
  %23 = call i64 @STBCR(i32 %22)
  %24 = add nsw i64 %18, %23
  %25 = call i32 @readb(i64 %24)
  store i32 %25, i32* %5, align 4
  br label %37

26:                                               ; preds = %1
  %27 = load %struct.cpg_mssr_priv*, %struct.cpg_mssr_priv** %4, align 8
  %28 = getelementptr inbounds %struct.cpg_mssr_priv, %struct.cpg_mssr_priv* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.mstp_clock*, %struct.mstp_clock** %3, align 8
  %31 = getelementptr inbounds %struct.mstp_clock, %struct.mstp_clock* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = sdiv i32 %32, 32
  %34 = call i64 @MSTPSR(i32 %33)
  %35 = add nsw i64 %29, %34
  %36 = call i32 @readl(i64 %35)
  store i32 %36, i32* %5, align 4
  br label %37

37:                                               ; preds = %26, %15
  %38 = load i32, i32* %5, align 4
  %39 = load %struct.mstp_clock*, %struct.mstp_clock** %3, align 8
  %40 = getelementptr inbounds %struct.mstp_clock, %struct.mstp_clock* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = srem i32 %41, 32
  %43 = call i32 @BIT(i32 %42)
  %44 = and i32 %38, %43
  %45 = icmp ne i32 %44, 0
  %46 = xor i1 %45, true
  %47 = zext i1 %46 to i32
  ret i32 %47
}

declare dso_local %struct.mstp_clock* @to_mstp_clock(%struct.clk_hw*) #1

declare dso_local i32 @readb(i64) #1

declare dso_local i64 @STBCR(i32) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i64 @MSTPSR(i32) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
