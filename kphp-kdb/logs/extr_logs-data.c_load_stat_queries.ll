; ModuleID = '/home/carl/AnghaBench/kphp-kdb/logs/extr_logs-data.c_load_stat_queries.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/logs/extr_logs-data.c_load_stat_queries.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@stat_queries_file = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"Can't open file %s with queries.\0A\00", align 1
@MAX_QUERY_LEN = common dso_local global i32 0, align 4
@stats_cnt = common dso_local global i64 0, align 8
@MAX_STATS = common dso_local global i64 0, align 8
@load_stat_queries.qs = internal global [3 x i8*] zeroinitializer, align 16
@.str.2 = private unnamed_addr constant [30 x i8] c"Too much commas in query %s.\0A\00", align 1
@stat_type = common dso_local global i64* null, align 8
@.str.3 = private unnamed_addr constant [23 x i8] c"Can't find type [%s].\0A\00", align 1
@stat_expr = common dso_local global %struct.TYPE_8__* null, align 8
@types = common dso_local global i32* null, align 8
@.str.4 = private unnamed_addr constant [45 x i8] c"Cannot compile expression [%s] : error [%s]\0A\00", align 1
@.str.5 = private unnamed_addr constant [52 x i8] c"Cannot convert result of query[%s] (string) to int\0A\00", align 1
@v_int = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [51 x i8] c"Max number of stat_queries %d exceeded. Aborting.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @load_stat_queries() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = load i8*, i8** @stat_queries_file, align 8
  %7 = icmp eq i8* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %0
  br label %130

9:                                                ; preds = %0
  %10 = load i8*, i8** @stat_queries_file, align 8
  %11 = call i32* @fopen(i8* %10, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %11, i32** %1, align 8
  %12 = load i32*, i32** %1, align 8
  %13 = icmp eq i32* %12, null
  br i1 %13, label %14, label %19

14:                                               ; preds = %9
  %15 = load i32, i32* @stderr, align 4
  %16 = load i8*, i8** @stat_queries_file, align 8
  %17 = call i32 (i32, i8*, ...) @fprintf(i32 %15, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i8* %16)
  %18 = call i32 @exit(i32 1) #4
  unreachable

19:                                               ; preds = %9
  %20 = load i32, i32* @MAX_QUERY_LEN, align 4
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %2, align 8
  %23 = alloca i8, i64 %21, align 16
  store i64 %21, i64* %3, align 8
  store i64 0, i64* @stats_cnt, align 8
  br label %24

24:                                               ; preds = %116, %19
  %25 = load i64, i64* @stats_cnt, align 8
  %26 = load i64, i64* @MAX_STATS, align 8
  %27 = icmp ult i64 %25, %26
  br i1 %27, label %28, label %119

28:                                               ; preds = %24
  %29 = load i32, i32* @MAX_QUERY_LEN, align 4
  %30 = load i32*, i32** %1, align 8
  %31 = call i32* @fgets(i8* %23, i32 %29, i32* %30)
  %32 = icmp eq i32* %31, null
  br i1 %32, label %33, label %34

33:                                               ; preds = %28
  br label %119

34:                                               ; preds = %28
  %35 = call i32 @strlen(i8* %23)
  %36 = icmp sle i32 %35, 1
  br i1 %36, label %37, label %40

37:                                               ; preds = %34
  %38 = load i64, i64* @stats_cnt, align 8
  %39 = add i64 %38, -1
  store i64 %39, i64* @stats_cnt, align 8
  br label %116

40:                                               ; preds = %34
  %41 = call i32 @strlen(i8* %23)
  %42 = sub nsw i32 %41, 1
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i8, i8* %23, i64 %43
  store i8 0, i8* %44, align 1
  %45 = call i32 @split(i8* %23, i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @load_stat_queries.qs, i64 0, i64 0), i32* %4, i32 2)
  %46 = load i32, i32* %4, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %40
  %49 = load i32, i32* @stderr, align 4
  %50 = call i32 (i32, i8*, ...) @fprintf(i32 %49, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i8* %23)
  %51 = call i32 @exit(i32 1) #4
  unreachable

52:                                               ; preds = %40
  %53 = load i8*, i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @load_stat_queries.qs, i64 0, i64 0), align 16
  %54 = call i64 @get_type_id(i8* %53)
  %55 = load i64*, i64** @stat_type, align 8
  %56 = load i64, i64* @stats_cnt, align 8
  %57 = getelementptr inbounds i64, i64* %55, i64 %56
  store i64 %54, i64* %57, align 8
  %58 = load i64*, i64** @stat_type, align 8
  %59 = load i64, i64* @stats_cnt, align 8
  %60 = getelementptr inbounds i64, i64* %58, i64 %59
  %61 = load i64, i64* %60, align 8
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %52
  %64 = load i32, i32* @stderr, align 4
  %65 = load i8*, i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @load_stat_queries.qs, i64 0, i64 0), align 16
  %66 = call i32 (i32, i8*, ...) @fprintf(i32 %64, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i8* %65)
  %67 = call i32 @exit(i32 1) #4
  unreachable

