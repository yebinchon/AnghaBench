; ModuleID = '/home/carl/AnghaBench/libgit2/tests/core/extr_filebuf.c_test_core_filebuf__2.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/core/extr_filebuf.c_test_core_filebuf__2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GIT_FILEBUF_INIT = common dso_local global i32 0, align 4
@__const.test_core_filebuf__2.test = private unnamed_addr constant [5 x i8] c"test\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_core_filebuf__2() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [5 x i8], align 1
  %3 = alloca [16384 x i8], align 16
  %4 = load i32, i32* @GIT_FILEBUF_INIT, align 4
  store i32 %4, i32* %1, align 4
  %5 = bitcast [5 x i8]* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %5, i8* align 1 getelementptr inbounds ([5 x i8], [5 x i8]* @__const.test_core_filebuf__2.test, i32 0, i32 0), i64 5, i1 false)
  %6 = getelementptr inbounds [16384 x i8], [16384 x i8]* %3, i64 0, i64 0
  %7 = call i32 @memset(i8* %6, i32 254, i32 16384)
  %8 = getelementptr inbounds [5 x i8], [5 x i8]* %2, i64 0, i64 0
  %9 = call i32 @git_filebuf_open(i32* %1, i8* %8, i32 0, i32 438)
  %10 = call i32 @cl_git_pass(i32 %9)
  %11 = getelementptr inbounds [16384 x i8], [16384 x i8]* %3, i64 0, i64 0
  %12 = call i32 @git_filebuf_write(i32* %1, i8* %11, i32 16384)
  %13 = call i32 @cl_git_pass(i32 %12)
  %14 = call i32 @git_filebuf_commit(i32* %1)
  %15 = call i32 @cl_git_pass(i32 %14)
  %16 = getelementptr inbounds [16384 x i8], [16384 x i8]* %3, i64 0, i64 0
  %17 = getelementptr inbounds [5 x i8], [5 x i8]* %2, i64 0, i64 0
  %18 = call i32 @cl_assert_equal_file(i8* %16, i32 16384, i8* %17)
  %19 = getelementptr inbounds [5 x i8], [5 x i8]* %2, i64 0, i64 0
  %20 = call i32 @p_unlink(i8* %19)
  %21 = call i32 @cl_must_pass(i32 %20)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @memset(i8*, i32, i32) #2

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_filebuf_open(i32*, i8*, i32, i32) #2

declare dso_local i32 @git_filebuf_write(i32*, i8*, i32) #2

declare dso_local i32 @git_filebuf_commit(i32*) #2

declare dso_local i32 @cl_assert_equal_file(i8*, i32, i8*) #2

declare dso_local i32 @cl_must_pass(i32) #2

declare dso_local i32 @p_unlink(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
