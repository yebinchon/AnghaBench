; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/mm/extr_fault.c_dump_pagetable.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/mm/extr_fault.c_dump_pagetable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"PGD %lx \00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"P4D %lx \00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"PUD %lx \00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"PMD %lx \00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"PTE %lx\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"BAD\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @dump_pagetable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dump_pagetable(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  store i64 %0, i64* %2, align 8
  %9 = call i32 (...) @read_cr3_pa()
  %10 = call i32* @__va(i32 %9)
  store i32* %10, i32** %3, align 8
  %11 = load i32*, i32** %3, align 8
  %12 = load i64, i64* %2, align 8
  %13 = call i32 @pgd_index(i64 %12)
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i32, i32* %11, i64 %14
  store i32* %15, i32** %4, align 8
  %16 = load i32*, i32** %4, align 8
  %17 = call i64 @bad_address(i32* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %1
  br label %114

20:                                               ; preds = %1
  %21 = load i32*, i32** %4, align 8
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @pgd_val(i32 %22)
  %24 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %23)
  %25 = load i32*, i32** %4, align 8
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @pgd_present(i32 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %20
  br label %112

30:                                               ; preds = %20
  %31 = load i32*, i32** %4, align 8
  %32 = load i64, i64* %2, align 8
  %33 = call i32* @p4d_offset(i32* %31, i64 %32)
  store i32* %33, i32** %5, align 8
  %34 = load i32*, i32** %5, align 8
  %35 = call i64 @bad_address(i32* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %30
  br label %114

38:                                               ; preds = %30
  %39 = load i32*, i32** %5, align 8
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @p4d_val(i32 %40)
  %42 = call i32 (i8*, ...) @pr_cont(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %41)
  %43 = load i32*, i32** %5, align 8
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @p4d_present(i32 %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %38
  %48 = load i32*, i32** %5, align 8
  %49 = load i32, i32* %48, align 4
  %50 = call i64 @p4d_large(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %47, %38
  br label %112

53:                                               ; preds = %47
  %54 = load i32*, i32** %5, align 8
  %55 = load i64, i64* %2, align 8
  %56 = call i32* @pud_offset(i32* %54, i64 %55)
  store i32* %56, i32** %6, align 8
  %57 = load i32*, i32** %6, align 8
  %58 = call i64 @bad_address(i32* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %53
  br label %114

61:                                               ; preds = %53
  %62 = load i32*, i32** %6, align 8
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @pud_val(i32 %63)
  %65 = call i32 (i8*, ...) @pr_cont(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 %64)
  %66 = load i32*, i32** %6, align 8
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @pud_present(i32 %67)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %61
  %71 = load i32*, i32** %6, align 8
  %72 = load i32, i32* %71, align 4
  %73 = call i64 @pud_large(i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %70, %61
  br label %112

76:                                               ; preds = %70
  %77 = load i32*, i32** %6, align 8
  %78 = load i64, i64* %2, align 8
  %79 = call i32* @pmd_offset(i32* %77, i64 %78)
  store i32* %79, i32** %7, align 8
  %80 = load i32*, i32** %7, align 8
  %81 = call i64 @bad_address(i32* %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %76
  br label %114

84:                                               ; preds = %76
  %85 = load i32*, i32** %7, align 8
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @pmd_val(i32 %86)
  %88 = call i32 (i8*, ...) @pr_cont(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 %87)
  %89 = load i32*, i32** %7, align 8
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @pmd_present(i32 %90)
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %98

93:                                               ; preds = %84
  %94 = load i32*, i32** %7, align 8
  %95 = load i32, i32* %94, align 4
  %96 = call i64 @pmd_large(i32 %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %93, %84
  br label %112

99:                                               ; preds = %93
  %100 = load i32*, i32** %7, align 8
  %101 = load i64, i64* %2, align 8
  %102 = call i32* @pte_offset_kernel(i32* %100, i64 %101)
  store i32* %102, i32** %8, align 8
  %103 = load i32*, i32** %8, align 8
  %104 = call i64 @bad_address(i32* %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %99
  br label %114

107:                                              ; preds = %99
  %108 = load i32*, i32** %8, align 8
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @pte_val(i32 %109)
  %111 = call i32 (i8*, ...) @pr_cont(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32 %110)
  br label %112

112:                                              ; preds = %107, %98, %75, %52, %29
  %113 = call i32 (i8*, ...) @pr_cont(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  br label %116

114:                                              ; preds = %106, %83, %60, %37, %19
  %115 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  br label %116

116:                                              ; preds = %114, %112
  ret void
}

declare dso_local i32* @__va(i32) #1

declare dso_local i32 @read_cr3_pa(...) #1

declare dso_local i32 @pgd_index(i64) #1

declare dso_local i64 @bad_address(i32*) #1

declare dso_local i32 @pr_info(i8*, ...) #1

declare dso_local i32 @pgd_val(i32) #1

declare dso_local i32 @pgd_present(i32) #1

declare dso_local i32* @p4d_offset(i32*, i64) #1

declare dso_local i32 @pr_cont(i8*, ...) #1

declare dso_local i32 @p4d_val(i32) #1

declare dso_local i32 @p4d_present(i32) #1

declare dso_local i64 @p4d_large(i32) #1

declare dso_local i32* @pud_offset(i32*, i64) #1

declare dso_local i32 @pud_val(i32) #1

declare dso_local i32 @pud_present(i32) #1

declare dso_local i64 @pud_large(i32) #1

declare dso_local i32* @pmd_offset(i32*, i64) #1

declare dso_local i32 @pmd_val(i32) #1

declare dso_local i32 @pmd_present(i32) #1

declare dso_local i64 @pmd_large(i32) #1

declare dso_local i32* @pte_offset_kernel(i32*, i64) #1

declare dso_local i32 @pte_val(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
