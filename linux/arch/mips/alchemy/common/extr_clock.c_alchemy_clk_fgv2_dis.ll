; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/alchemy/common/extr_clock.c_alchemy_clk_fgv2_dis.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/alchemy/common/extr_clock.c_alchemy_clk_fgv2_dis.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.alchemy_fgcs_clk = type { i32, i32, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.clk_hw*)* @alchemy_clk_fgv2_dis to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @alchemy_clk_fgv2_dis(%struct.clk_hw* %0) #0 {
  %2 = alloca %struct.clk_hw*, align 8
  %3 = alloca %struct.alchemy_fgcs_clk*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.clk_hw* %0, %struct.clk_hw** %2, align 8
  %6 = load %struct.clk_hw*, %struct.clk_hw** %2, align 8
  %7 = call %struct.alchemy_fgcs_clk* @to_fgcs_clk(%struct.clk_hw* %6)
  store %struct.alchemy_fgcs_clk* %7, %struct.alchemy_fgcs_clk** %3, align 8
  %8 = load %struct.alchemy_fgcs_clk*, %struct.alchemy_fgcs_clk** %3, align 8
  %9 = getelementptr inbounds %struct.alchemy_fgcs_clk, %struct.alchemy_fgcs_clk* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = load i64, i64* %5, align 8
  %12 = call i32 @spin_lock_irqsave(i32 %10, i64 %11)
  %13 = load %struct.alchemy_fgcs_clk*, %struct.alchemy_fgcs_clk** %3, align 8
  %14 = getelementptr inbounds %struct.alchemy_fgcs_clk, %struct.alchemy_fgcs_clk* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 8
  %16 = call i64 @alchemy_rdsys(i32 %15)
  store i64 %16, i64* %4, align 8
  %17 = load %struct.alchemy_fgcs_clk*, %struct.alchemy_fgcs_clk** %3, align 8
  %18 = getelementptr inbounds %struct.alchemy_fgcs_clk, %struct.alchemy_fgcs_clk* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = shl i32 3, %19
  %21 = xor i32 %20, -1
  %22 = sext i32 %21 to i64
  %23 = load i64, i64* %4, align 8
  %24 = and i64 %23, %22
  store i64 %24, i64* %4, align 8
  %25 = load i64, i64* %4, align 8
  %26 = load %struct.alchemy_fgcs_clk*, %struct.alchemy_fgcs_clk** %3, align 8
  %27 = getelementptr inbounds %struct.alchemy_fgcs_clk, %struct.alchemy_fgcs_clk* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @alchemy_wrsys(i64 %25, i32 %28)
  %30 = load %struct.alchemy_fgcs_clk*, %struct.alchemy_fgcs_clk** %3, align 8
  %31 = getelementptr inbounds %struct.alchemy_fgcs_clk, %struct.alchemy_fgcs_clk* %30, i32 0, i32 2
  store i64 0, i64* %31, align 8
  %32 = load %struct.alchemy_fgcs_clk*, %struct.alchemy_fgcs_clk** %3, align 8
  %33 = getelementptr inbounds %struct.alchemy_fgcs_clk, %struct.alchemy_fgcs_clk* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load i64, i64* %5, align 8
  %36 = call i32 @spin_unlock_irqrestore(i32 %34, i64 %35)
  ret void
}

declare dso_local %struct.alchemy_fgcs_clk* @to_fgcs_clk(%struct.clk_hw*) #1

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local i64 @alchemy_rdsys(i32) #1

declare dso_local i32 @alchemy_wrsys(i64, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
