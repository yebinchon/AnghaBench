; ModuleID = '/home/carl/AnghaBench/git/extr_date.c_match_multi_number.c'
source_filename = "/home/carl/AnghaBench/git/extr_date.c_match_multi_number.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tm = type { i32, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8, i8*, i8*, %struct.tm*, i32)* @match_multi_number to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @match_multi_number(i32 %0, i8 signext %1, i8* %2, i8* %3, %struct.tm* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8, align 1
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.tm*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.tm, align 8
  %15 = alloca %struct.tm*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  store i32 %0, i32* %8, align 4
  store i8 %1, i8* %9, align 1
  store i8* %2, i8** %10, align 8
  store i8* %3, i8** %11, align 8
  store %struct.tm* %4, %struct.tm** %12, align 8
  store i32 %5, i32* %13, align 4
  %18 = load i8*, i8** %11, align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 1
  %20 = call i64 @strtol(i8* %19, i8** %11, i32 10)
  store i64 %20, i64* %16, align 8
  store i64 -1, i64* %17, align 8
  %21 = load i8*, i8** %11, align 8
  %22 = load i8, i8* %21, align 1
  %23 = sext i8 %22 to i32
  %24 = load i8, i8* %9, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp eq i32 %23, %25
  br i1 %26, label %27, label %37

