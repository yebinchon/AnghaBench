; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_remote.c_remote_head_for_ref.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_remote.c_remote_head_for_ref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GIT_BUF_INIT = common dso_local global i32 0, align 4
@GIT_ENOTFOUND = common dso_local global i32 0, align 4
@GIT_REFERENCE_SYMBOLIC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32**, i32*, i32*, i32*, i32*)* @remote_head_for_ref to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @remote_head_for_ref(i32** %0, i32* %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32** %0, i32*** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  store i32* null, i32** %11, align 8
  %17 = load i32, i32* @GIT_BUF_INIT, align 4
  store i32 %17, i32* %12, align 4
  store i32* null, i32** %13, align 8
  store i32 0, i32* %15, align 4
  %18 = load i32**, i32*** %6, align 8
  %19 = icmp ne i32** %18, null
  br i1 %19, label %20, label %26

20:                                               ; preds = %5
  %21 = load i32*, i32** %8, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %20
  %24 = load i32*, i32** %10, align 8
  %25 = icmp ne i32* %24, null
  br label %26

26:                                               ; preds = %23, %20, %5
  %27 = phi i1 [ false, %20 ], [ false, %5 ], [ %25, %23 ]
  %28 = zext i1 %27 to i32
  %29 = call i32 @assert(i32 %28)
  %30 = load i32**, i32*** %6, align 8
  store i32* null, i32** %30, align 8
  %31 = load i32*, i32** %10, align 8
  %32 = call i32 @git_reference_resolve(i32** %11, i32* %31)
  store i32 %32, i32* %15, align 4
  %33 = load i32, i32* %15, align 4
  %34 = load i32, i32* @GIT_ENOTFOUND, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %44

36:                                               ; preds = %26
  %37 = load i32*, i32** %10, align 8
  %38 = call i64 @git_reference_type(i32* %37)
  %39 = load i64, i64* @GIT_REFERENCE_SYMBOLIC, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %36
  %42 = load i32*, i32** %10, align 8
  %43 = call i8* @git_reference_symbolic_target(i32* %42)
  store i8* %43, i8** %14, align 8
  store i32 0, i32* %15, align 4
  br label %47

44:                                               ; preds = %36, %26
  %45 = load i32*, i32** %11, align 8
  %46 = call i8* @git_reference_name(i32* %45)
  store i8* %46, i8** %14, align 8
  br label %47

47:                                               ; preds = %44, %41
  %48 = load i32*, i32** %7, align 8
  %49 = load i32*, i32** %8, align 8
  %50 = load i8*, i8** %14, align 8
  %51 = call i32 @ref_to_update(i32* %16, i32* %12, i32* %48, i32* %49, i8* %50)
  store i32 %51, i32* %15, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %47
  br label %63

54:                                               ; preds = %47
  %55 = load i32, i32* %16, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %54
  %58 = load i32**, i32*** %6, align 8
  %59 = load i32*, i32** %9, align 8
  %60 = call i32 @git_buf_cstr(i32* %12)
  %61 = call i32 @remote_head_for_fetchspec_src(i32** %58, i32* %59, i32 %60)
  store i32 %61, i32* %15, align 4
  br label %62

62:                                               ; preds = %57, %54
  br label %63

63:                                               ; preds = %62, %53
  %64 = call i32 @git_buf_dispose(i32* %12)
  %65 = load i32*, i32** %11, align 8
  %66 = call i32 @git_reference_free(i32* %65)
  %67 = load i32*, i32** %13, align 8
  %68 = call i32 @git_config_free(i32* %67)
  %69 = load i32, i32* %15, align 4
  ret i32 %69
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @git_reference_resolve(i32**, i32*) #1

declare dso_local i64 @git_reference_type(i32*) #1

declare dso_local i8* @git_reference_symbolic_target(i32*) #1

declare dso_local i8* @git_reference_name(i32*) #1

declare dso_local i32 @ref_to_update(i32*, i32*, i32*, i32*, i8*) #1

declare dso_local i32 @remote_head_for_fetchspec_src(i32**, i32*, i32) #1

declare dso_local i32 @git_buf_cstr(i32*) #1

declare dso_local i32 @git_buf_dispose(i32*) #1

declare dso_local i32 @git_reference_free(i32*) #1

declare dso_local i32 @git_config_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
