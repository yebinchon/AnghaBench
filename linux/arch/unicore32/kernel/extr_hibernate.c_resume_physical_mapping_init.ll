; ModuleID = '/home/carl/AnghaBench/linux/arch/unicore32/kernel/extr_hibernate.c_resume_physical_mapping_init.c'
source_filename = "/home/carl/AnghaBench/linux/arch/unicore32/kernel/extr_hibernate.c_resume_physical_mapping_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PAGE_OFFSET = common dso_local global i32 0, align 4
@PTRS_PER_PGD = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@max_low_pfn = common dso_local global i64 0, align 8
@PTRS_PER_PMD = common dso_local global i32 0, align 4
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

17:                                               ; preds = %84, %1
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* @PTRS_PER_PGD, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %89

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
  br label %90

29:                                               ; preds = %21
  %30 = load i64, i64* %4, align 8
  %31 = load i64, i64* @max_low_pfn, align 8
  %32 = icmp uge i64 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %29
  br label %84

34:                                               ; preds = %29
  store i32 0, i32* %9, align 4
  br label %35

35:                                               ; preds = %78, %34
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* @PTRS_PER_PMD, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %83

39:                                               ; preds = %35
  %40 = load i64, i64* %4, align 8
  %41 = load i64, i64* @max_low_pfn, align 8
  %42 = icmp uge i64 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %39
  br label %83

44:                                               ; preds = %39
  %45 = load i32*, i32** %6, align 8
  %46 = call i32* @resume_one_page_table_init(i32* %45)
  store i32* %46, i32** %7, align 8
  %47 = load i32*, i32** %7, align 8
  %48 = icmp ne i32* %47, null
  br i1 %48, label %52, label %49

49:                                               ; preds = %44
  %50 = load i32, i32* @ENOMEM, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %2, align 4
  br label %90

52:                                               ; preds = %44
  %53 = load i32*, i32** %7, align 8
  %54 = load i32, i32* @PTRS_PER_PTE, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  store i32* %56, i32** %10, align 8
  br label %57

57:                                               ; preds = %72, %52
  %58 = load i32*, i32** %7, align 8
  %59 = load i32*, i32** %10, align 8
  %60 = icmp ult i32* %58, %59
  br i1 %60, label %61, label %77

61:                                               ; preds = %57
  %62 = load i64, i64* %4, align 8
  %63 = load i64, i64* @max_low_pfn, align 8
  %64 = icmp uge i64 %62, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %61
  br label %77

66:                                               ; preds = %61
  %67 = load i32*, i32** %7, align 8
  %68 = load i64, i64* %4, align 8
  %69 = load i32, i32* @PAGE_KERNEL_EXEC, align 4
  %70 = call i32 @pfn_pte(i64 %68, i32 %69)
  %71 = call i32 @set_pte(i32* %67, i32 %70)
  br label %72

72:                                               ; preds = %66
  %73 = load i32*, i32** %7, align 8
  %74 = getelementptr inbounds i32, i32* %73, i32 1
  store i32* %74, i32** %7, align 8
  %75 = load i64, i64* %4, align 8
  %76 = add i64 %75, 1
  store i64 %76, i64* %4, align 8
  br label %57

77:                                               ; preds = %65, %57
  br label %78

78:                                               ; preds = %77
  %79 = load i32*, i32** %6, align 8
  %80 = getelementptr inbounds i32, i32* %79, i32 1
  store i32* %80, i32** %6, align 8
  %81 = load i32, i32* %9, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %9, align 4
  br label %35

83:                                               ; preds = %43, %35
  br label %84

84:                                               ; preds = %83, %33
  %85 = load i32*, i32** %5, align 8
  %86 = getelementptr inbounds i32, i32* %85, i32 1
  store i32* %86, i32** %5, align 8
  %87 = load i32, i32* %8, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %8, align 4
  br label %17

89:                                               ; preds = %17
  store i32 0, i32* %2, align 4
  br label %90

90:                                               ; preds = %89, %49, %26
  %91 = load i32, i32* %2, align 4
  ret i32 %91
}

declare dso_local i32 @pgd_index(i32) #1

declare dso_local i32* @resume_one_md_table_init(i32*) #1

declare dso_local i32* @resume_one_page_table_init(i32*) #1

declare dso_local i32 @set_pte(i32*, i32) #1

declare dso_local i32 @pfn_pte(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
