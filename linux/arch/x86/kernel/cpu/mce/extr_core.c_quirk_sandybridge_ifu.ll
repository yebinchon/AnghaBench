; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/mce/extr_core.c_quirk_sandybridge_ifu.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/mce/extr_core.c_quirk_sandybridge_ifu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mce = type { i32, i32, i32, i32 }
%struct.pt_regs = type { i32, i32 }

@MCG_STATUS_EIPV = common dso_local global i32 0, align 4
@MCG_STATUS_RIPV = common dso_local global i32 0, align 4
@MCI_STATUS_OVER = common dso_local global i32 0, align 4
@MCI_STATUS_UC = common dso_local global i32 0, align 4
@MCI_STATUS_EN = common dso_local global i32 0, align 4
@MCI_STATUS_MISCV = common dso_local global i32 0, align 4
@MCI_STATUS_ADDRV = common dso_local global i32 0, align 4
@MCI_STATUS_PCC = common dso_local global i32 0, align 4
@MCI_STATUS_S = common dso_local global i32 0, align 4
@MCI_STATUS_AR = common dso_local global i32 0, align 4
@MCACOD = common dso_local global i32 0, align 4
@MCACOD_INSTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.mce*, %struct.pt_regs*)* @quirk_sandybridge_ifu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @quirk_sandybridge_ifu(i32 %0, %struct.mce* %1, %struct.pt_regs* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mce*, align 8
  %6 = alloca %struct.pt_regs*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.mce* %1, %struct.mce** %5, align 8
  store %struct.pt_regs* %2, %struct.pt_regs** %6, align 8
  %7 = load i32, i32* %4, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %3
  br label %73

10:                                               ; preds = %3
  %11 = load %struct.mce*, %struct.mce** %5, align 8
  %12 = getelementptr inbounds %struct.mce, %struct.mce* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @MCG_STATUS_EIPV, align 4
  %15 = load i32, i32* @MCG_STATUS_RIPV, align 4
  %16 = or i32 %14, %15
  %17 = and i32 %13, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %10
  br label %73

20:                                               ; preds = %10
  %21 = load %struct.mce*, %struct.mce** %5, align 8
  %22 = getelementptr inbounds %struct.mce, %struct.mce* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @MCI_STATUS_OVER, align 4
  %25 = load i32, i32* @MCI_STATUS_UC, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @MCI_STATUS_EN, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @MCI_STATUS_MISCV, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @MCI_STATUS_ADDRV, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @MCI_STATUS_PCC, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @MCI_STATUS_S, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* @MCI_STATUS_AR, align 4
  %38 = or i32 %36, %37
  %39 = load i32, i32* @MCACOD, align 4
  %40 = or i32 %38, %39
  %41 = and i32 %23, %40
  %42 = load i32, i32* @MCI_STATUS_UC, align 4
  %43 = load i32, i32* @MCI_STATUS_EN, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* @MCI_STATUS_MISCV, align 4
  %46 = or i32 %44, %45
  %47 = load i32, i32* @MCI_STATUS_ADDRV, align 4
  %48 = or i32 %46, %47
  %49 = load i32, i32* @MCI_STATUS_S, align 4
  %50 = or i32 %48, %49
  %51 = load i32, i32* @MCI_STATUS_AR, align 4
  %52 = or i32 %50, %51
  %53 = load i32, i32* @MCACOD_INSTR, align 4
  %54 = or i32 %52, %53
  %55 = icmp ne i32 %41, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %20
  br label %73

57:                                               ; preds = %20
  %58 = load i32, i32* @MCG_STATUS_EIPV, align 4
  %59 = load %struct.mce*, %struct.mce** %5, align 8
  %60 = getelementptr inbounds %struct.mce, %struct.mce* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = or i32 %61, %58
  store i32 %62, i32* %60, align 4
  %63 = load %struct.pt_regs*, %struct.pt_regs** %6, align 8
  %64 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.mce*, %struct.mce** %5, align 8
  %67 = getelementptr inbounds %struct.mce, %struct.mce* %66, i32 0, i32 3
  store i32 %65, i32* %67, align 4
  %68 = load %struct.pt_regs*, %struct.pt_regs** %6, align 8
  %69 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.mce*, %struct.mce** %5, align 8
  %72 = getelementptr inbounds %struct.mce, %struct.mce* %71, i32 0, i32 2
  store i32 %70, i32* %72, align 4
  br label %73

73:                                               ; preds = %57, %56, %19, %9
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
