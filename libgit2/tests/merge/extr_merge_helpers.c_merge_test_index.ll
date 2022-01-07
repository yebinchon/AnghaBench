; ModuleID = '/home/carl/AnghaBench/libgit2/tests/merge/extr_merge_helpers.c_merge_test_index.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/merge/extr_merge_helpers.c_merge_test_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.merge_index_entry = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @merge_test_index(i32* %0, %struct.merge_index_entry* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.merge_index_entry*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store %struct.merge_index_entry* %1, %struct.merge_index_entry** %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load i32*, i32** %5, align 8
  %11 = call i64 @git_index_entrycount(i32* %10)
  %12 = load i64, i64* %7, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %39

15:                                               ; preds = %3
  store i64 0, i64* %8, align 8
  br label %16

16:                                               ; preds = %35, %15
  %17 = load i64, i64* %8, align 8
  %18 = load i64, i64* %7, align 8
  %19 = icmp ult i64 %17, %18
  br i1 %19, label %20, label %38

20:                                               ; preds = %16
  %21 = load i32*, i32** %5, align 8
  %22 = load i64, i64* %8, align 8
  %23 = call i32* @git_index_get_byindex(i32* %21, i64 %22)
  store i32* %23, i32** %9, align 8
  %24 = icmp eq i32* %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  store i32 0, i32* %4, align 4
  br label %39

26:                                               ; preds = %20
  %27 = load %struct.merge_index_entry*, %struct.merge_index_entry** %6, align 8
  %28 = load i64, i64* %8, align 8
  %29 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %27, i64 %28
  %30 = load i32*, i32** %9, align 8
  %31 = call i32 @index_entry_eq_merge_index_entry(%struct.merge_index_entry* %29, i32* %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %26
  store i32 0, i32* %4, align 4
  br label %39

34:                                               ; preds = %26
  br label %35

35:                                               ; preds = %34
  %36 = load i64, i64* %8, align 8
  %37 = add i64 %36, 1
  store i64 %37, i64* %8, align 8
  br label %16

38:                                               ; preds = %16
  store i32 1, i32* %4, align 4
  br label %39

39:                                               ; preds = %38, %33, %25, %14
  %40 = load i32, i32* %4, align 4
  ret i32 %40
}

declare dso_local i64 @git_index_entrycount(i32*) #1

declare dso_local i32* @git_index_get_byindex(i32*, i64) #1

declare dso_local i32 @index_entry_eq_merge_index_entry(%struct.merge_index_entry*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
