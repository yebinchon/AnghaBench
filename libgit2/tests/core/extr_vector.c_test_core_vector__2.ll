; ModuleID = '/home/carl/AnghaBench/libgit2/tests/core/extr_vector.c_test_core_vector__2.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/core/extr_vector.c_test_core_vector__2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }

@test_cmp = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_core_vector__2() #0 {
  %1 = alloca %struct.TYPE_6__, align 4
  %2 = alloca [2 x i32*], align 16
  %3 = call i32* @git__malloc(i32 4)
  %4 = getelementptr inbounds [2 x i32*], [2 x i32*]* %2, i64 0, i64 0
  store i32* %3, i32** %4, align 16
  %5 = call i32* @git__malloc(i32 4)
  %6 = getelementptr inbounds [2 x i32*], [2 x i32*]* %2, i64 0, i64 1
  store i32* %5, i32** %6, align 8
  %7 = getelementptr inbounds [2 x i32*], [2 x i32*]* %2, i64 0, i64 0
  %8 = load i32*, i32** %7, align 16
  store i32 2, i32* %8, align 4
  %9 = getelementptr inbounds [2 x i32*], [2 x i32*]* %2, i64 0, i64 1
  %10 = load i32*, i32** %9, align 8
  store i32 1, i32* %10, align 4
  %11 = load i32, i32* @test_cmp, align 4
  %12 = call i32 @git_vector_init(%struct.TYPE_6__* %1, i32 5, i32 %11)
  %13 = call i32 @cl_git_pass(i32 %12)
  %14 = getelementptr inbounds [2 x i32*], [2 x i32*]* %2, i64 0, i64 0
  %15 = load i32*, i32** %14, align 16
  %16 = call i32 @git_vector_insert(%struct.TYPE_6__* %1, i32* %15)
  %17 = call i32 @cl_git_pass(i32 %16)
  %18 = getelementptr inbounds [2 x i32*], [2 x i32*]* %2, i64 0, i64 1
  %19 = load i32*, i32** %18, align 8
  %20 = call i32 @git_vector_insert(%struct.TYPE_6__* %1, i32* %19)
  %21 = call i32 @cl_git_pass(i32 %20)
  %22 = getelementptr inbounds [2 x i32*], [2 x i32*]* %2, i64 0, i64 1
  %23 = load i32*, i32** %22, align 8
  %24 = call i32 @git_vector_insert(%struct.TYPE_6__* %1, i32* %23)
  %25 = call i32 @cl_git_pass(i32 %24)
  %26 = getelementptr inbounds [2 x i32*], [2 x i32*]* %2, i64 0, i64 0
  %27 = load i32*, i32** %26, align 16
  %28 = call i32 @git_vector_insert(%struct.TYPE_6__* %1, i32* %27)
  %29 = call i32 @cl_git_pass(i32 %28)
  %30 = getelementptr inbounds [2 x i32*], [2 x i32*]* %2, i64 0, i64 1
  %31 = load i32*, i32** %30, align 8
  %32 = call i32 @git_vector_insert(%struct.TYPE_6__* %1, i32* %31)
  %33 = call i32 @cl_git_pass(i32 %32)
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp eq i32 %35, 5
  %37 = zext i1 %36 to i32
  %38 = call i32 @cl_assert(i32 %37)
  %39 = call i32 @git_vector_uniq(%struct.TYPE_6__* %1, i32* null)
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = icmp eq i32 %41, 2
  %43 = zext i1 %42 to i32
  %44 = call i32 @cl_assert(i32 %43)
  %45 = call i32 @git_vector_free(%struct.TYPE_6__* %1)
  %46 = getelementptr inbounds [2 x i32*], [2 x i32*]* %2, i64 0, i64 0
  %47 = load i32*, i32** %46, align 16
  %48 = call i32 @git__free(i32* %47)
  %49 = getelementptr inbounds [2 x i32*], [2 x i32*]* %2, i64 0, i64 1
  %50 = load i32*, i32** %49, align 8
  %51 = call i32 @git__free(i32* %50)
  ret void
}

declare dso_local i32* @git__malloc(i32) #1

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_vector_init(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @git_vector_insert(%struct.TYPE_6__*, i32*) #1

declare dso_local i32 @cl_assert(i32) #1

declare dso_local i32 @git_vector_uniq(%struct.TYPE_6__*, i32*) #1

declare dso_local i32 @git_vector_free(%struct.TYPE_6__*) #1

declare dso_local i32 @git__free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
