; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/extr_machine_kexec_64.c_init_pgtable.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/extr_machine_kexec_64.c_init_pgtable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64 }
%struct.kimage = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64, i64 }
%struct.x86_mapping_info = type { i32, i32, i32, %struct.kimage*, i32 }

@_KERNPG_TABLE_NOENC = common dso_local global i32 0, align 4
@__PAGE_KERNEL_LARGE_EXEC = common dso_local global i32 0, align 4
@alloc_pgt_page = common dso_local global i32 0, align 4
@_PAGE_ENC = common dso_local global i32 0, align 4
@direct_gbpages = common dso_local global i64 0, align 8
@nr_pfn_mapped = common dso_local global i32 0, align 4
@pfn_mapped = common dso_local global %struct.TYPE_4__* null, align 8
@PAGE_SHIFT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kimage*, i64)* @init_pgtable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_pgtable(%struct.kimage* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.kimage*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.x86_mapping_info, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.kimage* %0, %struct.kimage** %4, align 8
  store i64 %1, i64* %5, align 8
  %12 = getelementptr inbounds %struct.x86_mapping_info, %struct.x86_mapping_info* %6, i32 0, i32 0
  store i32 0, i32* %12, align 8
  %13 = getelementptr inbounds %struct.x86_mapping_info, %struct.x86_mapping_info* %6, i32 0, i32 1
  %14 = load i32, i32* @_KERNPG_TABLE_NOENC, align 4
  store i32 %14, i32* %13, align 4
  %15 = getelementptr inbounds %struct.x86_mapping_info, %struct.x86_mapping_info* %6, i32 0, i32 2
  %16 = load i32, i32* @__PAGE_KERNEL_LARGE_EXEC, align 4
  store i32 %16, i32* %15, align 8
  %17 = getelementptr inbounds %struct.x86_mapping_info, %struct.x86_mapping_info* %6, i32 0, i32 3
  %18 = load %struct.kimage*, %struct.kimage** %4, align 8
  store %struct.kimage* %18, %struct.kimage** %17, align 8
  %19 = getelementptr inbounds %struct.x86_mapping_info, %struct.x86_mapping_info* %6, i32 0, i32 4
  %20 = load i32, i32* @alloc_pgt_page, align 4
  store i32 %20, i32* %19, align 8
  %21 = load i64, i64* %5, align 8
  %22 = call i64 @__va(i64 %21)
  %23 = inttoptr i64 %22 to i32*
  store i32* %23, i32** %9, align 8
  %24 = load i32*, i32** %9, align 8
  %25 = call i32 @clear_page(i32* %24)
  %26 = call i64 (...) @sev_active()
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %37

28:                                               ; preds = %2
  %29 = load i32, i32* @_PAGE_ENC, align 4
  %30 = getelementptr inbounds %struct.x86_mapping_info, %struct.x86_mapping_info* %6, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = or i32 %31, %29
  store i32 %32, i32* %30, align 8
  %33 = load i32, i32* @_PAGE_ENC, align 4
  %34 = getelementptr inbounds %struct.x86_mapping_info, %struct.x86_mapping_info* %6, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = or i32 %35, %33
  store i32 %36, i32* %34, align 4
  br label %37

37:                                               ; preds = %28, %2
  %38 = load i64, i64* @direct_gbpages, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %37
  %41 = getelementptr inbounds %struct.x86_mapping_info, %struct.x86_mapping_info* %6, i32 0, i32 0
  store i32 1, i32* %41, align 8
  br label %42

42:                                               ; preds = %40, %37
  store i32 0, i32* %11, align 4
  br label %43

43:                                               ; preds = %73, %42
  %44 = load i32, i32* %11, align 4
  %45 = load i32, i32* @nr_pfn_mapped, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %76

47:                                               ; preds = %43
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** @pfn_mapped, align 8
  %49 = load i32, i32* %11, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @PAGE_SHIFT, align 8
  %55 = shl i64 %53, %54
  store i64 %55, i64* %7, align 8
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** @pfn_mapped, align 8
  %57 = load i32, i32* %11, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @PAGE_SHIFT, align 8
  %63 = shl i64 %61, %62
  store i64 %63, i64* %8, align 8
  %64 = load i32*, i32** %9, align 8
  %65 = load i64, i64* %7, align 8
  %66 = load i64, i64* %8, align 8
  %67 = call i32 @kernel_ident_mapping_init(%struct.x86_mapping_info* %6, i32* %64, i64 %65, i64 %66)
  store i32 %67, i32* %10, align 4
  %68 = load i32, i32* %10, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %47
  %71 = load i32, i32* %10, align 4
  store i32 %71, i32* %3, align 4
  br label %132

72:                                               ; preds = %47
  br label %73

73:                                               ; preds = %72
  %74 = load i32, i32* %11, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %11, align 4
  br label %43

76:                                               ; preds = %43
  store i32 0, i32* %11, align 4
  br label %77

77:                                               ; preds = %111, %76
  %78 = load i32, i32* %11, align 4
  %79 = load %struct.kimage*, %struct.kimage** %4, align 8
  %80 = getelementptr inbounds %struct.kimage, %struct.kimage* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = icmp slt i32 %78, %81
  br i1 %82, label %83, label %114

83:                                               ; preds = %77
  %84 = load %struct.kimage*, %struct.kimage** %4, align 8
  %85 = getelementptr inbounds %struct.kimage, %struct.kimage* %84, i32 0, i32 1
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** %85, align 8
  %87 = load i32, i32* %11, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  store i64 %91, i64* %7, align 8
  %92 = load i64, i64* %7, align 8
  %93 = load %struct.kimage*, %struct.kimage** %4, align 8
  %94 = getelementptr inbounds %struct.kimage, %struct.kimage* %93, i32 0, i32 1
  %95 = load %struct.TYPE_3__*, %struct.TYPE_3__** %94, align 8
  %96 = load i32, i32* %11, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = add i64 %92, %100
  store i64 %101, i64* %8, align 8
  %102 = load i32*, i32** %9, align 8
  %103 = load i64, i64* %7, align 8
  %104 = load i64, i64* %8, align 8
  %105 = call i32 @kernel_ident_mapping_init(%struct.x86_mapping_info* %6, i32* %102, i64 %103, i64 %104)
  store i32 %105, i32* %10, align 4
  %106 = load i32, i32* %10, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %110

108:                                              ; preds = %83
  %109 = load i32, i32* %10, align 4
  store i32 %109, i32* %3, align 4
  br label %132

110:                                              ; preds = %83
  br label %111

111:                                              ; preds = %110
  %112 = load i32, i32* %11, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %11, align 4
  br label %77

114:                                              ; preds = %77
  %115 = load i32*, i32** %9, align 8
  %116 = call i32 @map_efi_systab(%struct.x86_mapping_info* %6, i32* %115)
  store i32 %116, i32* %10, align 4
  %117 = load i32, i32* %10, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %121

119:                                              ; preds = %114
  %120 = load i32, i32* %10, align 4
  store i32 %120, i32* %3, align 4
  br label %132

121:                                              ; preds = %114
  %122 = load i32*, i32** %9, align 8
  %123 = call i32 @map_acpi_tables(%struct.x86_mapping_info* %6, i32* %122)
  store i32 %123, i32* %10, align 4
  %124 = load i32, i32* %10, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %128

126:                                              ; preds = %121
  %127 = load i32, i32* %10, align 4
  store i32 %127, i32* %3, align 4
  br label %132

128:                                              ; preds = %121
  %129 = load %struct.kimage*, %struct.kimage** %4, align 8
  %130 = load i32*, i32** %9, align 8
  %131 = call i32 @init_transition_pgtable(%struct.kimage* %129, i32* %130)
  store i32 %131, i32* %3, align 4
  br label %132

132:                                              ; preds = %128, %126, %119, %108, %70
  %133 = load i32, i32* %3, align 4
  ret i32 %133
}

declare dso_local i64 @__va(i64) #1

declare dso_local i32 @clear_page(i32*) #1

declare dso_local i64 @sev_active(...) #1

declare dso_local i32 @kernel_ident_mapping_init(%struct.x86_mapping_info*, i32*, i64, i64) #1

declare dso_local i32 @map_efi_systab(%struct.x86_mapping_info*, i32*) #1

declare dso_local i32 @map_acpi_tables(%struct.x86_mapping_info*, i32*) #1

declare dso_local i32 @init_transition_pgtable(%struct.kimage*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
