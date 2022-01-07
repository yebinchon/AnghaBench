; ModuleID = '/home/carl/AnghaBench/libgit2/tests/diff/extr_rename.c_write_similarity_file_two.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/diff/extr_rename.c_write_similarity_file_two.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GIT_BUF_INIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"%02d - bbbbb\0D\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"%02d - aaaaa%s\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"\0D\0A\00", align 1
@O_RDWR = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i64)* @write_similarity_file_two to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_similarity_file_two(i8* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load i32, i32* @GIT_BUF_INIT, align 4
  store i32 %7, i32* %5, align 4
  store i64 0, i64* %6, align 8
  br label %8

8:                                                ; preds = %17, %2
  %9 = load i64, i64* %6, align 8
  %10 = load i64, i64* %4, align 8
  %11 = icmp ult i64 %9, %10
  br i1 %11, label %12, label %20

12:                                               ; preds = %8
  %13 = load i64, i64* %6, align 8
  %14 = add i64 %13, 1
  %15 = trunc i64 %14 to i32
  %16 = call i32 (i32*, i8*, i32, ...) @git_buf_printf(i32* %5, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %15)
  br label %17

17:                                               ; preds = %12
  %18 = load i64, i64* %6, align 8
  %19 = add i64 %18, 1
  store i64 %19, i64* %6, align 8
  br label %8

20:                                               ; preds = %8
  %21 = load i64, i64* %4, align 8
  store i64 %21, i64* %6, align 8
  br label %22

22:                                               ; preds = %34, %20
  %23 = load i64, i64* %6, align 8
  %24 = icmp ult i64 %23, 50
  br i1 %24, label %25, label %37

25:                                               ; preds = %22
  %26 = load i64, i64* %6, align 8
  %27 = add i64 %26, 1
  %28 = trunc i64 %27 to i32
  %29 = load i64, i64* %6, align 8
  %30 = icmp eq i64 %29, 49
  %31 = zext i1 %30 to i64
  %32 = select i1 %30, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0)
  %33 = call i32 (i32*, i8*, i32, ...) @git_buf_printf(i32* %5, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %28, i8* %32)
  br label %34

34:                                               ; preds = %25
  %35 = load i64, i64* %6, align 8
  %36 = add i64 %35, 1
  store i64 %36, i64* %6, align 8
  br label %22

37:                                               ; preds = %22
  %38 = load i8*, i8** %3, align 8
  %39 = load i32, i32* @O_RDWR, align 4
  %40 = load i32, i32* @O_CREAT, align 4
  %41 = or i32 %39, %40
  %42 = call i32 @git_futils_writebuffer(i32* %5, i8* %38, i32 %41, i32 511)
  %43 = call i32 @cl_git_pass(i32 %42)
  %44 = call i32 @git_buf_dispose(i32* %5)
  ret void
}

declare dso_local i32 @git_buf_printf(i32*, i8*, i32, ...) #1

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_futils_writebuffer(i32*, i8*, i32, i32) #1

declare dso_local i32 @git_buf_dispose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
