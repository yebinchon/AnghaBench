; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_checkout.c_checkout_safe_for_update_only.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_checkout.c_checkout_safe_for_update_only.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.stat = type { i32 }

@errno = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i64 0, align 8
@ENOTDIR = common dso_local global i64 0, align 8
@GIT_ERROR_OS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"failed to stat '%s'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i8*, i32)* @checkout_safe_for_update_only to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @checkout_safe_for_update_only(%struct.TYPE_5__* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.stat, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = add nsw i32 %12, 1
  store i32 %13, i32* %11, align 4
  %14 = load i8*, i8** %6, align 8
  %15 = call i64 @p_lstat(i8* %14, %struct.stat* %8)
  %16 = icmp slt i64 %15, 0
  br i1 %16, label %17, label %30

17:                                               ; preds = %3
  %18 = load i64, i64* @errno, align 8
  %19 = load i64, i64* @ENOENT, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %25, label %21

21:                                               ; preds = %17
  %22 = load i64, i64* @errno, align 8
  %23 = load i64, i64* @ENOTDIR, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %21, %17
  store i32 0, i32* %4, align 4
  br label %39

26:                                               ; preds = %21
  %27 = load i32, i32* @GIT_ERROR_OS, align 4
  %28 = load i8*, i8** %6, align 8
  %29 = call i32 @git_error_set(i32 %27, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8* %28)
  store i32 -1, i32* %4, align 4
  br label %39

30:                                               ; preds = %3
  %31 = getelementptr inbounds %struct.stat, %struct.stat* %8, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = and i32 %32, -512
  %34 = load i32, i32* %7, align 4
  %35 = and i32 %34, -512
  %36 = icmp eq i32 %33, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %30
  store i32 1, i32* %4, align 4
  br label %39

38:                                               ; preds = %30
  store i32 0, i32* %4, align 4
  br label %39

39:                                               ; preds = %38, %37, %26, %25
  %40 = load i32, i32* %4, align 4
  ret i32 %40
}

declare dso_local i64 @p_lstat(i8*, %struct.stat*) #1

declare dso_local i32 @git_error_set(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
