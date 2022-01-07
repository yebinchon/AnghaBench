; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_mtrr.c_update_mtrr.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_mtrr.c_update_mtrr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.kvm_mtrr }
%struct.kvm_mtrr = type { i32* }

@MSR_IA32_CR_PAT = common dso_local global i32 0, align 4
@tdp_enabled = common dso_local global i32 0, align 4
@MSR_MTRRdefType = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvm_vcpu*, i32)* @update_mtrr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_mtrr(%struct.kvm_vcpu* %0, i32 %1) #0 {
  %3 = alloca %struct.kvm_vcpu*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.kvm_mtrr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %10 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  store %struct.kvm_mtrr* %11, %struct.kvm_mtrr** %5, align 8
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @MSR_IA32_CR_PAT, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %24, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @tdp_enabled, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %15
  %19 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %20 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @kvm_arch_has_noncoherent_dma(i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %18, %15, %2
  br label %70

25:                                               ; preds = %18
  %26 = load %struct.kvm_mtrr*, %struct.kvm_mtrr** %5, align 8
  %27 = call i32 @mtrr_is_enabled(%struct.kvm_mtrr* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %34, label %29

29:                                               ; preds = %25
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* @MSR_MTRRdefType, align 4
  %32 = icmp ne i32 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %29
  br label %70

34:                                               ; preds = %29, %25
  %35 = load i32, i32* %4, align 4
  %36 = call i64 @fixed_msr_to_range(i32 %35, i32* %6, i32* %7)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %34
  %39 = load %struct.kvm_mtrr*, %struct.kvm_mtrr** %5, align 8
  %40 = call i32 @fixed_mtrr_is_enabled(%struct.kvm_mtrr* %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %38
  br label %70

43:                                               ; preds = %38
  br label %61

44:                                               ; preds = %34
  %45 = load i32, i32* %4, align 4
  %46 = load i32, i32* @MSR_MTRRdefType, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %44
  store i32 0, i32* %6, align 4
  store i32 -1, i32* %7, align 4
  br label %60

49:                                               ; preds = %44
  %50 = load i32, i32* %4, align 4
  %51 = sub nsw i32 %50, 512
  %52 = sdiv i32 %51, 2
  store i32 %52, i32* %8, align 4
  %53 = load %struct.kvm_mtrr*, %struct.kvm_mtrr** %5, align 8
  %54 = getelementptr inbounds %struct.kvm_mtrr, %struct.kvm_mtrr* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = load i32, i32* %8, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  %59 = call i32 @var_mtrr_range(i32* %58, i32* %6, i32* %7)
  br label %60

60:                                               ; preds = %49, %48
  br label %61

61:                                               ; preds = %60, %43
  %62 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %63 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* %6, align 4
  %66 = call i32 @gpa_to_gfn(i32 %65)
  %67 = load i32, i32* %7, align 4
  %68 = call i32 @gpa_to_gfn(i32 %67)
  %69 = call i32 @kvm_zap_gfn_range(i32 %64, i32 %66, i32 %68)
  br label %70

70:                                               ; preds = %61, %42, %33, %24
  ret void
}

declare dso_local i32 @kvm_arch_has_noncoherent_dma(i32) #1

declare dso_local i32 @mtrr_is_enabled(%struct.kvm_mtrr*) #1

declare dso_local i64 @fixed_msr_to_range(i32, i32*, i32*) #1

declare dso_local i32 @fixed_mtrr_is_enabled(%struct.kvm_mtrr*) #1

declare dso_local i32 @var_mtrr_range(i32*, i32*, i32*) #1

declare dso_local i32 @kvm_zap_gfn_range(i32, i32, i32) #1

declare dso_local i32 @gpa_to_gfn(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
