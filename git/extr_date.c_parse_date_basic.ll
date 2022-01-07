; ModuleID = '/home/carl/AnghaBench/git/extr_date.c_parse_date_basic.c'
source_filename = "/home/carl/AnghaBench/git/extr_date.c_parse_date_basic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tm = type { i32, i32, i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @parse_date_basic(i8* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.tm, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8, align 1
  %14 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %15 = load i32*, i32** %6, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %3
  store i32* %10, i32** %6, align 8
  br label %18

18:                                               ; preds = %17, %3
  %19 = load i32*, i32** %7, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %18
  store i32* %11, i32** %7, align 8
  br label %22

22:                                               ; preds = %21, %18
  %23 = call i32 @memset(%struct.tm* %8, i32 0, i32 28)
  %24 = getelementptr inbounds %struct.tm, %struct.tm* %8, i32 0, i32 0
  store i32 -1, i32* %24, align 4
  %25 = getelementptr inbounds %struct.tm, %struct.tm* %8, i32 0, i32 1
  store i32 -1, i32* %25, align 4
  %26 = getelementptr inbounds %struct.tm, %struct.tm* %8, i32 0, i32 2
  store i32 -1, i32* %26, align 4
  %27 = getelementptr inbounds %struct.tm, %struct.tm* %8, i32 0, i32 3
  store i32 -1, i32* %27, align 4
  %28 = getelementptr inbounds %struct.tm, %struct.tm* %8, i32 0, i32 4
  store i32 -1, i32* %28, align 4
  %29 = getelementptr inbounds %struct.tm, %struct.tm* %8, i32 0, i32 5
  store i32 -1, i32* %29, align 4
  %30 = getelementptr inbounds %struct.tm, %struct.tm* %8, i32 0, i32 6
  store i32 -1, i32* %30, align 4
  %31 = load i32*, i32** %7, align 8
  store i32 -1, i32* %31, align 4
  store i32 0, i32* %9, align 4
  %32 = load i8*, i8** %5, align 8
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp eq i32 %34, 64
  br i1 %35, label %36, label %44

