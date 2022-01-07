; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_revparse.c_revparse_lookup_object.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_revparse.c_revparse_lookup_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GIT_ENOTFOUND = common dso_local global i32 0, align 4
@GIT_OBJECT_ANY = common dso_local global i32 0, align 4
@GIT_OID_HEXSZ = common dso_local global i64 0, align 8
@GIT_ERROR_REFERENCE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"revspec '%s' not found\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32**, i32**, i32*, i8*)* @revparse_lookup_object to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @revparse_lookup_object(i32** %0, i32** %1, i32* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32**, align 8
  %7 = alloca i32**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  store i32** %0, i32*** %6, align 8
  store i32** %1, i32*** %7, align 8
  store i32* %2, i32** %8, align 8
  store i8* %3, i8** %9, align 8
  %12 = load i32**, i32*** %6, align 8
  %13 = load i32*, i32** %8, align 8
  %14 = load i8*, i8** %9, align 8
  %15 = call i32 @maybe_sha(i32** %12, i32* %13, i8* %14)
  store i32 %15, i32* %10, align 4
  %16 = load i32, i32* @GIT_ENOTFOUND, align 4
  %17 = icmp ne i32 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %4
  %19 = load i32, i32* %10, align 4
  store i32 %19, i32* %5, align 4
  br label %74

20:                                               ; preds = %4
  %21 = load i32*, i32** %8, align 8
  %22 = load i8*, i8** %9, align 8
  %23 = call i32 @git_reference_dwim(i32** %11, i32* %21, i8* %22)
  store i32 %23, i32* %10, align 4
  %24 = load i32, i32* %10, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %40, label %26

26:                                               ; preds = %20
  %27 = load i32**, i32*** %6, align 8
  %28 = load i32*, i32** %8, align 8
  %29 = load i32*, i32** %11, align 8
  %30 = call i32 @git_reference_target(i32* %29)
  %31 = load i32, i32* @GIT_OBJECT_ANY, align 4
  %32 = call i32 @git_object_lookup(i32** %27, i32* %28, i32 %30, i32 %31)
  store i32 %32, i32* %10, align 4
  %33 = load i32, i32* %10, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %26
  %36 = load i32*, i32** %11, align 8
  %37 = load i32**, i32*** %7, align 8
  store i32* %36, i32** %37, align 8
  br label %38

38:                                               ; preds = %35, %26
  %39 = load i32, i32* %10, align 4
  store i32 %39, i32* %5, align 4
  br label %74

40:                                               ; preds = %20
  %41 = load i32, i32* %10, align 4
  %42 = load i32, i32* @GIT_ENOTFOUND, align 4
  %43 = icmp ne i32 %41, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %40
  %45 = load i32, i32* %10, align 4
  store i32 %45, i32* %5, align 4
  br label %74

46:                                               ; preds = %40
  %47 = load i8*, i8** %9, align 8
  %48 = call i64 @strlen(i8* %47)
  %49 = load i64, i64* @GIT_OID_HEXSZ, align 8
  %50 = icmp slt i64 %48, %49
  br i1 %50, label %51, label %60

51:                                               ; preds = %46
  %52 = load i32**, i32*** %6, align 8
  %53 = load i32*, i32** %8, align 8
  %54 = load i8*, i8** %9, align 8
  %55 = call i32 @maybe_abbrev(i32** %52, i32* %53, i8* %54)
  store i32 %55, i32* %10, align 4
  %56 = load i32, i32* @GIT_ENOTFOUND, align 4
  %57 = icmp ne i32 %55, %56
  br i1 %57, label %58, label %60

58:                                               ; preds = %51
  %59 = load i32, i32* %10, align 4
  store i32 %59, i32* %5, align 4
  br label %74

60:                                               ; preds = %51, %46
  %61 = load i32**, i32*** %6, align 8
  %62 = load i32*, i32** %8, align 8
  %63 = load i8*, i8** %9, align 8
  %64 = call i32 @maybe_describe(i32** %61, i32* %62, i8* %63)
  store i32 %64, i32* %10, align 4
  %65 = load i32, i32* @GIT_ENOTFOUND, align 4
  %66 = icmp ne i32 %64, %65
  br i1 %66, label %67, label %69

67:                                               ; preds = %60
  %68 = load i32, i32* %10, align 4
  store i32 %68, i32* %5, align 4
  br label %74

69:                                               ; preds = %60
  %70 = load i32, i32* @GIT_ERROR_REFERENCE, align 4
  %71 = load i8*, i8** %9, align 8
  %72 = call i32 @git_error_set(i32 %70, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* %71)
  %73 = load i32, i32* @GIT_ENOTFOUND, align 4
  store i32 %73, i32* %5, align 4
  br label %74

74:                                               ; preds = %69, %67, %58, %44, %38, %18
  %75 = load i32, i32* %5, align 4
  ret i32 %75
}

declare dso_local i32 @maybe_sha(i32**, i32*, i8*) #1

declare dso_local i32 @git_reference_dwim(i32**, i32*, i8*) #1

declare dso_local i32 @git_object_lookup(i32**, i32*, i32, i32) #1

declare dso_local i32 @git_reference_target(i32*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @maybe_abbrev(i32**, i32*, i8*) #1

declare dso_local i32 @maybe_describe(i32**, i32*, i8*) #1

declare dso_local i32 @git_error_set(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
