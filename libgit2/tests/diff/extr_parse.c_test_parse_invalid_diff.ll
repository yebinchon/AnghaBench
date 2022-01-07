; ModuleID = '/home/carl/AnghaBench/libgit2/tests/diff/extr_parse.c_test_parse_invalid_diff.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/diff/extr_parse.c_test_parse_invalid_diff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }

@GIT_BUF_INIT = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@PATCH_ORIGINAL_TO_CHANGE_FIRSTLINE = common dso_local global i8* null, align 8
@PATCH_BINARY_DELTA = common dso_local global i8* null, align 8
@PATCH_ORIGINAL_TO_CHANGE_MIDDLE = common dso_local global i8* null, align 8
@PATCH_BINARY_LITERAL = common dso_local global i8* null, align 8
@GIT_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @test_parse_invalid_diff to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_parse_invalid_diff(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_5__, align 4
  store i8* %0, i8** %2, align 8
  %5 = bitcast %struct.TYPE_5__* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %5, i8* align 4 bitcast (%struct.TYPE_5__* @GIT_BUF_INIT to i8*), i64 8, i1 false)
  %6 = load i8*, i8** @PATCH_ORIGINAL_TO_CHANGE_FIRSTLINE, align 8
  %7 = call i32 @git_buf_puts(%struct.TYPE_5__* %4, i8* %6)
  %8 = load i8*, i8** @PATCH_BINARY_DELTA, align 8
  %9 = call i32 @git_buf_puts(%struct.TYPE_5__* %4, i8* %8)
  %10 = load i8*, i8** %2, align 8
  %11 = call i32 @git_buf_puts(%struct.TYPE_5__* %4, i8* %10)
  %12 = load i8*, i8** @PATCH_ORIGINAL_TO_CHANGE_MIDDLE, align 8
  %13 = call i32 @git_buf_puts(%struct.TYPE_5__* %4, i8* %12)
  %14 = load i8*, i8** @PATCH_BINARY_LITERAL, align 8
  %15 = call i32 @git_buf_puts(%struct.TYPE_5__* %4, i8* %14)
  %16 = load i32, i32* @GIT_ERROR, align 4
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @git_diff_from_buffer(i32** %3, i32 %18, i32 %20)
  %22 = call i32 @cl_git_fail_with(i32 %16, i32 %21)
  %23 = call i32 @git_buf_dispose(%struct.TYPE_5__* %4)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @git_buf_puts(%struct.TYPE_5__*, i8*) #2

declare dso_local i32 @cl_git_fail_with(i32, i32) #2

declare dso_local i32 @git_diff_from_buffer(i32**, i32, i32) #2

declare dso_local i32 @git_buf_dispose(%struct.TYPE_5__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
