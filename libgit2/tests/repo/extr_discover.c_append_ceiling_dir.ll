; ModuleID = '/home/carl/AnghaBench/libgit2/tests/repo/extr_discover.c_append_ceiling_dir.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/repo/extr_discover.c_append_ceiling_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i8* }

@GIT_BUF_INIT = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@GIT_PATH_LIST_SEPARATOR = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*, i8*)* @append_ceiling_dir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @append_ceiling_dir(%struct.TYPE_8__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_8__, align 8
  %6 = alloca [2 x i8], align 1
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = bitcast %struct.TYPE_8__* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %7, i8* align 8 bitcast (%struct.TYPE_8__* @GIT_BUF_INIT to i8*), i64 16, i1 false)
  %8 = getelementptr inbounds [2 x i8], [2 x i8]* %6, i64 0, i64 0
  %9 = load i8, i8* @GIT_PATH_LIST_SEPARATOR, align 1
  store i8 %9, i8* %8, align 1
  %10 = getelementptr inbounds i8, i8* %8, i64 1
  store i8 0, i8* %10, align 1
  %11 = load i8*, i8** %4, align 8
  %12 = call i32 @git_path_prettify_dir(%struct.TYPE_8__* %5, i8* %11, i32* null)
  %13 = call i32 @cl_git_pass(i32 %12)
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp sgt i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %2
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %20 = getelementptr inbounds [2 x i8], [2 x i8]* %6, i64 0, i64 0
  %21 = call i32 @git_buf_puts(%struct.TYPE_8__* %19, i8* %20)
  br label %22

22:                                               ; preds = %18, %2
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 1
  %25 = load i8*, i8** %24, align 8
  %26 = call i32 @git_buf_puts(%struct.TYPE_8__* %23, i8* %25)
  %27 = call i32 @git_buf_dispose(%struct.TYPE_8__* %5)
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %29 = call i64 @git_buf_oom(%struct.TYPE_8__* %28)
  %30 = icmp eq i64 %29, 0
  %31 = zext i1 %30 to i32
  %32 = call i32 @cl_assert(i32 %31)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_path_prettify_dir(%struct.TYPE_8__*, i8*, i32*) #2

declare dso_local i32 @git_buf_puts(%struct.TYPE_8__*, i8*) #2

declare dso_local i32 @git_buf_dispose(%struct.TYPE_8__*) #2

declare dso_local i32 @cl_assert(i32) #2

declare dso_local i64 @git_buf_oom(%struct.TYPE_8__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
