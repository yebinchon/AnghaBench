; ModuleID = '/home/carl/AnghaBench/jq/src/extr_builtin.c_f_multiply.c'
source_filename = "/home/carl/AnghaBench/jq/src/extr_builtin.c_f_multiply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@JV_KIND_NUMBER = common dso_local global i64 0, align 8
@JV_KIND_STRING = common dso_local global i64 0, align 8
@JV_KIND_OBJECT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [21 x i8] c"cannot be multiplied\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32, i32)* @f_multiply to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @f_multiply(i32* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %18 = load i32, i32* %8, align 4
  %19 = call i64 @jv_get_kind(i32 %18)
  store i64 %19, i64* %10, align 8
  %20 = load i32, i32* %9, align 4
  %21 = call i64 @jv_get_kind(i32 %20)
  store i64 %21, i64* %11, align 8
  %22 = load i32, i32* %7, align 4
  %23 = call i32 @jv_free(i32 %22)
  %24 = load i64, i64* %10, align 8
  %25 = load i64, i64* @JV_KIND_NUMBER, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %43

27:                                               ; preds = %4
  %28 = load i64, i64* %11, align 8
  %29 = load i64, i64* @JV_KIND_NUMBER, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %43

31:                                               ; preds = %27
  %32 = load i32, i32* %8, align 4
  %33 = call i32 @jv_number_value(i32 %32)
  %34 = load i32, i32* %9, align 4
  %35 = call i32 @jv_number_value(i32 %34)
  %36 = mul nsw i32 %33, %35
  %37 = call i32 @jv_number(i32 %36)
  store i32 %37, i32* %12, align 4
  %38 = load i32, i32* %8, align 4
  %39 = call i32 @jv_free(i32 %38)
  %40 = load i32, i32* %9, align 4
  %41 = call i32 @jv_free(i32 %40)
  %42 = load i32, i32* %12, align 4
  store i32 %42, i32* %5, align 4
  br label %115

43:                                               ; preds = %27, %4
  %44 = load i64, i64* %10, align 8
  %45 = load i64, i64* @JV_KIND_STRING, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %51

47:                                               ; preds = %43
  %48 = load i64, i64* %11, align 8
  %49 = load i64, i64* @JV_KIND_NUMBER, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %59, label %51

51:                                               ; preds = %47, %43
  %52 = load i64, i64* %10, align 8
  %53 = load i64, i64* @JV_KIND_NUMBER, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %99

55:                                               ; preds = %51
  %56 = load i64, i64* %11, align 8
  %57 = load i64, i64* @JV_KIND_STRING, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %99

59:                                               ; preds = %55, %47
  %60 = load i32, i32* %8, align 4
  store i32 %60, i32* %13, align 4
  %61 = load i32, i32* %9, align 4
  store i32 %61, i32* %14, align 4
  %62 = load i64, i64* %10, align 8
  %63 = load i64, i64* @JV_KIND_NUMBER, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %68

65:                                               ; preds = %59
  %66 = load i32, i32* %9, align 4
  store i32 %66, i32* %13, align 4
  %67 = load i32, i32* %8, align 4
  store i32 %67, i32* %14, align 4
  br label %68

68:                                               ; preds = %65, %59
  %69 = load i32, i32* %13, align 4
  %70 = call i32 @jv_copy(i32 %69)
  %71 = call i64 @jv_string_length_bytes(i32 %70)
  store i64 %71, i64* %16, align 8
  %72 = load i32, i32* %13, align 4
  store i32 %72, i32* %17, align 4
  %73 = load i32, i32* %14, align 4
  %74 = call i32 @jv_number_value(i32 %73)
  %75 = sub nsw i32 %74, 1
  store i32 %75, i32* %15, align 4
  br label %76

76:                                               ; preds = %85, %68
  %77 = load i32, i32* %15, align 4
  %78 = icmp sgt i32 %77, 0
  br i1 %78, label %79, label %88

79:                                               ; preds = %76
  %80 = load i32, i32* %17, align 4
  %81 = load i32, i32* %13, align 4
  %82 = call i32 @jv_string_value(i32 %81)
  %83 = load i64, i64* %16, align 8
  %84 = call i32 @jv_string_append_buf(i32 %80, i32 %82, i64 %83)
  store i32 %84, i32* %17, align 4
  br label %85

85:                                               ; preds = %79
  %86 = load i32, i32* %15, align 4
  %87 = add nsw i32 %86, -1
  store i32 %87, i32* %15, align 4
  br label %76

88:                                               ; preds = %76
  %89 = load i32, i32* %14, align 4
  %90 = call i32 @jv_free(i32 %89)
  %91 = load i32, i32* %15, align 4
  %92 = icmp slt i32 %91, 0
  br i1 %92, label %93, label %97

93:                                               ; preds = %88
  %94 = load i32, i32* %13, align 4
  %95 = call i32 @jv_free(i32 %94)
  %96 = call i32 (...) @jv_null()
  store i32 %96, i32* %5, align 4
  br label %115

97:                                               ; preds = %88
  %98 = load i32, i32* %17, align 4
  store i32 %98, i32* %5, align 4
  br label %115

99:                                               ; preds = %55, %51
  %100 = load i64, i64* %10, align 8
  %101 = load i64, i64* @JV_KIND_OBJECT, align 8
  %102 = icmp eq i64 %100, %101
  br i1 %102, label %103, label %111

103:                                              ; preds = %99
  %104 = load i64, i64* %11, align 8
  %105 = load i64, i64* @JV_KIND_OBJECT, align 8
  %106 = icmp eq i64 %104, %105
  br i1 %106, label %107, label %111

107:                                              ; preds = %103
  %108 = load i32, i32* %8, align 4
  %109 = load i32, i32* %9, align 4
  %110 = call i32 @jv_object_merge_recursive(i32 %108, i32 %109)
  store i32 %110, i32* %5, align 4
  br label %115

111:                                              ; preds = %103, %99
  %112 = load i32, i32* %8, align 4
  %113 = load i32, i32* %9, align 4
  %114 = call i32 @type_error2(i32 %112, i32 %113, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  store i32 %114, i32* %5, align 4
  br label %115

115:                                              ; preds = %111, %107, %97, %93, %31
  %116 = load i32, i32* %5, align 4
  ret i32 %116
}

declare dso_local i64 @jv_get_kind(i32) #1

declare dso_local i32 @jv_free(i32) #1

declare dso_local i32 @jv_number(i32) #1

declare dso_local i32 @jv_number_value(i32) #1

declare dso_local i64 @jv_string_length_bytes(i32) #1

declare dso_local i32 @jv_copy(i32) #1

declare dso_local i32 @jv_string_append_buf(i32, i32, i64) #1

declare dso_local i32 @jv_string_value(i32) #1

declare dso_local i32 @jv_null(...) #1

declare dso_local i32 @jv_object_merge_recursive(i32, i32) #1

declare dso_local i32 @type_error2(i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
