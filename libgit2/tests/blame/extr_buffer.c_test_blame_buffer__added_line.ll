; ModuleID = '/home/carl/AnghaBench/libgit2/tests/blame/extr_buffer.c_test_blame_buffer__added_line.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/blame/extr_buffer.c_test_blame_buffer__added_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [984 x i8] c"EEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE\0AEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE\0AEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE\0AEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE\0A\0Aabcdefg\0ABBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBB\0ABBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBB\0ABBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBB\0ABBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBB\0A\0ACCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC\0ACCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC\0ACCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC\0ACCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC\0A\0A\00", align 1
@g_bufferblame = common dso_local global i32 0, align 4
@g_fileblame = common dso_local global i32 0, align 4
@g_repo = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"000000\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"b.txt\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"Ben Straub\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_blame_buffer__added_line() #0 {
  %1 = alloca %struct.TYPE_6__*, align 8
  %2 = alloca i8*, align 8
  store i8* getelementptr inbounds ([984 x i8], [984 x i8]* @.str, i64 0, i64 0), i8** %2, align 8
  %3 = load i32, i32* @g_fileblame, align 4
  %4 = load i8*, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = call i32 @strlen(i8* %5)
  %7 = call i32 @git_blame_buffer(i32* @g_bufferblame, i32 %3, i8* %4, i32 %6)
  %8 = call i32 @cl_git_pass(i32 %7)
  %9 = load i32, i32* @g_bufferblame, align 4
  %10 = call i32 @git_blame_get_hunk_count(i32 %9)
  %11 = call i32 @cl_assert_equal_i(i32 5, i32 %10)
  %12 = load i32, i32* @g_repo, align 4
  %13 = load i32, i32* @g_bufferblame, align 4
  %14 = call i32 @check_blame_hunk_index(i32 %12, i32 %13, i32 2, i32 6, i32 1, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %15 = load i32, i32* @g_bufferblame, align 4
  %16 = call %struct.TYPE_6__* @git_blame_get_hunk_byline(i32 %15, i32 16)
  store %struct.TYPE_6__* %16, %struct.TYPE_6__** %1, align 8
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %18 = call i32 @cl_assert(%struct.TYPE_6__* %17)
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @cl_assert_equal_s(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32 %23)
  ret void
}

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_blame_buffer(i32*, i32, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @cl_assert_equal_i(i32, i32) #1

declare dso_local i32 @git_blame_get_hunk_count(i32) #1

declare dso_local i32 @check_blame_hunk_index(i32, i32, i32, i32, i32, i32, i8*, i8*) #1

declare dso_local %struct.TYPE_6__* @git_blame_get_hunk_byline(i32, i32) #1

declare dso_local i32 @cl_assert(%struct.TYPE_6__*) #1

declare dso_local i32 @cl_assert_equal_s(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
