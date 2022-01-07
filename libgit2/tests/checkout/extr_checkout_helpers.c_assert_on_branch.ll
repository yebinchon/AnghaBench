; ModuleID = '/home/carl/AnghaBench/libgit2/tests/checkout/extr_checkout_helpers.c_assert_on_branch.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/checkout/extr_checkout_helpers.c_assert_on_branch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@GIT_BUF_INIT = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@GIT_HEAD_FILE = common dso_local global i32 0, align 4
@GIT_REFERENCE_SYMBOLIC = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [11 x i8] c"refs/heads\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @assert_on_branch(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_5__, align 4
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = bitcast %struct.TYPE_5__* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %7, i8* align 4 bitcast (%struct.TYPE_5__* @GIT_BUF_INIT to i8*), i64 4, i1 false)
  %8 = load i32*, i32** %3, align 8
  %9 = load i32, i32* @GIT_HEAD_FILE, align 4
  %10 = call i32 @git_reference_lookup(i32** %5, i32* %8, i32 %9)
  %11 = call i32 @cl_git_pass(i32 %10)
  %12 = load i32*, i32** %5, align 8
  %13 = call i64 @git_reference_type(i32* %12)
  %14 = load i64, i64* @GIT_REFERENCE_SYMBOLIC, align 8
  %15 = icmp eq i64 %13, %14
  %16 = zext i1 %15 to i32
  %17 = load i8*, i8** %4, align 8
  %18 = call i32 @cl_assert_(i32 %16, i8* %17)
  %19 = load i8*, i8** %4, align 8
  %20 = call i32 @git_buf_joinpath(%struct.TYPE_5__* %6, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* %19)
  %21 = call i32 @cl_git_pass(i32 %20)
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32*, i32** %5, align 8
  %25 = call i32 @git_reference_symbolic_target(i32* %24)
  %26 = call i32 @cl_assert_equal_s(i32 %23, i32 %25)
  %27 = load i32*, i32** %5, align 8
  %28 = call i32 @git_reference_free(i32* %27)
  %29 = call i32 @git_buf_dispose(%struct.TYPE_5__* %6)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_reference_lookup(i32**, i32*, i32) #2

declare dso_local i32 @cl_assert_(i32, i8*) #2

declare dso_local i64 @git_reference_type(i32*) #2

declare dso_local i32 @git_buf_joinpath(%struct.TYPE_5__*, i8*, i8*) #2

declare dso_local i32 @cl_assert_equal_s(i32, i32) #2

declare dso_local i32 @git_reference_symbolic_target(i32*) #2

declare dso_local i32 @git_reference_free(i32*) #2

declare dso_local i32 @git_buf_dispose(%struct.TYPE_5__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
