; ModuleID = '/home/carl/AnghaBench/libgit2/tests/index/extr_filemodes.c_test_index_filemodes__read.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/index/extr_filemodes.c_test_index_filemodes__read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@test_index_filemodes__read.expected = internal global [6 x i32] [i32 0, i32 1, i32 0, i32 1, i32 0, i32 1], align 16
@g_repo = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_index_filemodes__read() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = load i32, i32* @g_repo, align 4
  %5 = call i32 @git_repository_index(i32** %1, i32 %4)
  %6 = call i32 @cl_git_pass(i32 %5)
  %7 = load i32*, i32** %1, align 8
  %8 = call i64 @git_index_entrycount(i32* %7)
  %9 = trunc i64 %8 to i32
  %10 = call i32 @cl_assert_equal_i(i32 6, i32 %9)
  store i32 0, i32* %2, align 4
  br label %11

11:                                               ; preds = %36, %0
  %12 = load i32, i32* %2, align 4
  %13 = icmp ult i32 %12, 6
  br i1 %13, label %14, label %39

14:                                               ; preds = %11
  %15 = load i32*, i32** %1, align 8
  %16 = load i32, i32* %2, align 4
  %17 = call %struct.TYPE_3__* @git_index_get_byindex(i32* %15, i32 %16)
  store %struct.TYPE_3__* %17, %struct.TYPE_3__** %3, align 8
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %19 = icmp ne %struct.TYPE_3__* %18, null
  %20 = zext i1 %19 to i32
  %21 = call i32 @cl_assert(i32 %20)
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = and i32 %24, 64
  %26 = icmp ne i32 %25, 0
  %27 = zext i1 %26 to i64
  %28 = select i1 %26, i32 1, i32 0
  %29 = load i32, i32* %2, align 4
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds [6 x i32], [6 x i32]* @test_index_filemodes__read.expected, i64 0, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = icmp eq i32 %28, %32
  %34 = zext i1 %33 to i32
  %35 = call i32 @cl_assert(i32 %34)
  br label %36

36:                                               ; preds = %14
  %37 = load i32, i32* %2, align 4
  %38 = add i32 %37, 1
  store i32 %38, i32* %2, align 4
  br label %11

39:                                               ; preds = %11
  %40 = load i32*, i32** %1, align 8
  %41 = call i32 @git_index_free(i32* %40)
  ret void
}

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_repository_index(i32**, i32) #1

declare dso_local i32 @cl_assert_equal_i(i32, i32) #1

declare dso_local i64 @git_index_entrycount(i32*) #1

declare dso_local %struct.TYPE_3__* @git_index_get_byindex(i32*, i32) #1

declare dso_local i32 @cl_assert(i32) #1

declare dso_local i32 @git_index_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
