; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_describe.c_find_unique_abbrev_size.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_describe.c_find_unique_abbrev_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GIT_OID_HEXSZ = common dso_local global i64 0, align 8
@GIT_EAMBIGUOUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32*, i32)* @find_unique_abbrev_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_unique_abbrev_size(i32* %0, i32* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load i32, i32* %9, align 4
  %15 = zext i32 %14 to i64
  store i64 %15, i64* %10, align 8
  %16 = load i32*, i32** %7, align 8
  %17 = call i32 @git_repository_odb__weakptr(i32** %11, i32* %16)
  store i32 %17, i32* %13, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %4
  %20 = load i32, i32* %13, align 4
  store i32 %20, i32* %5, align 4
  br label %49

21:                                               ; preds = %4
  br label %22

22:                                               ; preds = %42, %21
  %23 = load i64, i64* %10, align 8
  %24 = load i64, i64* @GIT_OID_HEXSZ, align 8
  %25 = icmp ult i64 %23, %24
  br i1 %25, label %26, label %45

26:                                               ; preds = %22
  %27 = load i32*, i32** %11, align 8
  %28 = load i32*, i32** %8, align 8
  %29 = load i64, i64* %10, align 8
  %30 = call i32 @git_odb_exists_prefix(i32* %12, i32* %27, i32* %28, i64 %29)
  store i32 %30, i32* %13, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %26
  %33 = load i64, i64* %10, align 8
  %34 = trunc i64 %33 to i32
  %35 = load i32*, i32** %6, align 8
  store i32 %34, i32* %35, align 4
  store i32 0, i32* %5, align 4
  br label %49

36:                                               ; preds = %26
  %37 = load i32, i32* %13, align 4
  %38 = load i32, i32* @GIT_EAMBIGUOUS, align 4
  %39 = icmp ne i32 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %36
  %41 = load i32, i32* %13, align 4
  store i32 %41, i32* %5, align 4
  br label %49

42:                                               ; preds = %36
  %43 = load i64, i64* %10, align 8
  %44 = add i64 %43, 1
  store i64 %44, i64* %10, align 8
  br label %22

45:                                               ; preds = %22
  %46 = load i64, i64* @GIT_OID_HEXSZ, align 8
  %47 = trunc i64 %46 to i32
  %48 = load i32*, i32** %6, align 8
  store i32 %47, i32* %48, align 4
  store i32 0, i32* %5, align 4
  br label %49

49:                                               ; preds = %45, %40, %32, %19
  %50 = load i32, i32* %5, align 4
  ret i32 %50
}

declare dso_local i32 @git_repository_odb__weakptr(i32**, i32*) #1

declare dso_local i32 @git_odb_exists_prefix(i32*, i32*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
