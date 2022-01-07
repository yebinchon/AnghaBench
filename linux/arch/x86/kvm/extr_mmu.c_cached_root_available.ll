; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_mmu.c_cached_root_available.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_mmu.c_cached_root_available.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.kvm_mmu* }
%struct.kvm_mmu = type { i64, i32, i32* }
%union.kvm_mmu_page_role = type { i64 }
%struct.kvm_mmu_root_info = type { i64, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }

@KVM_MMU_NUM_PREV_ROOTS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_vcpu*, i64, i64)* @cached_root_available to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cached_root_available(%struct.kvm_vcpu* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %union.kvm_mmu_page_role, align 8
  %5 = alloca %struct.kvm_vcpu*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.kvm_mmu_root_info, align 8
  %9 = alloca %struct.kvm_mmu*, align 8
  %10 = getelementptr inbounds %union.kvm_mmu_page_role, %union.kvm_mmu_page_role* %4, i32 0, i32 0
  store i64 %2, i64* %10, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %5, align 8
  store i64 %1, i64* %6, align 8
  %11 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %12 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load %struct.kvm_mmu*, %struct.kvm_mmu** %13, align 8
  store %struct.kvm_mmu* %14, %struct.kvm_mmu** %9, align 8
  %15 = load %struct.kvm_mmu*, %struct.kvm_mmu** %9, align 8
  %16 = getelementptr inbounds %struct.kvm_mmu, %struct.kvm_mmu* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = getelementptr inbounds %struct.kvm_mmu_root_info, %struct.kvm_mmu_root_info* %8, i32 0, i32 0
  store i64 %17, i64* %18, align 8
  %19 = load %struct.kvm_mmu*, %struct.kvm_mmu** %9, align 8
  %20 = getelementptr inbounds %struct.kvm_mmu, %struct.kvm_mmu* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = getelementptr inbounds %struct.kvm_mmu_root_info, %struct.kvm_mmu_root_info* %8, i32 0, i32 1
  store i32 %21, i32* %22, align 8
  store i64 0, i64* %7, align 8
  br label %23

23:                                               ; preds = %66, %3
  %24 = load i64, i64* %7, align 8
  %25 = load i64, i64* @KVM_MMU_NUM_PREV_ROOTS, align 8
  %26 = icmp ult i64 %24, %25
  br i1 %26, label %27, label %69

27:                                               ; preds = %23
  %28 = load %struct.kvm_mmu*, %struct.kvm_mmu** %9, align 8
  %29 = getelementptr inbounds %struct.kvm_mmu, %struct.kvm_mmu* %28, i32 0, i32 2
  %30 = load i32*, i32** %29, align 8
  %31 = load i64, i64* %7, align 8
  %32 = getelementptr inbounds i32, i32* %30, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = bitcast %struct.kvm_mmu_root_info* %8 to { i64, i32 }*
  %35 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %34, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @swap(i64 %36, i32 %38, i32 %33)
  %40 = load i64, i64* %6, align 8
  %41 = getelementptr inbounds %struct.kvm_mmu_root_info, %struct.kvm_mmu_root_info* %8, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp eq i64 %40, %42
  br i1 %43, label %44, label %65

44:                                               ; preds = %27
  %45 = getelementptr inbounds %struct.kvm_mmu_root_info, %struct.kvm_mmu_root_info* %8, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = call i64 @VALID_PAGE(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %65

49:                                               ; preds = %44
  %50 = getelementptr inbounds %struct.kvm_mmu_root_info, %struct.kvm_mmu_root_info* %8, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = call %struct.TYPE_6__* @page_header(i32 %51)
  %53 = icmp ne %struct.TYPE_6__* %52, null
  br i1 %53, label %54, label %65

54:                                               ; preds = %49
  %55 = bitcast %union.kvm_mmu_page_role* %4 to i64*
  %56 = load i64, i64* %55, align 8
  %57 = getelementptr inbounds %struct.kvm_mmu_root_info, %struct.kvm_mmu_root_info* %8, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = call %struct.TYPE_6__* @page_header(i32 %58)
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp eq i64 %56, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %54
  br label %69

65:                                               ; preds = %54, %49, %44, %27
  br label %66

66:                                               ; preds = %65
  %67 = load i64, i64* %7, align 8
  %68 = add i64 %67, 1
  store i64 %68, i64* %7, align 8
  br label %23

69:                                               ; preds = %64, %23
  %70 = getelementptr inbounds %struct.kvm_mmu_root_info, %struct.kvm_mmu_root_info* %8, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.kvm_mmu*, %struct.kvm_mmu** %9, align 8
  %73 = getelementptr inbounds %struct.kvm_mmu, %struct.kvm_mmu* %72, i32 0, i32 1
  store i32 %71, i32* %73, align 8
  %74 = getelementptr inbounds %struct.kvm_mmu_root_info, %struct.kvm_mmu_root_info* %8, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.kvm_mmu*, %struct.kvm_mmu** %9, align 8
  %77 = getelementptr inbounds %struct.kvm_mmu, %struct.kvm_mmu* %76, i32 0, i32 0
  store i64 %75, i64* %77, align 8
  %78 = load i64, i64* %7, align 8
  %79 = load i64, i64* @KVM_MMU_NUM_PREV_ROOTS, align 8
  %80 = icmp ult i64 %78, %79
  %81 = zext i1 %80 to i32
  ret i32 %81
}

declare dso_local i32 @swap(i64, i32, i32) #1

declare dso_local i64 @VALID_PAGE(i32) #1

declare dso_local %struct.TYPE_6__* @page_header(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
