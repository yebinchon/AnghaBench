; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_transport.c_git_transport_new.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_transport.c_git_transport_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GIT_ENOTFOUND = common dso_local global i32 0, align 4
@GIT_ERROR_NET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"unsupported URL protocol\00", align 1
@GIT_TRANSPORT_VERSION = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"git_transport\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git_transport_new(i32** %0, i32* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32 (i32**, i32*, i8*)*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store i32** %0, i32*** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  %12 = bitcast i32 (i32**, i32*, i8*)** %8 to i32 (i32**, i32*, i8*)*
  %13 = load i8*, i8** %7, align 8
  %14 = call i32 @transport_find_fn(i32 (i32**, i32*, i8*)* %12, i8* %13, i8** %10)
  store i32 %14, i32* %11, align 4
  %15 = load i32, i32* @GIT_ENOTFOUND, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load i32, i32* @GIT_ERROR_NET, align 4
  %19 = call i32 @git_error_set(i32 %18, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %40

20:                                               ; preds = %3
  %21 = load i32, i32* %11, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %20
  %24 = load i32, i32* %11, align 4
  store i32 %24, i32* %4, align 4
  br label %40

25:                                               ; preds = %20
  br label %26

26:                                               ; preds = %25
  %27 = load i32 (i32**, i32*, i8*)*, i32 (i32**, i32*, i8*)** %8, align 8
  %28 = load i32*, i32** %6, align 8
  %29 = load i8*, i8** %10, align 8
  %30 = call i32 %27(i32** %9, i32* %28, i8* %29)
  store i32 %30, i32* %11, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %26
  %33 = load i32, i32* %11, align 4
  store i32 %33, i32* %4, align 4
  br label %40

34:                                               ; preds = %26
  %35 = load i32*, i32** %9, align 8
  %36 = load i32, i32* @GIT_TRANSPORT_VERSION, align 4
  %37 = call i32 @GIT_ERROR_CHECK_VERSION(i32* %35, i32 %36, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %38 = load i32*, i32** %9, align 8
  %39 = load i32**, i32*** %5, align 8
  store i32* %38, i32** %39, align 8
  store i32 0, i32* %4, align 4
  br label %40

40:                                               ; preds = %34, %32, %23, %17
  %41 = load i32, i32* %4, align 4
  ret i32 %41
}

declare dso_local i32 @transport_find_fn(i32 (i32**, i32*, i8*)*, i8*, i8**) #1

declare dso_local i32 @git_error_set(i32, i8*) #1

declare dso_local i32 @GIT_ERROR_CHECK_VERSION(i32*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
