; ModuleID = '/home/carl/AnghaBench/kphp-kdb/queue/extr_queue-data.c_set_news_subscr.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/queue/extr_queue-data.c_set_news_subscr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__*, i32 }
%struct.TYPE_10__ = type { i32 }

@to_del_n = common dso_local global i64 0, align 8
@to_add_n = common dso_local global i64 0, align 8
@gd_a = common dso_local global %struct.TYPE_12__* null, align 8
@gd_b = common dso_local global %struct.TYPE_12__* null, align 8
@news_subscr_len = common dso_local global i32 0, align 4
@news_subscr_cnt = common dso_local global i32 0, align 4
@news_subscr_actual_len = common dso_local global i32 0, align 4
@news_subscr_missed = common dso_local global i32 0, align 4
@to_del = common dso_local global i32 0, align 4
@to_add = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @set_news_subscr(i32 %0, %struct.TYPE_12__* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca %struct.TYPE_10__*, align 8
  store i32 %0, i32* %5, align 4
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %5, align 4
  %11 = call %struct.TYPE_11__* @get_news_queue(i32 %10, i32 1)
  store %struct.TYPE_11__* %11, %struct.TYPE_11__** %8, align 8
  %12 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %13 = icmp eq %struct.TYPE_11__* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %82

15:                                               ; preds = %3
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %17 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %5, align 4
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @dl_qsort_pli(%struct.TYPE_12__* %19, i32 %20)
  store i64 0, i64* @to_del_n, align 8
  store i64 0, i64* @to_add_n, align 8
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  store %struct.TYPE_12__* %22, %struct.TYPE_12__** @gd_a, align 8
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %24 = load i32, i32* %7, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i64 %25
  store %struct.TYPE_12__* %26, %struct.TYPE_12__** @gd_b, align 8
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* @news_subscr_len, align 4
  %29 = add nsw i32 %28, %27
  store i32 %29, i32* @news_subscr_len, align 4
  %30 = load i32, i32* @news_subscr_cnt, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* @news_subscr_cnt, align 4
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %33, align 8
  store %struct.TYPE_10__* %34, %struct.TYPE_10__** %9, align 8
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @gen_diff_go(i32 %37)
  br label %39

39:                                               ; preds = %54, %15
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** @gd_a, align 8
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** @gd_b, align 8
  %42 = icmp ne %struct.TYPE_12__* %40, %41
  br i1 %42, label %43, label %52

43:                                               ; preds = %39
  %44 = load %struct.TYPE_12__*, %struct.TYPE_12__** @gd_a, align 8
  %45 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** @gd_a, align 8
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i64 @insert_to_add(i32 %46, i32 %49)
  %51 = icmp ne i64 %50, 0
  br label %52

52:                                               ; preds = %43, %39
  %53 = phi i1 [ false, %39 ], [ %51, %43 ]
  br i1 %53, label %54, label %57

54:                                               ; preds = %52
  %55 = load %struct.TYPE_12__*, %struct.TYPE_12__** @gd_a, align 8
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %55, i32 1
  store %struct.TYPE_12__* %56, %struct.TYPE_12__** @gd_a, align 8
  br label %39

57:                                               ; preds = %52
  %58 = load i64, i64* @to_del_n, align 8
  %59 = load i64, i64* @to_add_n, align 8
  %60 = add nsw i64 %58, %59
  %61 = load i32, i32* @news_subscr_actual_len, align 4
  %62 = sext i32 %61 to i64
  %63 = add nsw i64 %62, %60
  %64 = trunc i64 %63 to i32
  store i32 %64, i32* @news_subscr_actual_len, align 4
  %65 = load i64, i64* @to_del_n, align 8
  %66 = load i64, i64* @to_add_n, align 8
  %67 = add nsw i64 %65, %66
  %68 = icmp ne i64 %67, 0
  %69 = zext i1 %68 to i32
  %70 = load i32, i32* @news_subscr_missed, align 4
  %71 = add nsw i32 %70, %69
  store i32 %71, i32* @news_subscr_missed, align 4
  %72 = load i32, i32* %5, align 4
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %74 = load i32, i32* @to_del, align 4
  %75 = load i64, i64* @to_del_n, align 8
  %76 = call i32 @process_changes(i32 %72, %struct.TYPE_10__* %73, i32 %74, i64 %75, i32 0, i32 0)
  %77 = load i32, i32* %5, align 4
  %78 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %79 = load i32, i32* @to_add, align 4
  %80 = load i64, i64* @to_add_n, align 8
  %81 = call i32 @process_changes(i32 %77, %struct.TYPE_10__* %78, i32 %79, i64 %80, i32 1, i32 0)
  store i32 1, i32* %4, align 4
  br label %82

82:                                               ; preds = %57, %14
  %83 = load i32, i32* %4, align 4
  ret i32 %83
}

declare dso_local %struct.TYPE_11__* @get_news_queue(i32, i32) #1

declare dso_local i32 @dl_qsort_pli(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @gen_diff_go(i32) #1

declare dso_local i64 @insert_to_add(i32, i32) #1

declare dso_local i32 @process_changes(i32, %struct.TYPE_10__*, i32, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
