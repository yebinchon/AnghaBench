; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_odb.c_git_odb_read.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_odb.c_git_odb_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GIT_ENOTFOUND = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"cannot read object\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"no match for id\00", align 1
@GIT_OID_HEXSZ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git_odb_read(i32** %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store i32** %0, i32*** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %9 = load i32**, i32*** %5, align 8
  %10 = icmp ne i32** %9, null
  br i1 %10, label %11, label %17

11:                                               ; preds = %3
  %12 = load i32*, i32** %6, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %11
  %15 = load i32*, i32** %7, align 8
  %16 = icmp ne i32* %15, null
  br label %17

17:                                               ; preds = %14, %11, %3
  %18 = phi i1 [ false, %11 ], [ false, %3 ], [ %16, %14 ]
  %19 = zext i1 %18 to i32
  %20 = call i32 @assert(i32 %19)
  %21 = load i32*, i32** %7, align 8
  %22 = call i64 @git_oid_is_zero(i32* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %17
  %25 = load i32, i32* @GIT_ENOTFOUND, align 4
  %26 = call i32 @error_null_oid(i32 %25, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  store i32 %26, i32* %4, align 4
  br label %64

27:                                               ; preds = %17
  %28 = load i32*, i32** %6, align 8
  %29 = call i32 @odb_cache(i32* %28)
  %30 = load i32*, i32** %7, align 8
  %31 = call i32* @git_cache_get_raw(i32 %29, i32* %30)
  %32 = load i32**, i32*** %5, align 8
  store i32* %31, i32** %32, align 8
  %33 = load i32**, i32*** %5, align 8
  %34 = load i32*, i32** %33, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %36, label %37

36:                                               ; preds = %27
  store i32 0, i32* %4, align 4
  br label %64

37:                                               ; preds = %27
  %38 = load i32**, i32*** %5, align 8
  %39 = load i32*, i32** %6, align 8
  %40 = load i32*, i32** %7, align 8
  %41 = call i32 @odb_read_1(i32** %38, i32* %39, i32* %40, i32 0)
  store i32 %41, i32* %8, align 4
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* @GIT_ENOTFOUND, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %54

45:                                               ; preds = %37
  %46 = load i32*, i32** %6, align 8
  %47 = call i32 @git_odb_refresh(i32* %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %54, label %49

49:                                               ; preds = %45
  %50 = load i32**, i32*** %5, align 8
  %51 = load i32*, i32** %6, align 8
  %52 = load i32*, i32** %7, align 8
  %53 = call i32 @odb_read_1(i32** %50, i32* %51, i32* %52, i32 1)
  store i32 %53, i32* %8, align 4
  br label %54

54:                                               ; preds = %49, %45, %37
  %55 = load i32, i32* %8, align 4
  %56 = load i32, i32* @GIT_ENOTFOUND, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %58, label %62

58:                                               ; preds = %54
  %59 = load i32*, i32** %7, align 8
  %60 = load i32, i32* @GIT_OID_HEXSZ, align 4
  %61 = call i32 @git_odb__error_notfound(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32* %59, i32 %60)
  store i32 %61, i32* %4, align 4
  br label %64

62:                                               ; preds = %54
  %63 = load i32, i32* %8, align 4
  store i32 %63, i32* %4, align 4
  br label %64

64:                                               ; preds = %62, %58, %36, %24
  %65 = load i32, i32* %4, align 4
  ret i32 %65
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @git_oid_is_zero(i32*) #1

declare dso_local i32 @error_null_oid(i32, i8*) #1

declare dso_local i32* @git_cache_get_raw(i32, i32*) #1

declare dso_local i32 @odb_cache(i32*) #1

declare dso_local i32 @odb_read_1(i32**, i32*, i32*, i32) #1

declare dso_local i32 @git_odb_refresh(i32*) #1

declare dso_local i32 @git_odb__error_notfound(i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
