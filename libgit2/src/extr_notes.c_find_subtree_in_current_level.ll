; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_notes.c_find_subtree_in_current_level.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_notes.c_find_subtree_in_current_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GIT_EEXISTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32**, i32*, i32*, i8*, i32)* @find_subtree_in_current_level to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_subtree_in_current_level(i32** %0, i32* %1, i32* %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  store i32** %0, i32*** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  %14 = load i32**, i32*** %7, align 8
  store i32* null, i32** %14, align 8
  %15 = load i32*, i32** %9, align 8
  %16 = icmp eq i32* %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %5
  %18 = call i32 (...) @note_error_notfound()
  store i32 %18, i32* %6, align 4
  br label %76

19:                                               ; preds = %5
  store i64 0, i64* %12, align 8
  br label %20

20:                                               ; preds = %71, %19
  %21 = load i64, i64* %12, align 8
  %22 = load i32*, i32** %9, align 8
  %23 = call i64 @git_tree_entrycount(i32* %22)
  %24 = icmp ult i64 %21, %23
  br i1 %24, label %25, label %74

25:                                               ; preds = %20
  %26 = load i32*, i32** %9, align 8
  %27 = load i64, i64* %12, align 8
  %28 = call i32* @git_tree_entry_byindex(i32* %26, i64 %27)
  store i32* %28, i32** %13, align 8
  %29 = load i32*, i32** %13, align 8
  %30 = call i32 @git_tree_entry_name(i32* %29)
  %31 = call i32 @git__ishex(i32 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %25
  br label %71

34:                                               ; preds = %25
  %35 = load i32*, i32** %13, align 8
  %36 = call i32 @git_tree_entry_filemode(i32* %35)
  %37 = call i64 @S_ISDIR(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %59

39:                                               ; preds = %34
  %40 = load i32*, i32** %13, align 8
  %41 = call i32 @git_tree_entry_name(i32* %40)
  %42 = call i32 @strlen(i32 %41)
  %43 = icmp eq i32 %42, 2
  br i1 %43, label %44, label %59

44:                                               ; preds = %39
  %45 = load i32*, i32** %13, align 8
  %46 = call i32 @git_tree_entry_name(i32* %45)
  %47 = load i8*, i8** %10, align 8
  %48 = load i32, i32* %11, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i8, i8* %47, i64 %49
  %51 = call i32 @strncmp(i32 %46, i8* %50, i32 2)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %59, label %53

53:                                               ; preds = %44
  %54 = load i32**, i32*** %7, align 8
  %55 = load i32*, i32** %8, align 8
  %56 = load i32*, i32** %13, align 8
  %57 = call i32 @git_tree_entry_id(i32* %56)
  %58 = call i32 @git_tree_lookup(i32** %54, i32* %55, i32 %57)
  store i32 %58, i32* %6, align 4
  br label %76

59:                                               ; preds = %44, %39, %34
  %60 = load i32*, i32** %13, align 8
  %61 = call i32 @git_tree_entry_name(i32* %60)
  %62 = load i8*, i8** %10, align 8
  %63 = load i32, i32* %11, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i8, i8* %62, i64 %64
  %66 = call i32 @strcmp(i32 %61, i8* %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %70, label %68

68:                                               ; preds = %59
  %69 = load i32, i32* @GIT_EEXISTS, align 4
  store i32 %69, i32* %6, align 4
  br label %76

70:                                               ; preds = %59
  br label %71

71:                                               ; preds = %70, %33
  %72 = load i64, i64* %12, align 8
  %73 = add i64 %72, 1
  store i64 %73, i64* %12, align 8
  br label %20

74:                                               ; preds = %20
  %75 = call i32 (...) @note_error_notfound()
  store i32 %75, i32* %6, align 4
  br label %76

76:                                               ; preds = %74, %68, %53, %17
  %77 = load i32, i32* %6, align 4
  ret i32 %77
}

declare dso_local i32 @note_error_notfound(...) #1

declare dso_local i64 @git_tree_entrycount(i32*) #1

declare dso_local i32* @git_tree_entry_byindex(i32*, i64) #1

declare dso_local i32 @git__ishex(i32) #1

declare dso_local i32 @git_tree_entry_name(i32*) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i32 @git_tree_entry_filemode(i32*) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @strncmp(i32, i8*, i32) #1

declare dso_local i32 @git_tree_lookup(i32**, i32*, i32) #1

declare dso_local i32 @git_tree_entry_id(i32*) #1

declare dso_local i32 @strcmp(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
