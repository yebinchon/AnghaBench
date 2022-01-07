; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_revparse.c_retrieve_revobject_from_reflog.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_revparse.c_retrieve_revobject_from_reflog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GIT_OBJECT_ANY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32**, i32**, i32*, i8*, i64)* @retrieve_revobject_from_reflog to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @retrieve_revobject_from_reflog(i32** %0, i32** %1, i32* %2, i8* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32**, align 8
  %8 = alloca i32**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32** %0, i32*** %7, align 8
  store i32** %1, i32*** %8, align 8
  store i32* %2, i32** %9, align 8
  store i8* %3, i8** %10, align 8
  store i64 %4, i64* %11, align 8
  store i32 -1, i32* %14, align 4
  %15 = load i32**, i32*** %8, align 8
  %16 = load i32*, i32** %15, align 8
  %17 = icmp eq i32* %16, null
  br i1 %17, label %18, label %26

18:                                               ; preds = %5
  %19 = load i32*, i32** %9, align 8
  %20 = load i8*, i8** %10, align 8
  %21 = call i32 @git_reference_dwim(i32** %12, i32* %19, i8* %20)
  store i32 %21, i32* %14, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %18
  %24 = load i32, i32* %14, align 4
  store i32 %24, i32* %6, align 4
  br label %55

25:                                               ; preds = %18
  br label %30

26:                                               ; preds = %5
  %27 = load i32**, i32*** %8, align 8
  %28 = load i32*, i32** %27, align 8
  store i32* %28, i32** %12, align 8
  %29 = load i32**, i32*** %8, align 8
  store i32* null, i32** %29, align 8
  br label %30

30:                                               ; preds = %26, %25
  %31 = load i64, i64* %11, align 8
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %40

33:                                               ; preds = %30
  %34 = load i32**, i32*** %7, align 8
  %35 = load i32*, i32** %9, align 8
  %36 = load i32*, i32** %12, align 8
  %37 = call i32* @git_reference_target(i32* %36)
  %38 = load i32, i32* @GIT_OBJECT_ANY, align 4
  %39 = call i32 @git_object_lookup(i32** %34, i32* %35, i32* %37, i32 %38)
  store i32 %39, i32* %14, align 4
  br label %51

40:                                               ; preds = %30
  %41 = load i32*, i32** %12, align 8
  %42 = load i64, i64* %11, align 8
  %43 = call i32 @retrieve_oid_from_reflog(i32* %13, i32* %41, i64 %42)
  store i32 %43, i32* %14, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %40
  br label %51

46:                                               ; preds = %40
  %47 = load i32**, i32*** %7, align 8
  %48 = load i32*, i32** %9, align 8
  %49 = load i32, i32* @GIT_OBJECT_ANY, align 4
  %50 = call i32 @git_object_lookup(i32** %47, i32* %48, i32* %13, i32 %49)
  store i32 %50, i32* %14, align 4
  br label %51

51:                                               ; preds = %46, %45, %33
  %52 = load i32*, i32** %12, align 8
  %53 = call i32 @git_reference_free(i32* %52)
  %54 = load i32, i32* %14, align 4
  store i32 %54, i32* %6, align 4
  br label %55

55:                                               ; preds = %51, %23
  %56 = load i32, i32* %6, align 4
  ret i32 %56
}

declare dso_local i32 @git_reference_dwim(i32**, i32*, i8*) #1

declare dso_local i32 @git_object_lookup(i32**, i32*, i32*, i32) #1

declare dso_local i32* @git_reference_target(i32*) #1

declare dso_local i32 @retrieve_oid_from_reflog(i32*, i32*, i64) #1

declare dso_local i32 @git_reference_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
