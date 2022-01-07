; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_svm.c_svm_set_cr4.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_svm.c_svm_set_cr4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_7__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }

@X86_CR4_MCE = common dso_local global i64 0, align 8
@X86_CR4_VMXE = common dso_local global i64 0, align 8
@npt_enabled = common dso_local global i64 0, align 8
@X86_CR4_PGE = common dso_local global i64 0, align 8
@X86_CR4_PAE = common dso_local global i64 0, align 8
@VMCB_CR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_vcpu*, i64)* @svm_set_cr4 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @svm_set_cr4(%struct.kvm_vcpu* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.kvm_vcpu*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = call i64 (...) @cr4_read_shadow()
  %9 = load i64, i64* @X86_CR4_MCE, align 8
  %10 = and i64 %8, %9
  store i64 %10, i64* %6, align 8
  %11 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %12 = call %struct.TYPE_7__* @to_svm(%struct.kvm_vcpu* %11)
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %7, align 8
  %18 = load i64, i64* %5, align 8
  %19 = load i64, i64* @X86_CR4_VMXE, align 8
  %20 = and i64 %18, %19
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %64

23:                                               ; preds = %2
  %24 = load i64, i64* @npt_enabled, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %36

26:                                               ; preds = %23
  %27 = load i64, i64* %7, align 8
  %28 = load i64, i64* %5, align 8
  %29 = xor i64 %27, %28
  %30 = load i64, i64* @X86_CR4_PGE, align 8
  %31 = and i64 %29, %30
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %26
  %34 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %35 = call i32 @svm_flush_tlb(%struct.kvm_vcpu* %34, i32 1)
  br label %36

36:                                               ; preds = %33, %26, %23
  %37 = load i64, i64* %5, align 8
  %38 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %39 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  store i64 %37, i64* %40, align 8
  %41 = load i64, i64* @npt_enabled, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %47, label %43

43:                                               ; preds = %36
  %44 = load i64, i64* @X86_CR4_PAE, align 8
  %45 = load i64, i64* %5, align 8
  %46 = or i64 %45, %44
  store i64 %46, i64* %5, align 8
  br label %47

47:                                               ; preds = %43, %36
  %48 = load i64, i64* %6, align 8
  %49 = load i64, i64* %5, align 8
  %50 = or i64 %49, %48
  store i64 %50, i64* %5, align 8
  %51 = load i64, i64* %5, align 8
  %52 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %53 = call %struct.TYPE_7__* @to_svm(%struct.kvm_vcpu* %52)
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  store i64 %51, i64* %57, align 8
  %58 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %59 = call %struct.TYPE_7__* @to_svm(%struct.kvm_vcpu* %58)
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 0
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %60, align 8
  %62 = load i32, i32* @VMCB_CR, align 4
  %63 = call i32 @mark_dirty(%struct.TYPE_8__* %61, i32 %62)
  store i32 0, i32* %3, align 4
  br label %64

64:                                               ; preds = %47, %22
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local i64 @cr4_read_shadow(...) #1

declare dso_local %struct.TYPE_7__* @to_svm(%struct.kvm_vcpu*) #1

declare dso_local i32 @svm_flush_tlb(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @mark_dirty(%struct.TYPE_8__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
