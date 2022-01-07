; ModuleID = '/home/carl/AnghaBench/libgit2/tests/object/extr_peel.c_assert_peel.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/object/extr_peel.c_assert_peel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@g_repo = common dso_local global i32 0, align 4
@GIT_OBJECT_ANY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i8*, i32)* @assert_peel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @assert_peel(i8* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = load i8*, i8** %5, align 8
  %14 = call i32 @git_oid_fromstr(i32* %9, i8* %13)
  %15 = call i32 @cl_git_pass(i32 %14)
  %16 = load i32, i32* @g_repo, align 4
  %17 = load i32, i32* @GIT_OBJECT_ANY, align 4
  %18 = call i32 @git_object_lookup(i32** %11, i32 %16, i32* %9, i32 %17)
  %19 = call i32 @cl_git_pass(i32 %18)
  %20 = load i32*, i32** %11, align 8
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @git_object_peel(i32** %12, i32* %20, i32 %21)
  %23 = call i32 @cl_git_pass(i32 %22)
  %24 = load i8*, i8** %7, align 8
  %25 = call i32 @git_oid_fromstr(i32* %10, i8* %24)
  %26 = call i32 @cl_git_pass(i32 %25)
  %27 = load i32*, i32** %12, align 8
  %28 = call i32 @git_object_id(i32* %27)
  %29 = call i32 @cl_assert_equal_oid(i32* %10, i32 %28)
  %30 = load i32, i32* %8, align 4
  %31 = load i32*, i32** %12, align 8
  %32 = call i32 @git_object_type(i32* %31)
  %33 = call i32 @cl_assert_equal_i(i32 %30, i32 %32)
  %34 = load i32*, i32** %12, align 8
  %35 = call i32 @git_object_free(i32* %34)
  %36 = load i32*, i32** %11, align 8
  %37 = call i32 @git_object_free(i32* %36)
  ret void
}

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_oid_fromstr(i32*, i8*) #1

declare dso_local i32 @git_object_lookup(i32**, i32, i32*, i32) #1

declare dso_local i32 @git_object_peel(i32**, i32*, i32) #1

declare dso_local i32 @cl_assert_equal_oid(i32*, i32) #1

declare dso_local i32 @git_object_id(i32*) #1

declare dso_local i32 @cl_assert_equal_i(i32, i32) #1

declare dso_local i32 @git_object_type(i32*) #1

declare dso_local i32 @git_object_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
