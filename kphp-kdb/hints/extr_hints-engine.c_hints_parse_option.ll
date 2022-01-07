; ModuleID = '/home/carl/AnghaBench/kphp-kdb/hints/extr_hints-engine.c_hints_parse_option.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/hints/extr_hints-engine.c_hints_parse_option.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@dump_mode = common dso_local global i32 0, align 4
@optarg = common dso_local global i32 0, align 4
@dump_type = common dso_local global i32* null, align 8
@estimate_users = common dso_local global i8* null, align 8
@default_max_cnt_type = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [6 x i8] c"%d,%d\00", align 1
@max_cnt_type = common dso_local global i32* null, align 8
@max_memory = common dso_local global i32 0, align 4
@MAX_CNT = common dso_local global i32 0, align 4
@MAX_RATING_NUM = common dso_local global i32 0, align 4
@RATING_NORM = common dso_local global i32 0, align 4
@MAX_RATING_NORM = common dso_local global i32 0, align 4
@index_mode = common dso_local global i32 0, align 4
@new_binlog_name = common dso_local global i32 0, align 4
@MAX_RATING = common dso_local global i8* null, align 8
@rating_num = common dso_local global i32 0, align 4
@keep_not_alive = common dso_local global i32 0, align 4
@no_changes = common dso_local global i32 0, align 4
@immediate_mode = common dso_local global i32 0, align 4
@MCL_CURRENT = common dso_local global i32 0, align 4
@MCL_FUTURE = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"error: fail to lock paged memory\0A\00", align 1
@write_only = common dso_local global i32 0, align 4
@fading = common dso_local global i32 0, align 4
@add_on_increment = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hints_parse_option(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  switch i32 %7, label %124 [
    i32 68, label %8
    i32 101, label %24
    i32 70, label %27
    i32 76, label %30
    i32 109, label %44
    i32 77, label %54
    i32 78, label %73
    i32 111, label %89
    i32 113, label %91
    i32 82, label %94
    i32 65, label %108
    i32 102, label %109
    i32 73, label %110
    i32 105, label %111
    i32 107, label %112
    i32 119, label %122
    i32 122, label %123
  ]

8:                                                ; preds = %1
  store i32 1, i32* @dump_mode, align 4
  %9 = load i32, i32* @optarg, align 4
  %10 = call i8* @atoi(i32 %9)
  %11 = ptrtoint i8* %10 to i32
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = call i32 @check_type(i32 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %8
  %16 = call i32 (...) @usage()
  store i32 2, i32* %2, align 4
  br label %126

17:                                               ; preds = %8
  %18 = load i32*, i32** @dump_type, align 8
  %19 = load i32, i32* %4, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %18, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %21, align 4
  br label %125

24:                                               ; preds = %1
  %25 = load i32, i32* @optarg, align 4
  %26 = call i8* @atoi(i32 %25)
  store i8* %26, i8** @estimate_users, align 8
  br label %125

27:                                               ; preds = %1
  %28 = load i32, i32* @optarg, align 4
  %29 = call i8* @atoi(i32 %28)
  store i8* %29, i8** @default_max_cnt_type, align 8
  br label %125

30:                                               ; preds = %1
  %31 = load i32, i32* @optarg, align 4
  %32 = call i32 @sscanf(i32 %31, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32* %5, i32* %6)
  %33 = icmp sge i32 %32, 2
  %34 = zext i1 %33 to i32
  %35 = call i32 @assert(i32 %34)
  %36 = load i32, i32* %5, align 4
  %37 = call i32 @check_type(i32 %36)
  %38 = call i32 @assert(i32 %37)
  %39 = load i32, i32* %6, align 4
  %40 = load i32*, i32** @max_cnt_type, align 8
  %41 = load i32, i32* %5, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  store i32 %39, i32* %43, align 4
  br label %125

44:                                               ; preds = %1
  %45 = load i32, i32* @optarg, align 4
  %46 = call i8* @atoi(i32 %45)
  %47 = ptrtoint i8* %46 to i32
  store i32 %47, i32* @max_memory, align 4
  %48 = load i32, i32* @max_memory, align 4
  %49 = icmp slt i32 %48, 1
  br i1 %49, label %50, label %51

50:                                               ; preds = %44
  store i32 1, i32* @max_memory, align 4
  br label %51

51:                                               ; preds = %50, %44
  %52 = load i32, i32* @max_memory, align 4
  %53 = shl i32 %52, 20
  store i32 %53, i32* @max_memory, align 4
  br label %125

54:                                               ; preds = %1
  %55 = load i32, i32* @optarg, align 4
  %56 = call i8* @atoi(i32 %55)
  %57 = ptrtoint i8* %56 to i32
  store i32 %57, i32* @MAX_CNT, align 4
  %58 = load i32, i32* @MAX_CNT, align 4
  %59 = icmp sle i32 1, %58
  br i1 %59, label %60, label %69

60:                                               ; preds = %54
  %61 = load i32, i32* @MAX_CNT, align 4
  %62 = add nsw i32 %61, 1
  %63 = sext i32 %62 to i64
  %64 = mul nsw i64 %63, 4
  %65 = load i32, i32* @MAX_RATING_NUM, align 4
  %66 = sext i32 %65 to i64
  %67 = mul nsw i64 %64, %66
  %68 = icmp sle i64 %67, 2000000000
  br label %69

69:                                               ; preds = %60, %54
  %70 = phi i1 [ false, %54 ], [ %68, %60 ]
  %71 = zext i1 %70 to i32
  %72 = call i32 @assert(i32 %71)
  br label %125

73:                                               ; preds = %1
  %74 = load i32, i32* @optarg, align 4
  %75 = call i8* @atoi(i32 %74)
  %76 = ptrtoint i8* %75 to i32
  store i32 %76, i32* @RATING_NORM, align 4
  %77 = load i32, i32* @RATING_NORM, align 4
  %78 = icmp sle i32 1, %77
  br i1 %78, label %79, label %83

79:                                               ; preds = %73
  %80 = load i32, i32* @RATING_NORM, align 4
  %81 = load i32, i32* @MAX_RATING_NORM, align 4
  %82 = icmp sle i32 %80, %81
  br label %83

83:                                               ; preds = %79, %73
  %84 = phi i1 [ false, %73 ], [ %82, %79 ]
  %85 = zext i1 %84 to i32
  %86 = call i32 @assert(i32 %85)
  %87 = load i32, i32* @RATING_NORM, align 4
  %88 = mul nsw i32 %87, 3600
  store i32 %88, i32* @RATING_NORM, align 4
  br label %125

89:                                               ; preds = %1
  store i32 1, i32* @index_mode, align 4
  %90 = load i32, i32* @optarg, align 4
  store i32 %90, i32* @new_binlog_name, align 4
  br label %125

91:                                               ; preds = %1
  %92 = load i32, i32* @optarg, align 4
  %93 = call i8* @atoi(i32 %92)
  store i8* %93, i8** @MAX_RATING, align 8
  br label %125

94:                                               ; preds = %1
  %95 = load i32, i32* @optarg, align 4
  %96 = call i8* @atoi(i32 %95)
  %97 = ptrtoint i8* %96 to i32
  store i32 %97, i32* @rating_num, align 4
  %98 = load i32, i32* @rating_num, align 4
  %99 = icmp sle i32 1, %98
  br i1 %99, label %100, label %104

100:                                              ; preds = %94
  %101 = load i32, i32* @rating_num, align 4
  %102 = load i32, i32* @MAX_RATING_NUM, align 4
  %103 = icmp sle i32 %101, %102
  br label %104

104:                                              ; preds = %100, %94
  %105 = phi i1 [ false, %94 ], [ %103, %100 ]
  %106 = zext i1 %105 to i32
  %107 = call i32 @assert(i32 %106)
  br label %125

108:                                              ; preds = %1
  store i32 1, i32* @keep_not_alive, align 4
  br label %125

109:                                              ; preds = %1
  store i32 1, i32* @no_changes, align 4
  br label %125

110:                                              ; preds = %1
  store i32 1, i32* @immediate_mode, align 4
  br label %125

111:                                              ; preds = %1
  store i32 1, i32* @index_mode, align 4
  br label %125

112:                                              ; preds = %1
  %113 = load i32, i32* @MCL_CURRENT, align 4
  %114 = load i32, i32* @MCL_FUTURE, align 4
  %115 = or i32 %113, %114
  %116 = call i32 @mlockall(i32 %115)
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %121

118:                                              ; preds = %112
  %119 = load i32, i32* @stderr, align 4
  %120 = call i32 @fprintf(i32 %119, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  br label %121

121:                                              ; preds = %118, %112
  br label %125

122:                                              ; preds = %1
  store i32 1, i32* @write_only, align 4
  br label %125

123:                                              ; preds = %1
  store i32 0, i32* @fading, align 4
  br label %125

124:                                              ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %126

125:                                              ; preds = %123, %122, %121, %111, %110, %109, %108, %104, %91, %89, %83, %69, %51, %30, %27, %24, %17
  store i32 0, i32* %2, align 4
  br label %126

126:                                              ; preds = %125, %124, %15
  %127 = load i32, i32* %2, align 4
  ret i32 %127
}

declare dso_local i8* @atoi(i32) #1

declare dso_local i32 @check_type(i32) #1

declare dso_local i32 @usage(...) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @sscanf(i32, i8*, i32*, i32*) #1

declare dso_local i32 @mlockall(i32) #1

declare dso_local i32 @fprintf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
