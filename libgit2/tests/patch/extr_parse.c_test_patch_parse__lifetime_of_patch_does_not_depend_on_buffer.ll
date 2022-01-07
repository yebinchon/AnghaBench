; ModuleID = '/home/carl/AnghaBench/libgit2/tests/patch/extr_parse.c_test_patch_parse__lifetime_of_patch_does_not_depend_on_buffer.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/patch/extr_parse.c_test_patch_parse__lifetime_of_patch_does_not_depend_on_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }

@GIT_BUF_INIT = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@PATCH_ORIGINAL_TO_CHANGE_MIDDLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_patch_parse__lifetime_of_patch_does_not_depend_on_buffer() #0 {
  %1 = alloca %struct.TYPE_6__, align 4
  %2 = alloca %struct.TYPE_6__, align 4
  %3 = alloca i32*, align 8
  %4 = bitcast %struct.TYPE_6__* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %4, i8* align 4 bitcast (%struct.TYPE_6__* @GIT_BUF_INIT to i8*), i64 8, i1 false)
  %5 = bitcast %struct.TYPE_6__* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %5, i8* align 4 bitcast (%struct.TYPE_6__* @GIT_BUF_INIT to i8*), i64 8, i1 false)
  %6 = load i32, i32* @PATCH_ORIGINAL_TO_CHANGE_MIDDLE, align 4
  %7 = call i32 @git_buf_sets(%struct.TYPE_6__* %1, i32 %6)
  %8 = call i32 @cl_git_pass(i32 %7)
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @git_patch_from_buffer(i32** %3, i32 %10, i32 %12, i32* null)
  %14 = call i32 @cl_git_pass(i32 %13)
  %15 = call i32 @git_buf_dispose(%struct.TYPE_6__* %1)
  %16 = load i32*, i32** %3, align 8
  %17 = call i32 @git_patch_to_buf(%struct.TYPE_6__* %2, i32* %16)
  %18 = call i32 @cl_git_pass(i32 %17)
  %19 = load i32, i32* @PATCH_ORIGINAL_TO_CHANGE_MIDDLE, align 4
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %2, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @cl_assert_equal_s(i32 %19, i32 %21)
  %23 = call i32 @git_buf_dispose(%struct.TYPE_6__* %2)
  %24 = load i32*, i32** %3, align 8
  %25 = call i32 @git_patch_to_buf(%struct.TYPE_6__* %2, i32* %24)
  %26 = call i32 @cl_git_pass(i32 %25)
  %27 = load i32, i32* @PATCH_ORIGINAL_TO_CHANGE_MIDDLE, align 4
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %2, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @cl_assert_equal_s(i32 %27, i32 %29)
  %31 = call i32 @git_buf_dispose(%struct.TYPE_6__* %2)
  %32 = load i32*, i32** %3, align 8
  %33 = call i32 @git_patch_free(i32* %32)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_buf_sets(%struct.TYPE_6__*, i32) #2

declare dso_local i32 @git_patch_from_buffer(i32**, i32, i32, i32*) #2

declare dso_local i32 @git_buf_dispose(%struct.TYPE_6__*) #2

declare dso_local i32 @git_patch_to_buf(%struct.TYPE_6__*, i32*) #2

declare dso_local i32 @cl_assert_equal_s(i32, i32) #2

declare dso_local i32 @git_patch_free(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
