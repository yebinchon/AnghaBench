; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/mm/extr_pgtable.c_preallocate_pmds.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/mm/extr_pgtable.c_preallocate_pmds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mm_struct = type { i32 }

@GFP_PGTABLE_USER = common dso_local global i32 0, align 4
@init_mm = common dso_local global %struct.mm_struct zeroinitializer, align 4
@__GFP_ACCOUNT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mm_struct*, i32**, i32)* @preallocate_pmds to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @preallocate_pmds(%struct.mm_struct* %0, i32** %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mm_struct*, align 8
  %6 = alloca i32**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  store %struct.mm_struct* %0, %struct.mm_struct** %5, align 8
  store i32** %1, i32*** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %9, align 4
  %12 = load i32, i32* @GFP_PGTABLE_USER, align 4
  store i32 %12, i32* %10, align 4
  %13 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %14 = icmp eq %struct.mm_struct* %13, @init_mm
  br i1 %14, label %15, label %20

15:                                               ; preds = %3
  %16 = load i32, i32* @__GFP_ACCOUNT, align 4
  %17 = xor i32 %16, -1
  %18 = load i32, i32* %10, align 4
  %19 = and i32 %18, %17
  store i32 %19, i32* %10, align 4
  br label %20

20:                                               ; preds = %15, %3
  store i32 0, i32* %8, align 4
  br label %21

21:                                               ; preds = %56, %20
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* %7, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %59

25:                                               ; preds = %21
  %26 = load i32, i32* %10, align 4
  %27 = call i64 @__get_free_page(i32 %26)
  %28 = inttoptr i64 %27 to i32*
  store i32* %28, i32** %11, align 8
  %29 = load i32*, i32** %11, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %25
  store i32 1, i32* %9, align 4
  br label %32

32:                                               ; preds = %31, %25
  %33 = load i32*, i32** %11, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %35, label %44

35:                                               ; preds = %32
  %36 = load i32*, i32** %11, align 8
  %37 = call i32 @virt_to_page(i32* %36)
  %38 = call i32 @pgtable_pmd_page_ctor(i32 %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %44, label %40

40:                                               ; preds = %35
  %41 = load i32*, i32** %11, align 8
  %42 = ptrtoint i32* %41 to i64
  %43 = call i32 @free_page(i64 %42)
  store i32* null, i32** %11, align 8
  store i32 1, i32* %9, align 4
  br label %44

44:                                               ; preds = %40, %35, %32
  %45 = load i32*, i32** %11, align 8
  %46 = icmp ne i32* %45, null
  br i1 %46, label %47, label %50

47:                                               ; preds = %44
  %48 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %49 = call i32 @mm_inc_nr_pmds(%struct.mm_struct* %48)
  br label %50

50:                                               ; preds = %47, %44
  %51 = load i32*, i32** %11, align 8
  %52 = load i32**, i32*** %6, align 8
  %53 = load i32, i32* %8, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32*, i32** %52, i64 %54
  store i32* %51, i32** %55, align 8
  br label %56

56:                                               ; preds = %50
  %57 = load i32, i32* %8, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %8, align 4
  br label %21

59:                                               ; preds = %21
  %60 = load i32, i32* %9, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %69

62:                                               ; preds = %59
  %63 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %64 = load i32**, i32*** %6, align 8
  %65 = load i32, i32* %7, align 4
  %66 = call i32 @free_pmds(%struct.mm_struct* %63, i32** %64, i32 %65)
  %67 = load i32, i32* @ENOMEM, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %4, align 4
  br label %70

69:                                               ; preds = %59
  store i32 0, i32* %4, align 4
  br label %70

70:                                               ; preds = %69, %62
  %71 = load i32, i32* %4, align 4
  ret i32 %71
}

declare dso_local i64 @__get_free_page(i32) #1

declare dso_local i32 @pgtable_pmd_page_ctor(i32) #1

declare dso_local i32 @virt_to_page(i32*) #1

declare dso_local i32 @free_page(i64) #1

declare dso_local i32 @mm_inc_nr_pmds(%struct.mm_struct*) #1

declare dso_local i32 @free_pmds(%struct.mm_struct*, i32**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
