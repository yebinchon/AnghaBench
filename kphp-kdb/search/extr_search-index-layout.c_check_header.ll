; ModuleID = '/home/carl/AnghaBench/kphp-kdb/search/extr_search-index-layout.c_check_header.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/search/extr_search-index-layout.c_check_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.search_index_header = type { i64, i64, i64, i64 }

@.str = private unnamed_addr constant [112 x i8] c"Index header command line switches not equal given command line switches. Index flags %08x, current flags %08x\0A\00", align 1
@stemmer_version = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [51 x i8] c"Header stemmer version = %d, stemmer_version = %d\0A\00", align 1
@word_split_version = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [57 x i8] c"Header word split version = %d, word split version = %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [53 x i8] c"Header listcomp version = %x, listcomp version = %x\0A\00", align 1
@listcomp_version = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @check_header(%struct.search_index_header* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.search_index_header*, align 8
  store %struct.search_index_header* %0, %struct.search_index_header** %3, align 8
  %4 = load %struct.search_index_header*, %struct.search_index_header** %3, align 8
  %5 = getelementptr inbounds %struct.search_index_header, %struct.search_index_header* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = call i64 (...) @get_cls_flags()
  %8 = icmp ne i64 %6, %7
  br i1 %8, label %9, label %15

9:                                                ; preds = %1
  %10 = load %struct.search_index_header*, %struct.search_index_header** %3, align 8
  %11 = getelementptr inbounds %struct.search_index_header, %struct.search_index_header* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = call i64 (...) @get_cls_flags()
  %14 = call i32 @kprintf(i8* getelementptr inbounds ([112 x i8], [112 x i8]* @.str, i64 0, i64 0), i64 %12, i64 %13)
  store i32 0, i32* %2, align 4
  br label %52

15:                                               ; preds = %1
  %16 = load %struct.search_index_header*, %struct.search_index_header** %3, align 8
  %17 = getelementptr inbounds %struct.search_index_header, %struct.search_index_header* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @stemmer_version, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %27

21:                                               ; preds = %15
  %22 = load %struct.search_index_header*, %struct.search_index_header** %3, align 8
  %23 = getelementptr inbounds %struct.search_index_header, %struct.search_index_header* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @stemmer_version, align 8
  %26 = call i32 @kprintf(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i64 %24, i64 %25)
  store i32 0, i32* %2, align 4
  br label %52

27:                                               ; preds = %15
  %28 = load %struct.search_index_header*, %struct.search_index_header** %3, align 8
  %29 = getelementptr inbounds %struct.search_index_header, %struct.search_index_header* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @word_split_version, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %39

33:                                               ; preds = %27
  %34 = load %struct.search_index_header*, %struct.search_index_header** %3, align 8
  %35 = getelementptr inbounds %struct.search_index_header, %struct.search_index_header* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @word_split_version, align 8
  %38 = call i32 @kprintf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.2, i64 0, i64 0), i64 %36, i64 %37)
  store i32 0, i32* %2, align 4
  br label %52

39:                                               ; preds = %27
  %40 = load %struct.search_index_header*, %struct.search_index_header** %3, align 8
  %41 = getelementptr inbounds %struct.search_index_header, %struct.search_index_header* %40, i32 0, i32 3
  %42 = load i64, i64* %41, align 8
  %43 = call i32 @check_listcomp_version(i64 %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %51, label %45

45:                                               ; preds = %39
  %46 = load %struct.search_index_header*, %struct.search_index_header** %3, align 8
  %47 = getelementptr inbounds %struct.search_index_header, %struct.search_index_header* %46, i32 0, i32 3
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @listcomp_version, align 8
  %50 = call i32 @kprintf(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.3, i64 0, i64 0), i64 %48, i64 %49)
  store i32 0, i32* %2, align 4
  br label %52

51:                                               ; preds = %39
  store i32 1, i32* %2, align 4
  br label %52

52:                                               ; preds = %51, %45, %33, %21, %9
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local i64 @get_cls_flags(...) #1

declare dso_local i32 @kprintf(i8*, i64, i64) #1

declare dso_local i32 @check_listcomp_version(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
