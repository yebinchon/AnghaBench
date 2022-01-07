; ModuleID = '/home/carl/AnghaBench/h2o/deps/mruby-json/src/extr_parson.c_json_value_equals.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/mruby-json/src/extr_parson.c_json_value_equals.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @json_value_equals(i32* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* null, i32** %6, align 8
  store i32* null, i32** %7, align 8
  store i32* null, i32** %8, align 8
  store i32* null, i32** %9, align 8
  store i8* null, i8** %10, align 8
  store i8* null, i8** %11, align 8
  store i8* null, i8** %12, align 8
  store i64 0, i64* %13, align 8
  store i64 0, i64* %14, align 8
  store i64 0, i64* %15, align 8
  %18 = load i32*, i32** %4, align 8
  %19 = call i32 @json_value_get_type(i32* %18)
  store i32 %19, i32* %16, align 4
  %20 = load i32*, i32** %5, align 8
  %21 = call i32 @json_value_get_type(i32* %20)
  store i32 %21, i32* %17, align 4
  %22 = load i32, i32* %16, align 4
  %23 = load i32, i32* %17, align 4
  %24 = icmp ne i32 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %133

26:                                               ; preds = %2
  %27 = load i32, i32* %16, align 4
  switch i32 %27, label %132 [
    i32 135, label %28
    i32 129, label %61
    i32 128, label %97
    i32 134, label %114
    i32 130, label %121
    i32 133, label %130
    i32 131, label %131
  ]

28:                                               ; preds = %26
  %29 = load i32*, i32** %4, align 8
  %30 = call i32* @json_value_get_array(i32* %29)
  store i32* %30, i32** %8, align 8
  %31 = load i32*, i32** %5, align 8
  %32 = call i32* @json_value_get_array(i32* %31)
  store i32* %32, i32** %9, align 8
  %33 = load i32*, i32** %8, align 8
  %34 = call i64 @json_array_get_count(i32* %33)
  store i64 %34, i64* %13, align 8
  %35 = load i32*, i32** %9, align 8
  %36 = call i64 @json_array_get_count(i32* %35)
  store i64 %36, i64* %14, align 8
  %37 = load i64, i64* %13, align 8
  %38 = load i64, i64* %14, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %28
  store i32 0, i32* %3, align 4
  br label %133

41:                                               ; preds = %28
  store i64 0, i64* %15, align 8
  br label %42

42:                                               ; preds = %57, %41
  %43 = load i64, i64* %15, align 8
  %44 = load i64, i64* %13, align 8
  %45 = icmp ult i64 %43, %44
  br i1 %45, label %46, label %60

