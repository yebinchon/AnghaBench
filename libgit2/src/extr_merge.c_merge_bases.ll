; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_merge.c_merge_bases.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_merge.c_merge_bases.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i8** }

@GIT_ERROR_MERGE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"no merge base found\00", align 1
@GIT_ENOTFOUND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32**, i32**, i32*, i32*, i32*)* @merge_bases to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @merge_bases(i32** %0, i32** %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32**, align 8
  %8 = alloca i32**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_4__, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca [1 x i8*], align 8
  store i32** %0, i32*** %7, align 8
  store i32** %1, i32*** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32* null, i32** %14, align 8
  %17 = load i32*, i32** %9, align 8
  %18 = call i64 @git_revwalk_new(i32** %12, i32* %17)
  %19 = icmp slt i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %5
  store i32 -1, i32* %6, align 4
  br label %65

21:                                               ; preds = %5
  %22 = load i32*, i32** %12, align 8
  %23 = load i32*, i32** %11, align 8
  %24 = call i32* @git_revwalk__commit_lookup(i32* %22, i32* %23)
  store i32* %24, i32** %15, align 8
  %25 = load i32*, i32** %15, align 8
  %26 = icmp eq i32* %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  br label %62

28:                                               ; preds = %21
  %29 = call i32 @memset(%struct.TYPE_4__* %13, i32 0, i32 16)
  %30 = load i32*, i32** %15, align 8
  %31 = bitcast i32* %30 to i8*
  %32 = getelementptr inbounds [1 x i8*], [1 x i8*]* %16, i64 0, i64 0
  store i8* %31, i8** %32, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  store i32 1, i32* %33, align 8
  %34 = getelementptr inbounds [1 x i8*], [1 x i8*]* %16, i64 0, i64 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 1
  store i8** %34, i8*** %35, align 8
  %36 = load i32*, i32** %12, align 8
  %37 = load i32*, i32** %10, align 8
  %38 = call i32* @git_revwalk__commit_lookup(i32* %36, i32* %37)
  store i32* %38, i32** %15, align 8
  %39 = load i32*, i32** %15, align 8
  %40 = icmp eq i32* %39, null
  br i1 %40, label %41, label %42

41:                                               ; preds = %28
  br label %62

42:                                               ; preds = %28
  %43 = load i32*, i32** %12, align 8
  %44 = load i32*, i32** %15, align 8
  %45 = call i64 @git_merge__bases_many(i32** %14, i32* %43, i32* %44, %struct.TYPE_4__* %13)
  %46 = icmp slt i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %42
  br label %62

48:                                               ; preds = %42
  %49 = load i32*, i32** %14, align 8
  %50 = icmp ne i32* %49, null
  br i1 %50, label %57, label %51

51:                                               ; preds = %48
  %52 = load i32*, i32** %12, align 8
  %53 = call i32 @git_revwalk_free(i32* %52)
  %54 = load i32, i32* @GIT_ERROR_MERGE, align 4
  %55 = call i32 @git_error_set(i32 %54, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %56 = load i32, i32* @GIT_ENOTFOUND, align 4
  store i32 %56, i32* %6, align 4
  br label %65

57:                                               ; preds = %48
  %58 = load i32*, i32** %14, align 8
  %59 = load i32**, i32*** %7, align 8
  store i32* %58, i32** %59, align 8
  %60 = load i32*, i32** %12, align 8
  %61 = load i32**, i32*** %8, align 8
  store i32* %60, i32** %61, align 8
  store i32 0, i32* %6, align 4
  br label %65

62:                                               ; preds = %47, %41, %27
  %63 = load i32*, i32** %12, align 8
  %64 = call i32 @git_revwalk_free(i32* %63)
  store i32 -1, i32* %6, align 4
  br label %65

65:                                               ; preds = %62, %57, %51, %20
  %66 = load i32, i32* %6, align 4
  ret i32 %66
}

declare dso_local i64 @git_revwalk_new(i32**, i32*) #1

declare dso_local i32* @git_revwalk__commit_lookup(i32*, i32*) #1

declare dso_local i32 @memset(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i64 @git_merge__bases_many(i32**, i32*, i32*, %struct.TYPE_4__*) #1

declare dso_local i32 @git_revwalk_free(i32*) #1

declare dso_local i32 @git_error_set(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
