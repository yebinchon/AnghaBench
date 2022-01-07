; ModuleID = '/home/carl/AnghaBench/jerryscript/jerry-core/ecma/builtin-objects/extr_ecma-builtin-helpers-sort.c_ecma_builtin_helper_array_heap_sort_helper.c'
source_filename = "/home/carl/AnghaBench/jerryscript/jerry-core/ecma/builtin-objects/extr_ecma-builtin-helpers-sort.c_ecma_builtin_helper_array_heap_sort_helper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ECMA_VALUE_EMPTY = common dso_local global i32 0, align 4
@value = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ecma_builtin_helper_array_heap_sort_helper(i32* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %13 = load i32, i32* @ECMA_VALUE_EMPTY, align 4
  store i32 %13, i32* %9, align 4
  %14 = load i32, i32* %6, align 4
  %15 = sdiv i32 %14, 2
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* %10, align 4
  br label %17

17:                                               ; preds = %39, %4
  %18 = load i32, i32* %10, align 4
  %19 = icmp sgt i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %17
  %21 = load i32, i32* %9, align 4
  %22 = call i64 @ecma_is_value_empty(i32 %21)
  %23 = icmp ne i64 %22, 0
  br label %24

24:                                               ; preds = %20, %17
  %25 = phi i1 [ false, %17 ], [ %23, %20 ]
  br i1 %25, label %26, label %42

26:                                               ; preds = %24
  %27 = load i32, i32* @value, align 4
  %28 = load i32*, i32** %5, align 8
  %29 = load i32, i32* %10, align 4
  %30 = sub nsw i32 %29, 1
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* %8, align 4
  %34 = call i32 @ecma_builtin_helper_array_to_heap(i32* %28, i32 %30, i32 %31, i32 %32, i32 %33)
  %35 = load i32, i32* %9, align 4
  %36 = call i32 @ECMA_TRY_CATCH(i32 %27, i32 %34, i32 %35)
  %37 = load i32, i32* @value, align 4
  %38 = call i32 @ECMA_FINALIZE(i32 %37)
  br label %39

39:                                               ; preds = %26
  %40 = load i32, i32* %10, align 4
  %41 = add nsw i32 %40, -1
  store i32 %41, i32* %10, align 4
  br label %17

42:                                               ; preds = %24
  %43 = load i32, i32* %6, align 4
  store i32 %43, i32* %11, align 4
  br label %44

44:                                               ; preds = %80, %42
  %45 = load i32, i32* %11, align 4
  %46 = icmp sgt i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %44
  %48 = load i32, i32* %9, align 4
  %49 = call i64 @ecma_is_value_empty(i32 %48)
  %50 = icmp ne i64 %49, 0
  br label %51

51:                                               ; preds = %47, %44
  %52 = phi i1 [ false, %44 ], [ %50, %47 ]
  br i1 %52, label %53, label %83

53:                                               ; preds = %51
  %54 = load i32*, i32** %5, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 0
  %56 = load i32, i32* %55, align 4
  store i32 %56, i32* %12, align 4
  %57 = load i32*, i32** %5, align 8
  %58 = load i32, i32* %11, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = load i32*, i32** %5, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 0
  store i32 %61, i32* %63, align 4
  %64 = load i32, i32* %12, align 4
  %65 = load i32*, i32** %5, align 8
  %66 = load i32, i32* %11, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  store i32 %64, i32* %68, align 4
  %69 = load i32, i32* @value, align 4
  %70 = load i32*, i32** %5, align 8
  %71 = load i32, i32* %11, align 4
  %72 = sub nsw i32 %71, 1
  %73 = load i32, i32* %7, align 4
  %74 = load i32, i32* %8, align 4
  %75 = call i32 @ecma_builtin_helper_array_to_heap(i32* %70, i32 0, i32 %72, i32 %73, i32 %74)
  %76 = load i32, i32* %9, align 4
  %77 = call i32 @ECMA_TRY_CATCH(i32 %69, i32 %75, i32 %76)
  %78 = load i32, i32* @value, align 4
  %79 = call i32 @ECMA_FINALIZE(i32 %78)
  br label %80

80:                                               ; preds = %53
  %81 = load i32, i32* %11, align 4
  %82 = add nsw i32 %81, -1
  store i32 %82, i32* %11, align 4
  br label %44

83:                                               ; preds = %51
  %84 = load i32, i32* %9, align 4
  ret i32 %84
}

declare dso_local i64 @ecma_is_value_empty(i32) #1

declare dso_local i32 @ECMA_TRY_CATCH(i32, i32, i32) #1

declare dso_local i32 @ecma_builtin_helper_array_to_heap(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @ECMA_FINALIZE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
