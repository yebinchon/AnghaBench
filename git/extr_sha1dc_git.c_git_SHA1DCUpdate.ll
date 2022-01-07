; ModuleID = '/home/carl/AnghaBench/git/extr_sha1dc_git.c_git_SHA1DCUpdate.c'
source_filename = "/home/carl/AnghaBench/git/extr_sha1dc_git.c_git_SHA1DCUpdate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@INT_MAX = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @git_SHA1DCUpdate(i32* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load i8*, i8** %5, align 8
  store i8* %8, i8** %7, align 8
  br label %9

9:                                                ; preds = %13, %3
  %10 = load i64, i64* %6, align 8
  %11 = load i64, i64* @INT_MAX, align 8
  %12 = icmp ugt i64 %10, %11
  br i1 %12, label %13, label %24

13:                                               ; preds = %9
  %14 = load i32*, i32** %4, align 8
  %15 = load i8*, i8** %7, align 8
  %16 = load i64, i64* @INT_MAX, align 8
  %17 = call i32 @SHA1DCUpdate(i32* %14, i8* %15, i64 %16)
  %18 = load i64, i64* @INT_MAX, align 8
  %19 = load i8*, i8** %7, align 8
  %20 = getelementptr inbounds i8, i8* %19, i64 %18
  store i8* %20, i8** %7, align 8
  %21 = load i64, i64* @INT_MAX, align 8
  %22 = load i64, i64* %6, align 8
  %23 = sub i64 %22, %21
  store i64 %23, i64* %6, align 8
  br label %9

24:                                               ; preds = %9
  %25 = load i32*, i32** %4, align 8
  %26 = load i8*, i8** %7, align 8
  %27 = load i64, i64* %6, align 8
  %28 = call i32 @SHA1DCUpdate(i32* %25, i8* %26, i64 %27)
  ret void
}

declare dso_local i32 @SHA1DCUpdate(i32*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
