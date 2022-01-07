; ModuleID = '/home/carl/AnghaBench/kphp-kdb/logs/extr_logs-engine.c_logs_parse_option.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/logs/extr_logs-engine.c_logs_parse_option.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@dump_mode = common dso_local global i32 0, align 4
@optarg = common dso_local global i8* null, align 8
@dump_query = common dso_local global i8* null, align 8
@mean_event_size = common dso_local global i32 0, align 4
@from_ts = common dso_local global i8* null, align 8
@max_memory = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"%d%n\00", align 1
@FN = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"Not a valid name: \22%s\22\0A\00", align 1
@field_names = common dso_local global i32* null, align 8
@query_memory = common dso_local global i32 0, align 4
@dump_name = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@stat_queries_file = common dso_local global i8* null, align 8
@to_ts = common dso_local global i8* null, align 8
@index_mode = common dso_local global i32 0, align 4
@dump_index_mode = common dso_local global i32 0, align 4
@MCL_CURRENT = common dso_local global i32 0, align 4
@MCL_FUTURE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [34 x i8] c"error: fail to lock paged memory\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"nice\00", align 1
@test_mode = common dso_local global i32 0, align 4
@my_verbosity = common dso_local global i32 0, align 4
@write_only = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @logs_parse_option(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  switch i32 %6, label %137 [
    i32 68, label %7
    i32 101, label %14
    i32 70, label %27
    i32 109, label %35
    i32 78, label %39
    i32 113, label %90
    i32 82, label %94
    i32 115, label %96
    i32 84, label %103
    i32 105, label %111
    i32 73, label %112
    i32 107, label %113
    i32 110, label %123
    i32 116, label %132
    i32 86, label %133
    i32 119, label %136
  ]

7:                                                ; preds = %1
  %8 = load i32, i32* @dump_mode, align 4
  %9 = icmp ne i32 %8, 0
  %10 = xor i1 %9, true
  %11 = zext i1 %10 to i32
  %12 = call i32 @assert(i32 %11)
  store i32 1, i32* @dump_mode, align 4
  %13 = load i8*, i8** @optarg, align 8
  store i8* %13, i8** @dump_query, align 8
  br label %138

14:                                               ; preds = %1
  %15 = load i8*, i8** @optarg, align 8
  %16 = call i8* @atoi(i8* %15)
  %17 = ptrtoint i8* %16 to i32
  store i32 %17, i32* @mean_event_size, align 4
  %18 = load i32, i32* @mean_event_size, align 4
  %19 = icmp sgt i32 %18, 50
  br i1 %19, label %20, label %23

20:                                               ; preds = %14
  %21 = load i32, i32* @mean_event_size, align 4
  %22 = icmp slt i32 %21, 1000
  br label %23

23:                                               ; preds = %20, %14
  %24 = phi i1 [ false, %14 ], [ %22, %20 ]
  %25 = zext i1 %24 to i32
  %26 = call i32 @assert(i32 %25)
  br label %138

27:                                               ; preds = %1
  %28 = load i8*, i8** @optarg, align 8
  %29 = call i8* @atoi(i8* %28)
  store i8* %29, i8** @from_ts, align 8
  %30 = load i8*, i8** @from_ts, align 8
  %31 = icmp ult i8* %30, null
  br i1 %31, label %32, label %34

32:                                               ; preds = %27
  %33 = call i32 (...) @usage()
  store i32 2, i32* %2, align 4
  br label %139

34:                                               ; preds = %27
  br label %138

35:                                               ; preds = %1
  %36 = load i8*, i8** @optarg, align 8
  %37 = call i32 @atol(i8* %36)
  %38 = mul nsw i32 %37, 1048576
  store i32 %38, i32* @max_memory, align 4
  br label %138

39:                                               ; preds = %1
  %40 = load i8*, i8** @optarg, align 8
  %41 = call i32 @sscanf(i8* %40, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32* %4, i32* %5)
  %42 = icmp sge i32 %41, 1
  br i1 %42, label %43, label %58

43:                                               ; preds = %39
  %44 = load i32, i32* %4, align 4
  %45 = icmp sle i32 0, %44
  br i1 %45, label %46, label %58

46:                                               ; preds = %43
  %47 = load i32, i32* %4, align 4
  %48 = load i32, i32* @FN, align 4
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %50, label %58

50:                                               ; preds = %46
  %51 = load i8*, i8** @optarg, align 8
  %52 = load i32, i32* %5, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i8, i8* %51, i64 %53
  %55 = load i8, i8* %54, align 1
  %56 = sext i8 %55 to i32
  %57 = icmp eq i32 %56, 44
  br label %58

58:                                               ; preds = %50, %46, %43, %39
  %59 = phi i1 [ false, %46 ], [ false, %43 ], [ false, %39 ], [ %57, %50 ]
  %60 = zext i1 %59 to i32
  %61 = call i32 @assert(i32 %60)
  %62 = load i8*, i8** @optarg, align 8
  %63 = load i32, i32* %5, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i8, i8* %62, i64 %64
  %66 = getelementptr inbounds i8, i8* %65, i64 1
  %67 = ptrtoint i8* %66 to i32
  %68 = call i32 @is_name(i32 %67)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %79, label %70

70:                                               ; preds = %58
  %71 = load i32, i32* @stderr, align 4
  %72 = load i8*, i8** @optarg, align 8
  %73 = load i32, i32* %5, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i8, i8* %72, i64 %74
  %76 = getelementptr inbounds i8, i8* %75, i64 1
  %77 = call i32 (i32, i8*, ...) @fprintf(i32 %71, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i8* %76)
  %78 = call i32 (...) @usage()
  store i32 2, i32* %2, align 4
  br label %139

79:                                               ; preds = %58
  %80 = load i8*, i8** @optarg, align 8
  %81 = load i32, i32* %5, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i8, i8* %80, i64 %82
  %84 = getelementptr inbounds i8, i8* %83, i64 1
  %85 = ptrtoint i8* %84 to i32
  %86 = load i32*, i32** @field_names, align 8
  %87 = load i32, i32* %4, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %86, i64 %88
  store i32 %85, i32* %89, align 4
  br label %138

90:                                               ; preds = %1
  %91 = load i8*, i8** @optarg, align 8
  %92 = call i32 @atol(i8* %91)
  %93 = mul nsw i32 %92, 1048576
  store i32 %93, i32* @query_memory, align 4
  br label %138

94:                                               ; preds = %1
  %95 = load i8*, i8** @optarg, align 8
  store i8* %95, i8** @dump_name, align 8
  br label %138

96:                                               ; preds = %1
  %97 = load i32, i32* @dump_mode, align 4
  %98 = icmp ne i32 %97, 0
  %99 = xor i1 %98, true
  %100 = zext i1 %99 to i32
  %101 = call i32 @assert(i32 %100)
  store i32 2, i32* @dump_mode, align 4
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8** @dump_query, align 8
  %102 = load i8*, i8** @optarg, align 8
  store i8* %102, i8** @stat_queries_file, align 8
  br label %138

103:                                              ; preds = %1
  %104 = load i8*, i8** @optarg, align 8
  %105 = call i8* @atoi(i8* %104)
  store i8* %105, i8** @to_ts, align 8
  %106 = load i8*, i8** @to_ts, align 8
  %107 = icmp ult i8* %106, null
  br i1 %107, label %108, label %110

108:                                              ; preds = %103
  %109 = call i32 (...) @usage()
  store i32 2, i32* %2, align 4
  br label %139

110:                                              ; preds = %103
  br label %138

111:                                              ; preds = %1
  store i32 1, i32* @index_mode, align 4
  br label %138

112:                                              ; preds = %1
  store i32 1, i32* @dump_index_mode, align 4
  br label %138

113:                                              ; preds = %1
  %114 = load i32, i32* @MCL_CURRENT, align 4
  %115 = load i32, i32* @MCL_FUTURE, align 4
  %116 = or i32 %114, %115
  %117 = call i32 @mlockall(i32 %116)
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %122

119:                                              ; preds = %113
  %120 = load i32, i32* @stderr, align 4
  %121 = call i32 (i32, i8*, ...) @fprintf(i32 %120, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  br label %122

122:                                              ; preds = %119, %113
  br label %138

123:                                              ; preds = %1
  store i32 0, i32* @errno, align 4
  %124 = load i8*, i8** @optarg, align 8
  %125 = call i8* @atoi(i8* %124)
  %126 = call i32 @nice(i8* %125)
  %127 = load i32, i32* @errno, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %131

129:                                              ; preds = %123
  %130 = call i32 @perror(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  br label %131

131:                                              ; preds = %129, %123
  br label %138

132:                                              ; preds = %1
  store i32 1, i32* @test_mode, align 4
  store i32 500000000, i32* @query_memory, align 4
  br label %138

133:                                              ; preds = %1
  %134 = load i32, i32* @my_verbosity, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* @my_verbosity, align 4
  br label %138

136:                                              ; preds = %1
  store i32 1, i32* @write_only, align 4
  br label %138

137:                                              ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %139

138:                                              ; preds = %136, %133, %132, %131, %122, %112, %111, %110, %96, %94, %90, %79, %35, %34, %23, %7
  store i32 0, i32* %2, align 4
  br label %139

139:                                              ; preds = %138, %137, %108, %70, %32
  %140 = load i32, i32* %2, align 4
  ret i32 %140
}

declare dso_local i32 @assert(i32) #1

declare dso_local i8* @atoi(i8*) #1

declare dso_local i32 @usage(...) #1

declare dso_local i32 @atol(i8*) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*, i32*) #1

declare dso_local i32 @is_name(i32) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @mlockall(i32) #1

declare dso_local i32 @nice(i8*) #1

declare dso_local i32 @perror(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
