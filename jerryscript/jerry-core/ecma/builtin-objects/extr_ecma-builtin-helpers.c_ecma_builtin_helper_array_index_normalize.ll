; ModuleID = '/home/carl/AnghaBench/jerryscript/jerry-core/ecma/builtin-objects/extr_ecma-builtin-helpers.c_ecma_builtin_helper_array_index_normalize.c'
source_filename = "/home/carl/AnghaBench/jerryscript/jerry-core/ecma/builtin-objects/extr_ecma-builtin-helpers.c_ecma_builtin_helper_array_index_normalize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ecma_builtin_helper_array_index_normalize(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %4, align 4
  %10 = call i32 @ecma_number_is_nan(i32 %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %91, label %12

12:                                               ; preds = %3
  %13 = load i32, i32* %4, align 4
  %14 = call i64 @ecma_number_is_zero(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %12
  store i32 0, i32* %7, align 4
  br label %90

17:                                               ; preds = %12
  %18 = load i32, i32* %4, align 4
  %19 = call i64 @ecma_number_is_infinity(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %44

21:                                               ; preds = %17
  %22 = load i32, i32* %6, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %34

24:                                               ; preds = %21
  %25 = load i32, i32* %4, align 4
  %26 = call i64 @ecma_number_is_negative(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %24
  br label %32

29:                                               ; preds = %24
  %30 = load i32, i32* %5, align 4
  %31 = sub nsw i32 %30, 1
  br label %32

32:                                               ; preds = %29, %28
  %33 = phi i32 [ -1, %28 ], [ %31, %29 ]
  store i32 %33, i32* %7, align 4
  br label %43

34:                                               ; preds = %21
  %35 = load i32, i32* %4, align 4
  %36 = call i64 @ecma_number_is_negative(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %34
  br label %41

39:                                               ; preds = %34
  %40 = load i32, i32* %5, align 4
  br label %41

41:                                               ; preds = %39, %38
  %42 = phi i32 [ 0, %38 ], [ %40, %39 ]
  store i32 %42, i32* %7, align 4
  br label %43

43:                                               ; preds = %41, %32
  br label %89

44:                                               ; preds = %17
  %45 = load i32, i32* %4, align 4
  %46 = call i64 @ecma_number_is_negative(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %70

48:                                               ; preds = %44
  %49 = load i32, i32* %4, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %8, align 4
  %51 = load i32, i32* %6, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %48
  %54 = load i32, i32* %5, align 4
  %55 = load i32, i32* %8, align 4
  %56 = call i32 @ecma_number_to_uint32(i32 %55)
  %57 = sub nsw i32 %54, %56
  store i32 %57, i32* %7, align 4
  br label %69

58:                                               ; preds = %48
  %59 = load i32, i32* %8, align 4
  %60 = load i32, i32* %5, align 4
  %61 = icmp sgt i32 %59, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %58
  store i32 0, i32* %7, align 4
  br label %68

63:                                               ; preds = %58
  %64 = load i32, i32* %5, align 4
  %65 = load i32, i32* %8, align 4
  %66 = call i32 @ecma_number_to_uint32(i32 %65)
  %67 = sub nsw i32 %64, %66
  store i32 %67, i32* %7, align 4
  br label %68

68:                                               ; preds = %63, %62
  br label %69

69:                                               ; preds = %68, %53
  br label %88

70:                                               ; preds = %44
  %71 = load i32, i32* %4, align 4
  %72 = load i32, i32* %5, align 4
  %73 = icmp sgt i32 %71, %72
  br i1 %73, label %74, label %84

74:                                               ; preds = %70
  %75 = load i32, i32* %6, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %74
  %78 = load i32, i32* %5, align 4
  %79 = sub nsw i32 %78, 1
  br label %82

80:                                               ; preds = %74
  %81 = load i32, i32* %5, align 4
  br label %82

82:                                               ; preds = %80, %77
  %83 = phi i32 [ %79, %77 ], [ %81, %80 ]
  store i32 %83, i32* %7, align 4
  br label %87

84:                                               ; preds = %70
  %85 = load i32, i32* %4, align 4
  %86 = call i32 @ecma_number_to_uint32(i32 %85)
  store i32 %86, i32* %7, align 4
  br label %87

87:                                               ; preds = %84, %82
  br label %88

88:                                               ; preds = %87, %69
  br label %89

89:                                               ; preds = %88, %43
  br label %90

90:                                               ; preds = %89, %16
  br label %92

91:                                               ; preds = %3
  store i32 0, i32* %7, align 4
  br label %92

92:                                               ; preds = %91, %90
  %93 = load i32, i32* %7, align 4
  ret i32 %93
}

declare dso_local i32 @ecma_number_is_nan(i32) #1

declare dso_local i64 @ecma_number_is_zero(i32) #1

declare dso_local i64 @ecma_number_is_infinity(i32) #1

declare dso_local i64 @ecma_number_is_negative(i32) #1

declare dso_local i32 @ecma_number_to_uint32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
