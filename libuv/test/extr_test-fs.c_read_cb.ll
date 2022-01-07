; ModuleID = '/home/carl/AnghaBench/libuv/test/extr_test-fs.c_read_cb.c'
source_filename = "/home/carl/AnghaBench/libuv/test/extr_test-fs.c_read_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i64 }
%struct.TYPE_7__ = type { i32 }

@read_req = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@UV_FS_READ = common dso_local global i64 0, align 8
@read_cb_count = common dso_local global i32 0, align 4
@buf = common dso_local global i32 0, align 4
@test_buf = common dso_local global i8* null, align 8
@loop = common dso_local global i32 0, align 4
@ftruncate_req = common dso_local global i32 0, align 4
@open_req1 = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@ftruncate_cb = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"test-bu\00", align 1
@close_req = common dso_local global i32 0, align 4
@close_cb = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*)* @read_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @read_cb(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %2, align 8
  %4 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %5 = icmp eq %struct.TYPE_6__* %4, @read_req
  %6 = zext i1 %5 to i32
  %7 = call i32 @ASSERT(i32 %6)
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @UV_FS_READ, align 8
  %12 = icmp eq i64 %10, %11
  %13 = zext i1 %12 to i32
  %14 = call i32 @ASSERT(i32 %13)
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp sge i64 %17, 0
  %19 = zext i1 %18 to i32
  %20 = call i32 @ASSERT(i32 %19)
  %21 = load i32, i32* @read_cb_count, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* @read_cb_count, align 4
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %24 = call i32 @uv_fs_req_cleanup(%struct.TYPE_6__* %23)
  %25 = load i32, i32* @read_cb_count, align 4
  %26 = icmp eq i32 %25, 1
  br i1 %26, label %27, label %38

27:                                               ; preds = %1
  %28 = load i32, i32* @buf, align 4
  %29 = load i8*, i8** @test_buf, align 8
  %30 = call i64 @strcmp(i32 %28, i8* %29)
  %31 = icmp eq i64 %30, 0
  %32 = zext i1 %31 to i32
  %33 = call i32 @ASSERT(i32 %32)
  %34 = load i32, i32* @loop, align 4
  %35 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @open_req1, i32 0, i32 0), align 4
  %36 = load i32, i32* @ftruncate_cb, align 4
  %37 = call i32 @uv_fs_ftruncate(i32 %34, i32* @ftruncate_req, i32 %35, i32 7, i32 %36)
  store i32 %37, i32* %3, align 4
  br label %48

38:                                               ; preds = %1
  %39 = load i32, i32* @buf, align 4
  %40 = call i64 @strcmp(i32 %39, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %41 = icmp eq i64 %40, 0
  %42 = zext i1 %41 to i32
  %43 = call i32 @ASSERT(i32 %42)
  %44 = load i32, i32* @loop, align 4
  %45 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @open_req1, i32 0, i32 0), align 4
  %46 = load i32, i32* @close_cb, align 4
  %47 = call i32 @uv_fs_close(i32 %44, i32* @close_req, i32 %45, i32 %46)
  store i32 %47, i32* %3, align 4
  br label %48

48:                                               ; preds = %38, %27
  %49 = load i32, i32* %3, align 4
  %50 = icmp eq i32 %49, 0
  %51 = zext i1 %50 to i32
  %52 = call i32 @ASSERT(i32 %51)
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @uv_fs_req_cleanup(%struct.TYPE_6__*) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @uv_fs_ftruncate(i32, i32*, i32, i32, i32) #1

declare dso_local i32 @uv_fs_close(i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
