; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/kernel/extr_traps.c_simulate_rdhwr_mm.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/kernel/extr_traps.c_simulate_rdhwr_mm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_regs = type { i32 }

@MM_POOL32A_FUNC = common dso_local global i32 0, align 4
@MM_RDHWR = common dso_local global i32 0, align 4
@MM_RS = common dso_local global i32 0, align 4
@MM_RT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pt_regs*, i32)* @simulate_rdhwr_mm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @simulate_rdhwr_mm(%struct.pt_regs* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pt_regs*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.pt_regs* %0, %struct.pt_regs** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* @MM_POOL32A_FUNC, align 4
  %10 = and i32 %8, %9
  %11 = load i32, i32* @MM_RDHWR, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %13, label %26

13:                                               ; preds = %2
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @MM_RS, align 4
  %16 = and i32 %14, %15
  %17 = lshr i32 %16, 16
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @MM_RT, align 4
  %20 = and i32 %18, %19
  %21 = lshr i32 %20, 21
  store i32 %21, i32* %7, align 4
  %22 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @simulate_rdhwr(%struct.pt_regs* %22, i32 %23, i32 %24)
  store i32 0, i32* %3, align 4
  br label %27

26:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %27

27:                                               ; preds = %26, %13
  %28 = load i32, i32* %3, align 4
  ret i32 %28
}

declare dso_local i32 @simulate_rdhwr(%struct.pt_regs*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
