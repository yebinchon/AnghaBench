; ModuleID = '/home/carl/AnghaBench/libgit2/tests/refs/extr_rename.c_test_refs_rename__force_loose.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/refs/extr_rename.c_test_refs_rename__force_loose.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }

@g_repo = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"refs/heads/br2\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"refs/heads/test\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_refs_rename__force_loose() #0 {
  %1 = alloca %struct.TYPE_7__*, align 8
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca i32, align 4
  %4 = load i32, i32* @g_repo, align 4
  %5 = call i32 @git_reference_lookup(%struct.TYPE_7__** %1, i32 %4, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %6 = call i32 @cl_git_pass(i32 %5)
  %7 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %8 = call i32 @git_reference_target(%struct.TYPE_7__* %7)
  %9 = call i32 @git_oid_cpy(i32* %3, i32 %8)
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %11 = call i32 @git_reference_rename(%struct.TYPE_7__** %2, %struct.TYPE_7__* %10, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 1, i32* null)
  %12 = call i32 @cl_git_pass(i32 %11)
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %14 = call i32 @git_reference_free(%struct.TYPE_7__* %13)
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %16 = call i32 @git_reference_free(%struct.TYPE_7__* %15)
  %17 = load i32, i32* @g_repo, align 4
  %18 = call i32 @git_reference_lookup(%struct.TYPE_7__** %1, i32 %17, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %19 = call i32 @cl_git_pass(i32 %18)
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @cl_assert_equal_s(i32 %22, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %25 = call i32 @git_reference_target(%struct.TYPE_7__* %24)
  %26 = call i32 @cl_assert_equal_oid(i32* %3, i32 %25)
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %28 = call i32 @git_reference_free(%struct.TYPE_7__* %27)
  %29 = load i32, i32* @g_repo, align 4
  %30 = call i32 @git_reference_lookup(%struct.TYPE_7__** %1, i32 %29, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %31 = call i32 @cl_git_fail(i32 %30)
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %33 = call i32 @git_reference_free(%struct.TYPE_7__* %32)
  ret void
}

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_reference_lookup(%struct.TYPE_7__**, i32, i8*) #1

declare dso_local i32 @git_oid_cpy(i32*, i32) #1

declare dso_local i32 @git_reference_target(%struct.TYPE_7__*) #1

declare dso_local i32 @git_reference_rename(%struct.TYPE_7__**, %struct.TYPE_7__*, i8*, i32, i32*) #1

declare dso_local i32 @git_reference_free(%struct.TYPE_7__*) #1

declare dso_local i32 @cl_assert_equal_s(i32, i8*) #1

declare dso_local i32 @cl_assert_equal_oid(i32*, i32) #1

declare dso_local i32 @cl_git_fail(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
