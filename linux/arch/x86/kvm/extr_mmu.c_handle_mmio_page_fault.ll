; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_mmu.c_handle_mmio_page_fault.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_mmu.c_handle_mmio_page_fault.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32 }

@RET_PF_EMULATE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@RET_PF_INVALID = common dso_local global i32 0, align 4
@RET_PF_RETRY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_vcpu*, i64, i32)* @handle_mmio_page_fault to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_mmio_page_fault(%struct.kvm_vcpu* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.kvm_vcpu*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %13 = load i64, i64* %6, align 8
  %14 = load i32, i32* %7, align 4
  %15 = call i64 @mmio_info_in_cache(%struct.kvm_vcpu* %12, i64 %13, i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = load i32, i32* @RET_PF_EMULATE, align 4
  store i32 %18, i32* %4, align 4
  br label %61

19:                                               ; preds = %3
  %20 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %21 = load i64, i64* %6, align 8
  %22 = call i32 @walk_shadow_page_get_mmio_spte(%struct.kvm_vcpu* %20, i64 %21, i64* %8)
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %9, align 4
  %24 = call i64 @WARN_ON(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %19
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %4, align 4
  br label %61

29:                                               ; preds = %19
  %30 = load i64, i64* %8, align 8
  %31 = call i64 @is_mmio_spte(i64 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %59

33:                                               ; preds = %29
  %34 = load i64, i64* %8, align 8
  %35 = call i32 @get_mmio_spte_gfn(i64 %34)
  store i32 %35, i32* %10, align 4
  %36 = load i64, i64* %8, align 8
  %37 = call i32 @get_mmio_spte_access(i64 %36)
  store i32 %37, i32* %11, align 4
  %38 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %39 = load i64, i64* %8, align 8
  %40 = call i32 @check_mmio_spte(%struct.kvm_vcpu* %38, i64 %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %44, label %42

42:                                               ; preds = %33
  %43 = load i32, i32* @RET_PF_INVALID, align 4
  store i32 %43, i32* %4, align 4
  br label %61

44:                                               ; preds = %33
  %45 = load i32, i32* %7, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %44
  store i64 0, i64* %6, align 8
  br label %48

48:                                               ; preds = %47, %44
  %49 = load i64, i64* %6, align 8
  %50 = load i32, i32* %10, align 4
  %51 = load i32, i32* %11, align 4
  %52 = call i32 @trace_handle_mmio_page_fault(i64 %49, i32 %50, i32 %51)
  %53 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %54 = load i64, i64* %6, align 8
  %55 = load i32, i32* %10, align 4
  %56 = load i32, i32* %11, align 4
  %57 = call i32 @vcpu_cache_mmio_info(%struct.kvm_vcpu* %53, i64 %54, i32 %55, i32 %56)
  %58 = load i32, i32* @RET_PF_EMULATE, align 4
  store i32 %58, i32* %4, align 4
  br label %61

59:                                               ; preds = %29
  %60 = load i32, i32* @RET_PF_RETRY, align 4
  store i32 %60, i32* %4, align 4
  br label %61

61:                                               ; preds = %59, %48, %42, %26, %17
  %62 = load i32, i32* %4, align 4
  ret i32 %62
}

declare dso_local i64 @mmio_info_in_cache(%struct.kvm_vcpu*, i64, i32) #1

declare dso_local i32 @walk_shadow_page_get_mmio_spte(%struct.kvm_vcpu*, i64, i64*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i64 @is_mmio_spte(i64) #1

declare dso_local i32 @get_mmio_spte_gfn(i64) #1

declare dso_local i32 @get_mmio_spte_access(i64) #1

declare dso_local i32 @check_mmio_spte(%struct.kvm_vcpu*, i64) #1

declare dso_local i32 @trace_handle_mmio_page_fault(i64, i32, i32) #1

declare dso_local i32 @vcpu_cache_mmio_info(%struct.kvm_vcpu*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
