; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_mmu.c_transparent_hugepage_adjust.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_mmu.c_transparent_hugepage_adjust.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32 }

@PT_PAGE_TABLE_LEVEL = common dso_local global i32 0, align 4
@PT_DIRECTORY_LEVEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvm_vcpu*, i64, i64*, i32*)* @transparent_hugepage_adjust to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @transparent_hugepage_adjust(%struct.kvm_vcpu* %0, i64 %1, i64* %2, i32* %3) #0 {
  %5 = alloca %struct.kvm_vcpu*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64* %2, i64** %7, align 8
  store i32* %3, i32** %8, align 8
  %12 = load i64*, i64** %7, align 8
  %13 = load i64, i64* %12, align 8
  store i64 %13, i64* %9, align 8
  %14 = load i32*, i32** %8, align 8
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %10, align 4
  %16 = load i64, i64* %9, align 8
  %17 = call i32 @is_error_noslot_pfn(i64 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %74, label %19

19:                                               ; preds = %4
  %20 = load i64, i64* %9, align 8
  %21 = call i32 @kvm_is_reserved_pfn(i64 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %74, label %23

23:                                               ; preds = %19
  %24 = load i64, i64* %9, align 8
  %25 = call i32 @kvm_is_zone_device_pfn(i64 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %74, label %27

27:                                               ; preds = %23
  %28 = load i32, i32* %10, align 4
  %29 = load i32, i32* @PT_PAGE_TABLE_LEVEL, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %74

31:                                               ; preds = %27
  %32 = load i64, i64* %9, align 8
  %33 = call i32 @pfn_to_page(i64 %32)
  %34 = call i64 @PageTransCompoundMap(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %74

36:                                               ; preds = %31
  %37 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %38 = load i64, i64* %6, align 8
  %39 = load i32, i32* @PT_DIRECTORY_LEVEL, align 4
  %40 = call i32 @mmu_gfn_lpage_is_disallowed(%struct.kvm_vcpu* %37, i64 %38, i32 %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %74, label %42

42:                                               ; preds = %36
  %43 = load i32, i32* @PT_DIRECTORY_LEVEL, align 4
  store i32 %43, i32* %10, align 4
  %44 = load i32*, i32** %8, align 8
  store i32 %43, i32* %44, align 4
  %45 = load i32, i32* %10, align 4
  %46 = call i32 @KVM_PAGES_PER_HPAGE(i32 %45)
  %47 = sub nsw i32 %46, 1
  %48 = sext i32 %47 to i64
  store i64 %48, i64* %11, align 8
  %49 = load i64, i64* %6, align 8
  %50 = load i64, i64* %11, align 8
  %51 = and i64 %49, %50
  %52 = load i64, i64* %9, align 8
  %53 = load i64, i64* %11, align 8
  %54 = and i64 %52, %53
  %55 = icmp ne i64 %51, %54
  %56 = zext i1 %55 to i32
  %57 = call i32 @VM_BUG_ON(i32 %56)
  %58 = load i64, i64* %9, align 8
  %59 = load i64, i64* %11, align 8
  %60 = and i64 %58, %59
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %73

62:                                               ; preds = %42
  %63 = load i64, i64* %9, align 8
  %64 = call i32 @kvm_release_pfn_clean(i64 %63)
  %65 = load i64, i64* %11, align 8
  %66 = xor i64 %65, -1
  %67 = load i64, i64* %9, align 8
  %68 = and i64 %67, %66
  store i64 %68, i64* %9, align 8
  %69 = load i64, i64* %9, align 8
  %70 = call i32 @kvm_get_pfn(i64 %69)
  %71 = load i64, i64* %9, align 8
  %72 = load i64*, i64** %7, align 8
  store i64 %71, i64* %72, align 8
  br label %73

73:                                               ; preds = %62, %42
  br label %74

74:                                               ; preds = %73, %36, %31, %27, %23, %19, %4
  ret void
}

declare dso_local i32 @is_error_noslot_pfn(i64) #1

declare dso_local i32 @kvm_is_reserved_pfn(i64) #1

declare dso_local i32 @kvm_is_zone_device_pfn(i64) #1

declare dso_local i64 @PageTransCompoundMap(i32) #1

declare dso_local i32 @pfn_to_page(i64) #1

declare dso_local i32 @mmu_gfn_lpage_is_disallowed(%struct.kvm_vcpu*, i64, i32) #1

declare dso_local i32 @KVM_PAGES_PER_HPAGE(i32) #1

declare dso_local i32 @VM_BUG_ON(i32) #1

declare dso_local i32 @kvm_release_pfn_clean(i64) #1

declare dso_local i32 @kvm_get_pfn(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
