; ModuleID = '/home/carl/AnghaBench/libgit2/tests/filter/extr_custom.c_test_filter_custom__to_odb.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/filter/extr_custom.c_test_filter_custom__to_odb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32 }

@workdir_data = common dso_local global i32 0, align 4
@g_repo = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"herofile\00", align 1
@GIT_FILTER_TO_ODB = common dso_local global i32 0, align 4
@BITFLIPPED_AND_REVERSED_DATA_LEN = common dso_local global i32 0, align 4
@bitflipped_and_reversed_data = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_filter_custom__to_odb() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca %struct.TYPE_6__, align 4
  %3 = alloca %struct.TYPE_6__, align 4
  %4 = alloca { i64, i32 }, align 8
  %5 = bitcast %struct.TYPE_6__* %2 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %5, i8 0, i64 12, i1 false)
  %6 = load i32, i32* @workdir_data, align 4
  %7 = load i32, i32* @workdir_data, align 4
  %8 = call i32 @strlen(i32 %7)
  %9 = call { i64, i32 } @GIT_BUF_INIT_CONST(i32 %6, i32 %8)
  store { i64, i32 } %9, { i64, i32 }* %4, align 8
  %10 = bitcast { i64, i32 }* %4 to i8*
  %11 = bitcast %struct.TYPE_6__* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %11, i8* align 8 %10, i64 12, i1 false)
  %12 = load i32, i32* @g_repo, align 4
  %13 = load i32, i32* @GIT_FILTER_TO_ODB, align 4
  %14 = call i32 @git_filter_list_load(i32** %1, i32 %12, i32* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %13, i32 0)
  %15 = call i32 @cl_git_pass(i32 %14)
  %16 = load i32*, i32** %1, align 8
  %17 = call i32 @git_filter_list_apply_to_data(%struct.TYPE_6__* %2, i32* %16, %struct.TYPE_6__* %3)
  %18 = call i32 @cl_git_pass(i32 %17)
  %19 = load i32, i32* @BITFLIPPED_AND_REVERSED_DATA_LEN, align 4
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %2, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @cl_assert_equal_i(i32 %19, i32 %21)
  %23 = load i32, i32* @bitflipped_and_reversed_data, align 4
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %2, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %2, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @memcmp(i32 %23, i32 %25, i32 %27)
  %29 = call i32 @cl_assert_equal_i(i32 0, i32 %28)
  %30 = load i32*, i32** %1, align 8
  %31 = call i32 @git_filter_list_free(i32* %30)
  %32 = call i32 @git_buf_dispose(%struct.TYPE_6__* %2)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local { i64, i32 } @GIT_BUF_INIT_CONST(i32, i32) #2

declare dso_local i32 @strlen(i32) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_filter_list_load(i32**, i32, i32*, i8*, i32, i32) #2

declare dso_local i32 @git_filter_list_apply_to_data(%struct.TYPE_6__*, i32*, %struct.TYPE_6__*) #2

declare dso_local i32 @cl_assert_equal_i(i32, i32) #2

declare dso_local i32 @memcmp(i32, i32, i32) #2

declare dso_local i32 @git_filter_list_free(i32*) #2

declare dso_local i32 @git_buf_dispose(%struct.TYPE_6__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
