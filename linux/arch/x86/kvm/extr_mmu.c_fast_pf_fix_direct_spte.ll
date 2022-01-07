; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_mmu.c_fast_pf_fix_direct_spte.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_mmu.c_fast_pf_fix_direct_spte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32 }
%struct.kvm_mmu_page = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_vcpu*, %struct.kvm_mmu_page*, i64*, i64, i64)* @fast_pf_fix_direct_spte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fast_pf_fix_direct_spte(%struct.kvm_vcpu* %0, %struct.kvm_mmu_page* %1, i64* %2, i64 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.kvm_vcpu*, align 8
  %8 = alloca %struct.kvm_mmu_page*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %7, align 8
  store %struct.kvm_mmu_page* %1, %struct.kvm_mmu_page** %8, align 8
  store i64* %2, i64** %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  %13 = load %struct.kvm_mmu_page*, %struct.kvm_mmu_page** %8, align 8
  %14 = getelementptr inbounds %struct.kvm_mmu_page, %struct.kvm_mmu_page* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  %18 = xor i1 %17, true
  %19 = zext i1 %18 to i32
  %20 = call i32 @WARN_ON(i32 %19)
  %21 = load i64*, i64** %9, align 8
  %22 = load i64, i64* %10, align 8
  %23 = load i64, i64* %11, align 8
  %24 = call i64 @cmpxchg64(i64* %21, i64 %22, i64 %23)
  %25 = load i64, i64* %10, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %50

28:                                               ; preds = %5
  %29 = load i64, i64* %11, align 8
  %30 = call i64 @is_writable_pte(i64 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %49

32:                                               ; preds = %28
  %33 = load i64, i64* %10, align 8
  %34 = call i64 @is_writable_pte(i64 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %49, label %36

36:                                               ; preds = %32
  %37 = load %struct.kvm_mmu_page*, %struct.kvm_mmu_page** %8, align 8
  %38 = load i64*, i64** %9, align 8
  %39 = load %struct.kvm_mmu_page*, %struct.kvm_mmu_page** %8, align 8
  %40 = getelementptr inbounds %struct.kvm_mmu_page, %struct.kvm_mmu_page* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = sext i32 %41 to i64
  %43 = sub i64 0, %42
  %44 = getelementptr inbounds i64, i64* %38, i64 %43
  %45 = call i32 @kvm_mmu_page_get_gfn(%struct.kvm_mmu_page* %37, i64* %44)
  store i32 %45, i32* %12, align 4
  %46 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %47 = load i32, i32* %12, align 4
  %48 = call i32 @kvm_vcpu_mark_page_dirty(%struct.kvm_vcpu* %46, i32 %47)
  br label %49

49:                                               ; preds = %36, %32, %28
  store i32 1, i32* %6, align 4
  br label %50

50:                                               ; preds = %49, %27
  %51 = load i32, i32* %6, align 4
  ret i32 %51
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i64 @cmpxchg64(i64*, i64, i64) #1

declare dso_local i64 @is_writable_pte(i64) #1

declare dso_local i32 @kvm_mmu_page_get_gfn(%struct.kvm_mmu_page*, i64*) #1

declare dso_local i32 @kvm_vcpu_mark_page_dirty(%struct.kvm_vcpu*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
