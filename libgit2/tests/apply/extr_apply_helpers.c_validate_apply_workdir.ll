; ModuleID = '/home/carl/AnghaBench/libgit2/tests/apply/extr_apply_helpers.c_validate_apply_workdir.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/apply/extr_apply_helpers.c_validate_apply_workdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.merge_index_entry = type { i32 }
%struct.iterator_compare_data = type { i64, i32, i32, %struct.merge_index_entry* }

@GIT_ITERATOR_OPTIONS_INIT = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@GIT_ITERATOR_INCLUDE_HASH = common dso_local global i32 0, align 4
@iterator_compare = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @validate_apply_workdir(i32* %0, %struct.merge_index_entry* %1, i64 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.merge_index_entry*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_4__, align 4
  %10 = alloca %struct.iterator_compare_data, align 8
  store i32* %0, i32** %4, align 8
  store %struct.merge_index_entry* %1, %struct.merge_index_entry** %5, align 8
  store i64 %2, i64* %6, align 8
  %11 = bitcast %struct.TYPE_4__* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %11, i8* align 4 bitcast (%struct.TYPE_4__* @GIT_ITERATOR_OPTIONS_INIT to i8*), i64 4, i1 false)
  %12 = getelementptr inbounds %struct.iterator_compare_data, %struct.iterator_compare_data* %10, i32 0, i32 0
  %13 = load %struct.merge_index_entry*, %struct.merge_index_entry** %5, align 8
  %14 = ptrtoint %struct.merge_index_entry* %13 to i64
  store i64 %14, i64* %12, align 8
  %15 = getelementptr inbounds %struct.iterator_compare_data, %struct.iterator_compare_data* %10, i32 0, i32 1
  %16 = load i64, i64* %6, align 8
  %17 = trunc i64 %16 to i32
  store i32 %17, i32* %15, align 8
  %18 = getelementptr inbounds %struct.iterator_compare_data, %struct.iterator_compare_data* %10, i32 0, i32 2
  store i32 0, i32* %18, align 4
  %19 = getelementptr inbounds %struct.iterator_compare_data, %struct.iterator_compare_data* %10, i32 0, i32 3
  store %struct.merge_index_entry* null, %struct.merge_index_entry** %19, align 8
  %20 = load i32, i32* @GIT_ITERATOR_INCLUDE_HASH, align 4
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = or i32 %22, %20
  store i32 %23, i32* %21, align 4
  %24 = load i32*, i32** %4, align 8
  %25 = call i32 @git_repository_index(i32** %7, i32* %24)
  %26 = call i32 @cl_git_pass(i32 %25)
  %27 = load i32*, i32** %4, align 8
  %28 = load i32*, i32** %7, align 8
  %29 = call i32 @git_iterator_for_workdir(i32** %8, i32* %27, i32* %28, i32* null, %struct.TYPE_4__* %9)
  %30 = call i32 @cl_git_pass(i32 %29)
  %31 = load i32*, i32** %8, align 8
  %32 = load i32, i32* @iterator_compare, align 4
  %33 = call i32 @git_iterator_foreach(i32* %31, i32 %32, %struct.iterator_compare_data* %10)
  %34 = call i32 @cl_git_pass(i32 %33)
  %35 = getelementptr inbounds %struct.iterator_compare_data, %struct.iterator_compare_data* %10, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = getelementptr inbounds %struct.iterator_compare_data, %struct.iterator_compare_data* %10, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @cl_assert_equal_i(i32 %36, i32 %38)
  %40 = load i32*, i32** %8, align 8
  %41 = call i32 @git_iterator_free(i32* %40)
  %42 = load i32*, i32** %7, align 8
  %43 = call i32 @git_index_free(i32* %42)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_repository_index(i32**, i32*) #2

declare dso_local i32 @git_iterator_for_workdir(i32**, i32*, i32*, i32*, %struct.TYPE_4__*) #2

declare dso_local i32 @git_iterator_foreach(i32*, i32, %struct.iterator_compare_data*) #2

declare dso_local i32 @cl_assert_equal_i(i32, i32) #2

declare dso_local i32 @git_iterator_free(i32*) #2

declare dso_local i32 @git_index_free(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
