; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/lantiq/falcon/extr_sysctrl.c_sysctl_deactivate.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/lantiq/falcon/extr_sysctrl.c_sysctl_deactivate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk = type { i32, i32 }

@SYSCTL_CLKCLR = common dso_local global i32 0, align 4
@SYSCTL_DEACT = common dso_local global i32 0, align 4
@SYSCTL_ACTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.clk*)* @sysctl_deactivate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sysctl_deactivate(%struct.clk* %0) #0 {
  %2 = alloca %struct.clk*, align 8
  store %struct.clk* %0, %struct.clk** %2, align 8
  %3 = load %struct.clk*, %struct.clk** %2, align 8
  %4 = getelementptr inbounds %struct.clk, %struct.clk* %3, i32 0, i32 1
  %5 = load i32, i32* %4, align 4
  %6 = load %struct.clk*, %struct.clk** %2, align 8
  %7 = getelementptr inbounds %struct.clk, %struct.clk* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @SYSCTL_CLKCLR, align 4
  %10 = call i32 @sysctl_w32(i32 %5, i32 %8, i32 %9)
  %11 = load %struct.clk*, %struct.clk** %2, align 8
  %12 = getelementptr inbounds %struct.clk, %struct.clk* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.clk*, %struct.clk** %2, align 8
  %15 = getelementptr inbounds %struct.clk, %struct.clk* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @SYSCTL_DEACT, align 4
  %18 = call i32 @sysctl_w32(i32 %13, i32 %16, i32 %17)
  %19 = load %struct.clk*, %struct.clk** %2, align 8
  %20 = load i32, i32* @SYSCTL_ACTS, align 4
  %21 = call i32 @sysctl_wait(%struct.clk* %19, i32 0, i32 %20)
  ret void
}

declare dso_local i32 @sysctl_w32(i32, i32, i32) #1

declare dso_local i32 @sysctl_wait(%struct.clk*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
