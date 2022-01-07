; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_stash.c_merge_index_and_tree.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_stash.c_merge_index_and_tree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@GIT_ITERATOR_OPTIONS_INIT = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@GIT_ITERATOR_DONT_IGNORE_CASE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32**, i32*, i32*, i32*, i32*)* @merge_index_and_tree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @merge_index_and_tree(i32** %0, i32* %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_5__, align 4
  %15 = alloca i32, align 4
  store i32** %0, i32*** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  store i32* null, i32** %11, align 8
  store i32* null, i32** %12, align 8
  store i32* null, i32** %13, align 8
  %16 = bitcast %struct.TYPE_5__* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %16, i8* align 4 bitcast (%struct.TYPE_5__* @GIT_ITERATOR_OPTIONS_INIT to i8*), i64 4, i1 false)
  %17 = load i32, i32* @GIT_ITERATOR_DONT_IGNORE_CASE, align 4
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  store i32 %17, i32* %18, align 4
  %19 = load i32*, i32** %8, align 8
  %20 = call i32 @git_iterator_for_tree(i32** %11, i32* %19, %struct.TYPE_5__* %14)
  store i32 %20, i32* %15, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %31, label %22

22:                                               ; preds = %5
  %23 = load i32*, i32** %7, align 8
  %24 = load i32*, i32** %9, align 8
  %25 = call i32 @git_iterator_for_index(i32** %12, i32* %23, i32* %24, %struct.TYPE_5__* %14)
  store i32 %25, i32* %15, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %22
  %28 = load i32*, i32** %10, align 8
  %29 = call i32 @git_iterator_for_tree(i32** %13, i32* %28, %struct.TYPE_5__* %14)
  store i32 %29, i32* %15, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %27, %22, %5
  br label %39

32:                                               ; preds = %27
  %33 = load i32**, i32*** %6, align 8
  %34 = load i32*, i32** %7, align 8
  %35 = load i32*, i32** %11, align 8
  %36 = load i32*, i32** %12, align 8
  %37 = load i32*, i32** %13, align 8
  %38 = call i32 @git_merge__iterators(i32** %33, i32* %34, i32* %35, i32* %36, i32* %37, i32* null)
  store i32 %38, i32* %15, align 4
  br label %39

39:                                               ; preds = %32, %31
  %40 = load i32*, i32** %11, align 8
  %41 = call i32 @git_iterator_free(i32* %40)
  %42 = load i32*, i32** %12, align 8
  %43 = call i32 @git_iterator_free(i32* %42)
  %44 = load i32*, i32** %13, align 8
  %45 = call i32 @git_iterator_free(i32* %44)
  %46 = load i32, i32* %15, align 4
  ret i32 %46
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @git_iterator_for_tree(i32**, i32*, %struct.TYPE_5__*) #2

declare dso_local i32 @git_iterator_for_index(i32**, i32*, i32*, %struct.TYPE_5__*) #2

declare dso_local i32 @git_merge__iterators(i32**, i32*, i32*, i32*, i32*, i32*) #2

declare dso_local i32 @git_iterator_free(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
