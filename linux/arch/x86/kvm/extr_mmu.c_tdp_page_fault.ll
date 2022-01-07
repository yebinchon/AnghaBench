; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_mmu.c_tdp_page_fault.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_mmu.c_tdp_page_fault.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_6__*, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i64, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@PAGE_SHIFT = common dso_local global i32 0, align 4
@PFERR_WRITE_MASK = common dso_local global i32 0, align 4
@PFERR_FETCH_MASK = common dso_local global i32 0, align 4
@RET_PF_EMULATE = common dso_local global i32 0, align 4
@PT_DIRECTORY_LEVEL = common dso_local global i32 0, align 4
@RET_PF_RETRY = common dso_local global i32 0, align 4
@ACC_ALL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_vcpu*, i32, i32, i32)* @tdp_page_fault to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tdp_page_fault(%struct.kvm_vcpu* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.kvm_vcpu*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* @PAGE_SHIFT, align 4
  %21 = ashr i32 %19, %20
  store i32 %21, i32* %14, align 4
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* @PFERR_WRITE_MASK, align 4
  %24 = and i32 %22, %23
  store i32 %24, i32* %16, align 4
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* @PFERR_FETCH_MASK, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %4
  %30 = call i64 (...) @is_nx_huge_page_enabled()
  %31 = icmp ne i64 %30, 0
  br label %32

32:                                               ; preds = %29, %4
  %33 = phi i1 [ false, %4 ], [ %31, %29 ]
  %34 = zext i1 %33 to i32
  store i32 %34, i32* %18, align 4
  %35 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %36 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @VALID_PAGE(i32 %40)
  %42 = icmp ne i32 %41, 0
  %43 = xor i1 %42, true
  %44 = zext i1 %43 to i32
  %45 = call i32 @MMU_WARN_ON(i32 %44)
  %46 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* %14, align 4
  %49 = call i64 @page_fault_handle_page_track(%struct.kvm_vcpu* %46, i32 %47, i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %32
  %52 = load i32, i32* @RET_PF_EMULATE, align 4
  store i32 %52, i32* %5, align 4
  br label %184

53:                                               ; preds = %32
  %54 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %55 = call i32 @mmu_topup_memory_caches(%struct.kvm_vcpu* %54)
  store i32 %55, i32* %11, align 4
  %56 = load i32, i32* %11, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %53
  %59 = load i32, i32* %11, align 4
  store i32 %59, i32* %5, align 4
  br label %184

60:                                               ; preds = %53
  %61 = load i32, i32* %18, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %70, label %63

63:                                               ; preds = %60
  %64 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %65 = load i32, i32* %14, align 4
  %66 = load i32, i32* @PT_DIRECTORY_LEVEL, align 4
  %67 = call i32 @check_hugepage_cache_consistency(%struct.kvm_vcpu* %64, i32 %65, i32 %66)
  %68 = icmp ne i32 %67, 0
  %69 = xor i1 %68, true
  br label %70

70:                                               ; preds = %63, %60
  %71 = phi i1 [ true, %60 ], [ %69, %63 ]
  %72 = zext i1 %71 to i32
  store i32 %72, i32* %13, align 4
  %73 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %74 = load i32, i32* %14, align 4
  %75 = call i32 @mapping_level(%struct.kvm_vcpu* %73, i32 %74, i32* %13)
  store i32 %75, i32* %12, align 4
  %76 = load i32, i32* %13, align 4
  %77 = icmp ne i32 %76, 0
  %78 = xor i1 %77, true
  %79 = zext i1 %78 to i32
  %80 = call i64 @likely(i32 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %101

82:                                               ; preds = %70
  %83 = load i32, i32* %12, align 4
  %84 = load i32, i32* @PT_DIRECTORY_LEVEL, align 4
  %85 = icmp sgt i32 %83, %84
  br i1 %85, label %86, label %94

86:                                               ; preds = %82
  %87 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %88 = load i32, i32* %14, align 4
  %89 = load i32, i32* %12, align 4
  %90 = call i32 @check_hugepage_cache_consistency(%struct.kvm_vcpu* %87, i32 %88, i32 %89)
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %94, label %92

92:                                               ; preds = %86
  %93 = load i32, i32* @PT_DIRECTORY_LEVEL, align 4
  store i32 %93, i32* %12, align 4
  br label %94

94:                                               ; preds = %92, %86, %82
  %95 = load i32, i32* %12, align 4
  %96 = call i32 @KVM_PAGES_PER_HPAGE(i32 %95)
  %97 = sub nsw i32 %96, 1
  %98 = xor i32 %97, -1
  %99 = load i32, i32* %14, align 4
  %100 = and i32 %99, %98
  store i32 %100, i32* %14, align 4
  br label %101

101:                                              ; preds = %94, %70
  %102 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %103 = load i32, i32* %7, align 4
  %104 = load i32, i32* %12, align 4
  %105 = load i32, i32* %8, align 4
  %106 = call i64 @fast_page_fault(%struct.kvm_vcpu* %102, i32 %103, i32 %104, i32 %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %110

108:                                              ; preds = %101
  %109 = load i32, i32* @RET_PF_RETRY, align 4
  store i32 %109, i32* %5, align 4
  br label %184

110:                                              ; preds = %101
  %111 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %112 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %111, i32 0, i32 0
  %113 = load %struct.TYPE_6__*, %struct.TYPE_6__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  store i64 %115, i64* %15, align 8
  %116 = call i32 (...) @smp_rmb()
  %117 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %118 = load i32, i32* %9, align 4
  %119 = load i32, i32* %14, align 4
  %120 = load i32, i32* %7, align 4
  %121 = load i32, i32* %16, align 4
  %122 = call i64 @try_async_pf(%struct.kvm_vcpu* %117, i32 %118, i32 %119, i32 %120, i32* %10, i32 %121, i32* %17)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %126

124:                                              ; preds = %110
  %125 = load i32, i32* @RET_PF_RETRY, align 4
  store i32 %125, i32* %5, align 4
  br label %184

126:                                              ; preds = %110
  %127 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %128 = load i32, i32* %14, align 4
  %129 = load i32, i32* %10, align 4
  %130 = load i32, i32* @ACC_ALL, align 4
  %131 = call i64 @handle_abnormal_pfn(%struct.kvm_vcpu* %127, i32 0, i32 %128, i32 %129, i32 %130, i32* %11)
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %135

133:                                              ; preds = %126
  %134 = load i32, i32* %11, align 4
  store i32 %134, i32* %5, align 4
  br label %184

135:                                              ; preds = %126
  %136 = load i32, i32* @RET_PF_RETRY, align 4
  store i32 %136, i32* %11, align 4
  %137 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %138 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %137, i32 0, i32 0
  %139 = load %struct.TYPE_6__*, %struct.TYPE_6__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %139, i32 0, i32 1
  %141 = call i32 @spin_lock(i32* %140)
  %142 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %143 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %142, i32 0, i32 0
  %144 = load %struct.TYPE_6__*, %struct.TYPE_6__** %143, align 8
  %145 = load i64, i64* %15, align 8
  %146 = call i64 @mmu_notifier_retry(%struct.TYPE_6__* %144, i64 %145)
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %149

148:                                              ; preds = %135
  br label %175

149:                                              ; preds = %135
  %150 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %151 = call i64 @make_mmu_pages_available(%struct.kvm_vcpu* %150)
  %152 = icmp slt i64 %151, 0
  br i1 %152, label %153, label %154

153:                                              ; preds = %149
  br label %175

154:                                              ; preds = %149
  %155 = load i32, i32* %13, align 4
  %156 = icmp ne i32 %155, 0
  %157 = xor i1 %156, true
  %158 = zext i1 %157 to i32
  %159 = call i64 @likely(i32 %158)
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %165

161:                                              ; preds = %154
  %162 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %163 = load i32, i32* %14, align 4
  %164 = call i32 @transparent_hugepage_adjust(%struct.kvm_vcpu* %162, i32 %163, i32* %10, i32* %12)
  br label %165

165:                                              ; preds = %161, %154
  %166 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %167 = load i32, i32* %7, align 4
  %168 = load i32, i32* %16, align 4
  %169 = load i32, i32* %17, align 4
  %170 = load i32, i32* %12, align 4
  %171 = load i32, i32* %10, align 4
  %172 = load i32, i32* %9, align 4
  %173 = load i32, i32* %18, align 4
  %174 = call i32 @__direct_map(%struct.kvm_vcpu* %166, i32 %167, i32 %168, i32 %169, i32 %170, i32 %171, i32 %172, i32 %173)
  store i32 %174, i32* %11, align 4
  br label %175

175:                                              ; preds = %165, %153, %148
  %176 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %177 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %176, i32 0, i32 0
  %178 = load %struct.TYPE_6__*, %struct.TYPE_6__** %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %178, i32 0, i32 1
  %180 = call i32 @spin_unlock(i32* %179)
  %181 = load i32, i32* %10, align 4
  %182 = call i32 @kvm_release_pfn_clean(i32 %181)
  %183 = load i32, i32* %11, align 4
  store i32 %183, i32* %5, align 4
  br label %184

184:                                              ; preds = %175, %133, %124, %108, %58, %51
  %185 = load i32, i32* %5, align 4
  ret i32 %185
}

declare dso_local i64 @is_nx_huge_page_enabled(...) #1

declare dso_local i32 @MMU_WARN_ON(i32) #1

declare dso_local i32 @VALID_PAGE(i32) #1

declare dso_local i64 @page_fault_handle_page_track(%struct.kvm_vcpu*, i32, i32) #1

declare dso_local i32 @mmu_topup_memory_caches(%struct.kvm_vcpu*) #1

declare dso_local i32 @check_hugepage_cache_consistency(%struct.kvm_vcpu*, i32, i32) #1

declare dso_local i32 @mapping_level(%struct.kvm_vcpu*, i32, i32*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @KVM_PAGES_PER_HPAGE(i32) #1

declare dso_local i64 @fast_page_fault(%struct.kvm_vcpu*, i32, i32, i32) #1

declare dso_local i32 @smp_rmb(...) #1

declare dso_local i64 @try_async_pf(%struct.kvm_vcpu*, i32, i32, i32, i32*, i32, i32*) #1

declare dso_local i64 @handle_abnormal_pfn(%struct.kvm_vcpu*, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @mmu_notifier_retry(%struct.TYPE_6__*, i64) #1

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
