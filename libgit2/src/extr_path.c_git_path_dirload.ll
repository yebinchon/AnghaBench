; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_path.c_git_path_dirload.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_path.c_git_path_dirload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GIT_PATH_DIRITER_INIT = common dso_local global i32 0, align 4
@GIT_ITEROVER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git_path_dirload(i32* %0, i8* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %15 = load i32, i32* @GIT_PATH_DIRITER_INIT, align 4
  store i32 %15, i32* %10, align 4
  %16 = load i32*, i32** %6, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %4
  %19 = load i8*, i8** %7, align 8
  %20 = icmp ne i8* %19, null
  br label %21

21:                                               ; preds = %18, %4
  %22 = phi i1 [ false, %4 ], [ %20, %18 ]
  %23 = zext i1 %22 to i32
  %24 = call i32 @assert(i32 %23)
  %25 = load i8*, i8** %7, align 8
  %26 = load i32, i32* %9, align 4
  %27 = call i32 @git_path_diriter_init(i32* %10, i8* %25, i32 %26)
  store i32 %27, i32* %14, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %21
  %30 = load i32, i32* %14, align 4
  store i32 %30, i32* %5, align 4
  br label %68

31:                                               ; preds = %21
  br label %32

32:                                               ; preds = %59, %31
  %33 = call i32 @git_path_diriter_next(i32* %10)
  store i32 %33, i32* %14, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %60

35:                                               ; preds = %32
  %36 = call i32 @git_path_diriter_fullpath(i8** %11, i64* %12, i32* %10)
  store i32 %36, i32* %14, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %35
  br label %60

39:                                               ; preds = %35
  %40 = load i64, i64* %12, align 8
  %41 = load i64, i64* %8, align 8
  %42 = icmp ugt i64 %40, %41
  %43 = zext i1 %42 to i32
  %44 = call i32 @assert(i32 %43)
  %45 = load i8*, i8** %11, align 8
  %46 = load i64, i64* %8, align 8
  %47 = getelementptr inbounds i8, i8* %45, i64 %46
  %48 = load i64, i64* %12, align 8
  %49 = load i64, i64* %8, align 8
  %50 = sub i64 %48, %49
  %51 = call i8* @git__strndup(i8* %47, i64 %50)
  store i8* %51, i8** %13, align 8
  %52 = load i8*, i8** %13, align 8
  %53 = call i32 @GIT_ERROR_CHECK_ALLOC(i8* %52)
  %54 = load i32*, i32** %6, align 8
  %55 = load i8*, i8** %13, align 8
  %56 = call i32 @git_vector_insert(i32* %54, i8* %55)
  store i32 %56, i32* %14, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %39
  br label %60

59:                                               ; preds = %39
  br label %32

60:                                               ; preds = %58, %38, %32
  %61 = load i32, i32* %14, align 4
  %62 = load i32, i32* @GIT_ITEROVER, align 4
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %60
  store i32 0, i32* %14, align 4
  br label %65

65:                                               ; preds = %64, %60
  %66 = call i32 @git_path_diriter_free(i32* %10)
  %67 = load i32, i32* %14, align 4
  store i32 %67, i32* %5, align 4
  br label %68

68:                                               ; preds = %65, %29
  %69 = load i32, i32* %5, align 4
  ret i32 %69
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @git_path_diriter_init(i32*, i8*, i32) #1

declare dso_local i32 @git_path_diriter_next(i32*) #1

declare dso_local i32 @git_path_diriter_fullpath(i8**, i64*, i32*) #1

declare dso_local i8* @git__strndup(i8*, i64) #1

declare dso_local i32 @GIT_ERROR_CHECK_ALLOC(i8*) #1

declare dso_local i32 @git_vector_insert(i32*, i8*) #1

declare dso_local i32 @git_path_diriter_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
