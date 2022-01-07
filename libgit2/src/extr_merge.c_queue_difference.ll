; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_merge.c_queue_difference.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_merge.c_queue_difference.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.merge_diff_find_data = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32**, i8*)* @queue_difference to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @queue_difference(i32** %0, i8* %1) #0 {
  %3 = alloca i32**, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.merge_diff_find_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store i32** %0, i32*** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.merge_diff_find_data*
  store %struct.merge_diff_find_data* %9, %struct.merge_diff_find_data** %5, align 8
  store i32 0, i32* %6, align 4
  %10 = load i32**, i32*** %3, align 8
  %11 = getelementptr inbounds i32*, i32** %10, i64 0
  %12 = load i32*, i32** %11, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %14, label %24

14:                                               ; preds = %2
  %15 = load i32**, i32*** %3, align 8
  %16 = getelementptr inbounds i32*, i32** %15, i64 1
  %17 = load i32*, i32** %16, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %19, label %24

19:                                               ; preds = %14
  %20 = load i32**, i32*** %3, align 8
  %21 = getelementptr inbounds i32*, i32** %20, i64 2
  %22 = load i32*, i32** %21, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %19, %14, %2
  store i32 1, i32* %6, align 4
  br label %45

25:                                               ; preds = %19
  store i64 1, i64* %7, align 8
  br label %26

26:                                               ; preds = %41, %25
  %27 = load i64, i64* %7, align 8
  %28 = icmp ult i64 %27, 3
  br i1 %28, label %29, label %44

29:                                               ; preds = %26
  %30 = load i32**, i32*** %3, align 8
  %31 = getelementptr inbounds i32*, i32** %30, i64 0
  %32 = load i32*, i32** %31, align 8
  %33 = load i32**, i32*** %3, align 8
  %34 = load i64, i64* %7, align 8
  %35 = getelementptr inbounds i32*, i32** %33, i64 %34
  %36 = load i32*, i32** %35, align 8
  %37 = call i64 @index_entry_cmp(i32* %32, i32* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %29
  store i32 1, i32* %6, align 4
  br label %44

40:                                               ; preds = %29
  br label %41

41:                                               ; preds = %40
  %42 = load i64, i64* %7, align 8
  %43 = add i64 %42, 1
  store i64 %43, i64* %7, align 8
  br label %26

44:                                               ; preds = %39, %26
  br label %45

45:                                               ; preds = %44, %24
  %46 = load i32, i32* %6, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %56

48:                                               ; preds = %45
  %49 = load %struct.merge_diff_find_data*, %struct.merge_diff_find_data** %5, align 8
  %50 = getelementptr inbounds %struct.merge_diff_find_data, %struct.merge_diff_find_data* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.merge_diff_find_data*, %struct.merge_diff_find_data** %5, align 8
  %53 = getelementptr inbounds %struct.merge_diff_find_data, %struct.merge_diff_find_data* %52, i32 0, i32 1
  %54 = load i32**, i32*** %3, align 8
  %55 = call i32 @merge_diff_list_insert_conflict(i32 %51, i32* %53, i32** %54)
  br label %62

56:                                               ; preds = %45
  %57 = load %struct.merge_diff_find_data*, %struct.merge_diff_find_data** %5, align 8
  %58 = getelementptr inbounds %struct.merge_diff_find_data, %struct.merge_diff_find_data* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32**, i32*** %3, align 8
  %61 = call i32 @merge_diff_list_insert_unmodified(i32 %59, i32** %60)
  br label %62

62:                                               ; preds = %56, %48
  %63 = phi i32 [ %55, %48 ], [ %61, %56 ]
  ret i32 %63
}

declare dso_local i64 @index_entry_cmp(i32*, i32*) #1

declare dso_local i32 @merge_diff_list_insert_conflict(i32, i32*, i32**) #1

declare dso_local i32 @merge_diff_list_insert_unmodified(i32, i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
