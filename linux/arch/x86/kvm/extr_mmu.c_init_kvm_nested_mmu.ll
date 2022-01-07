; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_mmu.c_init_kvm_nested_mmu.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_mmu.c_init_kvm_nested_mmu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.kvm_vcpu = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.kvm_mmu }
%struct.kvm_mmu = type { i32, i8*, i64, i32, i32, i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 }
%union.kvm_mmu_role = type { i64 }
%struct.TYPE_6__ = type { i32 }

@mmu_base_role_mask = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@get_cr3 = common dso_local global i32 0, align 4
@kvm_pdptr_read = common dso_local global i32 0, align 4
@kvm_inject_page_fault = common dso_local global i32 0, align 4
@nonpaging_gva_to_gpa_nested = common dso_local global i8* null, align 8
@PT64_ROOT_5LEVEL = common dso_local global i64 0, align 8
@PT64_ROOT_4LEVEL = common dso_local global i64 0, align 8
@paging64_gva_to_gpa_nested = common dso_local global i8* null, align 8
@PT32E_ROOT_LEVEL = common dso_local global i64 0, align 8
@PT32_ROOT_LEVEL = common dso_local global i64 0, align 8
@paging32_gva_to_gpa_nested = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvm_vcpu*)* @init_kvm_nested_mmu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_kvm_nested_mmu(%struct.kvm_vcpu* %0) #0 {
  %2 = alloca %struct.kvm_vcpu*, align 8
  %3 = alloca %union.kvm_mmu_role, align 8
  %4 = alloca %struct.kvm_mmu*, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %2, align 8
  %5 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %6 = call i64 @kvm_calc_mmu_role_common(%struct.kvm_vcpu* %5, i32 0)
  %7 = getelementptr inbounds %union.kvm_mmu_role, %union.kvm_mmu_role* %3, i32 0, i32 0
  store i64 %6, i64* %7, align 8
  %8 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %9 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  store %struct.kvm_mmu* %10, %struct.kvm_mmu** %4, align 8
  %11 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @mmu_base_role_mask, i32 0, i32 0), align 4
  %12 = bitcast %union.kvm_mmu_role* %3 to %struct.TYPE_6__*
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = and i32 %14, %11
  store i32 %15, i32* %13, align 8
  %16 = bitcast %union.kvm_mmu_role* %3 to i64*
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.kvm_mmu*, %struct.kvm_mmu** %4, align 8
  %19 = getelementptr inbounds %struct.kvm_mmu, %struct.kvm_mmu* %18, i32 0, i32 6
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp eq i64 %17, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %1
  br label %120

