; ModuleID = '/home/carl/AnghaBench/libuv/test/extr_test-fs-readdir.c_non_empty_readdir_cb.c'
source_filename = "/home/carl/AnghaBench/libuv/test/extr_test-fs-readdir.c_non_empty_readdir_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64, i64, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i64, i32 }

@readdir_req = common dso_local global %struct.TYPE_13__ zeroinitializer, align 8
@UV_FS_READDIR = common dso_local global i64 0, align 8
@non_empty_readdir_cb_count = common dso_local global i32 0, align 4
@closedir_req = common dso_local global i32 0, align 4
@non_empty_closedir_cb = common dso_local global i32 0, align 4
@dirents = common dso_local global %struct.TYPE_12__* null, align 8
@.str = private unnamed_addr constant [6 x i8] c"file1\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"file2\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"test_subdir\00", align 1
@UV_DIRENT_UNKNOWN = common dso_local global i64 0, align 8
@UV_DIRENT_DIR = common dso_local global i64 0, align 8
@UV_DIRENT_FILE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_13__*)* @non_empty_readdir_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @non_empty_readdir_cb(%struct.TYPE_13__* %0) #0 {
  %2 = alloca %struct.TYPE_13__*, align 8
  %3 = alloca %struct.TYPE_14__*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %2, align 8
  %4 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %5 = icmp eq %struct.TYPE_13__* %4, @readdir_req
  %6 = zext i1 %5 to i32
  %7 = call i32 @ASSERT(i32 %6)
  %8 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @UV_FS_READDIR, align 8
  %12 = icmp eq i64 %10, %11
  %13 = zext i1 %12 to i32
  %14 = call i32 @ASSERT(i32 %13)
  %15 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %15, i32 0, i32 2
  %17 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  store %struct.TYPE_14__* %17, %struct.TYPE_14__** %3, align 8
  %18 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %33

22:                                               ; preds = %1
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %24 = call i32 @uv_fs_req_cleanup(%struct.TYPE_13__* %23)
  %25 = load i32, i32* @non_empty_readdir_cb_count, align 4
  %26 = icmp eq i32 %25, 3
  %27 = zext i1 %26 to i32
  %28 = call i32 @ASSERT(i32 %27)
  %29 = call i32 (...) @uv_default_loop()
  %30 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %31 = load i32, i32* @non_empty_closedir_cb, align 4
  %32 = call i32 @uv_fs_closedir(i32 %29, i32* @closedir_req, %struct.TYPE_14__* %30, i32 %31)
  br label %93

33:                                               ; preds = %1
  %34 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %35 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = icmp eq i64 %36, 1
  %38 = zext i1 %37 to i32
  %39 = call i32 @ASSERT(i32 %38)
  %40 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %40, i32 0, i32 1
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %41, align 8
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** @dirents, align 8
  %44 = icmp eq %struct.TYPE_12__* %42, %43
  %45 = zext i1 %44 to i32
  %46 = call i32 @ASSERT(i32 %45)
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** @dirents, align 8
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i64 0
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = call i64 @strcmp(i32 %50, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %67, label %53

53:                                               ; preds = %33
  %54 = load %struct.TYPE_12__*, %struct.TYPE_12__** @dirents, align 8
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %54, i64 0
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = call i64 @strcmp(i32 %57, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %67, label %60

60:                                               ; preds = %53
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** @dirents, align 8
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %61, i64 0
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = call i64 @strcmp(i32 %64, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %66 = icmp eq i64 %65, 0
  br label %67

67:                                               ; preds = %60, %53, %33
  %68 = phi i1 [ true, %53 ], [ true, %33 ], [ %66, %60 ]
  %69 = zext i1 %68 to i32
  %70 = call i32 @ASSERT(i32 %69)
  %71 = load %struct.TYPE_12__*, %struct.TYPE_12__** @dirents, align 8
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %71, i64 0
  %73 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @UV_DIRENT_UNKNOWN, align 8
  %76 = icmp eq i64 %74, %75
  %77 = zext i1 %76 to i32
  %78 = call i32 @ASSERT(i32 %77)
  %79 = load i32, i32* @non_empty_readdir_cb_count, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* @non_empty_readdir_cb_count, align 4
  %81 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %82 = call i32 @uv_fs_req_cleanup(%struct.TYPE_13__* %81)
  %83 = load %struct.TYPE_12__*, %struct.TYPE_12__** @dirents, align 8
  %84 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %85 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %84, i32 0, i32 1
  store %struct.TYPE_12__* %83, %struct.TYPE_12__** %85, align 8
  %86 = load %struct.TYPE_12__*, %struct.TYPE_12__** @dirents, align 8
  %87 = call i32 @ARRAY_SIZE(%struct.TYPE_12__* %86)
  %88 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %89 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %88, i32 0, i32 0
  store i32 %87, i32* %89, align 8
  %90 = call i32 (...) @uv_default_loop()
  %91 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %92 = call i32 @uv_fs_readdir(i32 %90, %struct.TYPE_13__* @readdir_req, %struct.TYPE_14__* %91, void (%struct.TYPE_13__*)* @non_empty_readdir_cb)
  br label %93

93:                                               ; preds = %67, %22
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @uv_fs_req_cleanup(%struct.TYPE_13__*) #1

declare dso_local i32 @uv_fs_closedir(i32, i32*, %struct.TYPE_14__*, i32) #1

declare dso_local i32 @uv_default_loop(...) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_12__*) #1

declare dso_local i32 @uv_fs_readdir(i32, %struct.TYPE_13__*, %struct.TYPE_14__*, void (%struct.TYPE_13__*)*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
