; ModuleID = '/home/carl/AnghaBench/linux/arch/m68k/sun3/extr_sun3dvma.c_dvma_malloc_align.c'
source_filename = "/home/carl/AnghaBench/linux/arch/m68k/sun3/extr_sun3dvma.c_dvma_malloc_align.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [31 x i8] c"dvma_malloc request %lx bytes\0A\00", align 1
@DVMA_PAGE_SIZE = common dso_local global i32 0, align 4
@DVMA_PAGE_MASK = common dso_local global i64 0, align 8
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"mapped %08lx bytes %08lx kern -> %08lx bus\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @dvma_malloc_align(i64 %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load i64, i64* %4, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  store i8* null, i8** %3, align 8
  br label %62

12:                                               ; preds = %2
  %13 = load i64, i64* %4, align 8
  %14 = call i32 (i8*, i64, ...) @pr_debug(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i64 %13)
  %15 = load i64, i64* %4, align 8
  %16 = load i32, i32* @DVMA_PAGE_SIZE, align 4
  %17 = sub nsw i32 %16, 1
  %18 = sext i32 %17 to i64
  %19 = add i64 %15, %18
  %20 = load i64, i64* @DVMA_PAGE_MASK, align 8
  %21 = and i64 %19, %20
  store i64 %21, i64* %4, align 8
  %22 = load i32, i32* @GFP_ATOMIC, align 4
  %23 = load i64, i64* %4, align 8
  %24 = call i32 @get_order(i64 %23)
  %25 = call i64 @__get_free_pages(i32 %22, i32 %24)
  store i64 %25, i64* %6, align 8
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %12
  store i8* null, i8** %3, align 8
  br label %62

28:                                               ; preds = %12
  %29 = load i64, i64* %6, align 8
  %30 = load i64, i64* %4, align 8
  %31 = load i64, i64* %5, align 8
  %32 = call i64 @dvma_map_align(i64 %29, i64 %30, i64 %31)
  store i64 %32, i64* %7, align 8
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %28
  %35 = load i64, i64* %6, align 8
  %36 = load i64, i64* %4, align 8
  %37 = call i32 @get_order(i64 %36)
  %38 = call i32 @free_pages(i64 %35, i32 %37)
  store i8* null, i8** %3, align 8
  br label %62

39:                                               ; preds = %28
  %40 = load i64, i64* %7, align 8
  %41 = call i64 @dvma_btov(i64 %40)
  store i64 %41, i64* %8, align 8
  %42 = load i64, i64* %6, align 8
  %43 = load i64, i64* %8, align 8
  %44 = load i64, i64* %4, align 8
  %45 = call i64 @dvma_map_cpu(i64 %42, i64 %43, i64 %44)
  %46 = icmp slt i64 %45, 0
  br i1 %46, label %47, label %55

47:                                               ; preds = %39
  %48 = load i64, i64* %7, align 8
  %49 = inttoptr i64 %48 to i8*
  %50 = call i32 @dvma_unmap(i8* %49)
  %51 = load i64, i64* %6, align 8
  %52 = load i64, i64* %4, align 8
  %53 = call i32 @get_order(i64 %52)
  %54 = call i32 @free_pages(i64 %51, i32 %53)
  store i8* null, i8** %3, align 8
  br label %62

55:                                               ; preds = %39
  %56 = load i64, i64* %4, align 8
  %57 = load i64, i64* %6, align 8
  %58 = load i64, i64* %7, align 8
  %59 = call i32 (i8*, i64, ...) @pr_debug(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i64 %56, i64 %57, i64 %58)
  %60 = load i64, i64* %8, align 8
  %61 = inttoptr i64 %60 to i8*
  store i8* %61, i8** %3, align 8
  br label %62

62:                                               ; preds = %55, %47, %34, %27, %11
  %63 = load i8*, i8** %3, align 8
  ret i8* %63
}

declare dso_local i32 @pr_debug(i8*, i64, ...) #1

declare dso_local i64 @__get_free_pages(i32, i32) #1

declare dso_local i32 @get_order(i64) #1

declare dso_local i64 @dvma_map_align(i64, i64, i64) #1

declare dso_local i32 @free_pages(i64, i32) #1

declare dso_local i64 @dvma_btov(i64) #1

declare dso_local i64 @dvma_map_cpu(i64, i64, i64) #1

declare dso_local i32 @dvma_unmap(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
