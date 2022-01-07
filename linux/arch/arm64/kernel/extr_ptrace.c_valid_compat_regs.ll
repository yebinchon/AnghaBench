; ModuleID = '/home/carl/AnghaBench/linux/arch/arm64/kernel/extr_ptrace.c_valid_compat_regs.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm64/kernel/extr_ptrace.c_valid_compat_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.user_pt_regs = type { i32 }

@SPSR_EL1_AARCH32_RES0_BITS = common dso_local global i32 0, align 4
@CONFIG_CPU_BIG_ENDIAN = common dso_local global i32 0, align 4
@PSR_AA32_E_BIT = common dso_local global i32 0, align 4
@PSR_MODE32_BIT = common dso_local global i32 0, align 4
@PSR_AA32_A_BIT = common dso_local global i32 0, align 4
@PSR_AA32_I_BIT = common dso_local global i32 0, align 4
@PSR_AA32_F_BIT = common dso_local global i32 0, align 4
@PSR_AA32_N_BIT = common dso_local global i32 0, align 4
@PSR_AA32_Z_BIT = common dso_local global i32 0, align 4
@PSR_AA32_C_BIT = common dso_local global i32 0, align 4
@PSR_AA32_V_BIT = common dso_local global i32 0, align 4
@PSR_AA32_Q_BIT = common dso_local global i32 0, align 4
@PSR_AA32_IT_MASK = common dso_local global i32 0, align 4
@PSR_AA32_GE_MASK = common dso_local global i32 0, align 4
@PSR_AA32_T_BIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.user_pt_regs*)* @valid_compat_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @valid_compat_regs(%struct.user_pt_regs* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.user_pt_regs*, align 8
  store %struct.user_pt_regs* %0, %struct.user_pt_regs** %3, align 8
  %4 = load i32, i32* @SPSR_EL1_AARCH32_RES0_BITS, align 4
  %5 = xor i32 %4, -1
  %6 = load %struct.user_pt_regs*, %struct.user_pt_regs** %3, align 8
  %7 = getelementptr inbounds %struct.user_pt_regs, %struct.user_pt_regs* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = and i32 %8, %5
  store i32 %9, i32* %7, align 4
  %10 = call i32 (...) @system_supports_mixed_endian_el0()
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %30, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @CONFIG_CPU_BIG_ENDIAN, align 4
  %14 = call i64 @IS_ENABLED(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %12
  %17 = load i32, i32* @PSR_AA32_E_BIT, align 4
  %18 = load %struct.user_pt_regs*, %struct.user_pt_regs** %3, align 8
  %19 = getelementptr inbounds %struct.user_pt_regs, %struct.user_pt_regs* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = or i32 %20, %17
  store i32 %21, i32* %19, align 4
  br label %29

22:                                               ; preds = %12
  %23 = load i32, i32* @PSR_AA32_E_BIT, align 4
  %24 = xor i32 %23, -1
  %25 = load %struct.user_pt_regs*, %struct.user_pt_regs** %3, align 8
  %26 = getelementptr inbounds %struct.user_pt_regs, %struct.user_pt_regs* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = and i32 %27, %24
  store i32 %28, i32* %26, align 4
  br label %29

29:                                               ; preds = %22, %16
  br label %30

30:                                               ; preds = %29, %1
  %31 = load %struct.user_pt_regs*, %struct.user_pt_regs** %3, align 8
  %32 = call i64 @user_mode(%struct.user_pt_regs* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %63

34:                                               ; preds = %30
  %35 = load %struct.user_pt_regs*, %struct.user_pt_regs** %3, align 8
  %36 = getelementptr inbounds %struct.user_pt_regs, %struct.user_pt_regs* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @PSR_MODE32_BIT, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %63

41:                                               ; preds = %34
  %42 = load %struct.user_pt_regs*, %struct.user_pt_regs** %3, align 8
  %43 = getelementptr inbounds %struct.user_pt_regs, %struct.user_pt_regs* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @PSR_AA32_A_BIT, align 4
  %46 = and i32 %44, %45
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %63

48:                                               ; preds = %41
  %49 = load %struct.user_pt_regs*, %struct.user_pt_regs** %3, align 8
  %50 = getelementptr inbounds %struct.user_pt_regs, %struct.user_pt_regs* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @PSR_AA32_I_BIT, align 4
  %53 = and i32 %51, %52
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %63

55:                                               ; preds = %48
  %56 = load %struct.user_pt_regs*, %struct.user_pt_regs** %3, align 8
  %57 = getelementptr inbounds %struct.user_pt_regs, %struct.user_pt_regs* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @PSR_AA32_F_BIT, align 4
  %60 = and i32 %58, %59
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %55
  store i32 1, i32* %2, align 4
  br label %90

63:                                               ; preds = %55, %48, %41, %34, %30
  %64 = load i32, i32* @PSR_AA32_N_BIT, align 4
  %65 = load i32, i32* @PSR_AA32_Z_BIT, align 4
  %66 = or i32 %64, %65
  %67 = load i32, i32* @PSR_AA32_C_BIT, align 4
  %68 = or i32 %66, %67
  %69 = load i32, i32* @PSR_AA32_V_BIT, align 4
  %70 = or i32 %68, %69
  %71 = load i32, i32* @PSR_AA32_Q_BIT, align 4
  %72 = or i32 %70, %71
  %73 = load i32, i32* @PSR_AA32_IT_MASK, align 4
  %74 = or i32 %72, %73
  %75 = load i32, i32* @PSR_AA32_GE_MASK, align 4
  %76 = or i32 %74, %75
  %77 = load i32, i32* @PSR_AA32_E_BIT, align 4
  %78 = or i32 %76, %77
  %79 = load i32, i32* @PSR_AA32_T_BIT, align 4
  %80 = or i32 %78, %79
  %81 = load %struct.user_pt_regs*, %struct.user_pt_regs** %3, align 8
  %82 = getelementptr inbounds %struct.user_pt_regs, %struct.user_pt_regs* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = and i32 %83, %80
  store i32 %84, i32* %82, align 4
  %85 = load i32, i32* @PSR_MODE32_BIT, align 4
  %86 = load %struct.user_pt_regs*, %struct.user_pt_regs** %3, align 8
  %87 = getelementptr inbounds %struct.user_pt_regs, %struct.user_pt_regs* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = or i32 %88, %85
  store i32 %89, i32* %87, align 4
  store i32 0, i32* %2, align 4
  br label %90

90:                                               ; preds = %63, %62
  %91 = load i32, i32* %2, align 4
  ret i32 %91
}

declare dso_local i32 @system_supports_mixed_endian_el0(...) #1

declare dso_local i64 @IS_ENABLED(i32) #1

declare dso_local i64 @user_mode(%struct.user_pt_regs*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
