; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_blob.c_git_blob_create_from_buffer.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_blob.c_git_blob_create_from_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GIT_OBJECT_BLOB = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git_blob_create_from_buffer(i32* %0, i32* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load i32*, i32** %6, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %4
  %16 = load i32*, i32** %7, align 8
  %17 = icmp ne i32* %16, null
  br label %18

18:                                               ; preds = %15, %4
  %19 = phi i1 [ false, %4 ], [ %17, %15 ]
  %20 = zext i1 %19 to i32
  %21 = call i32 @assert(i32 %20)
  %22 = load i32*, i32** %7, align 8
  %23 = call i32 @git_repository_odb__weakptr(i32** %11, i32* %22)
  store i32 %23, i32* %10, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %31, label %25

25:                                               ; preds = %18
  %26 = load i32*, i32** %11, align 8
  %27 = load i64, i64* %9, align 8
  %28 = load i32, i32* @GIT_OBJECT_BLOB, align 4
  %29 = call i32 @git_odb_open_wstream(i32** %12, i32* %26, i64 %27, i32 %28)
  store i32 %29, i32* %10, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %25, %18
  %32 = load i32, i32* %10, align 4
  store i32 %32, i32* %5, align 4
  br label %47

33:                                               ; preds = %25
  %34 = load i32*, i32** %12, align 8
  %35 = load i8*, i8** %8, align 8
  %36 = load i64, i64* %9, align 8
  %37 = call i32 @git_odb_stream_write(i32* %34, i8* %35, i64 %36)
  store i32 %37, i32* %10, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %33
  %40 = load i32*, i32** %6, align 8
  %41 = load i32*, i32** %12, align 8
  %42 = call i32 @git_odb_stream_finalize_write(i32* %40, i32* %41)
  store i32 %42, i32* %10, align 4
  br label %43

43:                                               ; preds = %39, %33
  %44 = load i32*, i32** %12, align 8
  %45 = call i32 @git_odb_stream_free(i32* %44)
  %46 = load i32, i32* %10, align 4
  store i32 %46, i32* %5, align 4
  br label %47

47:                                               ; preds = %43, %31
  %48 = load i32, i32* %5, align 4
  ret i32 %48
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @git_repository_odb__weakptr(i32**, i32*) #1

declare dso_local i32 @git_odb_open_wstream(i32**, i32*, i64, i32) #1

declare dso_local i32 @git_odb_stream_write(i32*, i8*, i64) #1

declare dso_local i32 @git_odb_stream_finalize_write(i32*, i32*) #1

declare dso_local i32 @git_odb_stream_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
