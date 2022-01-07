; ModuleID = '/home/carl/AnghaBench/git/extr_date.c_match_alpha.c'
source_filename = "/home/carl/AnghaBench/git/extr_date.c_match_alpha.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i32, i64 }
%struct.tm = type { i32, i32, i32 }

@month_names = common dso_local global i8** null, align 8
@weekday_names = common dso_local global i8** null, align 8
@timezone_names = common dso_local global %struct.TYPE_3__* null, align 8
@.str = private unnamed_addr constant [3 x i8] c"PM\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"AM\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.tm*, i32*)* @match_alpha to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @match_alpha(i8* %0, %struct.tm* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.tm*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store %struct.tm* %1, %struct.tm** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 0, i32* %8, align 4
  br label %13

13:                                               ; preds = %32, %3
  %14 = load i32, i32* %8, align 4
  %15 = icmp slt i32 %14, 12
  br i1 %15, label %16, label %35

16:                                               ; preds = %13
  %17 = load i8*, i8** %5, align 8
  %18 = load i8**, i8*** @month_names, align 8
  %19 = load i32, i32* %8, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i8*, i8** %18, i64 %20
  %22 = load i8*, i8** %21, align 8
  %23 = call i32 @match_string(i8* %17, i8* %22)
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* %9, align 4
  %25 = icmp sge i32 %24, 3
  br i1 %25, label %26, label %31

26:                                               ; preds = %16
  %27 = load i32, i32* %8, align 4
  %28 = load %struct.tm*, %struct.tm** %6, align 8
  %29 = getelementptr inbounds %struct.tm, %struct.tm* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 4
  %30 = load i32, i32* %9, align 4
  store i32 %30, i32* %4, align 4
  br label %142

31:                                               ; preds = %16
  br label %32

32:                                               ; preds = %31
  %33 = load i32, i32* %8, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %8, align 4
  br label %13

35:                                               ; preds = %13
  store i32 0, i32* %8, align 4
  br label %36

36:                                               ; preds = %55, %35
  %37 = load i32, i32* %8, align 4
  %38 = icmp slt i32 %37, 7
  br i1 %38, label %39, label %58

39:                                               ; preds = %36
  %40 = load i8*, i8** %5, align 8
  %41 = load i8**, i8*** @weekday_names, align 8
  %42 = load i32, i32* %8, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i8*, i8** %41, i64 %43
  %45 = load i8*, i8** %44, align 8
  %46 = call i32 @match_string(i8* %40, i8* %45)
  store i32 %46, i32* %10, align 4
  %47 = load i32, i32* %10, align 4
  %48 = icmp sge i32 %47, 3
  br i1 %48, label %49, label %54

49:                                               ; preds = %39
  %50 = load i32, i32* %8, align 4
  %51 = load %struct.tm*, %struct.tm** %6, align 8
  %52 = getelementptr inbounds %struct.tm, %struct.tm* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 4
  %53 = load i32, i32* %10, align 4
  store i32 %53, i32* %4, align 4
  br label %142

54:                                               ; preds = %39
  br label %55

55:                                               ; preds = %54
  %56 = load i32, i32* %8, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %8, align 4
  br label %36

58:                                               ; preds = %36
  store i32 0, i32* %8, align 4
  br label %59

59:                                               ; preds = %112, %58
  %60 = load i32, i32* %8, align 4
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** @timezone_names, align 8
  %62 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %61)
  %63 = icmp slt i32 %60, %62
  br i1 %63, label %64, label %115

64:                                               ; preds = %59
  %65 = load i8*, i8** %5, align 8
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** @timezone_names, align 8
  %67 = load i32, i32* %8, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 0
  %71 = load i8*, i8** %70, align 8
  %72 = call i32 @match_string(i8* %65, i8* %71)
  store i32 %72, i32* %11, align 4
  %73 = load i32, i32* %11, align 4
  %74 = icmp sge i32 %73, 3
  br i1 %74, label %85, label %75

75:                                               ; preds = %64
  %76 = load i32, i32* %11, align 4
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** @timezone_names, align 8
  %78 = load i32, i32* %8, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 0
  %82 = load i8*, i8** %81, align 8
  %83 = call i32 @strlen(i8* %82)
  %84 = icmp eq i32 %76, %83
  br i1 %84, label %85, label %111

85:                                               ; preds = %75, %64
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** @timezone_names, align 8
  %87 = load i32, i32* %8, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  store i32 %91, i32* %12, align 4
  %92 = load %struct.TYPE_3__*, %struct.TYPE_3__** @timezone_names, align 8
  %93 = load i32, i32* %8, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 2
  %97 = load i64, i64* %96, align 8
  %98 = load i32, i32* %12, align 4
  %99 = sext i32 %98 to i64
  %100 = add nsw i64 %99, %97
  %101 = trunc i64 %100 to i32
  store i32 %101, i32* %12, align 4
  %102 = load i32*, i32** %7, align 8
  %103 = load i32, i32* %102, align 4
  %104 = icmp eq i32 %103, -1
  br i1 %104, label %105, label %109

105:                                              ; preds = %85
  %106 = load i32, i32* %12, align 4
  %107 = mul nsw i32 60, %106
  %108 = load i32*, i32** %7, align 8
  store i32 %107, i32* %108, align 4
  br label %109

109:                                              ; preds = %105, %85
  %110 = load i32, i32* %11, align 4
  store i32 %110, i32* %4, align 4
  br label %142

111:                                              ; preds = %75
  br label %112

112:                                              ; preds = %111
  %113 = load i32, i32* %8, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %8, align 4
  br label %59

115:                                              ; preds = %59
  %116 = load i8*, i8** %5, align 8
  %117 = call i32 @match_string(i8* %116, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %118 = icmp eq i32 %117, 2
  br i1 %118, label %119, label %127

119:                                              ; preds = %115
  %120 = load %struct.tm*, %struct.tm** %6, align 8
  %121 = getelementptr inbounds %struct.tm, %struct.tm* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 4
  %123 = srem i32 %122, 12
  %124 = add nsw i32 %123, 12
  %125 = load %struct.tm*, %struct.tm** %6, align 8
  %126 = getelementptr inbounds %struct.tm, %struct.tm* %125, i32 0, i32 2
  store i32 %124, i32* %126, align 4
  store i32 2, i32* %4, align 4
  br label %142

127:                                              ; preds = %115
  %128 = load i8*, i8** %5, align 8
  %129 = call i32 @match_string(i8* %128, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %130 = icmp eq i32 %129, 2
  br i1 %130, label %131, label %139

131:                                              ; preds = %127
  %132 = load %struct.tm*, %struct.tm** %6, align 8
  %133 = getelementptr inbounds %struct.tm, %struct.tm* %132, i32 0, i32 2
  %134 = load i32, i32* %133, align 4
  %135 = srem i32 %134, 12
  %136 = add nsw i32 %135, 0
  %137 = load %struct.tm*, %struct.tm** %6, align 8
  %138 = getelementptr inbounds %struct.tm, %struct.tm* %137, i32 0, i32 2
  store i32 %136, i32* %138, align 4
  store i32 2, i32* %4, align 4
  br label %142

139:                                              ; preds = %127
  %140 = load i8*, i8** %5, align 8
  %141 = call i32 @skip_alpha(i8* %140)
  store i32 %141, i32* %4, align 4
  br label %142

142:                                              ; preds = %139, %131, %119, %109, %49, %26
  %143 = load i32, i32* %4, align 4
  ret i32 %143
}

declare dso_local i32 @match_string(i8*, i8*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_3__*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @skip_alpha(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
