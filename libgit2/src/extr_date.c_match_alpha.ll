; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_date.c_match_alpha.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_date.c_match_alpha.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i32, i64 }
%struct.tm = type { i32, i32, i32 }

@month_names = common dso_local global i8** null, align 8
@weekday_names = common dso_local global i8** null, align 8
@timezone_names = common dso_local global %struct.TYPE_3__* null, align 8
@.str = private unnamed_addr constant [3 x i8] c"PM\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"AM\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, %struct.tm*, i32*)* @match_alpha to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @match_alpha(i8* %0, %struct.tm* %1, i32* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.tm*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store %struct.tm* %1, %struct.tm** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 0, i32* %8, align 4
  br label %13

13:                                               ; preds = %33, %3
  %14 = load i32, i32* %8, align 4
  %15 = icmp ult i32 %14, 12
  br i1 %15, label %16, label %36

16:                                               ; preds = %13
  %17 = load i8*, i8** %5, align 8
  %18 = load i8**, i8*** @month_names, align 8
  %19 = load i32, i32* %8, align 4
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds i8*, i8** %18, i64 %20
  %22 = load i8*, i8** %21, align 8
  %23 = call i32 @match_string(i8* %17, i8* %22)
  %24 = sext i32 %23 to i64
  store i64 %24, i64* %9, align 8
  %25 = load i64, i64* %9, align 8
  %26 = icmp uge i64 %25, 3
  br i1 %26, label %27, label %32

27:                                               ; preds = %16
  %28 = load i32, i32* %8, align 4
  %29 = load %struct.tm*, %struct.tm** %6, align 8
  %30 = getelementptr inbounds %struct.tm, %struct.tm* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 4
  %31 = load i64, i64* %9, align 8
  store i64 %31, i64* %4, align 8
  br label %145

32:                                               ; preds = %16
  br label %33

33:                                               ; preds = %32
  %34 = load i32, i32* %8, align 4
  %35 = add i32 %34, 1
  store i32 %35, i32* %8, align 4
  br label %13

36:                                               ; preds = %13
  store i32 0, i32* %8, align 4
  br label %37

37:                                               ; preds = %57, %36
  %38 = load i32, i32* %8, align 4
  %39 = icmp ult i32 %38, 7
  br i1 %39, label %40, label %60

40:                                               ; preds = %37
  %41 = load i8*, i8** %5, align 8
  %42 = load i8**, i8*** @weekday_names, align 8
  %43 = load i32, i32* %8, align 4
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds i8*, i8** %42, i64 %44
  %46 = load i8*, i8** %45, align 8
  %47 = call i32 @match_string(i8* %41, i8* %46)
  %48 = sext i32 %47 to i64
  store i64 %48, i64* %10, align 8
  %49 = load i64, i64* %10, align 8
  %50 = icmp uge i64 %49, 3
  br i1 %50, label %51, label %56

51:                                               ; preds = %40
  %52 = load i32, i32* %8, align 4
  %53 = load %struct.tm*, %struct.tm** %6, align 8
  %54 = getelementptr inbounds %struct.tm, %struct.tm* %53, i32 0, i32 1
  store i32 %52, i32* %54, align 4
  %55 = load i64, i64* %10, align 8
  store i64 %55, i64* %4, align 8
  br label %145

56:                                               ; preds = %40
  br label %57

57:                                               ; preds = %56
  %58 = load i32, i32* %8, align 4
  %59 = add i32 %58, 1
  store i32 %59, i32* %8, align 4
  br label %37

60:                                               ; preds = %37
  store i32 0, i32* %8, align 4
  br label %61

61:                                               ; preds = %115, %60
  %62 = load i32, i32* %8, align 4
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** @timezone_names, align 8
  %64 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %63)
  %65 = icmp ult i32 %62, %64
  br i1 %65, label %66, label %118

66:                                               ; preds = %61
  %67 = load i8*, i8** %5, align 8
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** @timezone_names, align 8
  %69 = load i32, i32* %8, align 4
  %70 = zext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 0
  %73 = load i8*, i8** %72, align 8
  %74 = call i32 @match_string(i8* %67, i8* %73)
  %75 = sext i32 %74 to i64
  store i64 %75, i64* %11, align 8
  %76 = load i64, i64* %11, align 8
  %77 = icmp uge i64 %76, 3
  br i1 %77, label %88, label %78

