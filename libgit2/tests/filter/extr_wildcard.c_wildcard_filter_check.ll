; ModuleID = '/home/carl/AnghaBench/libgit2/tests/filter/extr_wildcard.c_wildcard_filter_check.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/filter/extr_wildcard.c_wildcard_filter_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"wcflip\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"wcreverse\00", align 1
@GIT_PASSTHROUGH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8**, i32*, i8**)* @wildcard_filter_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wildcard_filter_check(i32* %0, i8** %1, i32* %2, i8** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8**, align 8
  store i32* %0, i32** %6, align 8
  store i8** %1, i8*** %7, align 8
  store i32* %2, i32** %8, align 8
  store i8** %3, i8*** %9, align 8
  %10 = load i32*, i32** %6, align 8
  %11 = call i32 @GIT_UNUSED(i32* %10)
  %12 = load i32*, i32** %8, align 8
  %13 = call i32 @GIT_UNUSED(i32* %12)
  %14 = load i8**, i8*** %9, align 8
  %15 = getelementptr inbounds i8*, i8** %14, i64 0
  %16 = load i8*, i8** %15, align 8
  %17 = call i64 @strcmp(i8* %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %25, label %19

19:                                               ; preds = %4
  %20 = load i8**, i8*** %9, align 8
  %21 = getelementptr inbounds i8*, i8** %20, i64 0
  %22 = load i8*, i8** %21, align 8
  %23 = call i64 @strcmp(i8* %22, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %34

25:                                               ; preds = %19, %4
  %26 = load i8**, i8*** %9, align 8
  %27 = getelementptr inbounds i8*, i8** %26, i64 0
  %28 = load i8*, i8** %27, align 8
  %29 = call i8* @git__strdup(i8* %28)
  %30 = load i8**, i8*** %7, align 8
  store i8* %29, i8** %30, align 8
  %31 = load i8**, i8*** %7, align 8
  %32 = load i8*, i8** %31, align 8
  %33 = call i32 @GIT_ERROR_CHECK_ALLOC(i8* %32)
  store i32 0, i32* %5, align 4
  br label %36

34:                                               ; preds = %19
  %35 = load i32, i32* @GIT_PASSTHROUGH, align 4
  store i32 %35, i32* %5, align 4
  br label %36

36:                                               ; preds = %34, %25
  %37 = load i32, i32* %5, align 4
  ret i32 %37
}

declare dso_local i32 @GIT_UNUSED(i32*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i8* @git__strdup(i8*) #1

declare dso_local i32 @GIT_ERROR_CHECK_ALLOC(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
