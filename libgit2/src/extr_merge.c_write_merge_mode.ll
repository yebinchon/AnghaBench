; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_merge.c_write_merge_mode.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_merge.c_write_merge_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32 }

@GIT_FILEBUF_INIT = common dso_local global i32 0, align 4
@GIT_BUF_INIT = common dso_local global %struct.TYPE_9__ zeroinitializer, align 4
@GIT_MERGE_MODE_FILE = common dso_local global i32 0, align 4
@GIT_FILEBUF_CREATE_LEADING_DIRS = common dso_local global i32 0, align 4
@GIT_MERGE_FILE_MODE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"no-ff\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*)* @write_merge_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_merge_mode(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_9__, align 4
  %5 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %2, align 8
  %6 = load i32, i32* @GIT_FILEBUF_INIT, align 4
  store i32 %6, i32* %3, align 4
  %7 = bitcast %struct.TYPE_9__* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %7, i8* align 4 bitcast (%struct.TYPE_9__* @GIT_BUF_INIT to i8*), i64 4, i1 false)
  store i32 0, i32* %5, align 4
  %8 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %9 = call i32 @assert(%struct.TYPE_8__* %8)
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @GIT_MERGE_MODE_FILE, align 4
  %14 = call i32 @git_buf_joinpath(%struct.TYPE_9__* %4, i32 %12, i32 %13)
  store i32 %14, i32* %5, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %23, label %16

16:                                               ; preds = %1
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @GIT_FILEBUF_CREATE_LEADING_DIRS, align 4
  %20 = load i32, i32* @GIT_MERGE_FILE_MODE, align 4
  %21 = call i32 @git_filebuf_open(i32* %3, i32 %18, i32 %19, i32 %20)
  store i32 %21, i32* %5, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %16, %1
  br label %30

24:                                               ; preds = %16
  %25 = call i32 @git_filebuf_write(i32* %3, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 5)
  store i32 %25, i32* %5, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %24
  br label %30

28:                                               ; preds = %24
  %29 = call i32 @git_filebuf_commit(i32* %3)
  store i32 %29, i32* %5, align 4
  br label %30

30:                                               ; preds = %28, %27, %23
  %31 = load i32, i32* %5, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %30
  %34 = call i32 @git_filebuf_cleanup(i32* %3)
  br label %35

35:                                               ; preds = %33, %30
  %36 = call i32 @git_buf_dispose(%struct.TYPE_9__* %4)
  %37 = load i32, i32* %5, align 4
  ret i32 %37
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @assert(%struct.TYPE_8__*) #2

declare dso_local i32 @git_buf_joinpath(%struct.TYPE_9__*, i32, i32) #2

declare dso_local i32 @git_filebuf_open(i32*, i32, i32, i32) #2

declare dso_local i32 @git_filebuf_write(i32*, i8*, i32) #2

declare dso_local i32 @git_filebuf_commit(i32*) #2

declare dso_local i32 @git_filebuf_cleanup(i32*) #2

declare dso_local i32 @git_buf_dispose(%struct.TYPE_9__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
