; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_object.c_git_object_lookup_bypath.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_object.c_git_object_lookup_bypath.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GIT_OBJECT_TREE = common dso_local global i32 0, align 4
@GIT_OBJECT_ANY = common dso_local global i64 0, align 8
@GIT_ERROR_OBJECT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"object at path '%s' is not of the asked-for type %d\00", align 1
@GIT_EINVALIDSPEC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git_object_lookup_bypath(i32** %0, i32* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  store i32** %0, i32*** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  store i32 -1, i32* %9, align 4
  store i32* null, i32** %10, align 8
  store i32* null, i32** %11, align 8
  %12 = load i32**, i32*** %5, align 8
  %13 = icmp ne i32** %12, null
  br i1 %13, label %14, label %20

14:                                               ; preds = %4
  %15 = load i32*, i32** %6, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %14
  %18 = load i8*, i8** %7, align 8
  %19 = icmp ne i8* %18, null
  br label %20

20:                                               ; preds = %17, %14, %4
  %21 = phi i1 [ false, %14 ], [ false, %4 ], [ %19, %17 ]
  %22 = zext i1 %21 to i32
  %23 = call i32 @assert(i32 %22)
  %24 = load i32*, i32** %6, align 8
  %25 = load i32, i32* @GIT_OBJECT_TREE, align 4
  %26 = call i32 @git_object_peel(i32** %10, i32* %24, i32 %25)
  store i32 %26, i32* %9, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %33, label %28

28:                                               ; preds = %20
  %29 = load i32*, i32** %10, align 8
  %30 = load i8*, i8** %7, align 8
  %31 = call i32 @git_tree_entry_bypath(i32** %11, i32* %29, i8* %30)
  store i32 %31, i32* %9, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %28, %20
  br label %55

34:                                               ; preds = %28
  %35 = load i64, i64* %8, align 8
  %36 = load i64, i64* @GIT_OBJECT_ANY, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %49

38:                                               ; preds = %34
  %39 = load i32*, i32** %11, align 8
  %40 = call i64 @git_tree_entry_type(i32* %39)
  %41 = load i64, i64* %8, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %49

43:                                               ; preds = %38
  %44 = load i32, i32* @GIT_ERROR_OBJECT, align 4
  %45 = load i8*, i8** %7, align 8
  %46 = load i64, i64* %8, align 8
  %47 = call i32 @git_error_set(i32 %44, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i8* %45, i64 %46)
  %48 = load i32, i32* @GIT_EINVALIDSPEC, align 4
  store i32 %48, i32* %9, align 4
  br label %55

49:                                               ; preds = %38, %34
  %50 = load i32**, i32*** %5, align 8
  %51 = load i32*, i32** %6, align 8
  %52 = call i32 @git_object_owner(i32* %51)
  %53 = load i32*, i32** %11, align 8
  %54 = call i32 @git_tree_entry_to_object(i32** %50, i32 %52, i32* %53)
  store i32 %54, i32* %9, align 4
  br label %55

55:                                               ; preds = %49, %43, %33
  %56 = load i32*, i32** %11, align 8
  %57 = call i32 @git_tree_entry_free(i32* %56)
  %58 = load i32*, i32** %10, align 8
  %59 = call i32 @git_tree_free(i32* %58)
  %60 = load i32, i32* %9, align 4
  ret i32 %60
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @git_object_peel(i32**, i32*, i32) #1

declare dso_local i32 @git_tree_entry_bypath(i32**, i32*, i8*) #1

declare dso_local i64 @git_tree_entry_type(i32*) #1

declare dso_local i32 @git_error_set(i32, i8*, i8*, i64) #1

declare dso_local i32 @git_tree_entry_to_object(i32**, i32, i32*) #1

declare dso_local i32 @git_object_owner(i32*) #1

declare dso_local i32 @git_tree_entry_free(i32*) #1

declare dso_local i32 @git_tree_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
