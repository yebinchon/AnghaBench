; ModuleID = '/home/carl/AnghaBench/libgit2/tests/repo/extr_init.c_ensure_repository_init.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/repo/extr_init.c_ensure_repository_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@_repo = common dso_local global i32 0, align 4
@FILE_ATTRIBUTE_HIDDEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i8*, i8*)* @ensure_repository_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ensure_repository_init(i8* %0, i32 %1, i8* %2, i8* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = call i32 @git_path_isdir(i8* %10)
  %12 = icmp ne i32 %11, 0
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i32
  %15 = call i32 @cl_assert(i32 %14)
  %16 = load i8*, i8** %5, align 8
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @git_repository_init(i32* @_repo, i8* %16, i32 %17)
  %19 = call i32 @cl_git_pass(i32 %18)
  %20 = load i32, i32* @_repo, align 4
  %21 = call i8* @git_repository_workdir(i32 %20)
  store i8* %21, i8** %9, align 8
  %22 = load i8*, i8** %9, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %4
  %25 = load i8*, i8** %8, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %27, label %34

27:                                               ; preds = %24, %4
  %28 = load i8*, i8** %9, align 8
  %29 = load i8*, i8** %8, align 8
  %30 = call i64 @git__suffixcmp(i8* %28, i8* %29)
  %31 = icmp eq i64 %30, 0
  %32 = zext i1 %31 to i32
  %33 = call i32 @cl_assert(i32 %32)
  br label %34

34:                                               ; preds = %27, %24
  %35 = load i32, i32* @_repo, align 4
  %36 = call i8* @git_repository_path(i32 %35)
  %37 = load i8*, i8** %7, align 8
  %38 = call i64 @git__suffixcmp(i8* %36, i8* %37)
  %39 = icmp eq i64 %38, 0
  %40 = zext i1 %39 to i32
  %41 = call i32 @cl_assert(i32 %40)
  %42 = load i32, i32* @_repo, align 4
  %43 = call i32 @git_repository_is_bare(i32 %42)
  %44 = load i32, i32* %6, align 4
  %45 = icmp eq i32 %43, %44
  %46 = zext i1 %45 to i32
  %47 = call i32 @cl_assert(i32 %46)
  %48 = load i32, i32* @_repo, align 4
  %49 = call i32 @git_repository_is_empty(i32 %48)
  %50 = call i32 @cl_assert(i32 %49)
  ret void
}

declare dso_local i32 @cl_assert(i32) #1

declare dso_local i32 @git_path_isdir(i8*) #1

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_repository_init(i32*, i8*, i32) #1

declare dso_local i8* @git_repository_workdir(i32) #1

declare dso_local i64 @git__suffixcmp(i8*, i8*) #1

declare dso_local i8* @git_repository_path(i32) #1

declare dso_local i32 @git_repository_is_bare(i32) #1

declare dso_local i32 @git_repository_is_empty(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
