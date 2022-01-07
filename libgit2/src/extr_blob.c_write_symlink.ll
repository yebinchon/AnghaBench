; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_blob.c_write_symlink.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_blob.c_write_symlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GIT_ERROR_OS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"failed to create blob: cannot read symlink '%s'\00", align 1
@GIT_OBJECT_BLOB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i8*, i64)* @write_symlink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_symlink(i32* %0, i32* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load i64, i64* %9, align 8
  %14 = call i8* @git__malloc(i64 %13)
  store i8* %14, i8** %10, align 8
  %15 = load i8*, i8** %10, align 8
  %16 = call i32 @GIT_ERROR_CHECK_ALLOC(i8* %15)
  %17 = load i8*, i8** %8, align 8
  %18 = load i8*, i8** %10, align 8
  %19 = load i64, i64* %9, align 8
  %20 = call i64 @p_readlink(i8* %17, i8* %18, i64 %19)
  store i64 %20, i64* %11, align 8
  %21 = load i64, i64* %11, align 8
  %22 = load i64, i64* %9, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %30

24:                                               ; preds = %4
  %25 = load i32, i32* @GIT_ERROR_OS, align 4
  %26 = load i8*, i8** %8, align 8
  %27 = call i32 @git_error_set(i32 %25, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i8* %26)
  %28 = load i8*, i8** %10, align 8
  %29 = call i32 @git__free(i8* %28)
  store i32 -1, i32* %5, align 4
  br label %40

30:                                               ; preds = %4
  %31 = load i32*, i32** %6, align 8
  %32 = load i32*, i32** %7, align 8
  %33 = load i8*, i8** %10, align 8
  %34 = load i64, i64* %9, align 8
  %35 = load i32, i32* @GIT_OBJECT_BLOB, align 4
  %36 = call i32 @git_odb_write(i32* %31, i32* %32, i8* %33, i64 %34, i32 %35)
  store i32 %36, i32* %12, align 4
  %37 = load i8*, i8** %10, align 8
  %38 = call i32 @git__free(i8* %37)
  %39 = load i32, i32* %12, align 4
  store i32 %39, i32* %5, align 4
  br label %40

40:                                               ; preds = %30, %24
  %41 = load i32, i32* %5, align 4
  ret i32 %41
}

declare dso_local i8* @git__malloc(i64) #1

declare dso_local i32 @GIT_ERROR_CHECK_ALLOC(i8*) #1

declare dso_local i64 @p_readlink(i8*, i8*, i64) #1

declare dso_local i32 @git_error_set(i32, i8*, i8*) #1

declare dso_local i32 @git__free(i8*) #1

declare dso_local i32 @git_odb_write(i32*, i32*, i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
