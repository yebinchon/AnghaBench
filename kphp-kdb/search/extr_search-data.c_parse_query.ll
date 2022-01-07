; ModuleID = '/home/carl/AnghaBench/kphp-kdb/search/extr_search-data.c_parse_query.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/search/extr_search-data.c_parse_query.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@Q_nodes = common dso_local global i64 0, align 8
@Q_words = common dso_local global i64 0, align 8
@Q_root = common dso_local global i64 0, align 8
@Q_extmode = common dso_local global i64 0, align 8
@parse_ptr = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [62 x i8] c"successfully compiled extended query, %d nodes used, root=%p\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @parse_query(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 0, i64* @Q_nodes, align 8
  store i64 0, i64* @Q_words, align 8
  store i64 0, i64* @Q_root, align 8
  %6 = load i32, i32* %5, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %2
  %9 = load i8*, i8** %4, align 8
  %10 = call i8* @parse_ranges(i8* %9)
  store i8* %10, i8** %4, align 8
  br label %11

11:                                               ; preds = %8, %2
  %12 = load i64, i64* @Q_extmode, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %37

14:                                               ; preds = %11
  %15 = load i8*, i8** %4, align 8
  store i8* %15, i8** @parse_ptr, align 8
  %16 = call i64 (...) @parse_query_expr()
  store i64 %16, i64* @Q_root, align 8
  %17 = load i64, i64* @Q_root, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %14
  %20 = load i8*, i8** @parse_ptr, align 8
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %19, %14
  %25 = load i8*, i8** @parse_ptr, align 8
  store i8* %25, i8** %3, align 8
  br label %40

26:                                               ; preds = %19
  %27 = load i64, i64* @Q_root, align 8
  %28 = call i64 @optimize_query(i64 %27)
  store i64 %28, i64* @Q_root, align 8
  %29 = load i64, i64* @Q_root, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %26
  %32 = load i8*, i8** @parse_ptr, align 8
  store i8* %32, i8** %3, align 8
  br label %40

33:                                               ; preds = %26
  %34 = load i64, i64* @Q_nodes, align 8
  %35 = load i64, i64* @Q_root, align 8
  %36 = call i32 @vkprintf(i32 2, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0), i64 %34, i64 %35)
  store i8* null, i8** %3, align 8
  br label %40

37:                                               ; preds = %11
  %38 = load i8*, i8** %4, align 8
  %39 = call i8* @parse_query_words(i8* %38)
  store i8* %39, i8** %4, align 8
  store i8* null, i8** %3, align 8
  br label %40

40:                                               ; preds = %37, %33, %31, %24
  %41 = load i8*, i8** %3, align 8
  ret i8* %41
}

declare dso_local i8* @parse_ranges(i8*) #1

declare dso_local i64 @parse_query_expr(...) #1

declare dso_local i64 @optimize_query(i64) #1

declare dso_local i32 @vkprintf(i32, i8*, i64, i64) #1

declare dso_local i8* @parse_query_words(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
