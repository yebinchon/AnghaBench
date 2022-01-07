; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/power/extr_hibernate_32.c_resume_physical_mapping_init.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/power/extr_hibernate_32.c_resume_physical_mapping_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PAGE_OFFSET = common dso_local global i32 0, align 4
@PTRS_PER_PGD = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@max_low_pfn = common dso_local global i64 0, align 8
@PTRS_PER_PMD = common dso_local global i32 0, align 4
@X86_FEATURE_PSE = common dso_local global i32 0, align 4
@PAGE_KERNEL_LARGE_EXEC = common dso_local global i32 0, align 4
@PTRS_PER_PTE = common dso_local global i32 0, align 4
@PAGE_KERNEL_EXEC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @resume_physical_mapping_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @resume_physical_mapping_init(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  %11 = load i32, i32* @PAGE_OFFSET, align 4
  %12 = call i32 @pgd_index(i32 %11)
  store i32 %12, i32* %8, align 4
  %13 = load i32*, i32** %3, align 8
  %14 = load i32, i32* %8, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i32, i32* %13, i64 %15
  store i32* %16, i32** %5, align 8
  store i64 0, i64* %4, align 8
  br label %17

17:                                               ; preds = %99, %1
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* @PTRS_PER_PGD, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %104

21:                                               ; preds = %17
  %22 = load i32*, i32** %5, align 8
  %23 = call i32* @resume_one_md_table_init(i32* %22)
  store i32* %23, i32** %6, align 8
  %24 = load i32*, i32** %6, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %21
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %105

29:                                               ; preds = %21
  %30 = load i64, i64* %4, align 8
  %31 = load i64, i64* @max_low_pfn, align 8
  %32 = icmp uge i64 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %29
  br label %99

34:                                               ; preds = %29
  store i32 0, i32* %9, align 4
  br label %35

35:                                               ; preds = %93, %34
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* @PTRS_PER_PMD, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %98

39:                                               ; preds = %35
  %40 = load i64, i64* %4, align 8
  %41 = load i64, i64* @max_low_pfn, align 8
  %42 = icmp uge i64 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %39
  br label %98

44:                                               ; preds = %39
  %45 = load i32, i32* @X86_FEATURE_PSE, align 4
  %46 = call i64 @boot_cpu_has(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %58

48:                                               ; preds = %44
  %49 = load i32*, i32** %6, align 8
  %50 = load i64, i64* %4, align 8
  %51 = load i32, i32* @PAGE_KERNEL_LARGE_EXEC, align 4
  %52 = call i32 @pfn_pmd(i64 %50, i32 %51)
  %53 = call i32 @set_pmd(i32* %49, i32 %52)
  %54 = load i32, i32* @PTRS_PER_PTE, align 4
  %55 = sext i32 %54 to i64
  %56 = load i64, i64* %4, align 8
  %57 = add i64 %56, %55
  store i64 %57, i64* %4, align 8
  br label %92

58:                                               ; preds = %44
  %59 = load i32*, i32** %6, align 8
  %60 = call i32* @resume_one_page_table_init(i32* %59)
  store i32* %60, i32** %7, align 8
  %61 = load i32*, i32** %7, align 8
  %62 = icmp ne i32* %61, null
  br i1 %62, label %66, label %63

63:                                               ; preds = %58
  %64 = load i32, i32* @ENOMEM, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %2, align 4
  br label %105

66:                                               ; preds = %58
  %67 = load i32*, i32** %7, align 8
  %68 = load i32, i32* @PTRS_PER_PTE, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  store i32* %70, i32** %10, align 8
  br label %71

71:                                               ; preds = %86, %66
  %72 = load i32*, i32** %7, align 8
  %73 = load i32*, i32** %10, align 8
  %74 = icmp ult i32* %72, %73
  br i1 %74, label %75, label %91

75:                                               ; preds = %71
  %76 = load i64, i64* %4, align 8
  %77 = load i64, i64* @max_low_pfn, align 8
  %78 = icmp uge i64 %76, %77
  br i1 %78, label %79, label %80

79:                                               ; preds = %75
  br label %91

80:                                               ; preds = %75
  %81 = load i32*, i32** %7, align 8
  %82 = load i64, i64* %4, align 8
  %83 = load i32, i32* @PAGE_KERNEL_EXEC, align 4
  %84 = call i32 @pfn_pte(i64 %82, i32 %83)
  %85 = call i32 @set_pte(i32* %81, i32 %84)
  br label %86

86:                                               ; preds = %80
  %87 = load i32*, i32** %7, align 8
  %88 = getelementptr inbounds i32, i32* %87, i32 1
  store i32* %88, i32** %7, align 8
  %89 = load i64, i64* %4, align 8
  %90 = add i64 %89, 1
  store i64 %90, i64* %4, align 8
  br label %71

91:                                               ; preds = %79, %71
  br label %92

92:                                               ; preds = %91, %48
  br label %93

93:                                               ; preds = %92
  %94 = load i32*, i32** %6, align 8
  %95 = getelementptr inbounds i32, i32* %94, i32 1
  store i32* %95, i32** %6, align 8
  %96 = load i32, i32* %9, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %9, align 4
  br label %35

98:                                               ; preds = %43, %35
  br label %99

99:                                               ; preds = %98, %33
  %100 = load i32*, i32** %5, align 8
  %101 = getelementptr inbounds i32, i32* %100, i32 1
  store i32* %101, i32** %5, align 8
  %102 = load i32, i32* %8, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %8, align 4
  br label %17

104:                                              ; preds = %17
  store i32 0, i32* %2, align 4
  br label %105

105:                                              ; preds = %104, %63, %26
  %106 = load i32, i32* %2, align 4
  ret i32 %106
}

declare dso_local i32 @pgd_index(i32) #1

declare dso_local i32* @resume_one_md_table_init(i32*) #1

declare dso_local i64 @boot_cpu_has(i32) #1

declare dso_local i32 @set_pmd(i32*, i32) #1

declare dso_local i32 @pfn_pmd(i64, i32) #1

declare dso_local i32* @resume_one_page_table_init(i32*) #1

declare dso_local i32 @set_pte(i32*, i32) #1

declare dso_local i32 @pfn_pte(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
