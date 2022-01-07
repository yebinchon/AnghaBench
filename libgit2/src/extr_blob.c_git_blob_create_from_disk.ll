; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_blob.c_git_blob_create_from_disk.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_blob.c_git_blob_create_from_disk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GIT_BUF_INIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git_blob_create_from_disk(i32* %0, i32* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  %12 = load i32, i32* @GIT_BUF_INIT, align 4
  store i32 %12, i32* %9, align 4
  %13 = load i8*, i8** %7, align 8
  %14 = call i32 @git_path_prettify(i32* %9, i8* %13, i32* null)
  store i32 %14, i32* %8, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = call i32 @git_buf_dispose(i32* %9)
  %18 = load i32, i32* %8, align 4
  store i32 %18, i32* %4, align 4
  br label %44

19:                                               ; preds = %3
  %20 = call i8* @git_buf_cstr(i32* %9)
  store i8* %20, i8** %11, align 8
  %21 = load i32*, i32** %6, align 8
  %22 = call i8* @git_repository_workdir(i32* %21)
  store i8* %22, i8** %10, align 8
  %23 = load i8*, i8** %10, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %25, label %36

25:                                               ; preds = %19
  %26 = load i8*, i8** %11, align 8
  %27 = load i8*, i8** %10, align 8
  %28 = call i32 @git__prefixcmp(i8* %26, i8* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %36, label %30

30:                                               ; preds = %25
  %31 = load i8*, i8** %10, align 8
  %32 = call i32 @strlen(i8* %31)
  %33 = load i8*, i8** %11, align 8
  %34 = sext i32 %32 to i64
  %35 = getelementptr inbounds i8, i8* %33, i64 %34
  store i8* %35, i8** %11, align 8
  br label %36

36:                                               ; preds = %30, %25, %19
  %37 = load i32*, i32** %5, align 8
  %38 = load i32*, i32** %6, align 8
  %39 = call i8* @git_buf_cstr(i32* %9)
  %40 = load i8*, i8** %11, align 8
  %41 = call i32 @git_blob__create_from_paths(i32* %37, i32* null, i32* %38, i8* %39, i8* %40, i32 0, i32 1)
  store i32 %41, i32* %8, align 4
  %42 = call i32 @git_buf_dispose(i32* %9)
  %43 = load i32, i32* %8, align 4
  store i32 %43, i32* %4, align 4
  br label %44

44:                                               ; preds = %36, %16
  %45 = load i32, i32* %4, align 4
  ret i32 %45
}

declare dso_local i32 @git_path_prettify(i32*, i8*, i32*) #1

declare dso_local i32 @git_buf_dispose(i32*) #1

declare dso_local i8* @git_buf_cstr(i32*) #1

declare dso_local i8* @git_repository_workdir(i32*) #1

declare dso_local i32 @git__prefixcmp(i8*, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @git_blob__create_from_paths(i32*, i32*, i32*, i8*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
