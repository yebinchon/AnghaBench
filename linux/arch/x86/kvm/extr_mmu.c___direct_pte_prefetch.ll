; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_mmu.c___direct_pte_prefetch.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_mmu.c___direct_pte_prefetch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32 }
%struct.kvm_mmu_page = type { i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@PTE_PREFETCH_NUM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvm_vcpu*, %struct.kvm_mmu_page*, i32*)* @__direct_pte_prefetch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__direct_pte_prefetch(%struct.kvm_vcpu* %0, %struct.kvm_mmu_page* %1, i32* %2) #0 {
  %4 = alloca %struct.kvm_vcpu*, align 8
  %5 = alloca %struct.kvm_mmu_page*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %4, align 8
  store %struct.kvm_mmu_page* %1, %struct.kvm_mmu_page** %5, align 8
  store i32* %2, i32** %6, align 8
  store i32* null, i32** %8, align 8
  %10 = load %struct.kvm_mmu_page*, %struct.kvm_mmu_page** %5, align 8
  %11 = getelementptr inbounds %struct.kvm_mmu_page, %struct.kvm_mmu_page* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 0
  %15 = xor i1 %14, true
  %16 = zext i1 %15 to i32
  %17 = call i32 @WARN_ON(i32 %16)
  %18 = load i32*, i32** %6, align 8
  %19 = load %struct.kvm_mmu_page*, %struct.kvm_mmu_page** %5, align 8
  %20 = getelementptr inbounds %struct.kvm_mmu_page, %struct.kvm_mmu_page* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = ptrtoint i32* %18 to i64
  %23 = ptrtoint i32* %21 to i64
  %24 = sub i64 %22, %23
  %25 = sdiv exact i64 %24, 4
  %26 = load i32, i32* @PTE_PREFETCH_NUM, align 4
  %27 = sub nsw i32 %26, 1
  %28 = xor i32 %27, -1
  %29 = sext i32 %28 to i64
  %30 = and i64 %25, %29
  %31 = trunc i64 %30 to i32
  store i32 %31, i32* %9, align 4
  %32 = load %struct.kvm_mmu_page*, %struct.kvm_mmu_page** %5, align 8
  %33 = getelementptr inbounds %struct.kvm_mmu_page, %struct.kvm_mmu_page* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = load i32, i32* %9, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  store i32* %37, i32** %7, align 8
  store i32 0, i32* %9, align 4
  br label %38

38:                                               ; preds = %71, %3
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* @PTE_PREFETCH_NUM, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %76

42:                                               ; preds = %38
  %43 = load i32*, i32** %7, align 8
  %44 = load i32, i32* %43, align 4
  %45 = call i64 @is_shadow_present_pte(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %51, label %47

47:                                               ; preds = %42
  %48 = load i32*, i32** %7, align 8
  %49 = load i32*, i32** %6, align 8
  %50 = icmp eq i32* %48, %49
  br i1 %50, label %51, label %64

51:                                               ; preds = %47, %42
  %52 = load i32*, i32** %8, align 8
  %53 = icmp ne i32* %52, null
  br i1 %53, label %55, label %54

54:                                               ; preds = %51
  br label %71

55:                                               ; preds = %51
  %56 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %57 = load %struct.kvm_mmu_page*, %struct.kvm_mmu_page** %5, align 8
  %58 = load i32*, i32** %8, align 8
  %59 = load i32*, i32** %7, align 8
  %60 = call i64 @direct_pte_prefetch_many(%struct.kvm_vcpu* %56, %struct.kvm_mmu_page* %57, i32* %58, i32* %59)
  %61 = icmp slt i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %55
  br label %76

63:                                               ; preds = %55
  store i32* null, i32** %8, align 8
  br label %70

64:                                               ; preds = %47
  %65 = load i32*, i32** %8, align 8
  %66 = icmp ne i32* %65, null
  br i1 %66, label %69, label %67

67:                                               ; preds = %64
  %68 = load i32*, i32** %7, align 8
  store i32* %68, i32** %8, align 8
  br label %69

69:                                               ; preds = %67, %64
  br label %70

70:                                               ; preds = %69, %63
  br label %71

71:                                               ; preds = %70, %54
  %72 = load i32, i32* %9, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %9, align 4
  %74 = load i32*, i32** %7, align 8
  %75 = getelementptr inbounds i32, i32* %74, i32 1
  store i32* %75, i32** %7, align 8
  br label %38

76:                                               ; preds = %62, %38
  ret void
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i64 @is_shadow_present_pte(i32) #1

declare dso_local i64 @direct_pte_prefetch_many(%struct.kvm_vcpu*, %struct.kvm_mmu_page*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
