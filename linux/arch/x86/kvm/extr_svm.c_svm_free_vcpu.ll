; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_svm.c_svm_free_vcpu.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_svm.c_svm_free_vcpu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32 }
%struct.vcpu_svm = type { %struct.TYPE_6__, %struct.TYPE_4__, i32, i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.vcpu_svm*, %struct.vcpu_svm* }
%struct.TYPE_4__ = type { i32, i32 }

@PAGE_SHIFT = common dso_local global i32 0, align 4
@MSRPM_ALLOC_ORDER = common dso_local global i32 0, align 4
@x86_fpu_cache = common dso_local global i32 0, align 4
@kvm_vcpu_cache = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvm_vcpu*)* @svm_free_vcpu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @svm_free_vcpu(%struct.kvm_vcpu* %0) #0 {
  %2 = alloca %struct.kvm_vcpu*, align 8
  %3 = alloca %struct.vcpu_svm*, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %2, align 8
  %4 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %5 = call %struct.vcpu_svm* @to_svm(%struct.kvm_vcpu* %4)
  store %struct.vcpu_svm* %5, %struct.vcpu_svm** %3, align 8
  %6 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %7 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %6, i32 0, i32 4
  %8 = load i32, i32* %7, align 8
  %9 = call i32 @svm_clear_current_vmcb(i32 %8)
  %10 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %11 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @__sme_clr(i32 %12)
  %14 = load i32, i32* @PAGE_SHIFT, align 4
  %15 = ashr i32 %13, %14
  %16 = call i32 @pfn_to_page(i32 %15)
  %17 = call i32 @__free_page(i32 %16)
  %18 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %19 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @virt_to_page(i32 %20)
  %22 = load i32, i32* @MSRPM_ALLOC_ORDER, align 4
  %23 = call i32 @__free_pages(i32 %21, i32 %22)
  %24 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %25 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @virt_to_page(i32 %27)
  %29 = call i32 @__free_page(i32 %28)
  %30 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %31 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @virt_to_page(i32 %33)
  %35 = load i32, i32* @MSRPM_ALLOC_ORDER, align 4
  %36 = call i32 @__free_pages(i32 %34, i32 %35)
  %37 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %38 = call i32 @kvm_vcpu_uninit(%struct.kvm_vcpu* %37)
  %39 = load i32, i32* @x86_fpu_cache, align 4
  %40 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %41 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 1
  %44 = load %struct.vcpu_svm*, %struct.vcpu_svm** %43, align 8
  %45 = call i32 @kmem_cache_free(i32 %39, %struct.vcpu_svm* %44)
  %46 = load i32, i32* @x86_fpu_cache, align 4
  %47 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %48 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = load %struct.vcpu_svm*, %struct.vcpu_svm** %50, align 8
  %52 = call i32 @kmem_cache_free(i32 %46, %struct.vcpu_svm* %51)
  %53 = load i32, i32* @kvm_vcpu_cache, align 4
  %54 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %55 = call i32 @kmem_cache_free(i32 %53, %struct.vcpu_svm* %54)
  ret void
}

declare dso_local %struct.vcpu_svm* @to_svm(%struct.kvm_vcpu*) #1

declare dso_local i32 @svm_clear_current_vmcb(i32) #1

declare dso_local i32 @__free_page(i32) #1

declare dso_local i32 @pfn_to_page(i32) #1

declare dso_local i32 @__sme_clr(i32) #1

declare dso_local i32 @__free_pages(i32, i32) #1

declare dso_local i32 @virt_to_page(i32) #1

declare dso_local i32 @kvm_vcpu_uninit(%struct.kvm_vcpu*) #1

declare dso_local i32 @kmem_cache_free(i32, %struct.vcpu_svm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