78:                                               ; preds = %66
  %79 = load i64, i64* %11, align 8
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** @timezone_names, align 8
  %81 = load i32, i32* %8, align 4
  %82 = zext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 0
  %85 = load i8*, i8** %84, align 8
  %86 = call i64 @strlen(i8* %85)
  %87 = icmp eq i64 %79, %86
  br i1 %87, label %88, label %114

88:                                               ; preds = %78, %66
  %89 = load %struct.TYPE_3__*, %struct.TYPE_3__** @timezone_names, align 8
  %90 = load i32, i32* %8, align 4
  %91 = zext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  store i32 %94, i32* %12, align 4
  %95 = load %struct.TYPE_3__*, %struct.TYPE_3__** @timezone_names, align 8
  %96 = load i32, i32* %8, align 4
  %97 = zext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 2
  %100 = load i64, i64* %99, align 8
  %101 = load i32, i32* %12, align 4
  %102 = sext i32 %101 to i64
  %103 = add nsw i64 %102, %100
  %104 = trunc i64 %103 to i32
  store i32 %104, i32* %12, align 4
  %105 = load i32*, i32** %7, align 8
  %106 = load i32, i32* %105, align 4
  %107 = icmp eq i32 %106, -1
  br i1 %107, label %108, label %112

108:                                              ; preds = %88
  %109 = load i32, i32* %12, align 4
  %110 = mul nsw i32 60, %109
  %111 = load i32*, i32** %7, align 8
  store i32 %110, i32* %111, align 4
  br label %112

112:                                              ; preds = %108, %88
  %113 = load i64, i64* %11, align 8
  store i64 %113, i64* %4, align 8
  br label %145

114:                                              ; preds = %78
  br label %115

115:                                              ; preds = %114
  %116 = load i32, i32* %8, align 4
  %117 = add i32 %116, 1
  store i32 %117, i32* %8, align 4
  br label %61

118:                                              ; preds = %61
  %119 = load i8*, i8** %5, align 8
  %120 = call i32 @match_string(i8* %119, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %121 = icmp eq i32 %120, 2
  br i1 %121, label %122, label %130

122:                                              ; preds = %118
  %123 = load %struct.tm*, %struct.tm** %6, align 8
  %124 = getelementptr inbounds %struct.tm, %struct.tm* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 4
  %126 = srem i32 %125, 12
  %127 = add nsw i32 %126, 12
  %128 = load %struct.tm*, %struct.tm** %6, align 8
  %129 = getelementptr inbounds %struct.tm, %struct.tm* %128, i32 0, i32 2
  store i32 %127, i32* %129, align 4
  store i64 2, i64* %4, align 8
  br label %145

130:                                              ; preds = %118
  %131 = load i8*, i8** %5, align 8
  %132 = call i32 @match_string(i8* %131, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %133 = icmp eq i32 %132, 2
  br i1 %133, label %134, label %142

134:                                              ; preds = %130
  %135 = load %struct.tm*, %struct.tm** %6, align 8
  %136 = getelementptr inbounds %struct.tm, %struct.tm* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 4
  %138 = srem i32 %137, 12
  %139 = add nsw i32 %138, 0
  %140 = load %struct.tm*, %struct.tm** %6, align 8
  %141 = getelementptr inbounds %struct.tm, %struct.tm* %140, i32 0, i32 2
  store i32 %139, i32* %141, align 4
  store i64 2, i64* %4, align 8
  br label %145

142:                                              ; preds = %130
  %143 = load i8*, i8** %5, align 8
  %144 = call i64 @skip_alpha(i8* %143)
  store i64 %144, i64* %4, align 8
  br label %145

145:                                              ; preds = %142, %134, %122, %112, %51, %27
  %146 = load i64, i64* %4, align 8
  ret i64 %146
}

declare dso_local i32 @match_string(i8*, i8*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_3__*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @skip_alpha(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