46:                                               ; preds = %42
  %47 = load i32*, i32** %8, align 8
  %48 = load i64, i64* %15, align 8
  %49 = call i32* @json_array_get_value(i32* %47, i64 %48)
  %50 = load i32*, i32** %9, align 8
  %51 = load i64, i64* %15, align 8
  %52 = call i32* @json_array_get_value(i32* %50, i64 %51)
  %53 = call i32 @json_value_equals(i32* %49, i32* %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %46
  store i32 0, i32* %3, align 4
  br label %133

56:                                               ; preds = %46
  br label %57

57:                                               ; preds = %56
  %58 = load i64, i64* %15, align 8
  %59 = add i64 %58, 1
  store i64 %59, i64* %15, align 8
  br label %42

60:                                               ; preds = %42
  store i32 1, i32* %3, align 4
  br label %133

61:                                               ; preds = %26
  %62 = load i32*, i32** %4, align 8
  %63 = call i32* @json_value_get_object(i32* %62)
  store i32* %63, i32** %6, align 8
  %64 = load i32*, i32** %5, align 8
  %65 = call i32* @json_value_get_object(i32* %64)
  store i32* %65, i32** %7, align 8
  %66 = load i32*, i32** %6, align 8
  %67 = call i64 @json_object_get_count(i32* %66)
  store i64 %67, i64* %13, align 8
  %68 = load i32*, i32** %7, align 8
  %69 = call i64 @json_object_get_count(i32* %68)
  store i64 %69, i64* %14, align 8
  %70 = load i64, i64* %13, align 8
  %71 = load i64, i64* %14, align 8
  %72 = icmp ne i64 %70, %71
  br i1 %72, label %73, label %74

73:                                               ; preds = %61
  store i32 0, i32* %3, align 4
  br label %133

74:                                               ; preds = %61
  store i64 0, i64* %15, align 8
  br label %75

75:                                               ; preds = %93, %74
  %76 = load i64, i64* %15, align 8
  %77 = load i64, i64* %13, align 8
  %78 = icmp ult i64 %76, %77
  br i1 %78, label %79, label %96

79:                                               ; preds = %75
  %80 = load i32*, i32** %6, align 8
  %81 = load i64, i64* %15, align 8
  %82 = call i8* @json_object_get_name(i32* %80, i64 %81)
  store i8* %82, i8** %12, align 8
  %83 = load i32*, i32** %6, align 8
  %84 = load i8*, i8** %12, align 8
  %85 = call i32* @json_object_get_value(i32* %83, i8* %84)
  %86 = load i32*, i32** %7, align 8
  %87 = load i8*, i8** %12, align 8
  %88 = call i32* @json_object_get_value(i32* %86, i8* %87)
  %89 = call i32 @json_value_equals(i32* %85, i32* %88)
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %92, label %91

91:                                               ; preds = %79
  store i32 0, i32* %3, align 4
  br label %133

92:                                               ; preds = %79
  br label %93

93:                                               ; preds = %92
  %94 = load i64, i64* %15, align 8
  %95 = add i64 %94, 1
  store i64 %95, i64* %15, align 8
  br label %75

96:                                               ; preds = %75
  store i32 1, i32* %3, align 4
  br label %133

97:                                               ; preds = %26
  %98 = load i32*, i32** %4, align 8
  %99 = call i8* @json_value_get_string(i32* %98)
  store i8* %99, i8** %10, align 8
  %100 = load i32*, i32** %5, align 8
  %101 = call i8* @json_value_get_string(i32* %100)
  store i8* %101, i8** %11, align 8
  %102 = load i8*, i8** %10, align 8
  %103 = icmp eq i8* %102, null
  br i1 %103, label %107, label %104

104:                                              ; preds = %97
  %105 = load i8*, i8** %11, align 8
  %106 = icmp eq i8* %105, null
  br i1 %106, label %107, label %108

107:                                              ; preds = %104, %97
  store i32 0, i32* %3, align 4
  br label %133

108:                                              ; preds = %104
  %109 = load i8*, i8** %10, align 8
  %110 = load i8*, i8** %11, align 8
  %111 = call i32 @strcmp(i8* %109, i8* %110)
  %112 = icmp eq i32 %111, 0
  %113 = zext i1 %112 to i32
  store i32 %113, i32* %3, align 4
  br label %133

114:                                              ; preds = %26
  %115 = load i32*, i32** %4, align 8
  %116 = call i32 @json_value_get_boolean(i32* %115)
  %117 = load i32*, i32** %5, align 8
  %118 = call i32 @json_value_get_boolean(i32* %117)
  %119 = icmp eq i32 %116, %118
  %120 = zext i1 %119 to i32
  store i32 %120, i32* %3, align 4
  br label %133

121:                                              ; preds = %26
  %122 = load i32*, i32** %4, align 8
  %123 = call i64 @json_value_get_number(i32* %122)
  %124 = load i32*, i32** %5, align 8
  %125 = call i64 @json_value_get_number(i32* %124)
  %126 = sub nsw i64 %123, %125
  %127 = call double @fabs(i64 %126)
  %128 = fcmp olt double %127, 0x3EB0C6F7A0B5ED8D
  %129 = zext i1 %128 to i32
  store i32 %129, i32* %3, align 4
  br label %133

130:                                              ; preds = %26
  store i32 1, i32* %3, align 4
  br label %133

131:                                              ; preds = %26
  store i32 1, i32* %3, align 4
  br label %133

132:                                              ; preds = %26
  store i32 1, i32* %3, align 4
  br label %133

133:                                              ; preds = %132, %131, %130, %121, %114, %108, %107, %96, %91, %73, %60, %55, %40, %25
  %134 = load i32, i32* %3, align 4
  ret i32 %134
}

declare dso_local i32 @json_value_get_type(i32*) #1

declare dso_local i32* @json_value_get_array(i32*) #1

declare dso_local i64 @json_array_get_count(i32*) #1

declare dso_local i32* @json_array_get_value(i32*, i64) #1

declare dso_local i32* @json_value_get_object(i32*) #1

declare dso_local i64 @json_object_get_count(i32*) #1

declare dso_local i8* @json_object_get_name(i32*, i64) #1

declare dso_local i32* @json_object_get_value(i32*, i8*) #1

declare dso_local i8* @json_value_get_string(i32*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @json_value_get_boolean(i32*) #1

declare dso_local double @fabs(i64) #1

declare dso_local i64 @json_value_get_number(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
