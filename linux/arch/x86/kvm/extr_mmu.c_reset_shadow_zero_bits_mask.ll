; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_mmu.c_reset_shadow_zero_bits_mask.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_mmu.c_reset_shadow_zero_bits_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32 }
%struct.kvm_mmu = type { i32, %struct.rsvd_bits_validate, %struct.TYPE_4__, i64 }
%struct.rsvd_bits_validate = type { i32** }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@shadow_phys_bits = common dso_local global i32 0, align 4
@X86_FEATURE_GBPAGES = common dso_local global i32 0, align 4
@shadow_me_mask = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @reset_shadow_zero_bits_mask(%struct.kvm_vcpu* %0, %struct.kvm_mmu* %1) #0 {
  %3 = alloca %struct.kvm_vcpu*, align 8
  %4 = alloca %struct.kvm_mmu*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.rsvd_bits_validate*, align 8
  %7 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %3, align 8
  store %struct.kvm_mmu* %1, %struct.kvm_mmu** %4, align 8
  %8 = load %struct.kvm_mmu*, %struct.kvm_mmu** %4, align 8
  %9 = getelementptr inbounds %struct.kvm_mmu, %struct.kvm_mmu* %8, i32 0, i32 3
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %19, label %12

12:                                               ; preds = %2
  %13 = load %struct.kvm_mmu*, %struct.kvm_mmu** %4, align 8
  %14 = getelementptr inbounds %struct.kvm_mmu, %struct.kvm_mmu* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br label %19

19:                                               ; preds = %12, %2
  %20 = phi i1 [ true, %2 ], [ %18, %12 ]
  %21 = zext i1 %20 to i32
  store i32 %21, i32* %5, align 4
  %22 = load %struct.kvm_mmu*, %struct.kvm_mmu** %4, align 8
  %23 = getelementptr inbounds %struct.kvm_mmu, %struct.kvm_mmu* %22, i32 0, i32 1
  store %struct.rsvd_bits_validate* %23, %struct.rsvd_bits_validate** %6, align 8
  %24 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %25 = load %struct.rsvd_bits_validate*, %struct.rsvd_bits_validate** %6, align 8
  %26 = load i32, i32* @shadow_phys_bits, align 4
  %27 = load %struct.kvm_mmu*, %struct.kvm_mmu** %4, align 8
  %28 = getelementptr inbounds %struct.kvm_mmu, %struct.kvm_mmu* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* %5, align 4
  %31 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %32 = load i32, i32* @X86_FEATURE_GBPAGES, align 4
  %33 = call i32 @guest_cpuid_has(%struct.kvm_vcpu* %31, i32 %32)
  %34 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %35 = call i32 @is_pse(%struct.kvm_vcpu* %34)
  %36 = call i32 @__reset_rsvds_bits_mask(%struct.kvm_vcpu* %24, %struct.rsvd_bits_validate* %25, i32 %26, i32 %29, i32 %30, i32 %33, i32 %35, i32 1)
  %37 = load i32, i32* @shadow_me_mask, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %19
  br label %73

40:                                               ; preds = %19
  %41 = load %struct.kvm_mmu*, %struct.kvm_mmu** %4, align 8
  %42 = getelementptr inbounds %struct.kvm_mmu, %struct.kvm_mmu* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  store i32 %43, i32* %7, align 4
  br label %44

44:                                               ; preds = %48, %40
  %45 = load i32, i32* %7, align 4
  %46 = add nsw i32 %45, -1
  store i32 %46, i32* %7, align 4
  %47 = icmp sge i32 %46, 0
  br i1 %47, label %48, label %73

48:                                               ; preds = %44
  %49 = load i32, i32* @shadow_me_mask, align 4
  %50 = xor i32 %49, -1
  %51 = load %struct.rsvd_bits_validate*, %struct.rsvd_bits_validate** %6, align 8
  %52 = getelementptr inbounds %struct.rsvd_bits_validate, %struct.rsvd_bits_validate* %51, i32 0, i32 0
  %53 = load i32**, i32*** %52, align 8
  %54 = getelementptr inbounds i32*, i32** %53, i64 0
  %55 = load i32*, i32** %54, align 8
  %56 = load i32, i32* %7, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = and i32 %59, %50
  store i32 %60, i32* %58, align 4
  %61 = load i32, i32* @shadow_me_mask, align 4
  %62 = xor i32 %61, -1
  %63 = load %struct.rsvd_bits_validate*, %struct.rsvd_bits_validate** %6, align 8
  %64 = getelementptr inbounds %struct.rsvd_bits_validate, %struct.rsvd_bits_validate* %63, i32 0, i32 0
  %65 = load i32**, i32*** %64, align 8
  %66 = getelementptr inbounds i32*, i32** %65, i64 1
  %67 = load i32*, i32** %66, align 8
  %68 = load i32, i32* %7, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = and i32 %71, %62
  store i32 %72, i32* %70, align 4
  br label %44

73:                                               ; preds = %39, %44
  ret void
}

declare dso_local i32 @__reset_rsvds_bits_mask(%struct.kvm_vcpu*, %struct.rsvd_bits_validate*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @guest_cpuid_has(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @is_pse(%struct.kvm_vcpu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
