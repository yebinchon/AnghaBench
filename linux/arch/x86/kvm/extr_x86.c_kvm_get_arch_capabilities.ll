; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_x86.c_kvm_get_arch_capabilities.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_x86.c_kvm_get_arch_capabilities.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@X86_FEATURE_ARCH_CAPABILITIES = common dso_local global i32 0, align 4
@MSR_IA32_ARCH_CAPABILITIES = common dso_local global i32 0, align 4
@ARCH_CAP_PSCHANGE_MC_NO = common dso_local global i32 0, align 4
@l1tf_vmx_mitigation = common dso_local global i64 0, align 8
@VMENTER_L1D_FLUSH_NEVER = common dso_local global i64 0, align 8
@ARCH_CAP_SKIP_VMENTRY_L1DFLUSH = common dso_local global i32 0, align 4
@X86_BUG_CPU_MELTDOWN = common dso_local global i32 0, align 4
@ARCH_CAP_RDCL_NO = common dso_local global i32 0, align 4
@X86_BUG_SPEC_STORE_BYPASS = common dso_local global i32 0, align 4
@ARCH_CAP_SSB_NO = common dso_local global i32 0, align 4
@X86_BUG_MDS = common dso_local global i32 0, align 4
@ARCH_CAP_MDS_NO = common dso_local global i32 0, align 4
@X86_BUG_TAA = common dso_local global i32 0, align 4
@X86_FEATURE_RTM = common dso_local global i32 0, align 4
@ARCH_CAP_TSX_CTRL_MSR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @kvm_get_arch_capabilities to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kvm_get_arch_capabilities() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %2 = load i32, i32* @X86_FEATURE_ARCH_CAPABILITIES, align 4
  %3 = call i64 @boot_cpu_has(i32 %2)
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %9

5:                                                ; preds = %0
  %6 = load i32, i32* @MSR_IA32_ARCH_CAPABILITIES, align 4
  %7 = load i32, i32* %1, align 4
  %8 = call i32 @rdmsrl(i32 %6, i32 %7)
  br label %9

9:                                                ; preds = %5, %0
  %10 = load i32, i32* @ARCH_CAP_PSCHANGE_MC_NO, align 4
  %11 = load i32, i32* %1, align 4
  %12 = or i32 %11, %10
  store i32 %12, i32* %1, align 4
  %13 = load i64, i64* @l1tf_vmx_mitigation, align 8
  %14 = load i64, i64* @VMENTER_L1D_FLUSH_NEVER, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %20

16:                                               ; preds = %9
  %17 = load i32, i32* @ARCH_CAP_SKIP_VMENTRY_L1DFLUSH, align 4
  %18 = load i32, i32* %1, align 4
  %19 = or i32 %18, %17
  store i32 %19, i32* %1, align 4
  br label %20

20:                                               ; preds = %16, %9
  %21 = load i32, i32* @X86_BUG_CPU_MELTDOWN, align 4
  %22 = call i64 @boot_cpu_has_bug(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %20
  %25 = load i32, i32* @ARCH_CAP_RDCL_NO, align 4
  %26 = load i32, i32* %1, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %1, align 4
  br label %28

28:                                               ; preds = %24, %20
  %29 = load i32, i32* @X86_BUG_SPEC_STORE_BYPASS, align 4
  %30 = call i64 @boot_cpu_has_bug(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %36, label %32

32:                                               ; preds = %28
  %33 = load i32, i32* @ARCH_CAP_SSB_NO, align 4
  %34 = load i32, i32* %1, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %1, align 4
  br label %36

36:                                               ; preds = %32, %28
  %37 = load i32, i32* @X86_BUG_MDS, align 4
  %38 = call i64 @boot_cpu_has_bug(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %44, label %40

40:                                               ; preds = %36
  %41 = load i32, i32* @ARCH_CAP_MDS_NO, align 4
  %42 = load i32, i32* %1, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %1, align 4
  br label %44

44:                                               ; preds = %40, %36
  %45 = load i32, i32* @X86_BUG_TAA, align 4
  %46 = call i64 @boot_cpu_has_bug(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %62

48:                                               ; preds = %44
  %49 = load i32, i32* @X86_FEATURE_RTM, align 4
  %50 = call i64 @boot_cpu_has(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %62

52:                                               ; preds = %48
  %53 = load i32, i32* %1, align 4
  %54 = load i32, i32* @ARCH_CAP_TSX_CTRL_MSR, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %52
  %58 = load i32, i32* @ARCH_CAP_MDS_NO, align 4
  %59 = xor i32 %58, -1
  %60 = load i32, i32* %1, align 4
  %61 = and i32 %60, %59
  store i32 %61, i32* %1, align 4
  br label %62

62:                                               ; preds = %57, %52, %48, %44
  %63 = load i32, i32* %1, align 4
  ret i32 %63
}

declare dso_local i64 @boot_cpu_has(i32) #1

declare dso_local i32 @rdmsrl(i32, i32) #1

declare dso_local i64 @boot_cpu_has_bug(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
