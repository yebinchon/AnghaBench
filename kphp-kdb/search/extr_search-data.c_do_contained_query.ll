; ModuleID = '/home/carl/AnghaBench/kphp-kdb/search/extr_search-data.c_do_contained_query.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/search/extr_search-data.c_do_contained_query.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@Q_limit = common dso_local global i64 0, align 8
@Q_nodes = common dso_local global i64 0, align 8
@Q_words = common dso_local global i64 0, align 8
@parse_ptr = common dso_local global i8* null, align 8
@Q_root = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @do_contained_query(i64 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store i8** %1, i8*** %5, align 8
  %7 = call i32 (...) @free_all_list_decoders()
  store i64 0, i64* @Q_limit, align 8
  store i64 0, i64* @Q_nodes, align 8
  store i64 0, i64* @Q_words, align 8
  %8 = load i8**, i8*** %5, align 8
  %9 = load i8*, i8** %8, align 8
  store i8* %9, i8** @parse_ptr, align 8
  %10 = call i32 (...) @parse_query_expr()
  store i32 %10, i32* @Q_root, align 4
  %11 = load i32, i32* @Q_root, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %2
  %14 = load i8*, i8** @parse_ptr, align 8
  %15 = load i8, i8* %14, align 1
  %16 = sext i8 %15 to i32
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %13, %2
  %19 = call i32 (...) @free_all_list_decoders()
  %20 = load i8*, i8** @parse_ptr, align 8
  %21 = load i8**, i8*** %5, align 8
  store i8* %20, i8** %21, align 8
  store i32 -1, i32* %3, align 4
  br label %38

22:                                               ; preds = %13
  %23 = load i32, i32* @Q_root, align 4
  %24 = call i64 @prepare_query_iterators(i32 %23)
  %25 = icmp slt i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %22
  %27 = call i32 (...) @free_all_list_decoders()
  store i32 -1, i32* %3, align 4
  br label %38

28:                                               ; preds = %22
  %29 = load i64, i64* %4, align 8
  %30 = load i32, i32* @Q_root, align 4
  %31 = load i64, i64* %4, align 8
  %32 = call i64 @advance_iterators(i32 %30, i64 %31)
  %33 = icmp eq i64 %29, %32
  %34 = zext i1 %33 to i64
  %35 = select i1 %33, i32 1, i32 0
  store i32 %35, i32* %6, align 4
  %36 = call i32 (...) @free_all_list_decoders()
  %37 = load i32, i32* %6, align 4
  store i32 %37, i32* %3, align 4
  br label %38

38:                                               ; preds = %28, %26, %18
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local i32 @free_all_list_decoders(...) #1

declare dso_local i32 @parse_query_expr(...) #1

declare dso_local i64 @prepare_query_iterators(i32) #1

declare dso_local i64 @advance_iterators(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
