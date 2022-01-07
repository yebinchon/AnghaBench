; ModuleID = '/home/carl/AnghaBench/h2o/deps/mruby-json/src/extr_parson.c_json_validate.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/mruby-json/src/extr_parson.c_json_validate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@JSONFailure = common dso_local global i32 0, align 4
@JSONSuccess = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @json_validate(i32* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* null, i32** %6, align 8
  store i32* null, i32** %7, align 8
  store i32* null, i32** %8, align 8
  store i32* null, i32** %9, align 8
  store i32* null, i32** %10, align 8
  store i32* null, i32** %11, align 8
  store i32 133, i32* %12, align 4
  store i32 133, i32* %13, align 4
  store i8* null, i8** %14, align 8
  store i64 0, i64* %15, align 8
  store i64 0, i64* %16, align 8
  %17 = load i32*, i32** %4, align 8
  %18 = icmp eq i32* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %2
  %20 = load i32*, i32** %5, align 8
  %21 = icmp eq i32* %20, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %19, %2
  %23 = load i32, i32* @JSONFailure, align 4
  store i32 %23, i32* %3, align 4
  br label %132

24:                                               ; preds = %19
  %25 = load i32*, i32** %4, align 8
  %26 = call i32 @json_value_get_type(i32* %25)
  store i32 %26, i32* %12, align 4
  %27 = load i32*, i32** %5, align 8
  %28 = call i32 @json_value_get_type(i32* %27)
  store i32 %28, i32* %13, align 4
  %29 = load i32, i32* %12, align 4
  %30 = load i32, i32* %13, align 4
  %31 = icmp ne i32 %29, %30
  br i1 %31, label %32, label %37

32:                                               ; preds = %24
  %33 = load i32, i32* %12, align 4
  %34 = icmp ne i32 %33, 131
  br i1 %34, label %35, label %37

35:                                               ; preds = %32
  %36 = load i32, i32* @JSONFailure, align 4
  store i32 %36, i32* %3, align 4
  br label %132

37:                                               ; preds = %32, %24
  %38 = load i32, i32* %12, align 4
  switch i32 %38, label %130 [
    i32 135, label %39
    i32 129, label %75
    i32 128, label %127
    i32 130, label %127
    i32 134, label %127
    i32 131, label %127
    i32 133, label %129
  ]

39:                                               ; preds = %37
  %40 = load i32*, i32** %4, align 8
  %41 = call i32* @json_value_get_array(i32* %40)
  store i32* %41, i32** %8, align 8
  %42 = load i32*, i32** %5, align 8
  %43 = call i32* @json_value_get_array(i32* %42)
  store i32* %43, i32** %9, align 8
  %44 = load i32*, i32** %8, align 8
  %45 = call i64 @json_array_get_count(i32* %44)
  store i64 %45, i64* %16, align 8
  %46 = load i64, i64* %16, align 8
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %39
  %49 = load i32, i32* @JSONSuccess, align 4
  store i32 %49, i32* %3, align 4
  br label %132

50:                                               ; preds = %39
  %51 = load i32*, i32** %8, align 8
  %52 = call i32* @json_array_get_value(i32* %51, i64 0)
  store i32* %52, i32** %6, align 8
  store i64 0, i64* %15, align 8
  br label %53

53:                                               ; preds = %70, %50
  %54 = load i64, i64* %15, align 8
  %55 = load i32*, i32** %9, align 8
  %56 = call i64 @json_array_get_count(i32* %55)
  %57 = icmp ult i64 %54, %56
  br i1 %57, label %58, label %73

58:                                               ; preds = %53
  %59 = load i32*, i32** %9, align 8
  %60 = load i64, i64* %15, align 8
  %61 = call i32* @json_array_get_value(i32* %59, i64 %60)
  store i32* %61, i32** %7, align 8
  %62 = load i32*, i32** %6, align 8
  %63 = load i32*, i32** %7, align 8
  %64 = call i32 @json_validate(i32* %62, i32* %63)
  %65 = load i32, i32* @JSONFailure, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %67, label %69

67:                                               ; preds = %58
  %68 = load i32, i32* @JSONFailure, align 4
  store i32 %68, i32* %3, align 4
  br label %132

69:                                               ; preds = %58
  br label %70

70:                                               ; preds = %69
  %71 = load i64, i64* %15, align 8
  %72 = add i64 %71, 1
  store i64 %72, i64* %15, align 8
  br label %53

73:                                               ; preds = %53
  %74 = load i32, i32* @JSONSuccess, align 4
  store i32 %74, i32* %3, align 4
  br label %132

75:                                               ; preds = %37
  %76 = load i32*, i32** %4, align 8
  %77 = call i32* @json_value_get_object(i32* %76)
  store i32* %77, i32** %10, align 8
  %78 = load i32*, i32** %5, align 8
  %79 = call i32* @json_value_get_object(i32* %78)
  store i32* %79, i32** %11, align 8
  %80 = load i32*, i32** %10, align 8
  %81 = call i64 @json_object_get_count(i32* %80)
  store i64 %81, i64* %16, align 8
  %82 = load i64, i64* %16, align 8
  %83 = icmp eq i64 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %75
  %85 = load i32, i32* @JSONSuccess, align 4
  store i32 %85, i32* %3, align 4
  br label %132

86:                                               ; preds = %75
  %87 = load i32*, i32** %11, align 8
  %88 = call i64 @json_object_get_count(i32* %87)
  %89 = load i64, i64* %16, align 8
  %90 = icmp ult i64 %88, %89
  br i1 %90, label %91, label %93

91:                                               ; preds = %86
  %92 = load i32, i32* @JSONFailure, align 4
  store i32 %92, i32* %3, align 4
  br label %132

93:                                               ; preds = %86
  br label %94

94:                                               ; preds = %93
  store i64 0, i64* %15, align 8
  br label %95

95:                                               ; preds = %122, %94
  %96 = load i64, i64* %15, align 8
  %97 = load i64, i64* %16, align 8
  %98 = icmp ult i64 %96, %97
  br i1 %98, label %99, label %125

99:                                               ; preds = %95
  %100 = load i32*, i32** %10, align 8
  %101 = load i64, i64* %15, align 8
  %102 = call i8* @json_object_get_name(i32* %100, i64 %101)
  store i8* %102, i8** %14, align 8
  %103 = load i32*, i32** %10, align 8
  %104 = load i8*, i8** %14, align 8
  %105 = call i32* @json_object_get_value(i32* %103, i8* %104)
  store i32* %105, i32** %6, align 8
  %106 = load i32*, i32** %11, align 8
  %107 = load i8*, i8** %14, align 8
  %108 = call i32* @json_object_get_value(i32* %106, i8* %107)
  store i32* %108, i32** %7, align 8
  %109 = load i32*, i32** %7, align 8
  %110 = icmp eq i32* %109, null
  br i1 %110, label %111, label %113

111:                                              ; preds = %99
  %112 = load i32, i32* @JSONFailure, align 4
  store i32 %112, i32* %3, align 4
  br label %132

113:                                              ; preds = %99
  %114 = load i32*, i32** %6, align 8
  %115 = load i32*, i32** %7, align 8
  %116 = call i32 @json_validate(i32* %114, i32* %115)
  %117 = load i32, i32* @JSONFailure, align 4
  %118 = icmp eq i32 %116, %117
  br i1 %118, label %119, label %121

119:                                              ; preds = %113
  %120 = load i32, i32* @JSONFailure, align 4
  store i32 %120, i32* %3, align 4
  br label %132

121:                                              ; preds = %113
  br label %122

122:                                              ; preds = %121
  %123 = load i64, i64* %15, align 8
  %124 = add i64 %123, 1
  store i64 %124, i64* %15, align 8
  br label %95

125:                                              ; preds = %95
  %126 = load i32, i32* @JSONSuccess, align 4
  store i32 %126, i32* %3, align 4
  br label %132

127:                                              ; preds = %37, %37, %37, %37
  %128 = load i32, i32* @JSONSuccess, align 4
  store i32 %128, i32* %3, align 4
  br label %132

129:                                              ; preds = %37
  br label %130

130:                                              ; preds = %37, %129
  %131 = load i32, i32* @JSONFailure, align 4
  store i32 %131, i32* %3, align 4
  br label %132

132:                                              ; preds = %130, %127, %125, %119, %111, %91, %84, %73, %67, %48, %35, %22
  %133 = load i32, i32* %3, align 4
  ret i32 %133
}

declare dso_local i32 @json_value_get_type(i32*) #1

declare dso_local i32* @json_value_get_array(i32*) #1

declare dso_local i64 @json_array_get_count(i32*) #1

declare dso_local i32* @json_array_get_value(i32*, i64) #1

declare dso_local i32* @json_value_get_object(i32*) #1

declare dso_local i64 @json_object_get_count(i32*) #1

declare dso_local i8* @json_object_get_name(i32*, i64) #1

declare dso_local i32* @json_object_get_value(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
