; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_delta.c_hdr_sz.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_delta.c_hdr_sz.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GIT_ERROR_INVALID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"truncated delta\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64*, i8**, i8*)* @hdr_sz to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hdr_sz(i64* %0, i8** %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i64* %0, i64** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i8* %2, i8** %7, align 8
  %12 = load i8**, i8*** %6, align 8
  %13 = load i8*, i8** %12, align 8
  store i8* %13, i8** %8, align 8
  store i64 0, i64* %9, align 8
  store i32 0, i32* %11, align 4
  br label %14

14:                                               ; preds = %35, %3
  %15 = load i8*, i8** %8, align 8
  %16 = load i8*, i8** %7, align 8
  %17 = icmp eq i8* %15, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %14
  %19 = load i32, i32* @GIT_ERROR_INVALID, align 4
  %20 = call i32 @git_error_set(i32 %19, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %44

21:                                               ; preds = %14
  %22 = load i8*, i8** %8, align 8
  %23 = getelementptr inbounds i8, i8* %22, i32 1
  store i8* %23, i8** %8, align 8
  %24 = load i8, i8* %22, align 1
  %25 = zext i8 %24 to i32
  store i32 %25, i32* %10, align 4
  %26 = load i32, i32* %10, align 4
  %27 = and i32 %26, 127
  %28 = load i32, i32* %11, align 4
  %29 = shl i32 %27, %28
  %30 = zext i32 %29 to i64
  %31 = load i64, i64* %9, align 8
  %32 = or i64 %31, %30
  store i64 %32, i64* %9, align 8
  %33 = load i32, i32* %11, align 4
  %34 = add i32 %33, 7
  store i32 %34, i32* %11, align 4
  br label %35

35:                                               ; preds = %21
  %36 = load i32, i32* %10, align 4
  %37 = and i32 %36, 128
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %14, label %39

39:                                               ; preds = %35
  %40 = load i8*, i8** %8, align 8
  %41 = load i8**, i8*** %6, align 8
  store i8* %40, i8** %41, align 8
  %42 = load i64, i64* %9, align 8
  %43 = load i64*, i64** %5, align 8
  store i64 %42, i64* %43, align 8
  store i32 0, i32* %4, align 4
  br label %44

44:                                               ; preds = %39, %18
  %45 = load i32, i32* %4, align 4
  ret i32 %45
}

declare dso_local i32 @git_error_set(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
