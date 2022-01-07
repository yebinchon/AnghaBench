; ModuleID = '/home/carl/AnghaBench/libgit2/tests/filter/extr_wildcard.c_wildcard_filter_apply.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/filter/extr_wildcard.c_wildcard_filter_apply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"wcflip\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"wcreverse\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"Unexpected attribute\00", align 1
@GIT_PASSTHROUGH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8**, i32*, i32*, i32*)* @wildcard_filter_apply to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wildcard_filter_apply(i32* %0, i8** %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  store i32* %0, i32** %7, align 8
  store i8** %1, i8*** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %13 = load i8**, i8*** %8, align 8
  %14 = load i8*, i8** %13, align 8
  store i8* %14, i8** %12, align 8
  %15 = load i8*, i8** %12, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %28

17:                                               ; preds = %5
  %18 = load i8*, i8** %12, align 8
  %19 = call i64 @strcmp(i8* %18, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %17
  %22 = load i32*, i32** %7, align 8
  %23 = load i8**, i8*** %8, align 8
  %24 = load i32*, i32** %9, align 8
  %25 = load i32*, i32** %10, align 8
  %26 = load i32*, i32** %11, align 8
  %27 = call i32 @bitflip_filter_apply(i32* %22, i8** %23, i32* %24, i32* %25, i32* %26)
  store i32 %27, i32* %6, align 4
  br label %46

28:                                               ; preds = %17, %5
  %29 = load i8*, i8** %12, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %31, label %42

31:                                               ; preds = %28
  %32 = load i8*, i8** %12, align 8
  %33 = call i64 @strcmp(i8* %32, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %31
  %36 = load i32*, i32** %7, align 8
  %37 = load i8**, i8*** %8, align 8
  %38 = load i32*, i32** %9, align 8
  %39 = load i32*, i32** %10, align 8
  %40 = load i32*, i32** %11, align 8
  %41 = call i32 @reverse_filter_apply(i32* %36, i8** %37, i32* %38, i32* %39, i32* %40)
  store i32 %41, i32* %6, align 4
  br label %46

42:                                               ; preds = %31, %28
  br label %43

43:                                               ; preds = %42
  %44 = call i32 @cl_fail(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %45 = load i32, i32* @GIT_PASSTHROUGH, align 4
  store i32 %45, i32* %6, align 4
  br label %46

46:                                               ; preds = %43, %35, %21
  %47 = load i32, i32* %6, align 4
  ret i32 %47
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @bitflip_filter_apply(i32*, i8**, i32*, i32*, i32*) #1

declare dso_local i32 @reverse_filter_apply(i32*, i8**, i32*, i32*, i32*) #1

declare dso_local i32 @cl_fail(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
