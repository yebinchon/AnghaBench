; ModuleID = '/home/carl/AnghaBench/kphp-kdb/search/extr_search-profile.c_search_query_worst.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/search/extr_search-profile.c_search_query_worst.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8*, i64, i32, i32 }

@SQH_SIZE = common dso_local global i32 0, align 4
@SQH = common dso_local global %struct.TYPE_5__* null, align 8
@cmp_search_queries = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"%s\09%.6lf\09%d\09%d\0A\00", align 1
@SEARCH_QUERY_EXPIRATION_TIME = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @search_query_worst(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_5__**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load i32, i32* @SQH_SIZE, align 4
  %10 = sext i32 %9 to i64
  %11 = mul i64 %10, 8
  %12 = trunc i64 %11 to i32
  %13 = call %struct.TYPE_5__** @alloca(i32 %12)
  store %struct.TYPE_5__** %13, %struct.TYPE_5__*** %6, align 8
  store i32 0, i32* %5, align 4
  br label %14

14:                                               ; preds = %28, %2
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @SQH_SIZE, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %31

18:                                               ; preds = %14
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** @SQH, align 8
  %20 = load i32, i32* %5, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i64 1
  %24 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %6, align 8
  %25 = load i32, i32* %5, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %24, i64 %26
  store %struct.TYPE_5__* %23, %struct.TYPE_5__** %27, align 8
  br label %28

28:                                               ; preds = %18
  %29 = load i32, i32* %5, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %5, align 4
  br label %14

31:                                               ; preds = %14
  %32 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %6, align 8
  %33 = load i32, i32* @SQH_SIZE, align 4
  %34 = load i32, i32* @cmp_search_queries, align 4
  %35 = call i32 @qsort(%struct.TYPE_5__** %32, i32 %33, i32 8, i32 %34)
  %36 = load i8*, i8** %3, align 8
  store i8* %36, i8** %7, align 8
  %37 = load i32, i32* @SQH_SIZE, align 4
  %38 = sub nsw i32 %37, 1
  store i32 %38, i32* %5, align 4
  br label %39

39:                                               ; preds = %95, %31
  %40 = load i32, i32* %5, align 4
  %41 = icmp sge i32 %40, 0
  br i1 %41, label %42, label %98

42:                                               ; preds = %39
  %43 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %6, align 8
  %44 = load i32, i32* %5, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %43, i64 %45
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = load i8*, i8** %48, align 8
  %50 = call i32 @strlen(i8* %49)
  %51 = add nsw i32 %50, 30
  %52 = load i32, i32* %4, align 4
  %53 = icmp sgt i32 %51, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %42
  br label %98

55:                                               ; preds = %42
  %56 = load i8*, i8** %7, align 8
  %57 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %6, align 8
  %58 = load i32, i32* %5, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %57, i64 %59
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  %63 = load i8*, i8** %62, align 8
  %64 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %6, align 8
  %65 = load i32, i32* %5, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %64, i64 %66
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %6, align 8
  %72 = load i32, i32* %5, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %71, i64 %73
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %6, align 8
  %79 = load i32, i32* %5, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %78, i64 %80
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @SEARCH_QUERY_EXPIRATION_TIME, align 8
  %86 = sub nsw i64 %84, %85
  %87 = call i32 @sprintf(i8* %56, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* %63, i32 %70, i32 %77, i64 %86)
  store i32 %87, i32* %8, align 4
  %88 = load i32, i32* %8, align 4
  %89 = load i8*, i8** %7, align 8
  %90 = sext i32 %88 to i64
  %91 = getelementptr inbounds i8, i8* %89, i64 %90
  store i8* %91, i8** %7, align 8
  %92 = load i32, i32* %8, align 4
  %93 = load i32, i32* %4, align 4
  %94 = sub nsw i32 %93, %92
  store i32 %94, i32* %4, align 4
  br label %95

95:                                               ; preds = %55
  %96 = load i32, i32* %5, align 4
  %97 = add nsw i32 %96, -1
  store i32 %97, i32* %5, align 4
  br label %39

98:                                               ; preds = %54, %39
  %99 = load i8*, i8** %7, align 8
  %100 = load i8*, i8** %3, align 8
  %101 = ptrtoint i8* %99 to i64
  %102 = ptrtoint i8* %100 to i64
  %103 = sub i64 %101, %102
  %104 = trunc i64 %103 to i32
  ret i32 %104
}

declare dso_local %struct.TYPE_5__** @alloca(i32) #1

declare dso_local i32 @qsort(%struct.TYPE_5__**, i32, i32, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
