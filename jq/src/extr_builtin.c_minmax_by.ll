; ModuleID = '/home/carl/AnghaBench/jq/src/extr_builtin.c_minmax_by.c'
source_filename = "/home/carl/AnghaBench/jq/src/extr_builtin.c_minmax_by.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@JV_KIND_ARRAY = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c"cannot be iterated over\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"have wrong length\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @minmax_by to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @minmax_by(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %13 = load i32, i32* %5, align 4
  %14 = call i64 @jv_get_kind(i32 %13)
  %15 = load i64, i64* @JV_KIND_ARRAY, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %21

17:                                               ; preds = %3
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @type_error2(i32 %18, i32 %19, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  store i32 %20, i32* %4, align 4
  br label %108

21:                                               ; preds = %3
  %22 = load i32, i32* %6, align 4
  %23 = call i64 @jv_get_kind(i32 %22)
  %24 = load i64, i64* @JV_KIND_ARRAY, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %30

26:                                               ; preds = %21
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @type_error2(i32 %27, i32 %28, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  store i32 %29, i32* %4, align 4
  br label %108

30:                                               ; preds = %21
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @jv_copy(i32 %31)
  %33 = call i32 @jv_array_length(i32 %32)
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @jv_copy(i32 %34)
  %36 = call i32 @jv_array_length(i32 %35)
  %37 = icmp ne i32 %33, %36
  br i1 %37, label %38, label %42

38:                                               ; preds = %30
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* %6, align 4
  %41 = call i32 @type_error2(i32 %39, i32 %40, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  store i32 %41, i32* %4, align 4
  br label %108

42:                                               ; preds = %30
  %43 = load i32, i32* %5, align 4
  %44 = call i32 @jv_copy(i32 %43)
  %45 = call i32 @jv_array_length(i32 %44)
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %42
  %48 = load i32, i32* %5, align 4
  %49 = call i32 @jv_free(i32 %48)
  %50 = load i32, i32* %6, align 4
  %51 = call i32 @jv_free(i32 %50)
  %52 = call i32 (...) @jv_null()
  store i32 %52, i32* %4, align 4
  br label %108

53:                                               ; preds = %42
  %54 = load i32, i32* %5, align 4
  %55 = call i32 @jv_copy(i32 %54)
  %56 = call i32 @jv_array_get(i32 %55, i32 0)
  store i32 %56, i32* %8, align 4
  %57 = load i32, i32* %6, align 4
  %58 = call i32 @jv_copy(i32 %57)
  %59 = call i32 @jv_array_get(i32 %58, i32 0)
  store i32 %59, i32* %9, align 4
  store i32 1, i32* %10, align 4
  br label %60

60:                                               ; preds = %97, %53
  %61 = load i32, i32* %10, align 4
  %62 = load i32, i32* %5, align 4
  %63 = call i32 @jv_copy(i32 %62)
  %64 = call i32 @jv_array_length(i32 %63)
  %65 = icmp slt i32 %61, %64
  br i1 %65, label %66, label %100

66:                                               ; preds = %60
  %67 = load i32, i32* %6, align 4
  %68 = call i32 @jv_copy(i32 %67)
  %69 = load i32, i32* %10, align 4
  %70 = call i32 @jv_array_get(i32 %68, i32 %69)
  store i32 %70, i32* %11, align 4
  %71 = load i32, i32* %11, align 4
  %72 = call i32 @jv_copy(i32 %71)
  %73 = load i32, i32* %9, align 4
  %74 = call i32 @jv_copy(i32 %73)
  %75 = call i32 @jv_cmp(i32 %72, i32 %74)
  store i32 %75, i32* %12, align 4
  %76 = load i32, i32* %12, align 4
  %77 = icmp slt i32 %76, 0
  %78 = zext i1 %77 to i32
  %79 = load i32, i32* %7, align 4
  %80 = icmp eq i32 %79, 1
  %81 = zext i1 %80 to i32
  %82 = icmp eq i32 %78, %81
  br i1 %82, label %83, label %93

83:                                               ; preds = %66
  %84 = load i32, i32* %9, align 4
  %85 = call i32 @jv_free(i32 %84)
  %86 = load i32, i32* %11, align 4
  store i32 %86, i32* %9, align 4
  %87 = load i32, i32* %8, align 4
  %88 = call i32 @jv_free(i32 %87)
  %89 = load i32, i32* %5, align 4
  %90 = call i32 @jv_copy(i32 %89)
  %91 = load i32, i32* %10, align 4
  %92 = call i32 @jv_array_get(i32 %90, i32 %91)
  store i32 %92, i32* %8, align 4
  br label %96

93:                                               ; preds = %66
  %94 = load i32, i32* %11, align 4
  %95 = call i32 @jv_free(i32 %94)
  br label %96

96:                                               ; preds = %93, %83
  br label %97

97:                                               ; preds = %96
  %98 = load i32, i32* %10, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %10, align 4
  br label %60

100:                                              ; preds = %60
  %101 = load i32, i32* %5, align 4
  %102 = call i32 @jv_free(i32 %101)
  %103 = load i32, i32* %6, align 4
  %104 = call i32 @jv_free(i32 %103)
  %105 = load i32, i32* %9, align 4
  %106 = call i32 @jv_free(i32 %105)
  %107 = load i32, i32* %8, align 4
  store i32 %107, i32* %4, align 4
  br label %108

108:                                              ; preds = %100, %47, %38, %26, %17
  %109 = load i32, i32* %4, align 4
  ret i32 %109
}

declare dso_local i64 @jv_get_kind(i32) #1

declare dso_local i32 @type_error2(i32, i32, i8*) #1

declare dso_local i32 @jv_array_length(i32) #1

declare dso_local i32 @jv_copy(i32) #1

declare dso_local i32 @jv_free(i32) #1

declare dso_local i32 @jv_null(...) #1

declare dso_local i32 @jv_array_get(i32, i32) #1

declare dso_local i32 @jv_cmp(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
