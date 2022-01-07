; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/mm/extr_pgalloc.c_base_segment_walk.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/mm/extr_pgalloc.c_base_segment_walk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@_SEGMENT_INDEX = common dso_local global i64 0, align 8
@_SEGMENT_SHIFT = common dso_local global i64 0, align 8
@_SEGMENT_ENTRY_INVALID = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@_SEGMENT_ENTRY = common dso_local global i64 0, align 8
@_SEGMENT_ENTRY_ORIGIN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64, i64, i32)* @base_segment_walk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @base_segment_walk(i64 %0, i64 %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store i64 %0, i64* %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load i64, i64* %6, align 8
  %15 = inttoptr i64 %14 to i64*
  store i64* %15, i64** %10, align 8
  %16 = load i64, i64* %7, align 8
  %17 = load i64, i64* @_SEGMENT_INDEX, align 8
  %18 = and i64 %16, %17
  %19 = load i64, i64* @_SEGMENT_SHIFT, align 8
  %20 = lshr i64 %18, %19
  %21 = load i64*, i64** %10, align 8
  %22 = getelementptr inbounds i64, i64* %21, i64 %20
  store i64* %22, i64** %10, align 8
  br label %23

23:                                               ; preds = %70, %4
  %24 = load i64, i64* %7, align 8
  %25 = load i64, i64* %8, align 8
  %26 = call i64 @base_segment_addr_end(i64 %24, i64 %25)
  store i64 %26, i64* %11, align 8
  %27 = load i64*, i64** %10, align 8
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @_SEGMENT_ENTRY_INVALID, align 8
  %30 = and i64 %28, %29
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %48

32:                                               ; preds = %23
  %33 = load i32, i32* %9, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %32
  br label %70

36:                                               ; preds = %32
  %37 = call i64 (...) @base_pgt_alloc()
  store i64 %37, i64* %12, align 8
  %38 = load i64, i64* %12, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %36
  %41 = load i32, i32* @ENOMEM, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %5, align 4
  br label %78

43:                                               ; preds = %36
  %44 = load i64, i64* %12, align 8
  %45 = load i64, i64* @_SEGMENT_ENTRY, align 8
  %46 = or i64 %44, %45
  %47 = load i64*, i64** %10, align 8
  store i64 %46, i64* %47, align 8
  br label %48

48:                                               ; preds = %43, %23
  %49 = load i64*, i64** %10, align 8
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @_SEGMENT_ENTRY_ORIGIN, align 8
  %52 = and i64 %50, %51
  store i64 %52, i64* %12, align 8
  %53 = load i64, i64* %12, align 8
  %54 = load i64, i64* %7, align 8
  %55 = load i64, i64* %11, align 8
  %56 = load i32, i32* %9, align 4
  %57 = call i32 @base_page_walk(i64 %53, i64 %54, i64 %55, i32 %56)
  store i32 %57, i32* %13, align 4
  %58 = load i32, i32* %13, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %48
  %61 = load i32, i32* %13, align 4
  store i32 %61, i32* %5, align 4
  br label %78

62:                                               ; preds = %48
  %63 = load i32, i32* %9, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %68, label %65

65:                                               ; preds = %62
  %66 = load i64, i64* %12, align 8
  %67 = call i32 @base_pgt_free(i64 %66)
  br label %68

68:                                               ; preds = %65, %62
  %69 = call i32 (...) @cond_resched()
  br label %70

70:                                               ; preds = %68, %35
  %71 = load i64*, i64** %10, align 8
  %72 = getelementptr inbounds i64, i64* %71, i32 1
  store i64* %72, i64** %10, align 8
  %73 = load i64, i64* %11, align 8
  store i64 %73, i64* %7, align 8
  %74 = load i64, i64* %7, align 8
  %75 = load i64, i64* %8, align 8
  %76 = icmp ult i64 %74, %75
  br i1 %76, label %23, label %77

77:                                               ; preds = %70
  store i32 0, i32* %5, align 4
  br label %78

78:                                               ; preds = %77, %60, %40
  %79 = load i32, i32* %5, align 4
  ret i32 %79
}

declare dso_local i64 @base_segment_addr_end(i64, i64) #1

declare dso_local i64 @base_pgt_alloc(...) #1

declare dso_local i32 @base_page_walk(i64, i64, i64, i32) #1

declare dso_local i32 @base_pgt_free(i64) #1

declare dso_local i32 @cond_resched(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
