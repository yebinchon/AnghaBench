; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_notes.c_find_blob.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_notes.c_find_blob.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i8*)* @find_blob to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_blob(i32* %0, i32* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 0, i64* %8, align 8
  br label %10

10:                                               ; preds = %30, %3
  %11 = load i64, i64* %8, align 8
  %12 = load i32*, i32** %6, align 8
  %13 = call i64 @git_tree_entrycount(i32* %12)
  %14 = icmp ult i64 %11, %13
  br i1 %14, label %15, label %33

15:                                               ; preds = %10
  %16 = load i32*, i32** %6, align 8
  %17 = load i64, i64* %8, align 8
  %18 = call i32* @git_tree_entry_byindex(i32* %16, i64 %17)
  store i32* %18, i32** %9, align 8
  %19 = load i32*, i32** %9, align 8
  %20 = call i32 @git_tree_entry_name(i32* %19)
  %21 = load i8*, i8** %7, align 8
  %22 = call i32 @strcmp(i32 %20, i8* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %15
  %25 = load i32*, i32** %5, align 8
  %26 = load i32*, i32** %9, align 8
  %27 = call i32 @git_tree_entry_id(i32* %26)
  %28 = call i32 @git_oid_cpy(i32* %25, i32 %27)
  store i32 0, i32* %4, align 4
  br label %35

29:                                               ; preds = %15
  br label %30

30:                                               ; preds = %29
  %31 = load i64, i64* %8, align 8
  %32 = add i64 %31, 1
  store i64 %32, i64* %8, align 8
  br label %10

33:                                               ; preds = %10
  %34 = call i32 (...) @note_error_notfound()
  store i32 %34, i32* %4, align 4
  br label %35

35:                                               ; preds = %33, %24
  %36 = load i32, i32* %4, align 4
  ret i32 %36
}

declare dso_local i64 @git_tree_entrycount(i32*) #1

declare dso_local i32* @git_tree_entry_byindex(i32*, i64) #1

declare dso_local i32 @strcmp(i32, i8*) #1

declare dso_local i32 @git_tree_entry_name(i32*) #1

declare dso_local i32 @git_oid_cpy(i32*, i32) #1

declare dso_local i32 @git_tree_entry_id(i32*) #1

declare dso_local i32 @note_error_notfound(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
