; ModuleID = '/home/carl/AnghaBench/libgit2/tests/repo/extr_discover.c_ensure_repository_discover.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/repo/extr_discover.c_ensure_repository_discover.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i32 }

@GIT_BUF_INIT = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i8*)* @ensure_repository_discover to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ensure_repository_discover(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_7__, align 8
  %8 = alloca %struct.TYPE_7__, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = bitcast %struct.TYPE_7__* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %9, i8* align 8 bitcast (%struct.TYPE_7__* @GIT_BUF_INIT to i8*), i64 16, i1 false)
  %10 = bitcast %struct.TYPE_7__* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %10, i8* align 8 bitcast (%struct.TYPE_7__* @GIT_BUF_INIT to i8*), i64 16, i1 false)
  %11 = load i8*, i8** %6, align 8
  %12 = call i32 @p_realpath(i8* %11, i32* null)
  %13 = call i32 @git_buf_attach(%struct.TYPE_7__* %8, i32 %12, i32 0)
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp sgt i64 %15, 0
  %17 = zext i1 %16 to i32
  %18 = call i32 @cl_assert(i32 %17)
  %19 = call i32 @git_path_to_dir(%struct.TYPE_7__* %8)
  %20 = call i32 @cl_git_pass(i32 %19)
  %21 = load i8*, i8** %4, align 8
  %22 = load i8*, i8** %5, align 8
  %23 = call i32 @git_repository_discover(%struct.TYPE_7__* %7, i8* %21, i32 1, i8* %22)
  %24 = call i32 @cl_git_pass(i32 %23)
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @cl_assert_equal_s(i32 %26, i32 %28)
  %30 = call i32 @git_buf_dispose(%struct.TYPE_7__* %8)
  %31 = call i32 @git_buf_dispose(%struct.TYPE_7__* %7)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @git_buf_attach(%struct.TYPE_7__*, i32, i32) #2

declare dso_local i32 @p_realpath(i8*, i32*) #2

declare dso_local i32 @cl_assert(i32) #2

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_path_to_dir(%struct.TYPE_7__*) #2

declare dso_local i32 @git_repository_discover(%struct.TYPE_7__*, i8*, i32, i8*) #2

declare dso_local i32 @cl_assert_equal_s(i32, i32) #2

declare dso_local i32 @git_buf_dispose(%struct.TYPE_7__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
