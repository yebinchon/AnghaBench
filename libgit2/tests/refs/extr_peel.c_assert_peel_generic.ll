; ModuleID = '/home/carl/AnghaBench/libgit2/tests/refs/extr_peel.c_assert_peel_generic.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/refs/extr_peel.c_assert_peel_generic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*, i32, i8*, i32)* @assert_peel_generic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @assert_peel_generic(i32* %0, i8* %1, i32 %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store i32 %4, i32* %10, align 4
  %14 = load i32*, i32** %6, align 8
  %15 = load i8*, i8** %7, align 8
  %16 = call i32 @git_reference_lookup(i32** %12, i32* %14, i8* %15)
  %17 = call i32 @cl_git_pass(i32 %16)
  %18 = load i32*, i32** %12, align 8
  %19 = load i32, i32* %8, align 4
  %20 = call i32 @git_reference_peel(i32** %13, i32* %18, i32 %19)
  %21 = call i32 @cl_git_pass(i32 %20)
  %22 = load i8*, i8** %9, align 8
  %23 = call i32 @git_oid_fromstr(i32* %11, i8* %22)
  %24 = call i32 @cl_git_pass(i32 %23)
  %25 = load i32*, i32** %13, align 8
  %26 = call i32 @git_object_id(i32* %25)
  %27 = call i32 @cl_assert_equal_oid(i32* %11, i32 %26)
  %28 = load i32, i32* %10, align 4
  %29 = load i32*, i32** %13, align 8
  %30 = call i32 @git_object_type(i32* %29)
  %31 = call i32 @cl_assert_equal_i(i32 %28, i32 %30)
  %32 = load i32*, i32** %13, align 8
  %33 = call i32 @git_object_free(i32* %32)
  %34 = load i32*, i32** %12, align 8
  %35 = call i32 @git_reference_free(i32* %34)
  ret void
}

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_reference_lookup(i32**, i32*, i8*) #1

declare dso_local i32 @git_reference_peel(i32**, i32*, i32) #1

declare dso_local i32 @git_oid_fromstr(i32*, i8*) #1

declare dso_local i32 @cl_assert_equal_oid(i32*, i32) #1

declare dso_local i32 @git_object_id(i32*) #1

declare dso_local i32 @cl_assert_equal_i(i32, i32) #1

declare dso_local i32 @git_object_type(i32*) #1

declare dso_local i32 @git_object_free(i32*) #1

declare dso_local i32 @git_reference_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
