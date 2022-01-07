; ModuleID = '/home/carl/AnghaBench/libgit2/tests/index/extr_tests.c_test_index_tests__write.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/index/extr_tests.c_test_index_tests__write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@TEST_INDEXBIG_PATH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"index_rewrite\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_index_tests__write() #0 {
  %1 = alloca %struct.TYPE_5__*, align 8
  %2 = load i32, i32* @TEST_INDEXBIG_PATH, align 4
  %3 = call i32 @copy_file(i32 %2, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %4 = call i32 @git_index_open(%struct.TYPE_5__** %1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %5 = call i32 @cl_git_pass(i32 %4)
  %6 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %7 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @cl_assert(i32 %8)
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %11 = call i32 @git_index_write(%struct.TYPE_5__* %10)
  %12 = call i32 @cl_git_pass(i32 %11)
  %13 = load i32, i32* @TEST_INDEXBIG_PATH, align 4
  %14 = call i32 @files_are_equal(i32 %13, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %16 = call i32 @git_index_free(%struct.TYPE_5__* %15)
  %17 = call i32 @p_unlink(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  ret void
}

declare dso_local i32 @copy_file(i32, i8*) #1

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_index_open(%struct.TYPE_5__**, i8*) #1

declare dso_local i32 @cl_assert(i32) #1

declare dso_local i32 @git_index_write(%struct.TYPE_5__*) #1

declare dso_local i32 @files_are_equal(i32, i8*) #1

declare dso_local i32 @git_index_free(%struct.TYPE_5__*) #1

declare dso_local i32 @p_unlink(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
