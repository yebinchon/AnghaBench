; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_mmu.c_init_kvm_tdp_mmu.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_mmu.c_init_kvm_tdp_mmu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.TYPE_10__ = type { i32, i32 (%struct.kvm_vcpu*)* }
%struct.kvm_vcpu = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.kvm_mmu* }
%struct.kvm_mmu = type { i32, i32, i8*, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64 }
%union.kvm_mmu_role = type { i64 }
%struct.TYPE_7__ = type { i32 }

@mmu_base_role_mask = common dso_local global %struct.TYPE_9__ zeroinitializer, align 4
@tdp_page_fault = common dso_local global i32 0, align 4
@nonpaging_sync_page = common dso_local global i32 0, align 4
@nonpaging_invlpg = common dso_local global i32 0, align 4
@nonpaging_update_pte = common dso_local global i32 0, align 4
@kvm_x86_ops = common dso_local global %struct.TYPE_10__* null, align 8
@get_cr3 = common dso_local global i32 0, align 4
@kvm_pdptr_read = common dso_local global i32 0, align 4
@kvm_inject_page_fault = common dso_local global i32 0, align 4
@nonpaging_gva_to_gpa = common dso_local global i8* null, align 8
@PT64_ROOT_5LEVEL = common dso_local global i64 0, align 8
@PT64_ROOT_4LEVEL = common dso_local global i64 0, align 8
@paging64_gva_to_gpa = common dso_local global i8* null, align 8
@PT32E_ROOT_LEVEL = common dso_local global i64 0, align 8
@PT32_ROOT_LEVEL = common dso_local global i64 0, align 8
@paging32_gva_to_gpa = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvm_vcpu*)* @init_kvm_tdp_mmu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_kvm_tdp_mmu(%struct.kvm_vcpu* %0) #0 {
  %2 = alloca %struct.kvm_vcpu*, align 8
  %3 = alloca %struct.kvm_mmu*, align 8
  %4 = alloca %union.kvm_mmu_role, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %2, align 8
  %5 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %6 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  %8 = load %struct.kvm_mmu*, %struct.kvm_mmu** %7, align 8
  store %struct.kvm_mmu* %8, %struct.kvm_mmu** %3, align 8
  %9 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %10 = call i64 @kvm_calc_tdp_mmu_root_page_role(%struct.kvm_vcpu* %9, i32 0)
  %11 = getelementptr inbounds %union.kvm_mmu_role, %union.kvm_mmu_role* %4, i32 0, i32 0
  store i64 %10, i64* %11, align 8
  %12 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @mmu_base_role_mask, i32 0, i32 0), align 4
  %13 = bitcast %union.kvm_mmu_role* %4 to %struct.TYPE_7__*
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = and i32 %15, %12
  store i32 %16, i32* %14, align 8
  %17 = bitcast %union.kvm_mmu_role* %4 to i64*
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.kvm_mmu*, %struct.kvm_mmu** %3, align 8
  %20 = getelementptr inbounds %struct.kvm_mmu, %struct.kvm_mmu* %19, i32 0, i32 13
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp eq i64 %18, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %1
  br label %150

