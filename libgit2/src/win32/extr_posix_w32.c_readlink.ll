; ModuleID = '/home/carl/AnghaBench/libgit2/src/win32/extr_posix_w32.c_readlink.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/win32/extr_posix_w32.c_readlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @p_readlink(i8* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = load i32, i32* %8, align 4
  %13 = load i8*, i8** %5, align 8
  %14 = call i64 @git_win32_path_from_utf8(i32 %12, i8* %13)
  %15 = icmp slt i64 %14, 0
  br i1 %15, label %26, label %16

16:                                               ; preds = %3
  %17 = load i32, i32* %9, align 4
  %18 = load i32, i32* %8, align 4
  %19 = call i64 @git_win32_path_readlink_w(i32 %17, i32 %18)
  %20 = icmp slt i64 %19, 0
  br i1 %20, label %26, label %21

21:                                               ; preds = %16
  %22 = load i32, i32* %10, align 4
  %23 = load i32, i32* %9, align 4
  %24 = call i32 @git_win32_path_to_utf8(i32 %22, i32 %23)
  store i32 %24, i32* %11, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %21, %16, %3
  store i32 -1, i32* %4, align 4
  br label %38

27:                                               ; preds = %21
  %28 = load i32, i32* %11, align 4
  %29 = sext i32 %28 to i64
  %30 = load i64, i64* %7, align 8
  %31 = call i64 @min(i64 %29, i64 %30)
  store i64 %31, i64* %7, align 8
  %32 = load i8*, i8** %6, align 8
  %33 = load i32, i32* %10, align 4
  %34 = load i64, i64* %7, align 8
  %35 = call i32 @memcpy(i8* %32, i32 %33, i64 %34)
  %36 = load i64, i64* %7, align 8
  %37 = trunc i64 %36 to i32
  store i32 %37, i32* %4, align 4
  br label %38

38:                                               ; preds = %27, %26
  %39 = load i32, i32* %4, align 4
  ret i32 %39
}

declare dso_local i64 @git_win32_path_from_utf8(i32, i8*) #1

declare dso_local i64 @git_win32_path_readlink_w(i32, i32) #1

declare dso_local i32 @git_win32_path_to_utf8(i32, i32) #1

declare dso_local i64 @min(i64, i64) #1

declare dso_local i32 @memcpy(i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
