; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_delta.c_lookup_index_alloc.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_delta.c_lookup_index_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GIT_ERROR_NOMEMORY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"overly large delta\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**, i64*, i64, i64)* @lookup_index_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lookup_index_alloc(i8** %0, i64* %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store i8** %0, i8*** %6, align 8
  store i64* %1, i64** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load i64, i64* %8, align 8
  %14 = call i32 @GIT_ERROR_CHECK_ALLOC_MULTIPLY(i64* %10, i64 %13, i32 4)
  %15 = load i64, i64* %9, align 8
  %16 = call i32 @GIT_ERROR_CHECK_ALLOC_MULTIPLY(i64* %11, i64 %15, i32 8)
  %17 = load i64, i64* %10, align 8
  %18 = call i32 @GIT_ERROR_CHECK_ALLOC_ADD(i64* %12, i64 4, i64 %17)
  %19 = load i64, i64* %12, align 8
  %20 = load i64, i64* %11, align 8
  %21 = call i32 @GIT_ERROR_CHECK_ALLOC_ADD(i64* %12, i64 %19, i64 %20)
  %22 = load i64, i64* %12, align 8
  %23 = call i32 @git__is_ulong(i64 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %4
  %26 = load i32, i32* @GIT_ERROR_NOMEMORY, align 4
  %27 = call i32 @git_error_set(i32 %26, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %37

28:                                               ; preds = %4
  %29 = load i64, i64* %12, align 8
  %30 = call i8* @git__malloc(i64 %29)
  %31 = load i8**, i8*** %6, align 8
  store i8* %30, i8** %31, align 8
  %32 = load i8**, i8*** %6, align 8
  %33 = load i8*, i8** %32, align 8
  %34 = call i32 @GIT_ERROR_CHECK_ALLOC(i8* %33)
  %35 = load i64, i64* %12, align 8
  %36 = load i64*, i64** %7, align 8
  store i64 %35, i64* %36, align 8
  store i32 0, i32* %5, align 4
  br label %37

37:                                               ; preds = %28, %25
  %38 = load i32, i32* %5, align 4
  ret i32 %38
}

declare dso_local i32 @GIT_ERROR_CHECK_ALLOC_MULTIPLY(i64*, i64, i32) #1

declare dso_local i32 @GIT_ERROR_CHECK_ALLOC_ADD(i64*, i64, i64) #1

declare dso_local i32 @git__is_ulong(i64) #1

declare dso_local i32 @git_error_set(i32, i8*) #1

declare dso_local i8* @git__malloc(i64) #1

declare dso_local i32 @GIT_ERROR_CHECK_ALLOC(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