24:                                               ; preds = %1
  %25 = bitcast %union.kvm_mmu_role* %3 to i64*
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.kvm_mmu*, %struct.kvm_mmu** %4, align 8
  %28 = getelementptr inbounds %struct.kvm_mmu, %struct.kvm_mmu* %27, i32 0, i32 6
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  store i64 %26, i64* %29, align 8
  %30 = load i32, i32* @get_cr3, align 4
  %31 = load %struct.kvm_mmu*, %struct.kvm_mmu** %4, align 8
  %32 = getelementptr inbounds %struct.kvm_mmu, %struct.kvm_mmu* %31, i32 0, i32 5
  store i32 %30, i32* %32, align 8
  %33 = load i32, i32* @kvm_pdptr_read, align 4
  %34 = load %struct.kvm_mmu*, %struct.kvm_mmu** %4, align 8
  %35 = getelementptr inbounds %struct.kvm_mmu, %struct.kvm_mmu* %34, i32 0, i32 4
  store i32 %33, i32* %35, align 4
  %36 = load i32, i32* @kvm_inject_page_fault, align 4
  %37 = load %struct.kvm_mmu*, %struct.kvm_mmu** %4, align 8
  %38 = getelementptr inbounds %struct.kvm_mmu, %struct.kvm_mmu* %37, i32 0, i32 3
  store i32 %36, i32* %38, align 8
  %39 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %40 = call i32 @is_paging(%struct.kvm_vcpu* %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %50, label %42

42:                                               ; preds = %24
  %43 = load %struct.kvm_mmu*, %struct.kvm_mmu** %4, align 8
  %44 = getelementptr inbounds %struct.kvm_mmu, %struct.kvm_mmu* %43, i32 0, i32 0
  store i32 0, i32* %44, align 8
  %45 = load %struct.kvm_mmu*, %struct.kvm_mmu** %4, align 8
  %46 = getelementptr inbounds %struct.kvm_mmu, %struct.kvm_mmu* %45, i32 0, i32 2
  store i64 0, i64* %46, align 8
  %47 = load i8*, i8** @nonpaging_gva_to_gpa_nested, align 8
  %48 = load %struct.kvm_mmu*, %struct.kvm_mmu** %4, align 8
  %49 = getelementptr inbounds %struct.kvm_mmu, %struct.kvm_mmu* %48, i32 0, i32 1
  store i8* %47, i8** %49, align 8
  br label %110

50:                                               ; preds = %24
  %51 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %52 = call i64 @is_long_mode(%struct.kvm_vcpu* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %77

54:                                               ; preds = %50
  %55 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %56 = call i8* @is_nx(%struct.kvm_vcpu* %55)
  %57 = ptrtoint i8* %56 to i32
  %58 = load %struct.kvm_mmu*, %struct.kvm_mmu** %4, align 8
  %59 = getelementptr inbounds %struct.kvm_mmu, %struct.kvm_mmu* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 8
  %60 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %61 = call i64 @is_la57_mode(%struct.kvm_vcpu* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %54
  %64 = load i64, i64* @PT64_ROOT_5LEVEL, align 8
  br label %67

65:                                               ; preds = %54
  %66 = load i64, i64* @PT64_ROOT_4LEVEL, align 8
  br label %67

67:                                               ; preds = %65, %63
  %68 = phi i64 [ %64, %63 ], [ %66, %65 ]
  %69 = load %struct.kvm_mmu*, %struct.kvm_mmu** %4, align 8
  %70 = getelementptr inbounds %struct.kvm_mmu, %struct.kvm_mmu* %69, i32 0, i32 2
  store i64 %68, i64* %70, align 8
  %71 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %72 = load %struct.kvm_mmu*, %struct.kvm_mmu** %4, align 8
  %73 = call i32 @reset_rsvds_bits_mask(%struct.kvm_vcpu* %71, %struct.kvm_mmu* %72)
  %74 = load i8*, i8** @paging64_gva_to_gpa_nested, align 8
  %75 = load %struct.kvm_mmu*, %struct.kvm_mmu** %4, align 8
  %76 = getelementptr inbounds %struct.kvm_mmu, %struct.kvm_mmu* %75, i32 0, i32 1
  store i8* %74, i8** %76, align 8
  br label %109

77:                                               ; preds = %50
  %78 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %79 = call i64 @is_pae(%struct.kvm_vcpu* %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %96

81:                                               ; preds = %77
  %82 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %83 = call i8* @is_nx(%struct.kvm_vcpu* %82)
  %84 = ptrtoint i8* %83 to i32
  %85 = load %struct.kvm_mmu*, %struct.kvm_mmu** %4, align 8
  %86 = getelementptr inbounds %struct.kvm_mmu, %struct.kvm_mmu* %85, i32 0, i32 0
  store i32 %84, i32* %86, align 8
  %87 = load i64, i64* @PT32E_ROOT_LEVEL, align 8
  %88 = load %struct.kvm_mmu*, %struct.kvm_mmu** %4, align 8
  %89 = getelementptr inbounds %struct.kvm_mmu, %struct.kvm_mmu* %88, i32 0, i32 2
  store i64 %87, i64* %89, align 8
  %90 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %91 = load %struct.kvm_mmu*, %struct.kvm_mmu** %4, align 8
  %92 = call i32 @reset_rsvds_bits_mask(%struct.kvm_vcpu* %90, %struct.kvm_mmu* %91)
  %93 = load i8*, i8** @paging64_gva_to_gpa_nested, align 8
  %94 = load %struct.kvm_mmu*, %struct.kvm_mmu** %4, align 8
  %95 = getelementptr inbounds %struct.kvm_mmu, %struct.kvm_mmu* %94, i32 0, i32 1
  store i8* %93, i8** %95, align 8
  br label %108

96:                                               ; preds = %77
  %97 = load %struct.kvm_mmu*, %struct.kvm_mmu** %4, align 8
  %98 = getelementptr inbounds %struct.kvm_mmu, %struct.kvm_mmu* %97, i32 0, i32 0
  store i32 0, i32* %98, align 8
  %99 = load i64, i64* @PT32_ROOT_LEVEL, align 8
  %100 = load %struct.kvm_mmu*, %struct.kvm_mmu** %4, align 8
  %101 = getelementptr inbounds %struct.kvm_mmu, %struct.kvm_mmu* %100, i32 0, i32 2
  store i64 %99, i64* %101, align 8
  %102 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %103 = load %struct.kvm_mmu*, %struct.kvm_mmu** %4, align 8
  %104 = call i32 @reset_rsvds_bits_mask(%struct.kvm_vcpu* %102, %struct.kvm_mmu* %103)
  %105 = load i8*, i8** @paging32_gva_to_gpa_nested, align 8
  %106 = load %struct.kvm_mmu*, %struct.kvm_mmu** %4, align 8
  %107 = getelementptr inbounds %struct.kvm_mmu, %struct.kvm_mmu* %106, i32 0, i32 1
  store i8* %105, i8** %107, align 8
  br label %108

108:                                              ; preds = %96, %81
  br label %109

109:                                              ; preds = %108, %67
  br label %110

110:                                              ; preds = %109, %42
  %111 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %112 = load %struct.kvm_mmu*, %struct.kvm_mmu** %4, align 8
  %113 = call i32 @update_permission_bitmask(%struct.kvm_vcpu* %111, %struct.kvm_mmu* %112, i32 0)
  %114 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %115 = load %struct.kvm_mmu*, %struct.kvm_mmu** %4, align 8
  %116 = call i32 @update_pkru_bitmask(%struct.kvm_vcpu* %114, %struct.kvm_mmu* %115, i32 0)
  %117 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %118 = load %struct.kvm_mmu*, %struct.kvm_mmu** %4, align 8
  %119 = call i32 @update_last_nonleaf_level(%struct.kvm_vcpu* %117, %struct.kvm_mmu* %118)
  br label %120

120:                                              ; preds = %110, %23
  ret void
}

declare dso_local i64 @kvm_calc_mmu_role_common(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @is_paging(%struct.kvm_vcpu*) #1

declare dso_local i64 @is_long_mode(%struct.kvm_vcpu*) #1

declare dso_local i8* @is_nx(%struct.kvm_vcpu*) #1

declare dso_local i64 @is_la57_mode(%struct.kvm_vcpu*) #1

declare dso_local i32 @reset_rsvds_bits_mask(%struct.kvm_vcpu*, %struct.kvm_mmu*) #1

declare dso_local i64 @is_pae(%struct.kvm_vcpu*) #1

declare dso_local i32 @update_permission_bitmask(%struct.kvm_vcpu*, %struct.kvm_mmu*, i32) #1

declare dso_local i32 @update_pkru_bitmask(%struct.kvm_vcpu*, %struct.kvm_mmu*, i32) #1

declare dso_local i32 @update_last_nonleaf_level(%struct.kvm_vcpu*, %struct.kvm_mmu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
