; ModuleID = '/home/carl/AnghaBench/jq/src/extr_jv.c_jv_string_slice.c'
source_filename = "/home/carl/AnghaBench/jq/src/extr_jv.c_jv_string_slice.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@JV_KIND_STRING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Invalid UTF-8 string\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @jv_string_slice(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @JV_KIND_STRING, align 4
  %17 = call i32 @JVP_HAS_KIND(i32 %15, i32 %16)
  %18 = call i32 @assert(i32 %17)
  %19 = load i32, i32* %5, align 4
  %20 = call i8* @jv_string_value(i32 %19)
  store i8* %20, i8** %8, align 8
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @jv_copy(i32 %21)
  %23 = call i32 @jv_string_length_bytes(i32 %22)
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* %9, align 4
  %25 = call i32 @jvp_clamp_slice_params(i32 %24, i32* %6, i32* %7)
  %26 = load i32, i32* %6, align 4
  %27 = icmp sle i32 0, %26
  br i1 %27, label %28, label %36

28:                                               ; preds = %3
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* %7, align 4
  %31 = icmp sle i32 %29, %30
  br i1 %31, label %32, label %36

32:                                               ; preds = %28
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* %9, align 4
  %35 = icmp sle i32 %33, %34
  br label %36

36:                                               ; preds = %32, %28, %3
  %37 = phi i1 [ false, %28 ], [ false, %3 ], [ %35, %32 ]
  %38 = zext i1 %37 to i32
  %39 = call i32 @assert(i32 %38)
  %40 = load i8*, i8** %8, align 8
  store i8* %40, i8** %11, align 8
  store i32 0, i32* %10, align 4
  br label %41

41:                                               ; preds = %67, %36
  %42 = load i32, i32* %10, align 4
  %43 = load i32, i32* %6, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %70

45:                                               ; preds = %41
  %46 = load i8*, i8** %11, align 8
  %47 = load i8*, i8** %8, align 8
  %48 = load i32, i32* %9, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i8, i8* %47, i64 %49
  %51 = call i8* @jvp_utf8_next(i8* %46, i8* %50, i32* %13)
  store i8* %51, i8** %11, align 8
  %52 = load i8*, i8** %11, align 8
  %53 = icmp eq i8* %52, null
  br i1 %53, label %54, label %58

54:                                               ; preds = %45
  %55 = load i32, i32* %5, align 4
  %56 = call i32 @jv_free(i32 %55)
  %57 = call i32 @jv_string_empty(i32 16)
  store i32 %57, i32* %4, align 4
  br label %119

58:                                               ; preds = %45
  %59 = load i32, i32* %13, align 4
  %60 = icmp eq i32 %59, -1
  br i1 %60, label %61, label %66

61:                                               ; preds = %58
  %62 = load i32, i32* %5, align 4
  %63 = call i32 @jv_free(i32 %62)
  %64 = call i32 @jv_string(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %65 = call i32 @jv_invalid_with_msg(i32 %64)
  store i32 %65, i32* %4, align 4
  br label %119

66:                                               ; preds = %58
  br label %67

67:                                               ; preds = %66
  %68 = load i32, i32* %10, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %10, align 4
  br label %41

70:                                               ; preds = %41
  %71 = load i8*, i8** %11, align 8
  store i8* %71, i8** %12, align 8
  br label %72

72:                                               ; preds = %104, %70
  %73 = load i8*, i8** %12, align 8
  %74 = icmp ne i8* %73, null
  br i1 %74, label %75, label %79

75:                                               ; preds = %72
  %76 = load i32, i32* %10, align 4
  %77 = load i32, i32* %7, align 4
  %78 = icmp slt i32 %76, %77
  br label %79

79:                                               ; preds = %75, %72
  %80 = phi i1 [ false, %72 ], [ %78, %75 ]
  br i1 %80, label %81, label %107

81:                                               ; preds = %79
  %82 = load i8*, i8** %12, align 8
  %83 = load i8*, i8** %8, align 8
  %84 = load i32, i32* %9, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i8, i8* %83, i64 %85
  %87 = call i8* @jvp_utf8_next(i8* %82, i8* %86, i32* %13)
  store i8* %87, i8** %12, align 8
  %88 = load i8*, i8** %12, align 8
  %89 = icmp eq i8* %88, null
  br i1 %89, label %90, label %95

90:                                               ; preds = %81
  %91 = load i8*, i8** %8, align 8
  %92 = load i32, i32* %9, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i8, i8* %91, i64 %93
  store i8* %94, i8** %12, align 8
  br label %107

95:                                               ; preds = %81
  %96 = load i32, i32* %13, align 4
  %97 = icmp eq i32 %96, -1
  br i1 %97, label %98, label %103

98:                                               ; preds = %95
  %99 = load i32, i32* %5, align 4
  %100 = call i32 @jv_free(i32 %99)
  %101 = call i32 @jv_string(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %102 = call i32 @jv_invalid_with_msg(i32 %101)
  store i32 %102, i32* %4, align 4
  br label %119

103:                                              ; preds = %95
  br label %104

104:                                              ; preds = %103
  %105 = load i32, i32* %10, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %10, align 4
  br label %72

107:                                              ; preds = %90, %79
  %108 = load i8*, i8** %11, align 8
  %109 = load i8*, i8** %12, align 8
  %110 = load i8*, i8** %11, align 8
  %111 = ptrtoint i8* %109 to i64
  %112 = ptrtoint i8* %110 to i64
  %113 = sub i64 %111, %112
  %114 = trunc i64 %113 to i32
  %115 = call i32 @jv_string_sized(i8* %108, i32 %114)
  store i32 %115, i32* %14, align 4
  %116 = load i32, i32* %5, align 4
  %117 = call i32 @jv_free(i32 %116)
  %118 = load i32, i32* %14, align 4
  store i32 %118, i32* %4, align 4
  br label %119

119:                                              ; preds = %107, %98, %61, %54
  %120 = load i32, i32* %4, align 4
  ret i32 %120
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @JVP_HAS_KIND(i32, i32) #1

declare dso_local i8* @jv_string_value(i32) #1

declare dso_local i32 @jv_string_length_bytes(i32) #1

declare dso_local i32 @jv_copy(i32) #1

declare dso_local i32 @jvp_clamp_slice_params(i32, i32*, i32*) #1

declare dso_local i8* @jvp_utf8_next(i8*, i8*, i32*) #1

declare dso_local i32 @jv_free(i32) #1

declare dso_local i32 @jv_string_empty(i32) #1

declare dso_local i32 @jv_invalid_with_msg(i32) #1

declare dso_local i32 @jv_string(i8*) #1

declare dso_local i32 @jv_string_sized(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
