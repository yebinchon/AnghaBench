; ModuleID = '/home/carl/AnghaBench/linux/arch/arm64/mm/extr_fault.c_show_pte.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm64/mm/extr_fault.c_show_pte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.mm_struct* }
%struct.mm_struct = type { i32 }

@current = common dso_local global %struct.TYPE_2__* null, align 8
@init_mm = common dso_local global %struct.mm_struct zeroinitializer, align 4
@.str = private unnamed_addr constant [48 x i8] c"[%016lx] user address but active_mm is swapper\0A\00", align 1
@.str.1 = private unnamed_addr constant [57 x i8] c"[%016lx] address between user and kernel address ranges\0A\00", align 1
@.str.2 = private unnamed_addr constant [51 x i8] c"%s pgtable: %luk pages, %llu-bit VAs, pgdp=%016lx\0A\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"swapper\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"user\00", align 1
@PAGE_SIZE = common dso_local global i32 0, align 4
@SZ_1K = common dso_local global i32 0, align 4
@vabits_actual = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [21 x i8] c"[%016lx] pgd=%016llx\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c", pud=%016llx\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c", pmd=%016llx\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c", pte=%016llx\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @show_pte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @show_pte(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.mm_struct*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %12 = load i64, i64* %2, align 8
  %13 = call i64 @is_ttbr0_addr(i64 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %25

15:                                               ; preds = %1
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load %struct.mm_struct*, %struct.mm_struct** %17, align 8
  store %struct.mm_struct* %18, %struct.mm_struct** %3, align 8
  %19 = load %struct.mm_struct*, %struct.mm_struct** %3, align 8
  %20 = icmp eq %struct.mm_struct* %19, @init_mm
  br i1 %20, label %21, label %24

21:                                               ; preds = %15
  %22 = load i64, i64* %2, align 8
  %23 = call i32 (i8*, ...) @pr_alert(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i64 %22)
  br label %115

24:                                               ; preds = %15
  br label %34

25:                                               ; preds = %1
  %26 = load i64, i64* %2, align 8
  %27 = call i64 @is_ttbr1_addr(i64 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %25
  store %struct.mm_struct* @init_mm, %struct.mm_struct** %3, align 8
  br label %33

30:                                               ; preds = %25
  %31 = load i64, i64* %2, align 8
  %32 = call i32 (i8*, ...) @pr_alert(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0), i64 %31)
  br label %115

33:                                               ; preds = %29
  br label %34

34:                                               ; preds = %33, %24
  %35 = load %struct.mm_struct*, %struct.mm_struct** %3, align 8
  %36 = icmp eq %struct.mm_struct* %35, @init_mm
  %37 = zext i1 %36 to i64
  %38 = select i1 %36, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0)
  %39 = load i32, i32* @PAGE_SIZE, align 4
  %40 = load i32, i32* @SZ_1K, align 4
  %41 = sdiv i32 %39, %40
  %42 = load i32, i32* @vabits_actual, align 4
  %43 = load %struct.mm_struct*, %struct.mm_struct** %3, align 8
  %44 = call i32 @mm_to_pgd_phys(%struct.mm_struct* %43)
  %45 = call i32 (i8*, ...) @pr_alert(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0), i8* %38, i32 %41, i32 %42, i32 %44)
  %46 = load %struct.mm_struct*, %struct.mm_struct** %3, align 8
  %47 = load i64, i64* %2, align 8
  %48 = call i32* @pgd_offset(%struct.mm_struct* %46, i64 %47)
  store i32* %48, i32** %4, align 8
  %49 = load i32*, i32** %4, align 8
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @READ_ONCE(i32 %50)
  store i32 %51, i32* %5, align 4
  %52 = load i64, i64* %2, align 8
  %53 = load i32, i32* %5, align 4
  %54 = call i32 @pgd_val(i32 %53)
  %55 = call i32 (i8*, ...) @pr_alert(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i64 %52, i32 %54)
  br label %56

