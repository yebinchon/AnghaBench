; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_x86.c_kvm_set_cr3.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_x86.c_kvm_set_cr3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32, i32 }

@KVM_REQ_TLB_FLUSH = common dso_local global i32 0, align 4
@VCPU_EXREG_CR3 = common dso_local global i32 0, align 4
@X86_CR3_PCID_NOFLUSH = common dso_local global i64 0, align 8
@X86_CR4_PCIDE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kvm_set_cr3(%struct.kvm_vcpu* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.kvm_vcpu*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 0, i32* %6, align 4
  %7 = load i64, i64* %5, align 8
  %8 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %9 = call i64 @kvm_read_cr3(%struct.kvm_vcpu* %8)
  %10 = icmp eq i64 %7, %9
  br i1 %10, label %11, label %25

11:                                               ; preds = %2
  %12 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %13 = call i32 @pdptrs_changed(%struct.kvm_vcpu* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %25, label %15

15:                                               ; preds = %11
  %16 = load i32, i32* %6, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %24, label %18

18:                                               ; preds = %15
  %19 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %20 = call i32 @kvm_mmu_sync_roots(%struct.kvm_vcpu* %19)
  %21 = load i32, i32* @KVM_REQ_TLB_FLUSH, align 4
  %22 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %23 = call i32 @kvm_make_request(i32 %21, %struct.kvm_vcpu* %22)
  br label %24

24:                                               ; preds = %18, %15
  store i32 0, i32* %3, align 4
  br label %66

25:                                               ; preds = %11, %2
  %26 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %27 = call i64 @is_long_mode(%struct.kvm_vcpu* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %37

29:                                               ; preds = %25
  %30 = load i64, i64* %5, align 8
  %31 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %32 = call i32 @cpuid_maxphyaddr(%struct.kvm_vcpu* %31)
  %33 = call i64 @rsvd_bits(i32 %32, i32 63)
  %34 = and i64 %30, %33
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %29
  store i32 1, i32* %3, align 4
  br label %66

37:                                               ; preds = %29, %25
  %38 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %39 = call i64 @is_pae_paging(%struct.kvm_vcpu* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %51

41:                                               ; preds = %37
  %42 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %43 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %44 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = load i64, i64* %5, align 8
  %48 = call i32 @load_pdptrs(%struct.kvm_vcpu* %42, i32 %46, i64 %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %41
  store i32 1, i32* %3, align 4
  br label %66

51:                                               ; preds = %41, %37
  br label %52

52:                                               ; preds = %51
  %53 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %54 = load i64, i64* %5, align 8
  %55 = load i32, i32* %6, align 4
  %56 = call i32 @kvm_mmu_new_cr3(%struct.kvm_vcpu* %53, i64 %54, i32 %55)
  %57 = load i64, i64* %5, align 8
  %58 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %59 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  store i64 %57, i64* %60, align 8
  %61 = load i32, i32* @VCPU_EXREG_CR3, align 4
  %62 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %63 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 1
  %65 = call i32 @__set_bit(i32 %61, i32* %64)
  store i32 0, i32* %3, align 4
  br label %66

66:                                               ; preds = %52, %50, %36, %24
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local i64 @kvm_read_cr3(%struct.kvm_vcpu*) #1

declare dso_local i32 @pdptrs_changed(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvm_mmu_sync_roots(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvm_make_request(i32, %struct.kvm_vcpu*) #1

declare dso_local i64 @is_long_mode(%struct.kvm_vcpu*) #1

declare dso_local i64 @rsvd_bits(i32, i32) #1

declare dso_local i32 @cpuid_maxphyaddr(%struct.kvm_vcpu*) #1

declare dso_local i64 @is_pae_paging(%struct.kvm_vcpu*) #1

declare dso_local i32 @load_pdptrs(%struct.kvm_vcpu*, i32, i64) #1

declare dso_local i32 @kvm_mmu_new_cr3(%struct.kvm_vcpu*, i64, i32) #1

declare dso_local i32 @__set_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
