; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/kernel/extr_traps.c_simulate_rdhwr_normal.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/kernel/extr_traps.c_simulate_rdhwr_normal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_regs = type { i32 }

@OPCODE = common dso_local global i32 0, align 4
@SPEC3 = common dso_local global i32 0, align 4
@FUNC = common dso_local global i32 0, align 4
@RDHWR = common dso_local global i32 0, align 4
@RD = common dso_local global i32 0, align 4
@RT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pt_regs*, i32)* @simulate_rdhwr_normal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @simulate_rdhwr_normal(%struct.pt_regs* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pt_regs*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.pt_regs* %0, %struct.pt_regs** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* @OPCODE, align 4
  %10 = and i32 %8, %9
  %11 = load i32, i32* @SPEC3, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %13, label %32

13:                                               ; preds = %2
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @FUNC, align 4
  %16 = and i32 %14, %15
  %17 = load i32, i32* @RDHWR, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %32

19:                                               ; preds = %13
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @RD, align 4
  %22 = and i32 %20, %21
  %23 = lshr i32 %22, 11
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* @RT, align 4
  %26 = and i32 %24, %25
  %27 = lshr i32 %26, 16
  store i32 %27, i32* %7, align 4
  %28 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* %7, align 4
  %31 = call i32 @simulate_rdhwr(%struct.pt_regs* %28, i32 %29, i32 %30)
  store i32 0, i32* %3, align 4
  br label %33

32:                                               ; preds = %13, %2
  store i32 -1, i32* %3, align 4
  br label %33

33:                                               ; preds = %32, %19
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

declare dso_local i32 @simulate_rdhwr(%struct.pt_regs*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
