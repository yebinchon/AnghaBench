; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_date.c_parse_date_basic.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_date.c_parse_date_basic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tm = type { i32, i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*, i32*)* @parse_date_basic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_date_basic(i8* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.tm, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i8, align 1
  store i8* %0, i8** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %14 = load i32*, i32** %6, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %3
  store i32* %10, i32** %6, align 8
  br label %17

17:                                               ; preds = %16, %3
  %18 = load i32*, i32** %7, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %17
  store i32* %11, i32** %7, align 8
  br label %21

21:                                               ; preds = %20, %17
  %22 = call i32 @memset(%struct.tm* %8, i32 0, i32 28)
  %23 = getelementptr inbounds %struct.tm, %struct.tm* %8, i32 0, i32 0
  store i32 -1, i32* %23, align 4
  %24 = getelementptr inbounds %struct.tm, %struct.tm* %8, i32 0, i32 1
  store i32 -1, i32* %24, align 4
  %25 = getelementptr inbounds %struct.tm, %struct.tm* %8, i32 0, i32 2
  store i32 -1, i32* %25, align 4
  %26 = getelementptr inbounds %struct.tm, %struct.tm* %8, i32 0, i32 3
  store i32 -1, i32* %26, align 4
  %27 = getelementptr inbounds %struct.tm, %struct.tm* %8, i32 0, i32 4
  store i32 -1, i32* %27, align 4
  %28 = getelementptr inbounds %struct.tm, %struct.tm* %8, i32 0, i32 5
  store i32 -1, i32* %28, align 4
  %29 = getelementptr inbounds %struct.tm, %struct.tm* %8, i32 0, i32 6
  store i32 -1, i32* %29, align 4
  %30 = load i32*, i32** %7, align 8
  store i32 -1, i32* %30, align 4
  store i32 0, i32* %9, align 4
  %31 = load i8*, i8** %5, align 8
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp eq i32 %33, 64
  br i1 %34, label %35, label %43

35:                                               ; preds = %21
  %36 = load i8*, i8** %5, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 1
  %38 = load i32*, i32** %6, align 8
  %39 = load i32*, i32** %7, align 8
  %40 = call i32 @match_object_header_date(i8* %37, i32* %38, i32* %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %35
  store i32 0, i32* %4, align 4
  br label %129

43:                                               ; preds = %35, %21
  br label %44

44:                                               ; preds = %94, %43
  store i64 0, i64* %12, align 8
  %45 = load i8*, i8** %5, align 8
  %46 = load i8, i8* %45, align 1
  store i8 %46, i8* %13, align 1
  %47 = load i8, i8* %13, align 1
  %48 = icmp ne i8 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %44
  %50 = load i8, i8* %13, align 1
  %51 = zext i8 %50 to i32
  %52 = icmp eq i32 %51, 10
  br i1 %52, label %53, label %54

53:                                               ; preds = %49, %44
  br label %98

54:                                               ; preds = %49
  %55 = load i8, i8* %13, align 1
  %56 = call i64 @isalpha(i8 zeroext %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %54
  %59 = load i8*, i8** %5, align 8
  %60 = load i32*, i32** %7, align 8
  %61 = call i64 @match_alpha(i8* %59, %struct.tm* %8, i32* %60)
  store i64 %61, i64* %12, align 8
  br label %90

62:                                               ; preds = %54
  %63 = load i8, i8* %13, align 1
  %64 = call i64 @isdigit(i8 signext %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %62
  %67 = load i8*, i8** %5, align 8
  %68 = load i32*, i32** %7, align 8
  %69 = call i64 @match_digit(i8* %67, %struct.tm* %8, i32* %68, i32* %9)
  store i64 %69, i64* %12, align 8
  br label %89

70:                                               ; preds = %62
  %71 = load i8, i8* %13, align 1
  %72 = zext i8 %71 to i32
  %73 = icmp eq i32 %72, 45
  br i1 %73, label %78, label %74

74:                                               ; preds = %70
  %75 = load i8, i8* %13, align 1
  %76 = zext i8 %75 to i32
  %77 = icmp eq i32 %76, 43
  br i1 %77, label %78, label %88

78:                                               ; preds = %74, %70
  %79 = load i8*, i8** %5, align 8
  %80 = getelementptr inbounds i8, i8* %79, i64 1
  %81 = load i8, i8* %80, align 1
  %82 = call i64 @isdigit(i8 signext %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %78
  %85 = load i8*, i8** %5, align 8
  %86 = load i32*, i32** %7, align 8
  %87 = call i64 @match_tz(i8* %85, i32* %86)
  store i64 %87, i64* %12, align 8
  br label %88

88:                                               ; preds = %84, %78, %74
  br label %89

89:                                               ; preds = %88, %66
  br label %90

90:                                               ; preds = %89, %58
  %91 = load i64, i64* %12, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %94, label %93

93:                                               ; preds = %90
  store i64 1, i64* %12, align 8
  br label %94

94:                                               ; preds = %93, %90
  %95 = load i64, i64* %12, align 8
  %96 = load i8*, i8** %5, align 8
  %97 = getelementptr inbounds i8, i8* %96, i64 %95
  store i8* %97, i8** %5, align 8
  br label %44

98:                                               ; preds = %53
  %99 = call i32 @tm_to_time_t(%struct.tm* %8)
  %100 = load i32*, i32** %6, align 8
  store i32 %99, i32* %100, align 4
  %101 = load i32*, i32** %7, align 8
  %102 = load i32, i32* %101, align 4
  %103 = icmp eq i32 %102, -1
  br i1 %103, label %104, label %113

104:                                              ; preds = %98
  %105 = load i32*, i32** %6, align 8
  %106 = load i32, i32* %105, align 4
  %107 = sext i32 %106 to i64
  %108 = call i64 @mktime(%struct.tm* %8)
  %109 = sub nsw i64 %107, %108
  %110 = trunc i64 %109 to i32
  %111 = sdiv i32 %110, 60
  %112 = load i32*, i32** %7, align 8
  store i32 %111, i32* %112, align 4
  br label %113

113:                                              ; preds = %104, %98
  %114 = load i32*, i32** %6, align 8
  %115 = load i32, i32* %114, align 4
  %116 = icmp eq i32 %115, -1
  br i1 %116, label %117, label %118

117:                                              ; preds = %113
  store i32 -1, i32* %4, align 4
  br label %129

118:                                              ; preds = %113
  %119 = load i32, i32* %9, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %128, label %121

121:                                              ; preds = %118
  %122 = load i32*, i32** %7, align 8
  %123 = load i32, i32* %122, align 4
  %124 = mul nsw i32 %123, 60
  %125 = load i32*, i32** %6, align 8
  %126 = load i32, i32* %125, align 4
  %127 = sub nsw i32 %126, %124
  store i32 %127, i32* %125, align 4
  br label %128

128:                                              ; preds = %121, %118
  store i32 0, i32* %4, align 4
  br label %129

129:                                              ; preds = %128, %117, %42
  %130 = load i32, i32* %4, align 4
  ret i32 %130
}

declare dso_local i32 @memset(%struct.tm*, i32, i32) #1

declare dso_local i32 @match_object_header_date(i8*, i32*, i32*) #1

declare dso_local i64 @isalpha(i8 zeroext) #1

declare dso_local i64 @match_alpha(i8*, %struct.tm*, i32*) #1

declare dso_local i64 @isdigit(i8 signext) #1

declare dso_local i64 @match_digit(i8*, %struct.tm*, i32*, i32*) #1

declare dso_local i64 @match_tz(i8*, i32*) #1

declare dso_local i32 @tm_to_time_t(%struct.tm*) #1

declare dso_local i64 @mktime(%struct.tm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
