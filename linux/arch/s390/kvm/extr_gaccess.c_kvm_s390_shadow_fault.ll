; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/kvm/extr_gaccess.c_kvm_s390_shadow_fault.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/kvm/extr_gaccess.c_kvm_s390_shadow_fault.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32 }
%struct.gmap = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%union.vaddress = type { i64 }
%union.page_table_entry = type { i64 }

@PAGE_SIZE = common dso_local global i64 0, align 8
@PGM_PAGE_TRANSLATION = common dso_local global i32 0, align 4
@PGM_TRANSLATION_SPEC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kvm_s390_shadow_fault(%struct.kvm_vcpu* %0, %struct.gmap* %1, i64 %2) #0 {
  %4 = alloca %struct.kvm_vcpu*, align 8
  %5 = alloca %struct.gmap*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %union.vaddress, align 8
  %8 = alloca %union.page_table_entry, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %4, align 8
  store %struct.gmap* %1, %struct.gmap** %5, align 8
  store i64 %2, i64* %6, align 8
  %13 = load %struct.gmap*, %struct.gmap** %5, align 8
  %14 = getelementptr inbounds %struct.gmap, %struct.gmap* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = call i32 @down_read(i32* %16)
  %18 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %19 = call i32 @ipte_lock(%struct.kvm_vcpu* %18)
  %20 = load %struct.gmap*, %struct.gmap** %5, align 8
  %21 = load i64, i64* %6, align 8
  %22 = call i32 @gmap_shadow_pgt_lookup(%struct.gmap* %20, i64 %21, i64* %9, i32* %10, i32* %11)
  store i32 %22, i32* %12, align 4
  %23 = load i32, i32* %12, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %3
  %26 = load %struct.gmap*, %struct.gmap** %5, align 8
  %27 = load i64, i64* %6, align 8
  %28 = call i32 @kvm_s390_shadow_tables(%struct.gmap* %26, i64 %27, i64* %9, i32* %10, i32* %11)
  store i32 %28, i32* %12, align 4
  br label %29

29:                                               ; preds = %25, %3
  %30 = load i64, i64* %6, align 8
  %31 = bitcast %union.vaddress* %7 to i64*
  store i64 %30, i64* %31, align 8
  %32 = load i32, i32* %11, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %42

34:                                               ; preds = %29
  %35 = load i64, i64* %9, align 8
  %36 = bitcast %union.vaddress* %7 to i64*
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @PAGE_SIZE, align 8
  %39 = mul i64 %37, %38
  %40 = add i64 %35, %39
  %41 = bitcast %union.page_table_entry* %8 to i64*
  store i64 %40, i64* %41, align 8
  br label %75

42:                                               ; preds = %29
  %43 = load i32, i32* %12, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %56, label %45

45:                                               ; preds = %42
  %46 = load %struct.gmap*, %struct.gmap** %5, align 8
  %47 = getelementptr inbounds %struct.gmap, %struct.gmap* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = load i64, i64* %9, align 8
  %50 = bitcast %union.vaddress* %7 to i64*
  %51 = load i64, i64* %50, align 8
  %52 = mul i64 %51, 8
  %53 = add i64 %49, %52
  %54 = bitcast %union.page_table_entry* %8 to i64*
  %55 = call i32 @gmap_read_table(i32 %48, i64 %53, i64* %54)
  store i32 %55, i32* %12, align 4
  br label %56

56:                                               ; preds = %45, %42
  %57 = load i32, i32* %12, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %65, label %59

59:                                               ; preds = %56
  %60 = bitcast %union.page_table_entry* %8 to i64*
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %59
  %64 = load i32, i32* @PGM_PAGE_TRANSLATION, align 4
  store i32 %64, i32* %12, align 4
  br label %65

65:                                               ; preds = %63, %59, %56
  %66 = load i32, i32* %12, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %74, label %68

68:                                               ; preds = %65
  %69 = bitcast %union.page_table_entry* %8 to i64*
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %68
  %73 = load i32, i32* @PGM_TRANSLATION_SPEC, align 4
  store i32 %73, i32* %12, align 4
  br label %74

74:                                               ; preds = %72, %68, %65
  br label %75

75:                                               ; preds = %74, %34
  %76 = load i32, i32* %10, align 4
  %77 = bitcast %union.page_table_entry* %8 to i32*
  %78 = load i32, i32* %77, align 8
  %79 = or i32 %78, %76
  store i32 %79, i32* %77, align 8
  %80 = load i32, i32* %12, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %89, label %82

82:                                               ; preds = %75
  %83 = load %struct.gmap*, %struct.gmap** %5, align 8
  %84 = load i64, i64* %6, align 8
  %85 = bitcast %union.page_table_entry* %8 to i64*
  %86 = load i64, i64* %85, align 8
  %87 = call i32 @__pte(i64 %86)
  %88 = call i32 @gmap_shadow_page(%struct.gmap* %83, i64 %84, i32 %87)
  store i32 %88, i32* %12, align 4
  br label %89

89:                                               ; preds = %82, %75
  %90 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %91 = call i32 @ipte_unlock(%struct.kvm_vcpu* %90)
  %92 = load %struct.gmap*, %struct.gmap** %5, align 8
  %93 = getelementptr inbounds %struct.gmap, %struct.gmap* %92, i32 0, i32 0
  %94 = load %struct.TYPE_2__*, %struct.TYPE_2__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 0
  %96 = call i32 @up_read(i32* %95)
  %97 = load i32, i32* %12, align 4
  ret i32 %97
}

declare dso_local i32 @down_read(i32*) #1

declare dso_local i32 @ipte_lock(%struct.kvm_vcpu*) #1

declare dso_local i32 @gmap_shadow_pgt_lookup(%struct.gmap*, i64, i64*, i32*, i32*) #1

declare dso_local i32 @kvm_s390_shadow_tables(%struct.gmap*, i64, i64*, i32*, i32*) #1

declare dso_local i32 @gmap_read_table(i32, i64, i64*) #1

declare dso_local i32 @gmap_shadow_page(%struct.gmap*, i64, i32) #1

declare dso_local i32 @__pte(i64) #1

declare dso_local i32 @ipte_unlock(%struct.kvm_vcpu*) #1

declare dso_local i32 @up_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
