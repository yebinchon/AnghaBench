; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_mmu.c_nonpaging_map.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_mmu.c_nonpaging_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i32 }

@PFERR_WRITE_MASK = common dso_local global i32 0, align 4
@PFERR_FETCH_MASK = common dso_local global i32 0, align 4
@PT_DIRECTORY_LEVEL = common dso_local global i32 0, align 4
@RET_PF_RETRY = common dso_local global i32 0, align 4
@ACC_ALL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_vcpu*, i32, i32, i32, i32)* @nonpaging_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nonpaging_map(%struct.kvm_vcpu* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.kvm_vcpu*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %20 = load i32, i32* %9, align 4
  %21 = load i32, i32* @PFERR_WRITE_MASK, align 4
  %22 = and i32 %20, %21
  store i32 %22, i32* %18, align 4
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* @PFERR_FETCH_MASK, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %5
  %28 = call i64 (...) @is_nx_huge_page_enabled()
  %29 = icmp ne i64 %28, 0
  br label %30

30:                                               ; preds = %27, %5
  %31 = phi i1 [ false, %5 ], [ %29, %27 ]
  %32 = zext i1 %31 to i32
  store i32 %32, i32* %19, align 4
  %33 = load i32, i32* %19, align 4
  store i32 %33, i32* %14, align 4
  %34 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %35 = load i32, i32* %10, align 4
  %36 = call i32 @mapping_level(%struct.kvm_vcpu* %34, i32 %35, i32* %14)
  store i32 %36, i32* %13, align 4
  %37 = load i32, i32* %14, align 4
  %38 = icmp ne i32 %37, 0
  %39 = xor i1 %38, true
  %40 = zext i1 %39 to i32
  %41 = call i64 @likely(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %56

43:                                               ; preds = %30
  %44 = load i32, i32* %13, align 4
  %45 = load i32, i32* @PT_DIRECTORY_LEVEL, align 4
  %46 = icmp sgt i32 %44, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %43
  %48 = load i32, i32* @PT_DIRECTORY_LEVEL, align 4
  store i32 %48, i32* %13, align 4
  br label %49

49:                                               ; preds = %47, %43
  %50 = load i32, i32* %13, align 4
  %51 = call i32 @KVM_PAGES_PER_HPAGE(i32 %50)
  %52 = sub nsw i32 %51, 1
  %53 = xor i32 %52, -1
  %54 = load i32, i32* %10, align 4
  %55 = and i32 %54, %53
  store i32 %55, i32* %10, align 4
  br label %56

56:                                               ; preds = %49, %30
  %57 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %58 = load i32, i32* %8, align 4
  %59 = load i32, i32* %13, align 4
  %60 = load i32, i32* %9, align 4
  %61 = call i64 @fast_page_fault(%struct.kvm_vcpu* %57, i32 %58, i32 %59, i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %56
  %64 = load i32, i32* @RET_PF_RETRY, align 4
  store i32 %64, i32* %6, align 4
  br label %139

65:                                               ; preds = %56
  %66 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %67 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %66, i32 0, i32 0
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  store i64 %70, i64* %16, align 8
  %71 = call i32 (...) @smp_rmb()
  %72 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %73 = load i32, i32* %11, align 4
  %74 = load i32, i32* %10, align 4
  %75 = load i32, i32* %8, align 4
  %76 = load i32, i32* %18, align 4
  %77 = call i64 @try_async_pf(%struct.kvm_vcpu* %72, i32 %73, i32 %74, i32 %75, i32* %15, i32 %76, i32* %17)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %65
  %80 = load i32, i32* @RET_PF_RETRY, align 4
  store i32 %80, i32* %6, align 4
  br label %139

81:                                               ; preds = %65
  %82 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %83 = load i32, i32* %8, align 4
  %84 = load i32, i32* %10, align 4
  %85 = load i32, i32* %15, align 4
  %86 = load i32, i32* @ACC_ALL, align 4
  %87 = call i64 @handle_abnormal_pfn(%struct.kvm_vcpu* %82, i32 %83, i32 %84, i32 %85, i32 %86, i32* %12)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %81
  %90 = load i32, i32* %12, align 4
  store i32 %90, i32* %6, align 4
  br label %139

91:                                               ; preds = %81
  %92 = load i32, i32* @RET_PF_RETRY, align 4
  store i32 %92, i32* %12, align 4
  %93 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %94 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %93, i32 0, i32 0
  %95 = load %struct.TYPE_2__*, %struct.TYPE_2__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 1
  %97 = call i32 @spin_lock(i32* %96)
  %98 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %99 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %98, i32 0, i32 0
  %100 = load %struct.TYPE_2__*, %struct.TYPE_2__** %99, align 8
  %101 = load i64, i64* %16, align 8
  %102 = call i64 @mmu_notifier_retry(%struct.TYPE_2__* %100, i64 %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %91
  br label %130

105:                                              ; preds = %91
  %106 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %107 = call i64 @make_mmu_pages_available(%struct.kvm_vcpu* %106)
  %108 = icmp slt i64 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %105
  br label %130

110:                                              ; preds = %105
  %111 = load i32, i32* %14, align 4
  %112 = icmp ne i32 %111, 0
  %113 = xor i1 %112, true
  %114 = zext i1 %113 to i32
  %115 = call i64 @likely(i32 %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %121

117:                                              ; preds = %110
  %118 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %119 = load i32, i32* %10, align 4
  %120 = call i32 @transparent_hugepage_adjust(%struct.kvm_vcpu* %118, i32 %119, i32* %15, i32* %13)
  br label %121

121:                                              ; preds = %117, %110
  %122 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %123 = load i32, i32* %8, align 4
  %124 = load i32, i32* %18, align 4
  %125 = load i32, i32* %17, align 4
  %126 = load i32, i32* %13, align 4
  %127 = load i32, i32* %15, align 4
  %128 = load i32, i32* %11, align 4
  %129 = call i32 @__direct_map(%struct.kvm_vcpu* %122, i32 %123, i32 %124, i32 %125, i32 %126, i32 %127, i32 %128, i32 0)
  store i32 %129, i32* %12, align 4
  br label %130

130:                                              ; preds = %121, %109, %104
  %131 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %132 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %131, i32 0, i32 0
  %133 = load %struct.TYPE_2__*, %struct.TYPE_2__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %133, i32 0, i32 1
  %135 = call i32 @spin_unlock(i32* %134)
  %136 = load i32, i32* %15, align 4
  %137 = call i32 @kvm_release_pfn_clean(i32 %136)
  %138 = load i32, i32* %12, align 4
  store i32 %138, i32* %6, align 4
  br label %139

139:                                              ; preds = %130, %89, %79, %63
  %140 = load i32, i32* %6, align 4
  ret i32 %140
}

declare dso_local i64 @is_nx_huge_page_enabled(...) #1

declare dso_local i32 @mapping_level(%struct.kvm_vcpu*, i32, i32*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @KVM_PAGES_PER_HPAGE(i32) #1

declare dso_local i64 @fast_page_fault(%struct.kvm_vcpu*, i32, i32, i32) #1

declare dso_local i32 @smp_rmb(...) #1

declare dso_local i64 @try_async_pf(%struct.kvm_vcpu*, i32, i32, i32, i32*, i32, i32*) #1

declare dso_local i64 @handle_abnormal_pfn(%struct.kvm_vcpu*, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @mmu_notifier_retry(%struct.TYPE_2__*, i64) #1

declare dso_local i64 @make_mmu_pages_available(%struct.kvm_vcpu*) #1

declare dso_local i32 @transparent_hugepage_adjust(%struct.kvm_vcpu*, i32, i32*, i32*) #1

declare dso_local i32 @__direct_map(%struct.kvm_vcpu*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @kvm_release_pfn_clean(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