56:                                               ; preds = %34
  %57 = load i32, i32* %5, align 4
  %58 = call i64 @pgd_none(i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %64, label %60

60:                                               ; preds = %56
  %61 = load i32, i32* %5, align 4
  %62 = call i64 @pgd_bad(i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %60, %56
  br label %113

65:                                               ; preds = %60
  %66 = load i32*, i32** %4, align 8
  %67 = load i64, i64* %2, align 8
  %68 = call i32* @pud_offset(i32* %66, i64 %67)
  store i32* %68, i32** %6, align 8
  %69 = load i32*, i32** %6, align 8
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @READ_ONCE(i32 %70)
  store i32 %71, i32* %7, align 4
  %72 = load i32, i32* %7, align 4
  %73 = call i32 @pud_val(i32 %72)
  %74 = call i32 (i8*, ...) @pr_cont(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0), i32 %73)
  %75 = load i32, i32* %7, align 4
  %76 = call i64 @pud_none(i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %82, label %78

78:                                               ; preds = %65
  %79 = load i32, i32* %7, align 4
  %80 = call i64 @pud_bad(i32 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %78, %65
  br label %113

83:                                               ; preds = %78
  %84 = load i32*, i32** %6, align 8
  %85 = load i64, i64* %2, align 8
  %86 = call i32* @pmd_offset(i32* %84, i64 %85)
  store i32* %86, i32** %8, align 8
  %87 = load i32*, i32** %8, align 8
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @READ_ONCE(i32 %88)
  store i32 %89, i32* %9, align 4
  %90 = load i32, i32* %9, align 4
  %91 = call i32 @pmd_val(i32 %90)
  %92 = call i32 (i8*, ...) @pr_cont(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i32 %91)
  %93 = load i32, i32* %9, align 4
  %94 = call i64 @pmd_none(i32 %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %100, label %96

96:                                               ; preds = %83
  %97 = load i32, i32* %9, align 4
  %98 = call i64 @pmd_bad(i32 %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %96, %83
  br label %113

101:                                              ; preds = %96
  %102 = load i32*, i32** %8, align 8
  %103 = load i64, i64* %2, align 8
  %104 = call i32* @pte_offset_map(i32* %102, i64 %103)
  store i32* %104, i32** %10, align 8
  %105 = load i32*, i32** %10, align 8
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @READ_ONCE(i32 %106)
  store i32 %107, i32* %11, align 4
  %108 = load i32, i32* %11, align 4
  %109 = call i32 @pte_val(i32 %108)
  %110 = call i32 (i8*, ...) @pr_cont(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0), i32 %109)
  %111 = load i32*, i32** %10, align 8
  %112 = call i32 @pte_unmap(i32* %111)
  br label %113

113:                                              ; preds = %101, %100, %82, %64
  %114 = call i32 (i8*, ...) @pr_cont(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0))
  br label %115

115:                                              ; preds = %113, %30, %21
  ret void
}

declare dso_local i64 @is_ttbr0_addr(i64) #1

declare dso_local i32 @pr_alert(i8*, ...) #1

declare dso_local i64 @is_ttbr1_addr(i64) #1

declare dso_local i32 @mm_to_pgd_phys(%struct.mm_struct*) #1

declare dso_local i32* @pgd_offset(%struct.mm_struct*, i64) #1

declare dso_local i32 @READ_ONCE(i32) #1

declare dso_local i32 @pgd_val(i32) #1

declare dso_local i64 @pgd_none(i32) #1

declare dso_local i64 @pgd_bad(i32) #1

declare dso_local i32* @pud_offset(i32*, i64) #1

declare dso_local i32 @pr_cont(i8*, ...) #1

declare dso_local i32 @pud_val(i32) #1

declare dso_local i64 @pud_none(i32) #1

declare dso_local i64 @pud_bad(i32) #1

declare dso_local i32* @pmd_offset(i32*, i64) #1

declare dso_local i32 @pmd_val(i32) #1

declare dso_local i64 @pmd_none(i32) #1

declare dso_local i64 @pmd_bad(i32) #1

declare dso_local i32* @pte_offset_map(i32*, i64) #1

declare dso_local i32 @pte_val(i32) #1

declare dso_local i32 @pte_unmap(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
