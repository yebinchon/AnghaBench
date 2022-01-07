; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/boot/compressed/extr_....mmident_map.c_kernel_ident_mapping_init.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/boot/compressed/extr_....mmident_map.c_kernel_ident_mapping_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.x86_mapping_info = type { i64, i32, i32, i64 (i32)* }

@_KERNPG_TABLE = common dso_local global i32 0, align 4
@__default_kernel_pte_mask = common dso_local global i32 0, align 4
@PGDIR_MASK = common dso_local global i64 0, align 8
@PGDIR_SIZE = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kernel_ident_mapping_init(%struct.x86_mapping_info* %0, i32* %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.x86_mapping_info*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  store %struct.x86_mapping_info* %0, %struct.x86_mapping_info** %6, align 8
  store i32* %1, i32** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %17 = load i64, i64* %8, align 8
  %18 = load %struct.x86_mapping_info*, %struct.x86_mapping_info** %6, align 8
  %19 = getelementptr inbounds %struct.x86_mapping_info, %struct.x86_mapping_info* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = add i64 %17, %20
  store i64 %21, i64* %10, align 8
  %22 = load i64, i64* %9, align 8
  %23 = load %struct.x86_mapping_info*, %struct.x86_mapping_info** %6, align 8
  %24 = getelementptr inbounds %struct.x86_mapping_info, %struct.x86_mapping_info* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = add i64 %22, %25
  store i64 %26, i64* %11, align 8
  %27 = load %struct.x86_mapping_info*, %struct.x86_mapping_info** %6, align 8
  %28 = getelementptr inbounds %struct.x86_mapping_info, %struct.x86_mapping_info* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %4
  %32 = load i32, i32* @_KERNPG_TABLE, align 4
  %33 = load %struct.x86_mapping_info*, %struct.x86_mapping_info** %6, align 8
  %34 = getelementptr inbounds %struct.x86_mapping_info, %struct.x86_mapping_info* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 8
  br label %35

35:                                               ; preds = %31, %4
  %36 = load i32, i32* @__default_kernel_pte_mask, align 4
  %37 = load %struct.x86_mapping_info*, %struct.x86_mapping_info** %6, align 8
  %38 = getelementptr inbounds %struct.x86_mapping_info, %struct.x86_mapping_info* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = and i32 %39, %36
  store i32 %40, i32* %38, align 8
  br label %41

41:                                               ; preds = %129, %35
  %42 = load i64, i64* %10, align 8
  %43 = load i64, i64* %11, align 8
  %44 = icmp ult i64 %42, %43
  br i1 %44, label %45, label %131

45:                                               ; preds = %41
  %46 = load i32*, i32** %7, align 8
  %47 = load i64, i64* %10, align 8
  %48 = call i32 @pgd_index(i64 %47)
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %46, i64 %49
  store i32* %50, i32** %14, align 8
  %51 = load i64, i64* %10, align 8
  %52 = load i64, i64* @PGDIR_MASK, align 8
  %53 = and i64 %51, %52
  %54 = load i64, i64* @PGDIR_SIZE, align 8
  %55 = add i64 %53, %54
  store i64 %55, i64* %12, align 8
  %56 = load i64, i64* %12, align 8
  %57 = load i64, i64* %11, align 8
  %58 = icmp ugt i64 %56, %57
  br i1 %58, label %59, label %61

59:                                               ; preds = %45
  %60 = load i64, i64* %11, align 8
  store i64 %60, i64* %12, align 8
  br label %61

61:                                               ; preds = %59, %45
  %62 = load i32*, i32** %14, align 8
  %63 = load i32, i32* %62, align 4
  %64 = call i64 @pgd_present(i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %79

66:                                               ; preds = %61
  %67 = load i32*, i32** %14, align 8
  %68 = call i32* @p4d_offset(i32* %67, i32 0)
  store i32* %68, i32** %15, align 8
  %69 = load %struct.x86_mapping_info*, %struct.x86_mapping_info** %6, align 8
  %70 = load i32*, i32** %15, align 8
  %71 = load i64, i64* %10, align 8
  %72 = load i64, i64* %12, align 8
  %73 = call i32 @ident_p4d_init(%struct.x86_mapping_info* %69, i32* %70, i64 %71, i64 %72)
  store i32 %73, i32* %13, align 4
  %74 = load i32, i32* %13, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %66
  %77 = load i32, i32* %13, align 4
  store i32 %77, i32* %5, align 4
  br label %132

78:                                               ; preds = %66
  br label %129

79:                                               ; preds = %61
  %80 = load %struct.x86_mapping_info*, %struct.x86_mapping_info** %6, align 8
  %81 = getelementptr inbounds %struct.x86_mapping_info, %struct.x86_mapping_info* %80, i32 0, i32 3
  %82 = load i64 (i32)*, i64 (i32)** %81, align 8
  %83 = load %struct.x86_mapping_info*, %struct.x86_mapping_info** %6, align 8
  %84 = getelementptr inbounds %struct.x86_mapping_info, %struct.x86_mapping_info* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 4
  %86 = call i64 %82(i32 %85)
  %87 = inttoptr i64 %86 to i32*
  store i32* %87, i32** %15, align 8
  %88 = load i32*, i32** %15, align 8
  %89 = icmp ne i32* %88, null
  br i1 %89, label %93, label %90

90:                                               ; preds = %79
  %91 = load i32, i32* @ENOMEM, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %5, align 4
  br label %132

93:                                               ; preds = %79
  %94 = load %struct.x86_mapping_info*, %struct.x86_mapping_info** %6, align 8
  %95 = load i32*, i32** %15, align 8
  %96 = load i64, i64* %10, align 8
  %97 = load i64, i64* %12, align 8
  %98 = call i32 @ident_p4d_init(%struct.x86_mapping_info* %94, i32* %95, i64 %96, i64 %97)
  store i32 %98, i32* %13, align 4
  %99 = load i32, i32* %13, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %93
  %102 = load i32, i32* %13, align 4
  store i32 %102, i32* %5, align 4
  br label %132

103:                                              ; preds = %93
  %104 = call i64 (...) @pgtable_l5_enabled()
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %116

106:                                              ; preds = %103
  %107 = load i32*, i32** %14, align 8
  %108 = load i32*, i32** %15, align 8
  %109 = call i32 @__pa(i32* %108)
  %110 = load %struct.x86_mapping_info*, %struct.x86_mapping_info** %6, align 8
  %111 = getelementptr inbounds %struct.x86_mapping_info, %struct.x86_mapping_info* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 8
  %113 = or i32 %109, %112
  %114 = call i32 @__pgd(i32 %113)
  %115 = call i32 @set_pgd(i32* %107, i32 %114)
  br label %128

116:                                              ; preds = %103
  %117 = load i32*, i32** %15, align 8
  %118 = call i32* @pud_offset(i32* %117, i32 0)
  store i32* %118, i32** %16, align 8
  %119 = load i32*, i32** %14, align 8
  %120 = load i32*, i32** %16, align 8
  %121 = call i32 @__pa(i32* %120)
  %122 = load %struct.x86_mapping_info*, %struct.x86_mapping_info** %6, align 8
  %123 = getelementptr inbounds %struct.x86_mapping_info, %struct.x86_mapping_info* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 8
  %125 = or i32 %121, %124
  %126 = call i32 @__pgd(i32 %125)
  %127 = call i32 @set_pgd(i32* %119, i32 %126)
  br label %128

128:                                              ; preds = %116, %106
  br label %129

129:                                              ; preds = %128, %78
  %130 = load i64, i64* %12, align 8
  store i64 %130, i64* %10, align 8
  br label %41

131:                                              ; preds = %41
  store i32 0, i32* %5, align 4
  br label %132

132:                                              ; preds = %131, %101, %90, %76
  %133 = load i32, i32* %5, align 4
  ret i32 %133
}

declare dso_local i32 @pgd_index(i64) #1

declare dso_local i64 @pgd_present(i32) #1

declare dso_local i32* @p4d_offset(i32*, i32) #1

declare dso_local i32 @ident_p4d_init(%struct.x86_mapping_info*, i32*, i64, i64) #1

declare dso_local i64 @pgtable_l5_enabled(...) #1

declare dso_local i32 @set_pgd(i32*, i32) #1

declare dso_local i32 @__pgd(i32) #1

declare dso_local i32 @__pa(i32*) #1

declare dso_local i32* @pud_offset(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
