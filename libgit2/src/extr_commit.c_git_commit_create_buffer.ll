; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_commit.c_git_commit_create_buffer.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_commit.c_git_commit_create_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32*, i32** }

@GIT_ARRAY_INIT = common dso_local global i32 0, align 4
@commit_parent_from_array = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git_commit_create_buffer(i32* %0, i32* %1, i32* %2, i32* %3, i8* %4, i8* %5, i32* %6, i64 %7, i32** %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32**, align 8
  %20 = alloca i32, align 4
  %21 = alloca %struct.TYPE_3__, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32*, align 8
  store i32* %0, i32** %11, align 8
  store i32* %1, i32** %12, align 8
  store i32* %2, i32** %13, align 8
  store i32* %3, i32** %14, align 8
  store i8* %4, i8** %15, align 8
  store i8* %5, i8** %16, align 8
  store i32* %6, i32** %17, align 8
  store i64 %7, i64* %18, align 8
  store i32** %8, i32*** %19, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %25 = load i64, i64* %18, align 8
  store i64 %25, i64* %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 1
  %27 = load i32**, i32*** %19, align 8
  %28 = bitcast i32** %27 to i32*
  store i32* %28, i32** %26, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 2
  %30 = load i32*, i32** %12, align 8
  %31 = bitcast i32* %30 to i32**
  store i32** %31, i32*** %29, align 8
  %32 = load i32, i32* @GIT_ARRAY_INIT, align 4
  store i32 %32, i32* %22, align 4
  %33 = load i32*, i32** %17, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %35, label %40

35:                                               ; preds = %9
  %36 = load i32*, i32** %17, align 8
  %37 = call i32* @git_tree_owner(i32* %36)
  %38 = load i32*, i32** %12, align 8
  %39 = icmp eq i32* %37, %38
  br label %40

40:                                               ; preds = %35, %9
  %41 = phi i1 [ false, %9 ], [ %39, %35 ]
  %42 = zext i1 %41 to i32
  %43 = call i32 @assert(i32 %42)
  %44 = load i32*, i32** %17, align 8
  %45 = call i32* @git_tree_id(i32* %44)
  store i32* %45, i32** %23, align 8
  %46 = load i32*, i32** %12, align 8
  %47 = load i32*, i32** %23, align 8
  %48 = load i32, i32* @commit_parent_from_array, align 4
  %49 = call i32 @validate_tree_and_parents(i32* %22, i32* %46, i32* %47, i32 %48, %struct.TYPE_3__* %21, i32* null, i32 1)
  store i32 %49, i32* %20, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %40
  %52 = load i32, i32* %20, align 4
  store i32 %52, i32* %10, align 4
  br label %64

53:                                               ; preds = %40
  %54 = load i32*, i32** %11, align 8
  %55 = load i32*, i32** %13, align 8
  %56 = load i32*, i32** %14, align 8
  %57 = load i8*, i8** %15, align 8
  %58 = load i8*, i8** %16, align 8
  %59 = load i32*, i32** %23, align 8
  %60 = call i32 @git_commit__create_buffer_internal(i32* %54, i32* %55, i32* %56, i8* %57, i8* %58, i32* %59, i32* %22)
  store i32 %60, i32* %20, align 4
  %61 = load i32, i32* %22, align 4
  %62 = call i32 @git_array_clear(i32 %61)
  %63 = load i32, i32* %20, align 4
  store i32 %63, i32* %10, align 4
  br label %64

64:                                               ; preds = %53, %51
  %65 = load i32, i32* %10, align 4
  ret i32 %65
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32* @git_tree_owner(i32*) #1

declare dso_local i32* @git_tree_id(i32*) #1

declare dso_local i32 @validate_tree_and_parents(i32*, i32*, i32*, i32, %struct.TYPE_3__*, i32*, i32) #1

declare dso_local i32 @git_commit__create_buffer_internal(i32*, i32*, i32*, i8*, i8*, i32*, i32*) #1

declare dso_local i32 @git_array_clear(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
