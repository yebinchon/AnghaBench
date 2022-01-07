; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_repository.c_detach.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_repository.c_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GIT_BUF_INIT = common dso_local global i32 0, align 4
@GIT_HEAD_FILE = common dso_local global i32 0, align 4
@GIT_OBJECT_ANY = common dso_local global i32 0, align 4
@GIT_OBJECT_COMMIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i8*)* @detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @detach(i32* %0, i32* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  %14 = load i32, i32* @GIT_BUF_INIT, align 4
  store i32 %14, i32* %9, align 4
  store i32* null, i32** %10, align 8
  store i32* null, i32** %11, align 8
  store i32* null, i32** %12, align 8
  store i32* null, i32** %13, align 8
  %15 = load i32*, i32** %5, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load i32*, i32** %6, align 8
  %19 = icmp ne i32* %18, null
  br label %20

20:                                               ; preds = %17, %3
  %21 = phi i1 [ false, %3 ], [ %19, %17 ]
  %22 = zext i1 %21 to i32
  %23 = call i32 @assert(i32 %22)
  %24 = load i32*, i32** %5, align 8
  %25 = load i32, i32* @GIT_HEAD_FILE, align 4
  %26 = call i32 @git_reference_lookup(i32** %13, i32* %24, i32 %25)
  store i32 %26, i32* %8, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %20
  %29 = load i32, i32* %8, align 4
  store i32 %29, i32* %4, align 4
  br label %74

30:                                               ; preds = %20
  %31 = load i32*, i32** %5, align 8
  %32 = load i32*, i32** %6, align 8
  %33 = load i32, i32* @GIT_OBJECT_ANY, align 4
  %34 = call i32 @git_object_lookup(i32** %10, i32* %31, i32* %32, i32 %33)
  store i32 %34, i32* %8, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %30
  br label %63

37:                                               ; preds = %30
  %38 = load i32*, i32** %10, align 8
  %39 = load i32, i32* @GIT_OBJECT_COMMIT, align 4
  %40 = call i32 @git_object_peel(i32** %11, i32* %38, i32 %39)
  store i32 %40, i32* %8, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %37
  br label %63

43:                                               ; preds = %37
  %44 = load i8*, i8** %7, align 8
  %45 = icmp eq i8* %44, null
  br i1 %45, label %46, label %50

46:                                               ; preds = %43
  %47 = load i32*, i32** %11, align 8
  %48 = call i32 @git_object_id(i32* %47)
  %49 = call i8* @git_oid_tostr_s(i32 %48)
  store i8* %49, i8** %7, align 8
  br label %50

50:                                               ; preds = %46, %43
  %51 = load i32*, i32** %13, align 8
  %52 = load i8*, i8** %7, align 8
  %53 = call i32 @checkout_message(i32* %9, i32* %51, i8* %52)
  store i32 %53, i32* %8, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %50
  br label %63

56:                                               ; preds = %50
  %57 = load i32*, i32** %5, align 8
  %58 = load i32, i32* @GIT_HEAD_FILE, align 4
  %59 = load i32*, i32** %11, align 8
  %60 = call i32 @git_object_id(i32* %59)
  %61 = call i32 @git_buf_cstr(i32* %9)
  %62 = call i32 @git_reference_create(i32** %12, i32* %57, i32 %58, i32 %60, i32 1, i32 %61)
  store i32 %62, i32* %8, align 4
  br label %63

63:                                               ; preds = %56, %55, %42, %36
  %64 = call i32 @git_buf_dispose(i32* %9)
  %65 = load i32*, i32** %10, align 8
  %66 = call i32 @git_object_free(i32* %65)
  %67 = load i32*, i32** %11, align 8
  %68 = call i32 @git_object_free(i32* %67)
  %69 = load i32*, i32** %13, align 8
  %70 = call i32 @git_reference_free(i32* %69)
  %71 = load i32*, i32** %12, align 8
  %72 = call i32 @git_reference_free(i32* %71)
  %73 = load i32, i32* %8, align 4
  store i32 %73, i32* %4, align 4
  br label %74

74:                                               ; preds = %63, %28
  %75 = load i32, i32* %4, align 4
  ret i32 %75
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @git_reference_lookup(i32**, i32*, i32) #1

declare dso_local i32 @git_object_lookup(i32**, i32*, i32*, i32) #1

declare dso_local i32 @git_object_peel(i32**, i32*, i32) #1

declare dso_local i8* @git_oid_tostr_s(i32) #1

declare dso_local i32 @git_object_id(i32*) #1

declare dso_local i32 @checkout_message(i32*, i32*, i8*) #1

declare dso_local i32 @git_reference_create(i32**, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @git_buf_cstr(i32*) #1

declare dso_local i32 @git_buf_dispose(i32*) #1

declare dso_local i32 @git_object_free(i32*) #1

declare dso_local i32 @git_reference_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
