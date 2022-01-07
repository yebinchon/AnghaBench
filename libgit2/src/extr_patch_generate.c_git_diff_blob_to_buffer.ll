; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_patch_generate.c_git_diff_blob_to_buffer.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_patch_generate.c_git_diff_blob_to_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git_diff_blob_to_buffer(i32* %0, i8* %1, i8* %2, i64 %3, i8* %4, i32* %5, i32 %6, i32 %7, i32 %8, i32 %9, i8* %10) #0 {
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i8*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store i32* %0, i32** %12, align 8
  store i8* %1, i8** %13, align 8
  store i8* %2, i8** %14, align 8
  store i64 %3, i64* %15, align 8
  store i8* %4, i8** %16, align 8
  store i32* %5, i32** %17, align 8
  store i32 %6, i32* %18, align 4
  store i32 %7, i32* %19, align 4
  store i32 %8, i32* %20, align 4
  store i32 %9, i32* %21, align 4
  store i8* %10, i8** %22, align 8
  %25 = load i32*, i32** %12, align 8
  %26 = load i8*, i8** %13, align 8
  %27 = call i32 @GIT_DIFF_FILE_CONTENT_SRC__BLOB(i32* %25, i8* %26)
  store i32 %27, i32* %23, align 4
  %28 = load i8*, i8** %14, align 8
  %29 = load i64, i64* %15, align 8
  %30 = load i8*, i8** %16, align 8
  %31 = call i32 @GIT_DIFF_FILE_CONTENT_SRC__BUF(i8* %28, i64 %29, i8* %30)
  store i32 %31, i32* %24, align 4
  %32 = load i32*, i32** %17, align 8
  %33 = load i32, i32* %18, align 4
  %34 = load i32, i32* %19, align 4
  %35 = load i32, i32* %20, align 4
  %36 = load i32, i32* %21, align 4
  %37 = load i8*, i8** %22, align 8
  %38 = call i32 @diff_from_sources(i32* %23, i32* %24, i32* %32, i32 %33, i32 %34, i32 %35, i32 %36, i8* %37)
  ret i32 %38
}

declare dso_local i32 @GIT_DIFF_FILE_CONTENT_SRC__BLOB(i32*, i8*) #1

declare dso_local i32 @GIT_DIFF_FILE_CONTENT_SRC__BUF(i8*, i64, i8*) #1

declare dso_local i32 @diff_from_sources(i32*, i32*, i32*, i32, i32, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
