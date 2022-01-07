; ModuleID = '/home/carl/AnghaBench/libgit2/src/transports/extr_local.c_foreach_reference_cb.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/transports/extr_local.c_foreach_reference_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GIT_REFERENCE_DIRECT = common dso_local global i64 0, align 8
@GIT_ENOTFOUND = common dso_local global i32 0, align 4
@GIT_ERROR_INVALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*)* @foreach_reference_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @foreach_reference_cb(i32* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = bitcast i8* %8 to i32*
  store i32* %9, i32** %6, align 8
  %10 = load i32*, i32** %4, align 8
  %11 = call i64 @git_reference_type(i32* %10)
  %12 = load i64, i64* @GIT_REFERENCE_DIRECT, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load i32*, i32** %4, align 8
  %16 = call i32 @git_reference_free(i32* %15)
  store i32 0, i32* %3, align 4
  br label %35

17:                                               ; preds = %2
  %18 = load i32*, i32** %6, align 8
  %19 = load i32*, i32** %4, align 8
  %20 = call i32 @git_reference_target(i32* %19)
  %21 = call i32 @git_revwalk_hide(i32* %18, i32 %20)
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* @GIT_ENOTFOUND, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %29, label %25

25:                                               ; preds = %17
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* @GIT_ERROR_INVALID, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %25, %17
  %30 = call i32 (...) @git_error_clear()
  store i32 0, i32* %7, align 4
  br label %31

31:                                               ; preds = %29, %25
  %32 = load i32*, i32** %4, align 8
  %33 = call i32 @git_reference_free(i32* %32)
  %34 = load i32, i32* %7, align 4
  store i32 %34, i32* %3, align 4
  br label %35

35:                                               ; preds = %31, %14
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

declare dso_local i64 @git_reference_type(i32*) #1

declare dso_local i32 @git_reference_free(i32*) #1

declare dso_local i32 @git_revwalk_hide(i32*, i32) #1

declare dso_local i32 @git_reference_target(i32*) #1

declare dso_local i32 @git_error_clear(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
