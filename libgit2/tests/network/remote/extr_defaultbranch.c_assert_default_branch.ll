; ModuleID = '/home/carl/AnghaBench/libgit2/tests/network/remote/extr_defaultbranch.c_assert_default_branch.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/network/remote/extr_defaultbranch.c_assert_default_branch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@GIT_BUF_INIT = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@g_remote = common dso_local global i32 0, align 4
@GIT_DIRECTION_FETCH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @assert_default_branch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @assert_default_branch(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_5__, align 4
  store i8* %0, i8** %2, align 8
  %4 = bitcast %struct.TYPE_5__* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %4, i8* align 4 bitcast (%struct.TYPE_5__* @GIT_BUF_INIT to i8*), i64 4, i1 false)
  %5 = load i32, i32* @g_remote, align 4
  %6 = load i32, i32* @GIT_DIRECTION_FETCH, align 4
  %7 = call i32 @git_remote_connect(i32 %5, i32 %6, i32* null, i32* null, i32* null)
  %8 = call i32 @cl_git_pass(i32 %7)
  %9 = load i32, i32* @g_remote, align 4
  %10 = call i32 @git_remote_default_branch(%struct.TYPE_5__* %3, i32 %9)
  %11 = call i32 @cl_git_pass(i32 %10)
  %12 = load i8*, i8** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @cl_assert_equal_s(i8* %12, i32 %14)
  %16 = call i32 @git_buf_dispose(%struct.TYPE_5__* %3)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_remote_connect(i32, i32, i32*, i32*, i32*) #2

declare dso_local i32 @git_remote_default_branch(%struct.TYPE_5__*, i32) #2

declare dso_local i32 @cl_assert_equal_s(i8*, i32) #2

declare dso_local i32 @git_buf_dispose(%struct.TYPE_5__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
