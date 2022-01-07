; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_util.c_git__strntol32.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_util.c_git__strntol32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GIT_ERROR_INVALID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"failed to convert: '%.*s' is too large\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git__strntol32(i32* %0, i8* %1, i64 %2, i8** %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i8* %1, i8** %8, align 8
  store i64 %2, i64* %9, align 8
  store i8** %3, i8*** %10, align 8
  store i32 %4, i32* %11, align 4
  %17 = load i8*, i8** %8, align 8
  %18 = load i64, i64* %9, align 8
  %19 = load i32, i32* %11, align 4
  %20 = call i32 @git__strntol64(i32* %14, i8* %17, i64 %18, i8** %12, i32 %19)
  store i32 %20, i32* %15, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %5
  %23 = load i32, i32* %15, align 4
  store i32 %23, i32* %6, align 4
  br label %50

24:                                               ; preds = %5
  %25 = load i32, i32* %14, align 4
  store i32 %25, i32* %13, align 4
  %26 = load i32, i32* %13, align 4
  %27 = load i32, i32* %14, align 4
  %28 = icmp ne i32 %26, %27
  br i1 %28, label %29, label %40

29:                                               ; preds = %24
  %30 = load i8*, i8** %12, align 8
  %31 = load i8*, i8** %8, align 8
  %32 = ptrtoint i8* %30 to i64
  %33 = ptrtoint i8* %31 to i64
  %34 = sub i64 %32, %33
  %35 = trunc i64 %34 to i32
  store i32 %35, i32* %16, align 4
  %36 = load i32, i32* @GIT_ERROR_INVALID, align 4
  %37 = load i32, i32* %16, align 4
  %38 = load i8*, i8** %8, align 8
  %39 = call i32 @git_error_set(i32 %36, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %37, i8* %38)
  store i32 -1, i32* %6, align 4
  br label %50

40:                                               ; preds = %24
  %41 = load i32, i32* %13, align 4
  %42 = load i32*, i32** %7, align 8
  store i32 %41, i32* %42, align 4
  %43 = load i8**, i8*** %10, align 8
  %44 = icmp ne i8** %43, null
  br i1 %44, label %45, label %48

45:                                               ; preds = %40
  %46 = load i8*, i8** %12, align 8
  %47 = load i8**, i8*** %10, align 8
  store i8* %46, i8** %47, align 8
  br label %48

48:                                               ; preds = %45, %40
  %49 = load i32, i32* %15, align 4
  store i32 %49, i32* %6, align 4
  br label %50

50:                                               ; preds = %48, %29, %22
  %51 = load i32, i32* %6, align 4
  ret i32 %51
}

declare dso_local i32 @git__strntol64(i32*, i8*, i64, i8**, i32) #1

declare dso_local i32 @git_error_set(i32, i8*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
