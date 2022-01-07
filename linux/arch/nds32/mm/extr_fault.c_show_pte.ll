; ModuleID = '/home/carl/AnghaBench/linux/arch/nds32/mm/extr_fault.c_show_pte.c'
source_filename = "/home/carl/AnghaBench/linux/arch/nds32/mm/extr_fault.c_show_pte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mm_struct = type { i32 }

@init_mm = common dso_local global %struct.mm_struct zeroinitializer, align 4
@.str = private unnamed_addr constant [10 x i8] c"pgd = %p\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"[%08lx] *pgd=%08lx\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"(bad)\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c", *pmd=%08lx\00", align 1
@CONFIG_HIGHMEM = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [13 x i8] c", *pte=%08lx\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @show_pte(%struct.mm_struct* %0, i64 %1) #0 {
  %3 = alloca %struct.mm_struct*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  store %struct.mm_struct* %0, %struct.mm_struct** %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load %struct.mm_struct*, %struct.mm_struct** %3, align 8
  %9 = icmp ne %struct.mm_struct* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  store %struct.mm_struct* @init_mm, %struct.mm_struct** %3, align 8
  br label %11

11:                                               ; preds = %10, %2
  %12 = load %struct.mm_struct*, %struct.mm_struct** %3, align 8
  %13 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 (i8*, ...) @pr_alert(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = load %struct.mm_struct*, %struct.mm_struct** %3, align 8
  %17 = load i64, i64* %4, align 8
  %18 = call i32* @pgd_offset(%struct.mm_struct* %16, i64 %17)
  store i32* %18, i32** %5, align 8
  %19 = load i64, i64* %4, align 8
  %20 = load i32*, i32** %5, align 8
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @pgd_val(i32 %21)
  %23 = call i32 (i8*, ...) @pr_alert(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i64 %19, i32 %22)
  br label %24

24:                                               ; preds = %11
  %25 = load i32*, i32** %5, align 8
  %26 = load i32, i32* %25, align 4
  %27 = call i64 @pgd_none(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  br label %72

30:                                               ; preds = %24
  %31 = load i32*, i32** %5, align 8
  %32 = load i32, i32* %31, align 4
  %33 = call i64 @pgd_bad(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %30
  %36 = call i32 (i8*, ...) @pr_alert(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  br label %72

37:                                               ; preds = %30
  %38 = load i32*, i32** %5, align 8
  %39 = load i64, i64* %4, align 8
  %40 = call i32* @pmd_offset(i32* %38, i64 %39)
  store i32* %40, i32** %6, align 8
  %41 = load i32*, i32** %6, align 8
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @pmd_val(i32 %42)
  %44 = call i32 (i8*, ...) @pr_alert(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i32 %43)
  %45 = load i32*, i32** %6, align 8
  %46 = load i32, i32* %45, align 4
  %47 = call i64 @pmd_none(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %37
  br label %72

50:                                               ; preds = %37
  %51 = load i32*, i32** %6, align 8
  %52 = load i32, i32* %51, align 4
  %53 = call i64 @pmd_bad(i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %50
  %56 = call i32 (i8*, ...) @pr_alert(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  br label %72

57:                                               ; preds = %50
  %58 = load i32, i32* @CONFIG_HIGHMEM, align 4
  %59 = call i64 @IS_ENABLED(i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %71

61:                                               ; preds = %57
  %62 = load i32*, i32** %6, align 8
  %63 = load i64, i64* %4, align 8
  %64 = call i32* @pte_offset_map(i32* %62, i64 %63)
  store i32* %64, i32** %7, align 8
  %65 = load i32*, i32** %7, align 8
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @pte_val(i32 %66)
  %68 = call i32 (i8*, ...) @pr_alert(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i32 %67)
  %69 = load i32*, i32** %7, align 8
  %70 = call i32 @pte_unmap(i32* %69)
  br label %71

71:                                               ; preds = %61, %57
  br label %72

72:                                               ; preds = %71, %55, %49, %35, %29
  %73 = call i32 (i8*, ...) @pr_alert(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  ret void
}

declare dso_local i32 @pr_alert(i8*, ...) #1

declare dso_local i32* @pgd_offset(%struct.mm_struct*, i64) #1

declare dso_local i32 @pgd_val(i32) #1

declare dso_local i64 @pgd_none(i32) #1

declare dso_local i64 @pgd_bad(i32) #1

declare dso_local i32* @pmd_offset(i32*, i64) #1

declare dso_local i32 @pmd_val(i32) #1

declare dso_local i64 @pmd_none(i32) #1

declare dso_local i64 @pmd_bad(i32) #1

declare dso_local i64 @IS_ENABLED(i32) #1

declare dso_local i32* @pte_offset_map(i32*, i64) #1

declare dso_local i32 @pte_val(i32) #1

declare dso_local i32 @pte_unmap(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
