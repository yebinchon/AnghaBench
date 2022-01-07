; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_crlf.c_crlf_apply.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_crlf.c_crlf_apply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GIT_FILTER_SMUDGE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8**, i32*, i32*, i32*)* @crlf_apply to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @crlf_apply(i32* %0, i8** %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i8** %1, i8*** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %13 = load i8**, i8*** %8, align 8
  %14 = load i8*, i8** %13, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %26, label %16

16:                                               ; preds = %5
  %17 = load i32*, i32** %7, align 8
  %18 = load i8**, i8*** %8, align 8
  %19 = load i32*, i32** %11, align 8
  %20 = call i32 @crlf_check(i32* %17, i8** %18, i32* %19, i32* null)
  store i32 %20, i32* %12, align 4
  %21 = load i32, i32* %12, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %16
  %24 = load i32, i32* %12, align 4
  store i32 %24, i32* %6, align 4
  br label %44

25:                                               ; preds = %16
  br label %26

26:                                               ; preds = %25, %5
  %27 = load i32*, i32** %11, align 8
  %28 = call i64 @git_filter_source_mode(i32* %27)
  %29 = load i64, i64* @GIT_FILTER_SMUDGE, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %37

31:                                               ; preds = %26
  %32 = load i8**, i8*** %8, align 8
  %33 = load i8*, i8** %32, align 8
  %34 = load i32*, i32** %9, align 8
  %35 = load i32*, i32** %10, align 8
  %36 = call i32 @crlf_apply_to_workdir(i8* %33, i32* %34, i32* %35)
  store i32 %36, i32* %6, align 4
  br label %44

37:                                               ; preds = %26
  %38 = load i8**, i8*** %8, align 8
  %39 = load i8*, i8** %38, align 8
  %40 = load i32*, i32** %9, align 8
  %41 = load i32*, i32** %10, align 8
  %42 = load i32*, i32** %11, align 8
  %43 = call i32 @crlf_apply_to_odb(i8* %39, i32* %40, i32* %41, i32* %42)
  store i32 %43, i32* %6, align 4
  br label %44

44:                                               ; preds = %37, %31, %23
  %45 = load i32, i32* %6, align 4
  ret i32 %45
}

declare dso_local i32 @crlf_check(i32*, i8**, i32*, i32*) #1

declare dso_local i64 @git_filter_source_mode(i32*) #1

declare dso_local i32 @crlf_apply_to_workdir(i8*, i32*, i32*) #1

declare dso_local i32 @crlf_apply_to_odb(i8*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
