; ModuleID = '/home/carl/AnghaBench/linux/arch/arm64/kernel/extr_ptrace.c_valid_native_regs.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm64/kernel/extr_ptrace.c_valid_native_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.user_pt_regs = type { i32 }

@SPSR_EL1_AARCH64_RES0_BITS = common dso_local global i32 0, align 4
@PSR_MODE32_BIT = common dso_local global i32 0, align 4
@PSR_D_BIT = common dso_local global i32 0, align 4
@PSR_A_BIT = common dso_local global i32 0, align 4
@PSR_I_BIT = common dso_local global i32 0, align 4
@PSR_F_BIT = common dso_local global i32 0, align 4
@PSR_N_BIT = common dso_local global i32 0, align 4
@PSR_Z_BIT = common dso_local global i32 0, align 4
@PSR_C_BIT = common dso_local global i32 0, align 4
@PSR_V_BIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.user_pt_regs*)* @valid_native_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @valid_native_regs(%struct.user_pt_regs* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.user_pt_regs*, align 8
  store %struct.user_pt_regs* %0, %struct.user_pt_regs** %3, align 8
  %4 = load i32, i32* @SPSR_EL1_AARCH64_RES0_BITS, align 4
  %5 = xor i32 %4, -1
  %6 = load %struct.user_pt_regs*, %struct.user_pt_regs** %3, align 8
  %7 = getelementptr inbounds %struct.user_pt_regs, %struct.user_pt_regs* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = and i32 %8, %5
  store i32 %9, i32* %7, align 4
  %10 = load %struct.user_pt_regs*, %struct.user_pt_regs** %3, align 8
  %11 = call i64 @user_mode(%struct.user_pt_regs* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %49

13:                                               ; preds = %1
  %14 = load %struct.user_pt_regs*, %struct.user_pt_regs** %3, align 8
  %15 = getelementptr inbounds %struct.user_pt_regs, %struct.user_pt_regs* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @PSR_MODE32_BIT, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %49, label %20

20:                                               ; preds = %13
  %21 = load %struct.user_pt_regs*, %struct.user_pt_regs** %3, align 8
  %22 = getelementptr inbounds %struct.user_pt_regs, %struct.user_pt_regs* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @PSR_D_BIT, align 4
  %25 = and i32 %23, %24
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %49

27:                                               ; preds = %20
  %28 = load %struct.user_pt_regs*, %struct.user_pt_regs** %3, align 8
  %29 = getelementptr inbounds %struct.user_pt_regs, %struct.user_pt_regs* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @PSR_A_BIT, align 4
  %32 = and i32 %30, %31
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %49

34:                                               ; preds = %27
  %35 = load %struct.user_pt_regs*, %struct.user_pt_regs** %3, align 8
  %36 = getelementptr inbounds %struct.user_pt_regs, %struct.user_pt_regs* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @PSR_I_BIT, align 4
  %39 = and i32 %37, %38
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %49

41:                                               ; preds = %34
  %42 = load %struct.user_pt_regs*, %struct.user_pt_regs** %3, align 8
  %43 = getelementptr inbounds %struct.user_pt_regs, %struct.user_pt_regs* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @PSR_F_BIT, align 4
  %46 = and i32 %44, %45
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %41
  store i32 1, i32* %2, align 4
  br label %61

49:                                               ; preds = %41, %34, %27, %20, %13, %1
  %50 = load i32, i32* @PSR_N_BIT, align 4
  %51 = load i32, i32* @PSR_Z_BIT, align 4
  %52 = or i32 %50, %51
  %53 = load i32, i32* @PSR_C_BIT, align 4
  %54 = or i32 %52, %53
  %55 = load i32, i32* @PSR_V_BIT, align 4
  %56 = or i32 %54, %55
  %57 = load %struct.user_pt_regs*, %struct.user_pt_regs** %3, align 8
  %58 = getelementptr inbounds %struct.user_pt_regs, %struct.user_pt_regs* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = and i32 %59, %56
  store i32 %60, i32* %58, align 4
  store i32 0, i32* %2, align 4
  br label %61

61:                                               ; preds = %49, %48
  %62 = load i32, i32* %2, align 4
  ret i32 %62
}

declare dso_local i64 @user_mode(%struct.user_pt_regs*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
