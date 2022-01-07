; ModuleID = '/home/carl/AnghaBench/libgit2/tests/core/extr_wildmatch.c_assert_matches_.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/core/extr_wildmatch.c_assert_matches_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@WM_PATHNAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Test failed (wildmatch).\00", align 1
@WM_CASEFOLD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Test failed (iwildmatch).\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"Test failed (pathmatch).\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"Test failed (ipathmatch).\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i8, i8, i8, i8, i8*, i64)* @assert_matches_ to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @assert_matches_(i8* %0, i8* %1, i8 signext %2, i8 signext %3, i8 signext %4, i8 signext %5, i8* %6, i64 %7) #0 {
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8, align 1
  %12 = alloca i8, align 1
  %13 = alloca i8, align 1
  %14 = alloca i8, align 1
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  store i8* %0, i8** %9, align 8
  store i8* %1, i8** %10, align 8
  store i8 %2, i8* %11, align 1
  store i8 %3, i8* %12, align 1
  store i8 %4, i8* %13, align 1
  store i8 %5, i8* %14, align 1
  store i8* %6, i8** %15, align 8
  store i64 %7, i64* %16, align 8
  %17 = load i8*, i8** %10, align 8
  %18 = load i8*, i8** %9, align 8
  %19 = load i32, i32* @WM_PATHNAME, align 4
  %20 = call signext i8 @wildmatch(i8* %17, i8* %18, i32 %19)
  %21 = sext i8 %20 to i32
  %22 = load i8, i8* %11, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp eq i32 %21, %23
  br i1 %24, label %25, label %30

25:                                               ; preds = %8
  %26 = load i8*, i8** %15, align 8
  %27 = load i64, i64* %16, align 8
  %28 = load i8*, i8** %9, align 8
  %29 = call i32 @clar__fail(i8* %26, i64 %27, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8* %28, i32 1)
  br label %30

30:                                               ; preds = %25, %8
  %31 = load i8*, i8** %10, align 8
  %32 = load i8*, i8** %9, align 8
  %33 = load i32, i32* @WM_PATHNAME, align 4
  %34 = load i32, i32* @WM_CASEFOLD, align 4
  %35 = or i32 %33, %34
  %36 = call signext i8 @wildmatch(i8* %31, i8* %32, i32 %35)
  %37 = sext i8 %36 to i32
  %38 = load i8, i8* %12, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp eq i32 %37, %39
  br i1 %40, label %41, label %46

41:                                               ; preds = %30
  %42 = load i8*, i8** %15, align 8
  %43 = load i64, i64* %16, align 8
  %44 = load i8*, i8** %9, align 8
  %45 = call i32 @clar__fail(i8* %42, i64 %43, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i8* %44, i32 1)
  br label %46

46:                                               ; preds = %41, %30
  %47 = load i8*, i8** %10, align 8
  %48 = load i8*, i8** %9, align 8
  %49 = call signext i8 @wildmatch(i8* %47, i8* %48, i32 0)
  %50 = sext i8 %49 to i32
  %51 = load i8, i8* %13, align 1
  %52 = sext i8 %51 to i32
  %53 = icmp eq i32 %50, %52
  br i1 %53, label %54, label %59

54:                                               ; preds = %46
  %55 = load i8*, i8** %15, align 8
  %56 = load i64, i64* %16, align 8
  %57 = load i8*, i8** %9, align 8
  %58 = call i32 @clar__fail(i8* %55, i64 %56, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i8* %57, i32 1)
  br label %59

59:                                               ; preds = %54, %46
  %60 = load i8*, i8** %10, align 8
  %61 = load i8*, i8** %9, align 8
  %62 = load i32, i32* @WM_CASEFOLD, align 4
  %63 = call signext i8 @wildmatch(i8* %60, i8* %61, i32 %62)
  %64 = sext i8 %63 to i32
  %65 = load i8, i8* %14, align 1
  %66 = sext i8 %65 to i32
  %67 = icmp eq i32 %64, %66
  br i1 %67, label %68, label %73

68:                                               ; preds = %59
  %69 = load i8*, i8** %15, align 8
  %70 = load i64, i64* %16, align 8
  %71 = load i8*, i8** %9, align 8
  %72 = call i32 @clar__fail(i8* %69, i64 %70, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i8* %71, i32 1)
  br label %73

73:                                               ; preds = %68, %59
  ret void
}

declare dso_local signext i8 @wildmatch(i8*, i8*, i32) #1

declare dso_local i32 @clar__fail(i8*, i64, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
