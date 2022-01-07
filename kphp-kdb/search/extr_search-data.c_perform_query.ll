; ModuleID = '/home/carl/AnghaBench/kphp-kdb/search/extr_search-data.c_perform_query.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/search/extr_search-data.c_perform_query.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@Q_words = common dso_local global i32 0, align 4
@Q_root = common dso_local global i64 0, align 8
@verbosity = common dso_local global i32 0, align 4
@t_depth = common dso_local global i64 0, align 8
@Root = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"tree depth = %d\0A\00", align 1
@Q_min_priority = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [14 x i8] c"Q_order = %x\0A\00", align 1
@Q_order = common dso_local global i32 0, align 4
@FLAG_PRIORITY_SORT_SEARCH = common dso_local global i32 0, align 4
@Q_hash_group_mode = common dso_local global i64 0, align 8
@R_tot_groups = common dso_local global i32 0, align 4
@R_tot = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @perform_query() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = call i32 (...) @clear_res()
  %4 = load i32, i32* @Q_words, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %0
  %7 = load i64, i64* @Q_root, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %6, %0
  %10 = call i64 (...) @has_empty_range()
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %9, %6
  store i32 0, i32* %1, align 4
  br label %54

13:                                               ; preds = %9
  %14 = load i32, i32* @verbosity, align 4
  %15 = icmp sgt i32 %14, 1
  br i1 %15, label %16, label %25

16:                                               ; preds = %13
  %17 = load i64, i64* @t_depth, align 8
  %18 = icmp slt i64 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %16
  %20 = load i32, i32* @Root, align 4
  %21 = call i64 @tree_depth(i32 %20, i32 0)
  store i64 %21, i64* @t_depth, align 8
  %22 = load i32, i32* @stderr, align 4
  %23 = load i64, i64* @t_depth, align 8
  %24 = call i32 @fprintf(i32 %22, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i64 %23)
  br label %25

25:                                               ; preds = %19, %16, %13
  %26 = load i64, i64* @Q_root, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %25
  store i64 0, i64* @Q_min_priority, align 8
  %29 = call i32 (...) @perform_ext_query()
  store i32 %29, i32* %2, align 4
  %30 = call i32 (...) @free_all_list_decoders()
  %31 = load i32, i32* %2, align 4
  store i32 %31, i32* %1, align 4
  br label %54

32:                                               ; preds = %25
  %33 = load i32, i32* @Q_order, align 4
  %34 = call i32 @vkprintf(i32 3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %33)
  %35 = load i32, i32* @Q_order, align 4
  %36 = load i32, i32* @FLAG_PRIORITY_SORT_SEARCH, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %32
  %40 = call i32 (...) @priority_sort_query()
  br label %43

41:                                               ; preds = %32
  %42 = call i32 (...) @fast_intersection_query()
  br label %43

43:                                               ; preds = %41, %39
  %44 = call i32 (...) @free_all_list_decoders()
  %45 = call i32 (...) @postprocess_res()
  %46 = load i64, i64* @Q_hash_group_mode, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %43
  %49 = load i32, i32* @R_tot_groups, align 4
  br label %52

50:                                               ; preds = %43
  %51 = load i32, i32* @R_tot, align 4
  br label %52

52:                                               ; preds = %50, %48
  %53 = phi i32 [ %49, %48 ], [ %51, %50 ]
  store i32 %53, i32* %1, align 4
  br label %54

54:                                               ; preds = %52, %28, %12
  %55 = load i32, i32* %1, align 4
  ret i32 %55
}

declare dso_local i32 @clear_res(...) #1

declare dso_local i64 @has_empty_range(...) #1

declare dso_local i64 @tree_depth(i32, i32) #1

declare dso_local i32 @fprintf(i32, i8*, i64) #1

declare dso_local i32 @perform_ext_query(...) #1

declare dso_local i32 @free_all_list_decoders(...) #1

declare dso_local i32 @vkprintf(i32, i8*, i32) #1

declare dso_local i32 @priority_sort_query(...) #1

declare dso_local i32 @fast_intersection_query(...) #1

declare dso_local i32 @postprocess_res(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
