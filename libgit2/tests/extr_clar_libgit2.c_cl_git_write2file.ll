; ModuleID = '/home/carl/AnghaBench/libgit2/tests/extr_clar_libgit2.c_cl_git_write2file.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/extr_clar_libgit2.c_cl_git_write2file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cl_git_write2file(i8* %0, i8* %1, i64 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %12 = load i8*, i8** %6, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %5
  %15 = load i8*, i8** %7, align 8
  %16 = icmp ne i8* %15, null
  br label %17

17:                                               ; preds = %14, %5
  %18 = phi i1 [ false, %5 ], [ %16, %14 ]
  %19 = zext i1 %18 to i32
  %20 = call i32 @cl_assert(i32 %19)
  %21 = load i8*, i8** %6, align 8
  %22 = load i32, i32* %9, align 4
  %23 = load i32, i32* %10, align 4
  %24 = call i32 @p_open(i8* %21, i32 %22, i32 %23)
  store i32 %24, i32* %11, align 4
  %25 = icmp sge i32 %24, 0
  %26 = zext i1 %25 to i32
  %27 = call i32 @cl_assert(i32 %26)
  %28 = load i64, i64* %8, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %17
  %31 = load i8*, i8** %7, align 8
  %32 = call i64 @strlen(i8* %31)
  store i64 %32, i64* %8, align 8
  br label %33

33:                                               ; preds = %30, %17
  %34 = load i32, i32* %11, align 4
  %35 = load i8*, i8** %7, align 8
  %36 = load i64, i64* %8, align 8
  %37 = call i32 @p_write(i32 %34, i8* %35, i64 %36)
  %38 = call i32 @cl_must_pass(i32 %37)
  %39 = load i32, i32* %11, align 4
  %40 = call i32 @p_close(i32 %39)
  %41 = call i32 @cl_must_pass(i32 %40)
  ret void
}

declare dso_local i32 @cl_assert(i32) #1

declare dso_local i32 @p_open(i8*, i32, i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @cl_must_pass(i32) #1

declare dso_local i32 @p_write(i32, i8*, i64) #1

declare dso_local i32 @p_close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
