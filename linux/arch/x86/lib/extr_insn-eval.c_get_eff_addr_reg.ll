; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/lib/extr_insn-eval.c_get_eff_addr_reg.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/lib/extr_insn-eval.c_get_eff_addr_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.insn = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.pt_regs = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@REG_TYPE_RM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.insn*, %struct.pt_regs*, i32*, i64*)* @get_eff_addr_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_eff_addr_reg(%struct.insn* %0, %struct.pt_regs* %1, i32* %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.insn*, align 8
  %7 = alloca %struct.pt_regs*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64*, align 8
  store %struct.insn* %0, %struct.insn** %6, align 8
  store %struct.pt_regs* %1, %struct.pt_regs** %7, align 8
  store i32* %2, i32** %8, align 8
  store i64* %3, i64** %9, align 8
  %10 = load %struct.insn*, %struct.insn** %6, align 8
  %11 = call i32 @insn_get_modrm(%struct.insn* %10)
  %12 = load %struct.insn*, %struct.insn** %6, align 8
  %13 = getelementptr inbounds %struct.insn, %struct.insn* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %4
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %5, align 4
  br label %76

20:                                               ; preds = %4
  %21 = load %struct.insn*, %struct.insn** %6, align 8
  %22 = getelementptr inbounds %struct.insn, %struct.insn* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @X86_MODRM_MOD(i32 %24)
  %26 = icmp ne i32 %25, 3
  br i1 %26, label %27, label %30

27:                                               ; preds = %20
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %5, align 4
  br label %76

30:                                               ; preds = %20
  %31 = load %struct.insn*, %struct.insn** %6, align 8
  %32 = load %struct.pt_regs*, %struct.pt_regs** %7, align 8
  %33 = load i32, i32* @REG_TYPE_RM, align 4
  %34 = call i32 @get_reg_offset(%struct.insn* %31, %struct.pt_regs* %32, i32 %33)
  %35 = load i32*, i32** %8, align 8
  store i32 %34, i32* %35, align 4
  %36 = load i32*, i32** %8, align 8
  %37 = load i32, i32* %36, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %30
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %5, align 4
  br label %76

42:                                               ; preds = %30
  %43 = load %struct.insn*, %struct.insn** %6, align 8
  %44 = getelementptr inbounds %struct.insn, %struct.insn* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = icmp eq i32 %45, 2
  br i1 %46, label %47, label %55

47:                                               ; preds = %42
  %48 = load %struct.pt_regs*, %struct.pt_regs** %7, align 8
  %49 = load i32*, i32** %8, align 8
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @regs_get_register(%struct.pt_regs* %48, i32 %50)
  %52 = and i32 %51, 65535
  %53 = sext i32 %52 to i64
  %54 = load i64*, i64** %9, align 8
  store i64 %53, i64* %54, align 8
  br label %75

55:                                               ; preds = %42
  %56 = load %struct.insn*, %struct.insn** %6, align 8
  %57 = getelementptr inbounds %struct.insn, %struct.insn* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = icmp eq i32 %58, 4
  br i1 %59, label %60, label %67

60:                                               ; preds = %55
  %61 = load %struct.pt_regs*, %struct.pt_regs** %7, align 8
  %62 = load i32*, i32** %8, align 8
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @regs_get_register(%struct.pt_regs* %61, i32 %63)
  %65 = zext i32 %64 to i64
  %66 = load i64*, i64** %9, align 8
  store i64 %65, i64* %66, align 8
  br label %74

67:                                               ; preds = %55
  %68 = load %struct.pt_regs*, %struct.pt_regs** %7, align 8
  %69 = load i32*, i32** %8, align 8
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @regs_get_register(%struct.pt_regs* %68, i32 %70)
  %72 = sext i32 %71 to i64
  %73 = load i64*, i64** %9, align 8
  store i64 %72, i64* %73, align 8
  br label %74

74:                                               ; preds = %67, %60
  br label %75

75:                                               ; preds = %74, %47
  store i32 0, i32* %5, align 4
  br label %76

76:                                               ; preds = %75, %39, %27, %17
  %77 = load i32, i32* %5, align 4
  ret i32 %77
}

declare dso_local i32 @insn_get_modrm(%struct.insn*) #1

declare dso_local i32 @X86_MODRM_MOD(i32) #1

declare dso_local i32 @get_reg_offset(%struct.insn*, %struct.pt_regs*, i32) #1

declare dso_local i32 @regs_get_register(%struct.pt_regs*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
