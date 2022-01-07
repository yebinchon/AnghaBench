; ModuleID = '/home/carl/AnghaBench/libgit2/tests/odb/extr_streamwrite.c_test_odb_streamwrite__initialize.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/odb/extr_streamwrite.c_test_odb_streamwrite__initialize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"testrepo.git\00", align 1
@repo = common dso_local global i32 0, align 4
@odb = common dso_local global i32 0, align 4
@stream = common dso_local global %struct.TYPE_3__* null, align 8
@GIT_OBJECT_BLOB = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_odb_streamwrite__initialize() #0 {
  %1 = call i32 @cl_git_sandbox_init(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  store i32 %1, i32* @repo, align 4
  %2 = load i32, i32* @repo, align 4
  %3 = call i32 @git_repository_odb(i32* @odb, i32 %2)
  %4 = call i32 @cl_git_pass(i32 %3)
  %5 = load i32, i32* @odb, align 4
  %6 = load i32, i32* @GIT_OBJECT_BLOB, align 4
  %7 = call i32 @git_odb_open_wstream(%struct.TYPE_3__** @stream, i32 %5, i32 14, i32 %6)
  %8 = call i32 @cl_git_pass(i32 %7)
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** @stream, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @cl_assert_equal_sz(i32 14, i32 %11)
  ret void
}

declare dso_local i32 @cl_git_sandbox_init(i8*) #1

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_repository_odb(i32*, i32) #1

declare dso_local i32 @git_odb_open_wstream(%struct.TYPE_3__**, i32, i32, i32) #1

declare dso_local i32 @cl_assert_equal_sz(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
