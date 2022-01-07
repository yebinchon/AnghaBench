; ModuleID = '/home/carl/AnghaBench/libgit2/tests/odb/backend/extr_nobackend.c_test_odb_backend_nobackend__initialize.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/odb/backend/extr_nobackend.c_test_odb_backend_nobackend__initialize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@_repo = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_odb_backend_nobackend__initialize() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = call i32 @git_repository_new(i32* @_repo)
  %5 = call i32 @cl_git_pass(i32 %4)
  %6 = call i32 @git_config_new(i32** %1)
  %7 = call i32 @cl_git_pass(i32 %6)
  %8 = call i32 @git_odb_new(i32** %2)
  %9 = call i32 @cl_git_pass(i32 %8)
  %10 = load i32, i32* @_repo, align 4
  %11 = call i32 @git_refdb_new(i32** %3, i32 %10)
  %12 = call i32 @cl_git_pass(i32 %11)
  %13 = load i32, i32* @_repo, align 4
  %14 = load i32*, i32** %1, align 8
  %15 = call i32 @git_repository_set_config(i32 %13, i32* %14)
  %16 = load i32, i32* @_repo, align 4
  %17 = load i32*, i32** %2, align 8
  %18 = call i32 @git_repository_set_odb(i32 %16, i32* %17)
  %19 = load i32, i32* @_repo, align 4
  %20 = load i32*, i32** %3, align 8
  %21 = call i32 @git_repository_set_refdb(i32 %19, i32* %20)
  %22 = load i32*, i32** %1, align 8
  %23 = call i32 @git_config_free(i32* %22)
  %24 = load i32*, i32** %2, align 8
  %25 = call i32 @git_odb_free(i32* %24)
  %26 = load i32*, i32** %3, align 8
  %27 = call i32 @git_refdb_free(i32* %26)
  ret void
}

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_repository_new(i32*) #1

declare dso_local i32 @git_config_new(i32**) #1

declare dso_local i32 @git_odb_new(i32**) #1

declare dso_local i32 @git_refdb_new(i32**, i32) #1

declare dso_local i32 @git_repository_set_config(i32, i32*) #1

declare dso_local i32 @git_repository_set_odb(i32, i32*) #1

declare dso_local i32 @git_repository_set_refdb(i32, i32*) #1

declare dso_local i32 @git_config_free(i32*) #1

declare dso_local i32 @git_odb_free(i32*) #1

declare dso_local i32 @git_refdb_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