27:                                               ; preds = %6
  %28 = load i8*, i8** %11, align 8
  %29 = getelementptr inbounds i8, i8* %28, i64 1
  %30 = load i8, i8* %29, align 1
  %31 = call i64 @isdigit(i8 signext %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %27
  %34 = load i8*, i8** %11, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 1
  %36 = call i64 @strtol(i8* %35, i8** %11, i32 10)
  store i64 %36, i64* %17, align 8
  br label %37

37:                                               ; preds = %33, %27, %6
  %38 = load i8, i8* %9, align 1
  %39 = sext i8 %38 to i32
  switch i32 %39, label %146 [
    i32 58, label %40
    i32 45, label %70
    i32 47, label %70
    i32 46, label %70
  ]

40:                                               ; preds = %37
  %41 = load i64, i64* %17, align 8
  %42 = icmp slt i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %40
  store i64 0, i64* %17, align 8
  br label %44

44:                                               ; preds = %43, %40
  %45 = load i32, i32* %8, align 4
  %46 = icmp slt i32 %45, 25
  br i1 %46, label %47, label %69

47:                                               ; preds = %44
  %48 = load i64, i64* %16, align 8
  %49 = icmp sge i64 %48, 0
  br i1 %49, label %50, label %69

50:                                               ; preds = %47
  %51 = load i64, i64* %16, align 8
  %52 = icmp slt i64 %51, 60
  br i1 %52, label %53, label %69

53:                                               ; preds = %50
  %54 = load i64, i64* %17, align 8
  %55 = icmp sge i64 %54, 0
  br i1 %55, label %56, label %69

56:                                               ; preds = %53
  %57 = load i64, i64* %17, align 8
  %58 = icmp sle i64 %57, 60
  br i1 %58, label %59, label %69

59:                                               ; preds = %56
  %60 = load i32, i32* %8, align 4
  %61 = load %struct.tm*, %struct.tm** %12, align 8
  %62 = getelementptr inbounds %struct.tm, %struct.tm* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 8
  %63 = load i64, i64* %16, align 8
  %64 = load %struct.tm*, %struct.tm** %12, align 8
  %65 = getelementptr inbounds %struct.tm, %struct.tm* %64, i32 0, i32 1
  store i64 %63, i64* %65, align 8
  %66 = load i64, i64* %17, align 8
  %67 = load %struct.tm*, %struct.tm** %12, align 8
  %68 = getelementptr inbounds %struct.tm, %struct.tm* %67, i32 0, i32 2
  store i64 %66, i64* %68, align 8
  br label %146

69:                                               ; preds = %56, %53, %50, %47, %44
  store i32 0, i32* %7, align 4
  br label %153

70:                                               ; preds = %37, %37, %37
  %71 = load i32, i32* %13, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %75, label %73

73:                                               ; preds = %70
  %74 = call i32 @time(i32* null)
  store i32 %74, i32* %13, align 4
  br label %75

75:                                               ; preds = %73, %70
  store %struct.tm* null, %struct.tm** %15, align 8
  %76 = call i32 @gmtime_r(i32* %13, %struct.tm* %14)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %75
  store %struct.tm* %14, %struct.tm** %15, align 8
  br label %79

79:                                               ; preds = %78, %75
  %80 = load i32, i32* %8, align 4
  %81 = icmp sgt i32 %80, 70
  br i1 %81, label %82, label %105

82:                                               ; preds = %79
  %83 = load i32, i32* %8, align 4
  %84 = sext i32 %83 to i64
  %85 = load i64, i64* %16, align 8
  %86 = trunc i64 %85 to i32
  %87 = load i64, i64* %17, align 8
  %88 = load i32, i32* %13, align 4
  %89 = load %struct.tm*, %struct.tm** %12, align 8
  %90 = call i32 @is_date(i64 %84, i32 %86, i64 %87, %struct.tm* null, i32 %88, %struct.tm* %89)
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %82
  br label %146

93:                                               ; preds = %82
  %94 = load i32, i32* %8, align 4
  %95 = sext i32 %94 to i64
  %96 = load i64, i64* %17, align 8
  %97 = trunc i64 %96 to i32
  %98 = load i64, i64* %16, align 8
  %99 = load i32, i32* %13, align 4
  %100 = load %struct.tm*, %struct.tm** %12, align 8
  %101 = call i32 @is_date(i64 %95, i32 %97, i64 %98, %struct.tm* null, i32 %99, %struct.tm* %100)
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %93
  br label %146

104:                                              ; preds = %93
  br label %105

105:                                              ; preds = %104, %79
  %106 = load i8, i8* %9, align 1
  %107 = sext i8 %106 to i32
  %108 = icmp ne i32 %107, 46
  br i1 %108, label %109, label %119

109:                                              ; preds = %105
  %110 = load i64, i64* %17, align 8
  %111 = load i32, i32* %8, align 4
  %112 = load i64, i64* %16, align 8
  %113 = load %struct.tm*, %struct.tm** %15, align 8
  %114 = load i32, i32* %13, align 4
  %115 = load %struct.tm*, %struct.tm** %12, align 8
  %116 = call i32 @is_date(i64 %110, i32 %111, i64 %112, %struct.tm* %113, i32 %114, %struct.tm* %115)
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %109
  br label %146

119:                                              ; preds = %109, %105
  %120 = load i64, i64* %17, align 8
  %121 = load i64, i64* %16, align 8
  %122 = trunc i64 %121 to i32
  %123 = load i32, i32* %8, align 4
  %124 = sext i32 %123 to i64
  %125 = load %struct.tm*, %struct.tm** %15, align 8
  %126 = load i32, i32* %13, align 4
  %127 = load %struct.tm*, %struct.tm** %12, align 8
  %128 = call i32 @is_date(i64 %120, i32 %122, i64 %124, %struct.tm* %125, i32 %126, %struct.tm* %127)
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %131

130:                                              ; preds = %119
  br label %146

131:                                              ; preds = %119
  %132 = load i8, i8* %9, align 1
  %133 = sext i8 %132 to i32
  %134 = icmp eq i32 %133, 46
  br i1 %134, label %135, label %145

135:                                              ; preds = %131
  %136 = load i64, i64* %17, align 8
  %137 = load i32, i32* %8, align 4
  %138 = load i64, i64* %16, align 8
  %139 = load %struct.tm*, %struct.tm** %15, align 8
  %140 = load i32, i32* %13, align 4
  %141 = load %struct.tm*, %struct.tm** %12, align 8
  %142 = call i32 @is_date(i64 %136, i32 %137, i64 %138, %struct.tm* %139, i32 %140, %struct.tm* %141)
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %145

144:                                              ; preds = %135
  br label %146

145:                                              ; preds = %135, %131
  store i32 0, i32* %7, align 4
  br label %153

146:                                              ; preds = %37, %144, %130, %118, %103, %92, %59
  %147 = load i8*, i8** %11, align 8
  %148 = load i8*, i8** %10, align 8
  %149 = ptrtoint i8* %147 to i64
  %150 = ptrtoint i8* %148 to i64
  %151 = sub i64 %149, %150
  %152 = trunc i64 %151 to i32
  store i32 %152, i32* %7, align 4
  br label %153

153:                                              ; preds = %146, %145, %69
  %154 = load i32, i32* %7, align 4
  ret i32 %154
}

declare dso_local i64 @strtol(i8*, i8**, i32) #1

declare dso_local i64 @isdigit(i8 signext) #1

declare dso_local i32 @time(i32*) #1

declare dso_local i32 @gmtime_r(i32*, %struct.tm*) #1

declare dso_local i32 @is_date(i64, i32, i64, %struct.tm*, i32, %struct.tm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
