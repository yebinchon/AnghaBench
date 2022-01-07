; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_mmu.c_fast_cr3_switch.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_mmu.c_fast_cr3_switch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 (%struct.kvm_vcpu*, i32)* }
%struct.kvm_vcpu = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.kvm_mmu* }
%struct.kvm_mmu = type { i64, i64, i32 }
%union.kvm_mmu_page_role = type { i32 }

@PT64_ROOT_4LEVEL = common dso_local global i64 0, align 8
@PAGE_SHIFT = common dso_local global i32 0, align 4
@KVM_REQ_LOAD_CR3 = common dso_local global i32 0, align 4
@KVM_REQ_MMU_SYNC = common dso_local global i32 0, align 4
@kvm_x86_ops = common dso_local global %struct.TYPE_4__* null, align 8
@MMIO_GVA_ANY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_vcpu*, i32, i32, i32)* @fast_cr3_switch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fast_cr3_switch(%struct.kvm_vcpu* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %union.kvm_mmu_page_role, align 4
  %7 = alloca %struct.kvm_vcpu*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.kvm_mmu*, align 8
  %11 = getelementptr inbounds %union.kvm_mmu_page_role, %union.kvm_mmu_page_role* %6, i32 0, i32 0
  store i32 %2, i32* %11, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %13 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load %struct.kvm_mmu*, %struct.kvm_mmu** %14, align 8
  store %struct.kvm_mmu* %15, %struct.kvm_mmu** %10, align 8
  %16 = load %struct.kvm_mmu*, %struct.kvm_mmu** %10, align 8
  %17 = getelementptr inbounds %struct.kvm_mmu, %struct.kvm_mmu* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @PT64_ROOT_4LEVEL, align 8
  %20 = icmp sge i64 %18, %19
  br i1 %20, label %21, label %67

21:                                               ; preds = %4
  %22 = load %struct.kvm_mmu*, %struct.kvm_mmu** %10, align 8
  %23 = getelementptr inbounds %struct.kvm_mmu, %struct.kvm_mmu* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @PT64_ROOT_4LEVEL, align 8
  %26 = icmp sge i64 %24, %25
  br i1 %26, label %27, label %67

27:                                               ; preds = %21
  %28 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* @PAGE_SHIFT, align 4
  %31 = ashr i32 %29, %30
  %32 = call i64 @mmu_check_root(%struct.kvm_vcpu* %28, i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %27
  store i32 0, i32* %5, align 4
  br label %68

35:                                               ; preds = %27
  %36 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %37 = load i32, i32* %8, align 4
  %38 = getelementptr inbounds %union.kvm_mmu_page_role, %union.kvm_mmu_page_role* %6, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i64 @cached_root_available(%struct.kvm_vcpu* %36, i32 %37, i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %66

42:                                               ; preds = %35
  %43 = load i32, i32* @KVM_REQ_LOAD_CR3, align 4
  %44 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %45 = call i32 @kvm_make_request(i32 %43, %struct.kvm_vcpu* %44)
  %46 = load i32, i32* %9, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %57, label %48

48:                                               ; preds = %42
  %49 = load i32, i32* @KVM_REQ_MMU_SYNC, align 4
  %50 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %51 = call i32 @kvm_make_request(i32 %49, %struct.kvm_vcpu* %50)
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** @kvm_x86_ops, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i32 (%struct.kvm_vcpu*, i32)*, i32 (%struct.kvm_vcpu*, i32)** %53, align 8
  %55 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %56 = call i32 %54(%struct.kvm_vcpu* %55, i32 1)
  br label %57

57:                                               ; preds = %48, %42
  %58 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %59 = load i32, i32* @MMIO_GVA_ANY, align 4
  %60 = call i32 @vcpu_clear_mmio_info(%struct.kvm_vcpu* %58, i32 %59)
  %61 = load %struct.kvm_mmu*, %struct.kvm_mmu** %10, align 8
  %62 = getelementptr inbounds %struct.kvm_mmu, %struct.kvm_mmu* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @page_header(i32 %63)
  %65 = call i32 @__clear_sp_write_flooding_count(i32 %64)
  store i32 1, i32* %5, align 4
  br label %68

66:                                               ; preds = %35
  br label %67

67:                                               ; preds = %66, %21, %4
  store i32 0, i32* %5, align 4
  br label %68

68:                                               ; preds = %67, %57, %34
  %69 = load i32, i32* %5, align 4
  ret i32 %69
}

declare dso_local i64 @mmu_check_root(%struct.kvm_vcpu*, i32) #1

declare dso_local i64 @cached_root_available(%struct.kvm_vcpu*, i32, i32) #1

declare dso_local i32 @kvm_make_request(i32, %struct.kvm_vcpu*) #1

declare dso_local i32 @vcpu_clear_mmio_info(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @__clear_sp_write_flooding_count(i32) #1

declare dso_local i32 @page_header(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