25:                                               ; preds = %1
  %26 = bitcast %union.kvm_mmu_role* %4 to i64*
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.kvm_mmu*, %struct.kvm_mmu** %3, align 8
  %29 = getelementptr inbounds %struct.kvm_mmu, %struct.kvm_mmu* %28, i32 0, i32 13
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  store i64 %27, i64* %30, align 8
  %31 = load i32, i32* @tdp_page_fault, align 4
  %32 = load %struct.kvm_mmu*, %struct.kvm_mmu** %3, align 8
  %33 = getelementptr inbounds %struct.kvm_mmu, %struct.kvm_mmu* %32, i32 0, i32 12
  store i32 %31, i32* %33, align 8
  %34 = load i32, i32* @nonpaging_sync_page, align 4
  %35 = load %struct.kvm_mmu*, %struct.kvm_mmu** %3, align 8
  %36 = getelementptr inbounds %struct.kvm_mmu, %struct.kvm_mmu* %35, i32 0, i32 11
  store i32 %34, i32* %36, align 4
  %37 = load i32, i32* @nonpaging_invlpg, align 4
  %38 = load %struct.kvm_mmu*, %struct.kvm_mmu** %3, align 8
  %39 = getelementptr inbounds %struct.kvm_mmu, %struct.kvm_mmu* %38, i32 0, i32 10
  store i32 %37, i32* %39, align 8
  %40 = load i32, i32* @nonpaging_update_pte, align 4
  %41 = load %struct.kvm_mmu*, %struct.kvm_mmu** %3, align 8
  %42 = getelementptr inbounds %struct.kvm_mmu, %struct.kvm_mmu* %41, i32 0, i32 9
  store i32 %40, i32* %42, align 4
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** @kvm_x86_ops, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 1
  %45 = load i32 (%struct.kvm_vcpu*)*, i32 (%struct.kvm_vcpu*)** %44, align 8
  %46 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %47 = call i32 %45(%struct.kvm_vcpu* %46)
  %48 = load %struct.kvm_mmu*, %struct.kvm_mmu** %3, align 8
  %49 = getelementptr inbounds %struct.kvm_mmu, %struct.kvm_mmu* %48, i32 0, i32 8
  store i32 %47, i32* %49, align 8
  %50 = load %struct.kvm_mmu*, %struct.kvm_mmu** %3, align 8
  %51 = getelementptr inbounds %struct.kvm_mmu, %struct.kvm_mmu* %50, i32 0, i32 0
  store i32 1, i32* %51, align 8
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** @kvm_x86_ops, align 8
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.kvm_mmu*, %struct.kvm_mmu** %3, align 8
  %56 = getelementptr inbounds %struct.kvm_mmu, %struct.kvm_mmu* %55, i32 0, i32 7
  store i32 %54, i32* %56, align 4
  %57 = load i32, i32* @get_cr3, align 4
  %58 = load %struct.kvm_mmu*, %struct.kvm_mmu** %3, align 8
  %59 = getelementptr inbounds %struct.kvm_mmu, %struct.kvm_mmu* %58, i32 0, i32 6
  store i32 %57, i32* %59, align 8
  %60 = load i32, i32* @kvm_pdptr_read, align 4
  %61 = load %struct.kvm_mmu*, %struct.kvm_mmu** %3, align 8
  %62 = getelementptr inbounds %struct.kvm_mmu, %struct.kvm_mmu* %61, i32 0, i32 5
  store i32 %60, i32* %62, align 4
  %63 = load i32, i32* @kvm_inject_page_fault, align 4
  %64 = load %struct.kvm_mmu*, %struct.kvm_mmu** %3, align 8
  %65 = getelementptr inbounds %struct.kvm_mmu, %struct.kvm_mmu* %64, i32 0, i32 4
  store i32 %63, i32* %65, align 8
  %66 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %67 = call i32 @is_paging(%struct.kvm_vcpu* %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %77, label %69

69:                                               ; preds = %25
  %70 = load %struct.kvm_mmu*, %struct.kvm_mmu** %3, align 8
  %71 = getelementptr inbounds %struct.kvm_mmu, %struct.kvm_mmu* %70, i32 0, i32 1
  store i32 0, i32* %71, align 4
  %72 = load i8*, i8** @nonpaging_gva_to_gpa, align 8
  %73 = load %struct.kvm_mmu*, %struct.kvm_mmu** %3, align 8
  %74 = getelementptr inbounds %struct.kvm_mmu, %struct.kvm_mmu* %73, i32 0, i32 2
  store i8* %72, i8** %74, align 8
  %75 = load %struct.kvm_mmu*, %struct.kvm_mmu** %3, align 8
  %76 = getelementptr inbounds %struct.kvm_mmu, %struct.kvm_mmu* %75, i32 0, i32 3
  store i64 0, i64* %76, align 8
  br label %137

77:                                               ; preds = %25
  %78 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %79 = call i64 @is_long_mode(%struct.kvm_vcpu* %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %104

81:                                               ; preds = %77
  %82 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %83 = call i8* @is_nx(%struct.kvm_vcpu* %82)
  %84 = ptrtoint i8* %83 to i32
  %85 = load %struct.kvm_mmu*, %struct.kvm_mmu** %3, align 8
  %86 = getelementptr inbounds %struct.kvm_mmu, %struct.kvm_mmu* %85, i32 0, i32 1
  store i32 %84, i32* %86, align 4
  %87 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %88 = call i64 @is_la57_mode(%struct.kvm_vcpu* %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %81
  %91 = load i64, i64* @PT64_ROOT_5LEVEL, align 8
  br label %94

92:                                               ; preds = %81
  %93 = load i64, i64* @PT64_ROOT_4LEVEL, align 8
  br label %94

94:                                               ; preds = %92, %90
  %95 = phi i64 [ %91, %90 ], [ %93, %92 ]
  %96 = load %struct.kvm_mmu*, %struct.kvm_mmu** %3, align 8
  %97 = getelementptr inbounds %struct.kvm_mmu, %struct.kvm_mmu* %96, i32 0, i32 3
  store i64 %95, i64* %97, align 8
  %98 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %99 = load %struct.kvm_mmu*, %struct.kvm_mmu** %3, align 8
  %100 = call i32 @reset_rsvds_bits_mask(%struct.kvm_vcpu* %98, %struct.kvm_mmu* %99)
  %101 = load i8*, i8** @paging64_gva_to_gpa, align 8
  %102 = load %struct.kvm_mmu*, %struct.kvm_mmu** %3, align 8
  %103 = getelementptr inbounds %struct.kvm_mmu, %struct.kvm_mmu* %102, i32 0, i32 2
  store i8* %101, i8** %103, align 8
  br label %136

104:                                              ; preds = %77
  %105 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %106 = call i64 @is_pae(%struct.kvm_vcpu* %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %123

108:                                              ; preds = %104
  %109 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %110 = call i8* @is_nx(%struct.kvm_vcpu* %109)
  %111 = ptrtoint i8* %110 to i32
  %112 = load %struct.kvm_mmu*, %struct.kvm_mmu** %3, align 8
  %113 = getelementptr inbounds %struct.kvm_mmu, %struct.kvm_mmu* %112, i32 0, i32 1
  store i32 %111, i32* %113, align 4
  %114 = load i64, i64* @PT32E_ROOT_LEVEL, align 8
  %115 = load %struct.kvm_mmu*, %struct.kvm_mmu** %3, align 8
  %116 = getelementptr inbounds %struct.kvm_mmu, %struct.kvm_mmu* %115, i32 0, i32 3
  store i64 %114, i64* %116, align 8
  %117 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %118 = load %struct.kvm_mmu*, %struct.kvm_mmu** %3, align 8
  %119 = call i32 @reset_rsvds_bits_mask(%struct.kvm_vcpu* %117, %struct.kvm_mmu* %118)
  %120 = load i8*, i8** @paging64_gva_to_gpa, align 8
  %121 = load %struct.kvm_mmu*, %struct.kvm_mmu** %3, align 8
  %122 = getelementptr inbounds %struct.kvm_mmu, %struct.kvm_mmu* %121, i32 0, i32 2
  store i8* %120, i8** %122, align 8
  br label %135

123:                                              ; preds = %104
  %124 = load %struct.kvm_mmu*, %struct.kvm_mmu** %3, align 8
  %125 = getelementptr inbounds %struct.kvm_mmu, %struct.kvm_mmu* %124, i32 0, i32 1
  store i32 0, i32* %125, align 4
  %126 = load i64, i64* @PT32_ROOT_LEVEL, align 8
  %127 = load %struct.kvm_mmu*, %struct.kvm_mmu** %3, align 8
  %128 = getelementptr inbounds %struct.kvm_mmu, %struct.kvm_mmu* %127, i32 0, i32 3
  store i64 %126, i64* %128, align 8
  %129 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %130 = load %struct.kvm_mmu*, %struct.kvm_mmu** %3, align 8
  %131 = call i32 @reset_rsvds_bits_mask(%struct.kvm_vcpu* %129, %struct.kvm_mmu* %130)
  %132 = load i8*, i8** @paging32_gva_to_gpa, align 8
  %133 = load %struct.kvm_mmu*, %struct.kvm_mmu** %3, align 8
  %134 = getelementptr inbounds %struct.kvm_mmu, %struct.kvm_mmu* %133, i32 0, i32 2
  store i8* %132, i8** %134, align 8
  br label %135

135:                                              ; preds = %123, %108
  br label %136

136:                                              ; preds = %135, %94
  br label %137

137:                                              ; preds = %136, %69
  %138 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %139 = load %struct.kvm_mmu*, %struct.kvm_mmu** %3, align 8
  %140 = call i32 @update_permission_bitmask(%struct.kvm_vcpu* %138, %struct.kvm_mmu* %139, i32 0)
  %141 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %142 = load %struct.kvm_mmu*, %struct.kvm_mmu** %3, align 8
  %143 = call i32 @update_pkru_bitmask(%struct.kvm_vcpu* %141, %struct.kvm_mmu* %142, i32 0)
  %144 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %145 = load %struct.kvm_mmu*, %struct.kvm_mmu** %3, align 8
  %146 = call i32 @update_last_nonleaf_level(%struct.kvm_vcpu* %144, %struct.kvm_mmu* %145)
  %147 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %148 = load %struct.kvm_mmu*, %struct.kvm_mmu** %3, align 8
  %149 = call i32 @reset_tdp_shadow_zero_bits_mask(%struct.kvm_vcpu* %147, %struct.kvm_mmu* %148)
  br label %150

150:                                              ; preds = %137, %24
  ret void
}

declare dso_local i64 @kvm_calc_tdp_mmu_root_page_role(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @is_paging(%struct.kvm_vcpu*) #1

declare dso_local i64 @is_long_mode(%struct.kvm_vcpu*) #1

declare dso_local i8* @is_nx(%struct.kvm_vcpu*) #1

declare dso_local i64 @is_la57_mode(%struct.kvm_vcpu*) #1

declare dso_local i32 @reset_rsvds_bits_mask(%struct.kvm_vcpu*, %struct.kvm_mmu*) #1

declare dso_local i64 @is_pae(%struct.kvm_vcpu*) #1

declare dso_local i32 @update_permission_bitmask(%struct.kvm_vcpu*, %struct.kvm_mmu*, i32) #1

declare dso_local i32 @update_pkru_bitmask(%struct.kvm_vcpu*, %struct.kvm_mmu*, i32) #1

declare dso_local i32 @update_last_nonleaf_level(%struct.kvm_vcpu*, %struct.kvm_mmu*) #1

declare dso_local i32 @reset_tdp_shadow_zero_bits_mask(%struct.kvm_vcpu*, %struct.kvm_mmu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
