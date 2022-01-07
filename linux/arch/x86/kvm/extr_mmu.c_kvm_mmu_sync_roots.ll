; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_mmu.c_kvm_mmu_sync_roots.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_mmu.c_kvm_mmu_sync_roots.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_6__*, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i32*, i32, i64 }
%struct.kvm_mmu_page = type { i32, i32 }

@MMIO_GVA_ANY = common dso_local global i32 0, align 4
@PT64_ROOT_4LEVEL = common dso_local global i64 0, align 8
@AUDIT_PRE_SYNC = common dso_local global i32 0, align 4
@AUDIT_POST_SYNC = common dso_local global i32 0, align 4
@PT64_BASE_ADDR_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kvm_mmu_sync_roots(%struct.kvm_vcpu* %0) #0 {
  %2 = alloca %struct.kvm_vcpu*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.kvm_mmu_page*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %2, align 8
  %7 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %8 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 3
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  br label %127

15:                                               ; preds = %1
  %16 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %17 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = call i64 @VALID_PAGE(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %15
  br label %127

25:                                               ; preds = %15
  %26 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %27 = load i32, i32* @MMIO_GVA_ANY, align 4
  %28 = call i32 @vcpu_clear_mmio_info(%struct.kvm_vcpu* %26, i32 %27)
  %29 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %30 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @PT64_ROOT_4LEVEL, align 8
  %36 = icmp sge i64 %34, %35
  br i1 %36, label %37, label %76

37:                                               ; preds = %25
  %38 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %39 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  store i32 %43, i32* %5, align 4
  %44 = load i32, i32* %5, align 4
  %45 = call %struct.kvm_mmu_page* @page_header(i32 %44)
  store %struct.kvm_mmu_page* %45, %struct.kvm_mmu_page** %4, align 8
  %46 = load %struct.kvm_mmu_page*, %struct.kvm_mmu_page** %4, align 8
  %47 = getelementptr inbounds %struct.kvm_mmu_page, %struct.kvm_mmu_page* %46, i32 0, i32 1
  %48 = call i32 @smp_load_acquire(i32* %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %56, label %50

50:                                               ; preds = %37
  %51 = load %struct.kvm_mmu_page*, %struct.kvm_mmu_page** %4, align 8
  %52 = getelementptr inbounds %struct.kvm_mmu_page, %struct.kvm_mmu_page* %51, i32 0, i32 0
  %53 = call i32 @smp_load_acquire(i32* %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %50
  br label %127

56:                                               ; preds = %50, %37
  %57 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %58 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %57, i32 0, i32 0
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  %61 = call i32 @spin_lock(i32* %60)
  %62 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %63 = load i32, i32* @AUDIT_PRE_SYNC, align 4
  %64 = call i32 @kvm_mmu_audit(%struct.kvm_vcpu* %62, i32 %63)
  %65 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %66 = load %struct.kvm_mmu_page*, %struct.kvm_mmu_page** %4, align 8
  %67 = call i32 @mmu_sync_children(%struct.kvm_vcpu* %65, %struct.kvm_mmu_page* %66)
  %68 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %69 = load i32, i32* @AUDIT_POST_SYNC, align 4
  %70 = call i32 @kvm_mmu_audit(%struct.kvm_vcpu* %68, i32 %69)
  %71 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %72 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %71, i32 0, i32 0
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  %75 = call i32 @spin_unlock(i32* %74)
  br label %127

76:                                               ; preds = %25
  %77 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %78 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %77, i32 0, i32 0
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 0
  %81 = call i32 @spin_lock(i32* %80)
  %82 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %83 = load i32, i32* @AUDIT_PRE_SYNC, align 4
  %84 = call i32 @kvm_mmu_audit(%struct.kvm_vcpu* %82, i32 %83)
  store i32 0, i32* %3, align 4
  br label %85

85:                                               ; preds = %115, %76
  %86 = load i32, i32* %3, align 4
  %87 = icmp slt i32 %86, 4
  br i1 %87, label %88, label %118

88:                                               ; preds = %85
  %89 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %90 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 0
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 1
  %94 = load i32*, i32** %93, align 8
  %95 = load i32, i32* %3, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %94, i64 %96
  %98 = load i32, i32* %97, align 4
  store i32 %98, i32* %6, align 4
  %99 = load i32, i32* %6, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %114

101:                                              ; preds = %88
  %102 = load i32, i32* %6, align 4
  %103 = call i64 @VALID_PAGE(i32 %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %114

105:                                              ; preds = %101
  %106 = load i32, i32* @PT64_BASE_ADDR_MASK, align 4
  %107 = load i32, i32* %6, align 4
  %108 = and i32 %107, %106
  store i32 %108, i32* %6, align 4
  %109 = load i32, i32* %6, align 4
  %110 = call %struct.kvm_mmu_page* @page_header(i32 %109)
  store %struct.kvm_mmu_page* %110, %struct.kvm_mmu_page** %4, align 8
  %111 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %112 = load %struct.kvm_mmu_page*, %struct.kvm_mmu_page** %4, align 8
  %113 = call i32 @mmu_sync_children(%struct.kvm_vcpu* %111, %struct.kvm_mmu_page* %112)
  br label %114

114:                                              ; preds = %105, %101, %88
  br label %115

115:                                              ; preds = %114
  %116 = load i32, i32* %3, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %3, align 4
  br label %85

118:                                              ; preds = %85
  %119 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %120 = load i32, i32* @AUDIT_POST_SYNC, align 4
  %121 = call i32 @kvm_mmu_audit(%struct.kvm_vcpu* %119, i32 %120)
  %122 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %123 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %122, i32 0, i32 0
  %124 = load %struct.TYPE_6__*, %struct.TYPE_6__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 0
  %126 = call i32 @spin_unlock(i32* %125)
  br label %127

127:                                              ; preds = %118, %56, %55, %24, %14
  ret void
}

declare dso_local i64 @VALID_PAGE(i32) #1

declare dso_local i32 @vcpu_clear_mmio_info(%struct.kvm_vcpu*, i32) #1

declare dso_local %struct.kvm_mmu_page* @page_header(i32) #1

declare dso_local i32 @smp_load_acquire(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @kvm_mmu_audit(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @mmu_sync_children(%struct.kvm_vcpu*, %struct.kvm_mmu_page*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
