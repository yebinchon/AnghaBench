; ModuleID = '/home/carl/AnghaBench/kphp-kdb/search/extr_search-data.c_perform_ext_query.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/search/extr_search-data.c_perform_ext_query.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i64, i32 }

@verbosity = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"performing extended query: root=%p\0A\00", align 1
@Q_root = common dso_local global %struct.TYPE_7__* null, align 8
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@Q_words = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"after killing duplicate words: root=%p\0A\00", align 1
@reoptimize_flag = common dso_local global i64 0, align 8
@MIN_ITEM_ID = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [35 x i8] c"query after optimization: root=%p\0A\00", align 1
@qn_false = common dso_local global i64 0, align 8
@MAX_ITEM_ID = common dso_local global i64 0, align 8
@Q_hash_group_mode = common dso_local global i64 0, align 8
@R_tot_groups = common dso_local global i32 0, align 4
@R_tot = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @perform_ext_query() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = load i32, i32* @verbosity, align 4
  %4 = icmp sgt i32 %3, 1
  br i1 %4, label %5, label %13

5:                                                ; preds = %0
  %6 = load i32, i32* @stderr, align 4
  %7 = load %struct.TYPE_7__*, %struct.TYPE_7__** @Q_root, align 8
  %8 = call i32 (i32, i8*, ...) @fprintf(i32 %6, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), %struct.TYPE_7__* %7)
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** @Q_root, align 8
  %10 = call i32 @dump_query_tree(%struct.TYPE_7__* %9)
  %11 = load i32, i32* @stderr, align 4
  %12 = call i32 (i32, i8*, ...) @fprintf(i32 %11, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %13

13:                                               ; preds = %5, %0
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** @Q_root, align 8
  %15 = icmp ne %struct.TYPE_7__* %14, null
  br i1 %15, label %16, label %20

16:                                               ; preds = %13
  %17 = load i32, i32* @Q_words, align 4
  %18 = icmp ne i32 %17, 0
  %19 = xor i1 %18, true
  br label %20

20:                                               ; preds = %16, %13
  %21 = phi i1 [ false, %13 ], [ %19, %16 ]
  %22 = zext i1 %21 to i32
  %23 = call i32 @assert(i32 %22)
  %24 = call i32 (...) @query_optimize_kill_dups()
  %25 = load i32, i32* @verbosity, align 4
  %26 = icmp sgt i32 %25, 1
  br i1 %26, label %27, label %35

27:                                               ; preds = %20
  %28 = load i32, i32* @stderr, align 4
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** @Q_root, align 8
  %30 = call i32 (i32, i8*, ...) @fprintf(i32 %28, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), %struct.TYPE_7__* %29)
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** @Q_root, align 8
  %32 = call i32 @dump_query_tree(%struct.TYPE_7__* %31)
  %33 = load i32, i32* @stderr, align 4
  %34 = call i32 (i32, i8*, ...) @fprintf(i32 %33, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %35

35:                                               ; preds = %27, %20
  store i64 0, i64* @reoptimize_flag, align 8
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** @Q_root, align 8
  %37 = call i64 @prepare_query_iterators(%struct.TYPE_7__* %36)
  %38 = icmp slt i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %35
  store i32 0, i32* %1, align 4
  br label %103

40:                                               ; preds = %35
  %41 = load i64, i64* @MIN_ITEM_ID, align 8
  store i64 %41, i64* %2, align 8
  br label %42

42:                                               ; preds = %89, %40
  %43 = load i64, i64* @reoptimize_flag, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %59

45:                                               ; preds = %42
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** @Q_root, align 8
  %47 = call %struct.TYPE_7__* @optimize_query(%struct.TYPE_7__* %46)
  store %struct.TYPE_7__* %47, %struct.TYPE_7__** @Q_root, align 8
  store i64 0, i64* @reoptimize_flag, align 8
  %48 = load i32, i32* @verbosity, align 4
  %49 = icmp sgt i32 %48, 1
  br i1 %49, label %50, label %58

50:                                               ; preds = %45
  %51 = load i32, i32* @stderr, align 4
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** @Q_root, align 8
  %53 = call i32 (i32, i8*, ...) @fprintf(i32 %51, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), %struct.TYPE_7__* %52)
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** @Q_root, align 8
  %55 = call i32 @dump_query_tree(%struct.TYPE_7__* %54)
  %56 = load i32, i32* @stderr, align 4
  %57 = call i32 (i32, i8*, ...) @fprintf(i32 %56, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %58

58:                                               ; preds = %50, %45
  br label %59

59:                                               ; preds = %58, %42
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** @Q_root, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @qn_false, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %59
  br label %93

66:                                               ; preds = %59
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** @Q_root, align 8
  %68 = load i64, i64* %2, align 8
  %69 = add nsw i64 %68, 1
  %70 = call i64 @advance_iterators(%struct.TYPE_7__* %67, i64 %69)
  store i64 %70, i64* %2, align 8
  %71 = load i64, i64* %2, align 8
  %72 = load i64, i64* @MAX_ITEM_ID, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %75

74:                                               ; preds = %66
  br label %93

75:                                               ; preds = %66
  br label %76

76:                                               ; preds = %75
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** @Q_root, align 8
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** @Q_root, align 8
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = icmp sgt i32 %82, 10
  br i1 %83, label %84, label %85

84:                                               ; preds = %76
  br label %89

85:                                               ; preds = %76
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** @Q_root, align 8
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  br label %89

89:                                               ; preds = %85, %84
  %90 = phi i32 [ 10, %84 ], [ %88, %85 ]
  %91 = call i64 @store_res(i32 %79, i32 %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %42, label %93

93:                                               ; preds = %89, %74, %65
  %94 = call i32 (...) @postprocess_res()
  %95 = load i64, i64* @Q_hash_group_mode, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %93
  %98 = load i32, i32* @R_tot_groups, align 4
  br label %101

99:                                               ; preds = %93
  %100 = load i32, i32* @R_tot, align 4
  br label %101

101:                                              ; preds = %99, %97
  %102 = phi i32 [ %98, %97 ], [ %100, %99 ]
  store i32 %102, i32* %1, align 4
  br label %103

103:                                              ; preds = %101, %39
  %104 = load i32, i32* %1, align 4
  ret i32 %104
}

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @dump_query_tree(%struct.TYPE_7__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @query_optimize_kill_dups(...) #1

declare dso_local i64 @prepare_query_iterators(%struct.TYPE_7__*) #1

declare dso_local %struct.TYPE_7__* @optimize_query(%struct.TYPE_7__*) #1

declare dso_local i64 @advance_iterators(%struct.TYPE_7__*, i64) #1

declare dso_local i64 @store_res(i32, i32) #1

declare dso_local i32 @postprocess_res(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
