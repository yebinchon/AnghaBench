; ModuleID = '/home/carl/AnghaBench/kphp-kdb/search/extr_search-x-data.c_perform_query.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/search/extr_search-x-data.c_perform_query.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@Q_words = common dso_local global i32 0, align 4
@verbosity = common dso_local global i32 0, align 4
@Root = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"tree depth = %d\0A\00", align 1
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
  br i1 %5, label %6, label %9

6:                                                ; preds = %0
  %7 = call i64 (...) @has_empty_range()
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %6, %0
  store i32 0, i32* %1, align 4
  br label %30

10:                                               ; preds = %6
  %11 = load i32, i32* @verbosity, align 4
  %12 = icmp sge i32 %11, 3
  br i1 %12, label %13, label %18

13:                                               ; preds = %10
  %14 = load i32, i32* @Root, align 4
  %15 = call i32 @tree_depth(i32 %14, i32 0)
  store i32 %15, i32* %2, align 4
  %16 = load i32, i32* %2, align 4
  %17 = call i32 @kprintf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %16)
  br label %18

18:                                               ; preds = %13, %10
  %19 = call i32 (...) @ranking_query()
  %20 = call i32 (...) @free_all_list_decoders()
  %21 = call i32 (...) @postprocess_res()
  %22 = load i64, i64* @Q_hash_group_mode, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %18
  %25 = load i32, i32* @R_tot_groups, align 4
  br label %28

26:                                               ; preds = %18
  %27 = load i32, i32* @R_tot, align 4
  br label %28

28:                                               ; preds = %26, %24
  %29 = phi i32 [ %25, %24 ], [ %27, %26 ]
  store i32 %29, i32* %1, align 4
  br label %30

30:                                               ; preds = %28, %9
  %31 = load i32, i32* %1, align 4
  ret i32 %31
}

declare dso_local i32 @clear_res(...) #1

declare dso_local i64 @has_empty_range(...) #1

declare dso_local i32 @tree_depth(i32, i32) #1

declare dso_local i32 @kprintf(i8*, i32) #1

declare dso_local i32 @ranking_query(...) #1

declare dso_local i32 @free_all_list_decoders(...) #1

declare dso_local i32 @postprocess_res(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
