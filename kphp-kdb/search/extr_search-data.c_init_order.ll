; ModuleID = '/home/carl/AnghaBench/kphp-kdb/search/extr_search-data.c_init_order.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/search/extr_search-data.c_init_order.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@Q_order = common dso_local global i32 0, align 4
@Q_type = common dso_local global i32 0, align 4
@FLAG_REVERSE_SEARCH = common dso_local global i32 0, align 4
@order = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Q_order = %d, Q_type = %d, order = %d\0A\00", align 1
@evaluate_rating = common dso_local global i32* null, align 8
@MAX_RATES = common dso_local global i32 0, align 4
@evaluate_relevance_search_rating = common dso_local global i32* null, align 8
@random_rating = common dso_local global i32* null, align 8
@FLAG_ENTRY_SORT_SEARCH = common dso_local global i32 0, align 4
@FLAG_PRIORITY_SORT_SEARCH = common dso_local global i32 0, align 4
@mix_priority_with_object_id = common dso_local global i32* null, align 8
@mix_priority_with_rating = common dso_local global i32* null, align 8
@get_rating_as_object_id = common dso_local global i32* null, align 8
@get_rating = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @init_order to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_order() #0 {
  %1 = load i32, i32* @Q_order, align 4
  %2 = and i32 %1, 255
  store i32 %2, i32* @Q_type, align 4
  %3 = load i32, i32* @Q_order, align 4
  %4 = load i32, i32* @FLAG_REVERSE_SEARCH, align 4
  %5 = and i32 %3, %4
  %6 = icmp ne i32 %5, 0
  %7 = zext i1 %6 to i64
  %8 = select i1 %6, i32 2, i32 1
  store i32 %8, i32* @order, align 4
  %9 = load i32, i32* @Q_order, align 4
  %10 = load i32, i32* @Q_type, align 4
  %11 = load i32, i32* @order, align 4
  %12 = call i32 @vkprintf(i32 3, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %9, i32 %10, i32 %11)
  store i32* null, i32** @evaluate_rating, align 8
  %13 = load i32, i32* @Q_type, align 4
  %14 = load i32, i32* @MAX_RATES, align 4
  %15 = add nsw i32 %14, 2
  %16 = icmp eq i32 %13, %15
  br i1 %16, label %17, label %21

17:                                               ; preds = %0
  %18 = call i32 (...) @tbl_relevance_init()
  %19 = call i32 (...) @optional_tags_init()
  %20 = load i32*, i32** @evaluate_relevance_search_rating, align 8
  store i32* %20, i32** @evaluate_rating, align 8
  br label %63

21:                                               ; preds = %0
  %22 = load i32, i32* @Q_type, align 4
  %23 = load i32, i32* @MAX_RATES, align 4
  %24 = add nsw i32 %23, 1
  %25 = icmp eq i32 %22, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %21
  %27 = load i32*, i32** @random_rating, align 8
  store i32* %27, i32** @evaluate_rating, align 8
  br label %62

28:                                               ; preds = %21
  %29 = load i32, i32* @Q_order, align 4
  %30 = load i32, i32* @FLAG_ENTRY_SORT_SEARCH, align 4
  %31 = load i32, i32* @FLAG_PRIORITY_SORT_SEARCH, align 4
  %32 = or i32 %30, %31
  %33 = and i32 %29, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %48

35:                                               ; preds = %28
  %36 = load i32, i32* @Q_type, align 4
  %37 = load i32, i32* @MAX_RATES, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %35
  %40 = load i32*, i32** @mix_priority_with_object_id, align 8
  store i32* %40, i32** @evaluate_rating, align 8
  br label %47

41:                                               ; preds = %35
  %42 = load i32, i32* @Q_type, align 4
  %43 = icmp sle i32 %42, 15
  %44 = zext i1 %43 to i32
  %45 = call i32 @assert(i32 %44)
  %46 = load i32*, i32** @mix_priority_with_rating, align 8
  store i32* %46, i32** @evaluate_rating, align 8
  br label %47

47:                                               ; preds = %41, %39
  br label %61

48:                                               ; preds = %28
  %49 = load i32, i32* @Q_type, align 4
  %50 = load i32, i32* @MAX_RATES, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %48
  %53 = load i32*, i32** @get_rating_as_object_id, align 8
  store i32* %53, i32** @evaluate_rating, align 8
  br label %60

54:                                               ; preds = %48
  %55 = load i32, i32* @Q_type, align 4
  %56 = icmp sle i32 %55, 15
  %57 = zext i1 %56 to i32
  %58 = call i32 @assert(i32 %57)
  %59 = load i32*, i32** @get_rating, align 8
  store i32* %59, i32** @evaluate_rating, align 8
  br label %60

60:                                               ; preds = %54, %52
  br label %61

61:                                               ; preds = %60, %47
  br label %62

62:                                               ; preds = %61, %26
  br label %63

63:                                               ; preds = %62, %17
  ret void
}

declare dso_local i32 @vkprintf(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @tbl_relevance_init(...) #1

declare dso_local i32 @optional_tags_init(...) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
