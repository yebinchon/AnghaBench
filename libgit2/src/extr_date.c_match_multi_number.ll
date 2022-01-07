; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_date.c_match_multi_number.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_date.c_match_multi_number.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tm = type { i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i8, i8*, i8*, %struct.tm*)* @match_multi_number to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @match_multi_number(i64 %0, i8 signext %1, i8* %2, i8* %3, %struct.tm* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8, align 1
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.tm*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.tm, align 8
  %14 = alloca %struct.tm*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store i64 %0, i64* %7, align 8
  store i8 %1, i8* %8, align 1
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store %struct.tm* %4, %struct.tm** %11, align 8
  %17 = load i8*, i8** %10, align 8
  %18 = getelementptr inbounds i8, i8* %17, i64 1
  %19 = call i64 @strtol(i8* %18, i8** %10, i32 10)
  store i64 %19, i64* %15, align 8
  store i64 -1, i64* %16, align 8
  %20 = load i8*, i8** %10, align 8
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = load i8, i8* %8, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp eq i32 %22, %24
  br i1 %25, label %26, label %36

26:                                               ; preds = %5
  %27 = load i8*, i8** %10, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 1
  %29 = load i8, i8* %28, align 1
  %30 = call i64 @isdigit(i8 signext %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %26
  %33 = load i8*, i8** %10, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 1
  %35 = call i64 @strtol(i8* %34, i8** %10, i32 10)
  store i64 %35, i64* %16, align 8
  br label %36

36:                                               ; preds = %32, %26, %5
  %37 = load i8, i8* %8, align 1
  %38 = sext i8 %37 to i32
  switch i32 %38, label %137 [
    i32 58, label %39
    i32 45, label %69
    i32 47, label %69
    i32 46, label %69
  ]

39:                                               ; preds = %36
  %40 = load i64, i64* %16, align 8
  %41 = icmp slt i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %39
  store i64 0, i64* %16, align 8
  br label %43

43:                                               ; preds = %42, %39
  %44 = load i64, i64* %7, align 8
  %45 = icmp ult i64 %44, 25
  br i1 %45, label %46, label %68

46:                                               ; preds = %43
  %47 = load i64, i64* %15, align 8
  %48 = icmp sge i64 %47, 0
  br i1 %48, label %49, label %68

49:                                               ; preds = %46
  %50 = load i64, i64* %15, align 8
  %51 = icmp slt i64 %50, 60
  br i1 %51, label %52, label %68

52:                                               ; preds = %49
  %53 = load i64, i64* %16, align 8
  %54 = icmp sge i64 %53, 0
  br i1 %54, label %55, label %68

55:                                               ; preds = %52
  %56 = load i64, i64* %16, align 8
  %57 = icmp sle i64 %56, 60
  br i1 %57, label %58, label %68

58:                                               ; preds = %55
  %59 = load i64, i64* %7, align 8
  %60 = load %struct.tm*, %struct.tm** %11, align 8
  %61 = getelementptr inbounds %struct.tm, %struct.tm* %60, i32 0, i32 0
  store i64 %59, i64* %61, align 8
  %62 = load i64, i64* %15, align 8
  %63 = load %struct.tm*, %struct.tm** %11, align 8
  %64 = getelementptr inbounds %struct.tm, %struct.tm* %63, i32 0, i32 1
  store i64 %62, i64* %64, align 8
  %65 = load i64, i64* %16, align 8
  %66 = load %struct.tm*, %struct.tm** %11, align 8
  %67 = getelementptr inbounds %struct.tm, %struct.tm* %66, i32 0, i32 2
  store i64 %65, i64* %67, align 8
  br label %137

68:                                               ; preds = %55, %52, %49, %46, %43
  store i64 0, i64* %6, align 8
  br label %143

69:                                               ; preds = %36, %36, %36
  %70 = call i32 @time(i32* null)
  store i32 %70, i32* %12, align 4
  store %struct.tm* null, %struct.tm** %14, align 8
  %71 = call i32 @p_gmtime_r(i32* %12, %struct.tm* %13)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %69
  store %struct.tm* %13, %struct.tm** %14, align 8
  br label %74

74:                                               ; preds = %73, %69
  %75 = load i64, i64* %7, align 8
  %76 = icmp ugt i64 %75, 70
  br i1 %76, label %77, label %98

77:                                               ; preds = %74
  %78 = load i64, i64* %7, align 8
  %79 = load i64, i64* %15, align 8
  %80 = load i64, i64* %16, align 8
  %81 = load %struct.tm*, %struct.tm** %14, align 8
  %82 = load i32, i32* %12, align 4
  %83 = load %struct.tm*, %struct.tm** %11, align 8
  %84 = call i32 @is_date(i64 %78, i64 %79, i64 %80, %struct.tm* %81, i32 %82, %struct.tm* %83)
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %77
  br label %137

87:                                               ; preds = %77
  %88 = load i64, i64* %7, align 8
  %89 = load i64, i64* %16, align 8
  %90 = load i64, i64* %15, align 8
  %91 = load %struct.tm*, %struct.tm** %14, align 8
  %92 = load i32, i32* %12, align 4
  %93 = load %struct.tm*, %struct.tm** %11, align 8
  %94 = call i32 @is_date(i64 %88, i64 %89, i64 %90, %struct.tm* %91, i32 %92, %struct.tm* %93)
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %87
  br label %137

97:                                               ; preds = %87
  br label %98

98:                                               ; preds = %97, %74
  %99 = load i8, i8* %8, align 1
  %100 = sext i8 %99 to i32
  %101 = icmp ne i32 %100, 46
  br i1 %101, label %102, label %112

102:                                              ; preds = %98
  %103 = load i64, i64* %16, align 8
  %104 = load i64, i64* %7, align 8
  %105 = load i64, i64* %15, align 8
  %106 = load %struct.tm*, %struct.tm** %14, align 8
  %107 = load i32, i32* %12, align 4
  %108 = load %struct.tm*, %struct.tm** %11, align 8
  %109 = call i32 @is_date(i64 %103, i64 %104, i64 %105, %struct.tm* %106, i32 %107, %struct.tm* %108)
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %102
  br label %137

112:                                              ; preds = %102, %98
  %113 = load i64, i64* %16, align 8
  %114 = load i64, i64* %15, align 8
  %115 = load i64, i64* %7, align 8
  %116 = load %struct.tm*, %struct.tm** %14, align 8
  %117 = load i32, i32* %12, align 4
  %118 = load %struct.tm*, %struct.tm** %11, align 8
  %119 = call i32 @is_date(i64 %113, i64 %114, i64 %115, %struct.tm* %116, i32 %117, %struct.tm* %118)
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %112
  br label %137

122:                                              ; preds = %112
  %123 = load i8, i8* %8, align 1
  %124 = sext i8 %123 to i32
  %125 = icmp eq i32 %124, 46
  br i1 %125, label %126, label %136

126:                                              ; preds = %122
  %127 = load i64, i64* %16, align 8
  %128 = load i64, i64* %7, align 8
  %129 = load i64, i64* %15, align 8
  %130 = load %struct.tm*, %struct.tm** %14, align 8
  %131 = load i32, i32* %12, align 4
  %132 = load %struct.tm*, %struct.tm** %11, align 8
  %133 = call i32 @is_date(i64 %127, i64 %128, i64 %129, %struct.tm* %130, i32 %131, %struct.tm* %132)
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %136

135:                                              ; preds = %126
  br label %137

136:                                              ; preds = %126, %122
  store i64 0, i64* %6, align 8
  br label %143

137:                                              ; preds = %36, %135, %121, %111, %96, %86, %58
  %138 = load i8*, i8** %10, align 8
  %139 = load i8*, i8** %9, align 8
  %140 = ptrtoint i8* %138 to i64
  %141 = ptrtoint i8* %139 to i64
  %142 = sub i64 %140, %141
  store i64 %142, i64* %6, align 8
  br label %143

143:                                              ; preds = %137, %136, %68
  %144 = load i64, i64* %6, align 8
  ret i64 %144
}

declare dso_local i64 @strtol(i8*, i8**, i32) #1

declare dso_local i64 @isdigit(i8 signext) #1

declare dso_local i32 @time(i32*) #1

declare dso_local i32 @p_gmtime_r(i32*, %struct.tm*) #1

declare dso_local i32 @is_date(i64, i64, i64, %struct.tm*, i32, %struct.tm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
