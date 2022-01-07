; ModuleID = '/home/carl/AnghaBench/libgit2/tests/odb/extr_foreach.c_test_odb_foreach__one_pack.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/odb/extr_foreach.c_test_odb_foreach__one_pack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@_odb = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [76 x i8] c"testrepo.git/objects/pack/pack-a81e489679b7d3418f9ab594bda8ceb37dd4c695.idx\00", align 1
@_repo = common dso_local global i32* null, align 8
@foreach_cb = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_odb_foreach__one_pack() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32, align 4
  store i32* null, i32** %1, align 8
  store i32 0, i32* %2, align 4
  %3 = call i32 @git_odb_new(i32* @_odb)
  %4 = call i32 @cl_git_pass(i32 %3)
  %5 = call i32 @cl_fixture(i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str, i64 0, i64 0))
  %6 = call i32 @git_odb_backend_one_pack(i32** %1, i32 %5)
  %7 = call i32 @cl_git_pass(i32 %6)
  %8 = load i32, i32* @_odb, align 4
  %9 = load i32*, i32** %1, align 8
  %10 = call i32 @git_odb_add_backend(i32 %8, i32* %9, i32 1)
  %11 = call i32 @cl_git_pass(i32 %10)
  store i32* null, i32** @_repo, align 8
  %12 = load i32, i32* @_odb, align 4
  %13 = load i32, i32* @foreach_cb, align 4
  %14 = call i32 @git_odb_foreach(i32 %12, i32 %13, i32* %2)
  %15 = call i32 @cl_git_pass(i32 %14)
  %16 = load i32, i32* %2, align 4
  %17 = icmp eq i32 %16, 1628
  %18 = zext i1 %17 to i32
  %19 = call i32 @cl_assert(i32 %18)
  ret void
}

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_odb_new(i32*) #1

declare dso_local i32 @git_odb_backend_one_pack(i32**, i32) #1

declare dso_local i32 @cl_fixture(i8*) #1

declare dso_local i32 @git_odb_add_backend(i32, i32*, i32) #1

declare dso_local i32 @git_odb_foreach(i32, i32, i32*) #1

declare dso_local i32 @cl_assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