68:                                               ; preds = %52
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** @stat_expr, align 8
  %70 = load i64, i64* @stats_cnt, align 8
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i64 %70
  %72 = load i8*, i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @load_stat_queries.qs, i64 0, i64 1), align 8
  %73 = load i32*, i32** @types, align 8
  %74 = load i64*, i64** @stat_type, align 8
  %75 = load i64, i64* @stats_cnt, align 8
  %76 = getelementptr inbounds i64, i64* %74, i64 %75
  %77 = load i64, i64* %76, align 8
  %78 = getelementptr inbounds i32, i32* %73, i64 %77
  %79 = call i8* @expression_compile(%struct.TYPE_8__* %71, i8* %72, i32* %78)
  store i8* %79, i8** %5, align 8
  %80 = load i8*, i8** %5, align 8
  %81 = icmp ne i8* %80, null
  br i1 %81, label %82, label %88

82:                                               ; preds = %68
  %83 = load i32, i32* @stderr, align 4
  %84 = load i8*, i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @load_stat_queries.qs, i64 0, i64 1), align 8
  %85 = load i8*, i8** %5, align 8
  %86 = call i32 (i32, i8*, ...) @fprintf(i32 %83, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0), i8* %84, i8* %85)
  %87 = call i32 @exit(i32 1) #4
  unreachable

88:                                               ; preds = %68
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** @stat_expr, align 8
  %90 = load i64, i64* @stats_cnt, align 8
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 0
  %93 = load %struct.TYPE_7__*, %struct.TYPE_7__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = call i64 @IS_STR(i32 %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %104

99:                                               ; preds = %88
  %100 = load i32, i32* @stderr, align 4
  %101 = load i8*, i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @load_stat_queries.qs, i64 0, i64 1), align 8
  %102 = call i32 (i32, i8*, ...) @fprintf(i32 %100, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.5, i64 0, i64 0), i8* %101)
  %103 = call i32 @exit(i32 1) #4
  unreachable

104:                                              ; preds = %88
  %105 = load %struct.TYPE_8__*, %struct.TYPE_8__** @stat_expr, align 8
  %106 = load i64, i64* @stats_cnt, align 8
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i64 %106
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i32 0, i32 0
  %109 = load %struct.TYPE_7__*, %struct.TYPE_7__** %108, align 8
  %110 = load i32, i32* @v_int, align 4
  %111 = call %struct.TYPE_7__* @tree_conv(%struct.TYPE_7__* %109, i32 %110)
  %112 = load %struct.TYPE_8__*, %struct.TYPE_8__** @stat_expr, align 8
  %113 = load i64, i64* @stats_cnt, align 8
  %114 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i64 %113
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %114, i32 0, i32 0
  store %struct.TYPE_7__* %111, %struct.TYPE_7__** %115, align 8
  br label %116

116:                                              ; preds = %104, %37
  %117 = load i64, i64* @stats_cnt, align 8
  %118 = add i64 %117, 1
  store i64 %118, i64* @stats_cnt, align 8
  br label %24

119:                                              ; preds = %33, %24
  %120 = load i64, i64* @stats_cnt, align 8
  %121 = load i64, i64* @MAX_STATS, align 8
  %122 = icmp eq i64 %120, %121
  br i1 %122, label %123, label %128

123:                                              ; preds = %119
  %124 = load i32, i32* @stderr, align 4
  %125 = load i64, i64* @MAX_STATS, align 8
  %126 = call i32 (i32, i8*, ...) @fprintf(i32 %124, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.6, i64 0, i64 0), i64 %125)
  %127 = call i32 @exit(i32 1) #4
  unreachable

128:                                              ; preds = %119
  %129 = load i8*, i8** %2, align 8
  call void @llvm.stackrestore(i8* %129)
  br label %130

130:                                              ; preds = %128, %8
  ret void
}

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #3

declare dso_local i32* @fgets(i8*, i32, i32*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @split(i8*, i8**, i32*, i32) #1

declare dso_local i64 @get_type_id(i8*) #1

declare dso_local i8* @expression_compile(%struct.TYPE_8__*, i8*, i32*) #1

declare dso_local i64 @IS_STR(i32) #1

declare dso_local %struct.TYPE_7__* @tree_conv(%struct.TYPE_7__*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #3

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