36:                                               ; preds = %22
  %37 = load i8*, i8** %5, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 1
  %39 = load i32*, i32** %6, align 8
  %40 = load i32*, i32** %7, align 8
  %41 = call i32 @match_object_header_date(i8* %38, i32* %39, i32* %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %36
  store i32 0, i32* %4, align 4
  br label %150

44:                                               ; preds = %36, %22
  br label %45

45:                                               ; preds = %95, %44
  store i32 0, i32* %12, align 4
  %46 = load i8*, i8** %5, align 8
  %47 = load i8, i8* %46, align 1
  store i8 %47, i8* %13, align 1
  %48 = load i8, i8* %13, align 1
  %49 = icmp ne i8 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %45
  %51 = load i8, i8* %13, align 1
  %52 = zext i8 %51 to i32
  %53 = icmp eq i32 %52, 10
  br i1 %53, label %54, label %55

54:                                               ; preds = %50, %45
  br label %100

55:                                               ; preds = %50
  %56 = load i8, i8* %13, align 1
  %57 = call i64 @isalpha(i8 zeroext %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %55
  %60 = load i8*, i8** %5, align 8
  %61 = load i32*, i32** %7, align 8
  %62 = call i32 @match_alpha(i8* %60, %struct.tm* %8, i32* %61)
  store i32 %62, i32* %12, align 4
  br label %91

63:                                               ; preds = %55
  %64 = load i8, i8* %13, align 1
  %65 = call i64 @isdigit(i8 signext %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %63
  %68 = load i8*, i8** %5, align 8
  %69 = load i32*, i32** %7, align 8
  %70 = call i32 @match_digit(i8* %68, %struct.tm* %8, i32* %69, i32* %9)
  store i32 %70, i32* %12, align 4
  br label %90

71:                                               ; preds = %63
  %72 = load i8, i8* %13, align 1
  %73 = zext i8 %72 to i32
  %74 = icmp eq i32 %73, 45
  br i1 %74, label %79, label %75

75:                                               ; preds = %71
  %76 = load i8, i8* %13, align 1
  %77 = zext i8 %76 to i32
  %78 = icmp eq i32 %77, 43
  br i1 %78, label %79, label %89

79:                                               ; preds = %75, %71
  %80 = load i8*, i8** %5, align 8
  %81 = getelementptr inbounds i8, i8* %80, i64 1
  %82 = load i8, i8* %81, align 1
  %83 = call i64 @isdigit(i8 signext %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %89

85:                                               ; preds = %79
  %86 = load i8*, i8** %5, align 8
  %87 = load i32*, i32** %7, align 8
  %88 = call i32 @match_tz(i8* %86, i32* %87)
  store i32 %88, i32* %12, align 4
  br label %89

89:                                               ; preds = %85, %79, %75
  br label %90

90:                                               ; preds = %89, %67
  br label %91

91:                                               ; preds = %90, %59
  %92 = load i32, i32* %12, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %95, label %94

94:                                               ; preds = %91
  store i32 1, i32* %12, align 4
  br label %95

95:                                               ; preds = %94, %91
  %96 = load i32, i32* %12, align 4
  %97 = load i8*, i8** %5, align 8
  %98 = sext i32 %96 to i64
  %99 = getelementptr inbounds i8, i8* %97, i64 %98
  store i8* %99, i8** %5, align 8
  br label %45

100:                                              ; preds = %54
  %101 = call i32 @tm_to_time_t(%struct.tm* %8)
  %102 = load i32*, i32** %6, align 8
  store i32 %101, i32* %102, align 4
  %103 = load i32*, i32** %6, align 8
  %104 = load i32, i32* %103, align 4
  %105 = icmp eq i32 %104, -1
  br i1 %105, label %106, label %107

106:                                              ; preds = %100
  store i32 -1, i32* %4, align 4
  br label %150

107:                                              ; preds = %100
  %108 = load i32*, i32** %7, align 8
  %109 = load i32, i32* %108, align 4
  %110 = icmp eq i32 %109, -1
  br i1 %110, label %111, label %139

111:                                              ; preds = %107
  %112 = getelementptr inbounds %struct.tm, %struct.tm* %8, i32 0, i32 3
  store i32 -1, i32* %112, align 4
  %113 = call i64 @mktime(%struct.tm* %8)
  store i64 %113, i64* %14, align 8
  %114 = load i32*, i32** %6, align 8
  %115 = load i32, i32* %114, align 4
  %116 = sext i32 %115 to i64
  %117 = load i64, i64* %14, align 8
  %118 = icmp sgt i64 %116, %117
  br i1 %118, label %119, label %128

119:                                              ; preds = %111
  %120 = load i32*, i32** %6, align 8
  %121 = load i32, i32* %120, align 4
  %122 = sext i32 %121 to i64
  %123 = load i64, i64* %14, align 8
  %124 = sub nsw i64 %122, %123
  %125 = sdiv i64 %124, 60
  %126 = trunc i64 %125 to i32
  %127 = load i32*, i32** %7, align 8
  store i32 %126, i32* %127, align 4
  br label %138

128:                                              ; preds = %111
  %129 = load i64, i64* %14, align 8
  %130 = load i32*, i32** %6, align 8
  %131 = load i32, i32* %130, align 4
  %132 = sext i32 %131 to i64
  %133 = sub nsw i64 %129, %132
  %134 = sdiv i64 %133, 60
  %135 = trunc i64 %134 to i32
  %136 = sub nsw i32 0, %135
  %137 = load i32*, i32** %7, align 8
  store i32 %136, i32* %137, align 4
  br label %138

138:                                              ; preds = %128, %119
  br label %139

139:                                              ; preds = %138, %107
  %140 = load i32, i32* %9, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %149, label %142

142:                                              ; preds = %139
  %143 = load i32*, i32** %7, align 8
  %144 = load i32, i32* %143, align 4
  %145 = mul nsw i32 %144, 60
  %146 = load i32*, i32** %6, align 8
  %147 = load i32, i32* %146, align 4
  %148 = sub nsw i32 %147, %145
  store i32 %148, i32* %146, align 4
  br label %149

149:                                              ; preds = %142, %139
  store i32 0, i32* %4, align 4
  br label %150

150:                                              ; preds = %149, %106, %43
  %151 = load i32, i32* %4, align 4
  ret i32 %151
}

declare dso_local i32 @memset(%struct.tm*, i32, i32) #1

declare dso_local i32 @match_object_header_date(i8*, i32*, i32*) #1

declare dso_local i64 @isalpha(i8 zeroext) #1

declare dso_local i32 @match_alpha(i8*, %struct.tm*, i32*) #1

declare dso_local i64 @isdigit(i8 signext) #1

declare dso_local i32 @match_digit(i8*, %struct.tm*, i32*, i32*) #1

declare dso_local i32 @match_tz(i8*, i32*) #1

declare dso_local i32 @tm_to_time_t(%struct.tm*) #1

declare dso_local i64 @mktime(%struct.tm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
