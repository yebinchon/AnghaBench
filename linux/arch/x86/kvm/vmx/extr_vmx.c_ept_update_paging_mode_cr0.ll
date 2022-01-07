; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/vmx/extr_vmx.c_ept_update_paging_mode_cr0.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/vmx/extr_vmx.c_ept_update_paging_mode_cr0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32 }
%struct.vcpu_vmx = type { i32 }

@VCPU_EXREG_CR3 = common dso_local global i32 0, align 4
@X86_CR0_PG = common dso_local global i64 0, align 8
@CPU_BASED_CR3_LOAD_EXITING = common dso_local global i32 0, align 4
@CPU_BASED_CR3_STORE_EXITING = common dso_local global i32 0, align 4
@X86_CR0_WP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64*, i64, %struct.kvm_vcpu*)* @ept_update_paging_mode_cr0 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ept_update_paging_mode_cr0(i64* %0, i64 %1, %struct.kvm_vcpu* %2) #0 {
  %4 = alloca i64*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.kvm_vcpu*, align 8
  %7 = alloca %struct.vcpu_vmx*, align 8
  store i64* %0, i64** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.kvm_vcpu* %2, %struct.kvm_vcpu** %6, align 8
  %8 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %9 = call %struct.vcpu_vmx* @to_vmx(%struct.kvm_vcpu* %8)
  store %struct.vcpu_vmx* %9, %struct.vcpu_vmx** %7, align 8
  %10 = load i32, i32* @VCPU_EXREG_CR3, align 4
  %11 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %12 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  %14 = call i32 @test_bit(i32 %10, i32* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %3
  %17 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %18 = call i32 @vmx_decache_cr3(%struct.kvm_vcpu* %17)
  br label %19

19:                                               ; preds = %16, %3
  %20 = load i64, i64* %5, align 8
  %21 = load i64, i64* @X86_CR0_PG, align 8
  %22 = and i64 %20, %21
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %38, label %24

24:                                               ; preds = %19
  %25 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %7, align 8
  %26 = load i32, i32* @CPU_BASED_CR3_LOAD_EXITING, align 4
  %27 = load i32, i32* @CPU_BASED_CR3_STORE_EXITING, align 4
  %28 = or i32 %26, %27
  %29 = call i32 @exec_controls_setbit(%struct.vcpu_vmx* %25, i32 %28)
  %30 = load i64, i64* %5, align 8
  %31 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %32 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  store i64 %30, i64* %33, align 8
  %34 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %35 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %36 = call i32 @kvm_read_cr4(%struct.kvm_vcpu* %35)
  %37 = call i32 @vmx_set_cr4(%struct.kvm_vcpu* %34, i32 %36)
  br label %57

38:                                               ; preds = %19
  %39 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %40 = call i32 @is_paging(%struct.kvm_vcpu* %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %56, label %42

42:                                               ; preds = %38
  %43 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %7, align 8
  %44 = load i32, i32* @CPU_BASED_CR3_LOAD_EXITING, align 4
  %45 = load i32, i32* @CPU_BASED_CR3_STORE_EXITING, align 4
  %46 = or i32 %44, %45
  %47 = call i32 @exec_controls_clearbit(%struct.vcpu_vmx* %43, i32 %46)
  %48 = load i64, i64* %5, align 8
  %49 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %50 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  store i64 %48, i64* %51, align 8
  %52 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %53 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %54 = call i32 @kvm_read_cr4(%struct.kvm_vcpu* %53)
  %55 = call i32 @vmx_set_cr4(%struct.kvm_vcpu* %52, i32 %54)
  br label %56

56:                                               ; preds = %42, %38
  br label %57

57:                                               ; preds = %56, %24
  %58 = load i64, i64* %5, align 8
  %59 = load i64, i64* @X86_CR0_WP, align 8
  %60 = and i64 %58, %59
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %68, label %62

62:                                               ; preds = %57
  %63 = load i64, i64* @X86_CR0_WP, align 8
  %64 = xor i64 %63, -1
  %65 = load i64*, i64** %4, align 8
  %66 = load i64, i64* %65, align 8
  %67 = and i64 %66, %64
  store i64 %67, i64* %65, align 8
  br label %68

68:                                               ; preds = %62, %57
  ret void
}

declare dso_local %struct.vcpu_vmx* @to_vmx(%struct.kvm_vcpu*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @vmx_decache_cr3(%struct.kvm_vcpu*) #1

declare dso_local i32 @exec_controls_setbit(%struct.vcpu_vmx*, i32) #1

declare dso_local i32 @vmx_set_cr4(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @kvm_read_cr4(%struct.kvm_vcpu*) #1

declare dso_local i32 @is_paging(%struct.kvm_vcpu*) #1

declare dso_local i32 @exec_controls_clearbit(%struct.vcpu_vmx*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
