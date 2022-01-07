; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/mm/book3s64/extr_hash_utils.c___hash_page.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/mm/book3s64/extr_hash_utils.c___hash_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.mm_struct* }
%struct.mm_struct = type { i32 }

@_PAGE_PRESENT = common dso_local global i64 0, align 8
@_PAGE_READ = common dso_local global i64 0, align 8
@current = common dso_local global %struct.TYPE_2__* null, align 8
@VMALLOC_REGION_ID = common dso_local global i32 0, align 4
@IO_REGION_ID = common dso_local global i32 0, align 4
@init_mm = common dso_local global %struct.mm_struct zeroinitializer, align 4
@DSISR_NOHPTE = common dso_local global i64 0, align 8
@HPTE_NOHPTE_UPDATE = common dso_local global i64 0, align 8
@DSISR_ISSTORE = common dso_local global i64 0, align 8
@_PAGE_WRITE = common dso_local global i64 0, align 8
@_PAGE_PRIVILEGED = common dso_local global i64 0, align 8
@MSR_PR = common dso_local global i64 0, align 8
@USER_REGION_ID = common dso_local global i32 0, align 4
@_PAGE_EXEC = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__hash_page(i64 %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.mm_struct*, align 8
  %12 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %13 = load i64, i64* @_PAGE_PRESENT, align 8
  %14 = load i64, i64* @_PAGE_READ, align 8
  %15 = or i64 %13, %14
  store i64 %15, i64* %9, align 8
  store i64 0, i64* %10, align 8
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load %struct.mm_struct*, %struct.mm_struct** %17, align 8
  store %struct.mm_struct* %18, %struct.mm_struct** %11, align 8
  %19 = load i64, i64* %6, align 8
  %20 = call i32 @get_region_id(i64 %19)
  store i32 %20, i32* %12, align 4
  %21 = load i32, i32* %12, align 4
  %22 = load i32, i32* @VMALLOC_REGION_ID, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %28, label %24

24:                                               ; preds = %4
  %25 = load i32, i32* %12, align 4
  %26 = load i32, i32* @IO_REGION_ID, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %24, %4
  store %struct.mm_struct* @init_mm, %struct.mm_struct** %11, align 8
  br label %29

29:                                               ; preds = %28, %24
  %30 = load i64, i64* %7, align 8
  %31 = load i64, i64* @DSISR_NOHPTE, align 8
  %32 = and i64 %30, %31
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %29
  %35 = load i64, i64* @HPTE_NOHPTE_UPDATE, align 8
  %36 = load i64, i64* %10, align 8
  %37 = or i64 %36, %35
  store i64 %37, i64* %10, align 8
  br label %38

38:                                               ; preds = %34, %29
  %39 = load i64, i64* %7, align 8
  %40 = load i64, i64* @DSISR_ISSTORE, align 8
  %41 = and i64 %39, %40
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %38
  %44 = load i64, i64* @_PAGE_WRITE, align 8
  %45 = load i64, i64* %9, align 8
  %46 = or i64 %45, %44
  store i64 %46, i64* %9, align 8
  br label %47

47:                                               ; preds = %43, %38
  %48 = load i64, i64* @_PAGE_PRIVILEGED, align 8
  %49 = load i64, i64* %9, align 8
  %50 = or i64 %49, %48
  store i64 %50, i64* %9, align 8
  %51 = load i64, i64* %8, align 8
  %52 = load i64, i64* @MSR_PR, align 8
  %53 = and i64 %51, %52
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %59, label %55

55:                                               ; preds = %47
  %56 = load i32, i32* %12, align 4
  %57 = load i32, i32* @USER_REGION_ID, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %64

59:                                               ; preds = %55, %47
  %60 = load i64, i64* @_PAGE_PRIVILEGED, align 8
  %61 = xor i64 %60, -1
  %62 = load i64, i64* %9, align 8
  %63 = and i64 %62, %61
  store i64 %63, i64* %9, align 8
  br label %64

64:                                               ; preds = %59, %55
  %65 = load i64, i64* %5, align 8
  %66 = icmp eq i64 %65, 1024
  br i1 %66, label %67, label %71

67:                                               ; preds = %64
  %68 = load i64, i64* @_PAGE_EXEC, align 8
  %69 = load i64, i64* %9, align 8
  %70 = or i64 %69, %68
  store i64 %70, i64* %9, align 8
  br label %71

71:                                               ; preds = %67, %64
  %72 = load %struct.mm_struct*, %struct.mm_struct** %11, align 8
  %73 = load i64, i64* %6, align 8
  %74 = load i64, i64* %9, align 8
  %75 = load i64, i64* %5, align 8
  %76 = load i64, i64* %10, align 8
  %77 = call i32 @hash_page_mm(%struct.mm_struct* %72, i64 %73, i64 %74, i64 %75, i64 %76)
  ret i32 %77
}

declare dso_local i32 @get_region_id(i64) #1

declare dso_local i32 @hash_page_mm(%struct.mm_struct*, i64, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
