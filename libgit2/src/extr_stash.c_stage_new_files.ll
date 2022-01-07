; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_stash.c_stage_new_files.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_stash.c_stage_new_files.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GIT_ITERATOR_OPTIONS_INIT = common dso_local global i32 0, align 4
@stage_new_file = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32**, i32*, i32*)* @stage_new_files to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stage_new_files(i32** %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32**, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca [2 x i32*], align 16
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store i32** %0, i32*** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %11 = bitcast [2 x i32*]* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %11, i8 0, i64 16, i1 false)
  %12 = load i32, i32* @GIT_ITERATOR_OPTIONS_INIT, align 4
  store i32 %12, i32* %8, align 4
  store i32* null, i32** %9, align 8
  %13 = call i32 @git_index_new(i32** %9)
  store i32 %13, i32* %10, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %25, label %15

15:                                               ; preds = %3
  %16 = getelementptr inbounds [2 x i32*], [2 x i32*]* %7, i64 0, i64 0
  %17 = load i32*, i32** %5, align 8
  %18 = call i32 @git_iterator_for_tree(i32** %16, i32* %17, i32* %8)
  store i32 %18, i32* %10, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %15
  %21 = getelementptr inbounds [2 x i32*], [2 x i32*]* %7, i64 0, i64 1
  %22 = load i32*, i32** %6, align 8
  %23 = call i32 @git_iterator_for_tree(i32** %21, i32* %22, i32* %8)
  store i32 %23, i32* %10, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %20, %15, %3
  br label %31

26:                                               ; preds = %20
  %27 = getelementptr inbounds [2 x i32*], [2 x i32*]* %7, i64 0, i64 0
  %28 = load i32, i32* @stage_new_file, align 4
  %29 = load i32*, i32** %9, align 8
  %30 = call i32 @git_iterator_walk(i32** %27, i32 2, i32 %28, i32* %29)
  store i32 %30, i32* %10, align 4
  br label %31

31:                                               ; preds = %26, %25
  %32 = load i32, i32* %10, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %31
  %35 = load i32*, i32** %9, align 8
  %36 = call i32 @git_index_free(i32* %35)
  br label %40

37:                                               ; preds = %31
  %38 = load i32*, i32** %9, align 8
  %39 = load i32**, i32*** %4, align 8
  store i32* %38, i32** %39, align 8
  br label %40

40:                                               ; preds = %37, %34
  %41 = getelementptr inbounds [2 x i32*], [2 x i32*]* %7, i64 0, i64 0
  %42 = load i32*, i32** %41, align 16
  %43 = call i32 @git_iterator_free(i32* %42)
  %44 = getelementptr inbounds [2 x i32*], [2 x i32*]* %7, i64 0, i64 1
  %45 = load i32*, i32** %44, align 8
  %46 = call i32 @git_iterator_free(i32* %45)
  %47 = load i32, i32* %10, align 4
  ret i32 %47
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @git_index_new(i32**) #2

declare dso_local i32 @git_iterator_for_tree(i32**, i32*, i32*) #2

declare dso_local i32 @git_iterator_walk(i32**, i32, i32, i32*) #2

declare dso_local i32 @git_index_free(i32*) #2

declare dso_local i32 @git_iterator_free(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
