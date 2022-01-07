; ModuleID = '/home/carl/AnghaBench/libgit2/tests/diff/extr_diffiter.c_test_diff_diffiter__iterate_files_1.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/diff/extr_diffiter.c_test_diff_diffiter__iterate_files_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@.str = private unnamed_addr constant [5 x i8] c"attr\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_diff_diffiter__iterate_files_1() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_3__, align 4
  %6 = alloca i32*, align 8
  %7 = call i32* @cl_git_sandbox_init(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i32* %7, i32** %1, align 8
  %8 = bitcast %struct.TYPE_3__* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %8, i8 0, i64 8, i1 false)
  %9 = load i32*, i32** %1, align 8
  %10 = call i32 @git_diff_index_to_workdir(i32** %2, i32* %9, i32* null, i32* null)
  %11 = call i32 @cl_git_pass(i32 %10)
  %12 = load i32*, i32** %2, align 8
  %13 = call i64 @git_diff_num_deltas(i32* %12)
  store i64 %13, i64* %4, align 8
  store i64 0, i64* %3, align 8
  br label %14

14:                                               ; preds = %33, %0
  %15 = load i64, i64* %3, align 8
  %16 = load i64, i64* %4, align 8
  %17 = icmp ult i64 %15, %16
  br i1 %17, label %18, label %36

18:                                               ; preds = %14
  %19 = load i32*, i32** %2, align 8
  %20 = load i64, i64* %3, align 8
  %21 = call i32* @git_diff_get_delta(i32* %19, i64 %20)
  store i32* %21, i32** %6, align 8
  %22 = load i32*, i32** %6, align 8
  %23 = icmp ne i32* %22, null
  %24 = zext i1 %23 to i32
  %25 = call i32 @cl_assert(i32 %24)
  %26 = load i32*, i32** %6, align 8
  %27 = load i64, i64* %3, align 8
  %28 = uitofp i64 %27 to float
  %29 = load i64, i64* %4, align 8
  %30 = uitofp i64 %29 to float
  %31 = fdiv float %28, %30
  %32 = call i32 @diff_file_cb(i32* %26, float %31, %struct.TYPE_3__* %5)
  br label %33

33:                                               ; preds = %18
  %34 = load i64, i64* %3, align 8
  %35 = add i64 %34, 1
  store i64 %35, i64* %3, align 8
  br label %14

36:                                               ; preds = %14
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @cl_assert_equal_sz(i32 6, i32 %38)
  %40 = load i32*, i32** %2, align 8
  %41 = call i32 @git_diff_free(i32* %40)
  ret void
}

declare dso_local i32* @cl_git_sandbox_init(i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_diff_index_to_workdir(i32**, i32*, i32*, i32*) #1

declare dso_local i64 @git_diff_num_deltas(i32*) #1

declare dso_local i32* @git_diff_get_delta(i32*, i64) #1

declare dso_local i32 @cl_assert(i32) #1

declare dso_local i32 @diff_file_cb(i32*, float, %struct.TYPE_3__*) #1

declare dso_local i32 @cl_assert_equal_sz(i32, i32) #1

declare dso_local i32 @git_diff_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
