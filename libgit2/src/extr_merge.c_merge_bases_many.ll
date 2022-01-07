; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_merge.c_merge_bases_many.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_merge.c_merge_bases_many.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GIT_ERROR_INVALID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"at least two commits are required to find an ancestor\00", align 1
@GIT_ERROR_MERGE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"no merge base found\00", align 1
@GIT_ENOTFOUND = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @merge_bases_many(i32** %0, i32** %1, i32* %2, i64 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32**, align 8
  %8 = alloca i32**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32** %0, i32*** %7, align 8
  store i32** %1, i32*** %8, align 8
  store i32* %2, i32** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32* %4, i32** %11, align 8
  store i32* null, i32** %12, align 8
  store i32* null, i32** %14, align 8
  store i32 -1, i32* %16, align 4
  %18 = load i64, i64* %10, align 8
  %19 = icmp ult i64 %18, 2
  br i1 %19, label %20, label %23

20:                                               ; preds = %5
  %21 = load i32, i32* @GIT_ERROR_INVALID, align 4
  %22 = call i32 @git_error_set(i32 %21, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %6, align 4
  br label %88

23:                                               ; preds = %5
  %24 = load i64, i64* %10, align 8
  %25 = sub i64 %24, 1
  %26 = call i64 @git_vector_init(i32* %13, i64 %25, i32* null)
  %27 = icmp slt i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %23
  store i32 -1, i32* %6, align 4
  br label %88

29:                                               ; preds = %23
  %30 = load i32*, i32** %9, align 8
  %31 = call i64 @git_revwalk_new(i32** %12, i32* %30)
  %32 = icmp slt i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %29
  br label %83

34:                                               ; preds = %29
  store i32 1, i32* %17, align 4
  br label %35

35:                                               ; preds = %53, %34
  %36 = load i32, i32* %17, align 4
  %37 = zext i32 %36 to i64
  %38 = load i64, i64* %10, align 8
  %39 = icmp ult i64 %37, %38
  br i1 %39, label %40, label %56

40:                                               ; preds = %35
  %41 = load i32*, i32** %12, align 8
  %42 = load i32*, i32** %11, align 8
  %43 = load i32, i32* %17, align 4
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = call i32* @git_revwalk__commit_lookup(i32* %41, i32* %45)
  store i32* %46, i32** %15, align 8
  %47 = load i32*, i32** %15, align 8
  %48 = icmp eq i32* %47, null
  br i1 %48, label %49, label %50

49:                                               ; preds = %40
  br label %83

50:                                               ; preds = %40
  %51 = load i32*, i32** %15, align 8
  %52 = call i32 @git_vector_insert(i32* %13, i32* %51)
  br label %53

53:                                               ; preds = %50
  %54 = load i32, i32* %17, align 4
  %55 = add i32 %54, 1
  store i32 %55, i32* %17, align 4
  br label %35

56:                                               ; preds = %35
  %57 = load i32*, i32** %12, align 8
  %58 = load i32*, i32** %11, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 0
  %60 = call i32* @git_revwalk__commit_lookup(i32* %57, i32* %59)
  store i32* %60, i32** %15, align 8
  %61 = load i32*, i32** %15, align 8
  %62 = icmp eq i32* %61, null
  br i1 %62, label %63, label %64

63:                                               ; preds = %56
  br label %83

64:                                               ; preds = %56
  %65 = load i32*, i32** %12, align 8
  %66 = load i32*, i32** %15, align 8
  %67 = call i64 @git_merge__bases_many(i32** %14, i32* %65, i32* %66, i32* %13)
  %68 = icmp slt i64 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %64
  br label %83

70:                                               ; preds = %64
  %71 = load i32*, i32** %14, align 8
  %72 = icmp ne i32* %71, null
  br i1 %72, label %77, label %73

73:                                               ; preds = %70
  %74 = load i32, i32* @GIT_ERROR_MERGE, align 4
  %75 = call i32 @git_error_set(i32 %74, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %76 = load i32, i32* @GIT_ENOTFOUND, align 4
  store i32 %76, i32* %16, align 4
  br label %83

77:                                               ; preds = %70
  %78 = load i32*, i32** %14, align 8
  %79 = load i32**, i32*** %7, align 8
  store i32* %78, i32** %79, align 8
  %80 = load i32*, i32** %12, align 8
  %81 = load i32**, i32*** %8, align 8
  store i32* %80, i32** %81, align 8
  %82 = call i32 @git_vector_free(i32* %13)
  store i32 0, i32* %6, align 4
  br label %88

83:                                               ; preds = %73, %69, %63, %49, %33
  %84 = call i32 @git_vector_free(i32* %13)
  %85 = load i32*, i32** %12, align 8
  %86 = call i32 @git_revwalk_free(i32* %85)
  %87 = load i32, i32* %16, align 4
  store i32 %87, i32* %6, align 4
  br label %88

88:                                               ; preds = %83, %77, %28, %20
  %89 = load i32, i32* %6, align 4
  ret i32 %89
}

declare dso_local i32 @git_error_set(i32, i8*) #1

declare dso_local i64 @git_vector_init(i32*, i64, i32*) #1

declare dso_local i64 @git_revwalk_new(i32**, i32*) #1

declare dso_local i32* @git_revwalk__commit_lookup(i32*, i32*) #1

declare dso_local i32 @git_vector_insert(i32*, i32*) #1

declare dso_local i64 @git_merge__bases_many(i32**, i32*, i32*, i32*) #1

declare dso_local i32 @git_vector_free(i32*) #1

declare dso_local i32 @git_revwalk_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
