; ModuleID = '/home/carl/AnghaBench/libgit2/tests/online/extr_clone.c_check_ssh_auth_methods.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/online/extr_clone.c_check_ssh_auth_methods.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GIT_CREDTYPE_USERNAME = common dso_local global i32 0, align 4
@GIT_EUSER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32**, i8*, i8*, i32, i8*)* @check_ssh_auth_methods to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_ssh_auth_methods(i32** %0, i8* %1, i8* %2, i32 %3, i8* %4) #0 {
  %6 = alloca i32**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  store i32** %0, i32*** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i8* %4, i8** %10, align 8
  %12 = load i8*, i8** %10, align 8
  %13 = bitcast i8* %12 to i32*
  store i32* %13, i32** %11, align 8
  %14 = load i32**, i32*** %6, align 8
  %15 = bitcast i32** %14 to i8*
  %16 = call i32 @GIT_UNUSED(i8* %15)
  %17 = load i8*, i8** %7, align 8
  %18 = call i32 @GIT_UNUSED(i8* %17)
  %19 = load i8*, i8** %8, align 8
  %20 = call i32 @GIT_UNUSED(i8* %19)
  %21 = load i8*, i8** %10, align 8
  %22 = call i32 @GIT_UNUSED(i8* %21)
  %23 = load i32*, i32** %11, align 8
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %5
  %27 = load i32, i32* @GIT_CREDTYPE_USERNAME, align 4
  %28 = load i32, i32* %9, align 4
  %29 = call i32 @cl_assert_equal_i(i32 %27, i32 %28)
  br label %38

30:                                               ; preds = %5
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* @GIT_CREDTYPE_USERNAME, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  %35 = xor i1 %34, true
  %36 = zext i1 %35 to i32
  %37 = call i32 @cl_assert(i32 %36)
  br label %38

38:                                               ; preds = %30, %26
  %39 = load i32, i32* @GIT_EUSER, align 4
  ret i32 %39
}

declare dso_local i32 @GIT_UNUSED(i8*) #1

declare dso_local i32 @cl_assert_equal_i(i32, i32) #1

declare dso_local i32 @cl_assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
