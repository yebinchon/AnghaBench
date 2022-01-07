; ModuleID = '/home/carl/AnghaBench/libuv/test/extr_test-fs.c_fs_read_bufs.c'
source_filename = "/home/carl/AnghaBench/libuv/test/extr_test-fs.c_fs_read_bufs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64 }
%struct.TYPE_11__ = type { i64 }

@open_req1 = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@.str = private unnamed_addr constant [30 x i8] c"test/fixtures/lorem_ipsum.txt\00", align 1
@O_RDONLY = common dso_local global i32 0, align 4
@UV_EINVAL = common dso_local global i32 0, align 4
@read_req = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@close_req = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @fs_read_bufs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fs_read_bufs(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca [768 x i8], align 16
  %4 = alloca [4 x %struct.TYPE_11__], align 16
  %5 = alloca %struct.TYPE_11__, align 8
  %6 = alloca %struct.TYPE_11__, align 8
  %7 = alloca %struct.TYPE_11__, align 8
  %8 = alloca %struct.TYPE_11__, align 8
  store i32 %0, i32* %2, align 4
  %9 = load i32, i32* @O_RDONLY, align 4
  %10 = load i32, i32* %2, align 4
  %11 = or i32 %9, %10
  %12 = call i64 @uv_fs_open(i32* null, %struct.TYPE_12__* @open_req1, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %11, i32 0, i32* null)
  %13 = icmp sle i64 0, %12
  %14 = zext i1 %13 to i32
  %15 = call i32 @ASSERT(i32 %14)
  %16 = load i64, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @open_req1, i32 0, i32 0), align 8
  %17 = icmp sge i64 %16, 0
  %18 = zext i1 %17 to i32
  %19 = call i32 @ASSERT(i32 %18)
  %20 = call i32 @uv_fs_req_cleanup(%struct.TYPE_12__* @open_req1)
  %21 = load i32, i32* @UV_EINVAL, align 4
  %22 = load i64, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @open_req1, i32 0, i32 0), align 8
  %23 = call i32 @uv_fs_read(i32* null, %struct.TYPE_12__* @read_req, i64 %22, %struct.TYPE_11__* null, i32 0, i32 0, i32* null)
  %24 = icmp eq i32 %21, %23
  %25 = zext i1 %24 to i32
  %26 = call i32 @ASSERT(i32 %25)
  %27 = load i32, i32* @UV_EINVAL, align 4
  %28 = load i64, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @open_req1, i32 0, i32 0), align 8
  %29 = call i32 @uv_fs_read(i32* null, %struct.TYPE_12__* @read_req, i64 %28, %struct.TYPE_11__* null, i32 1, i32 0, i32* null)
  %30 = icmp eq i32 %27, %29
  %31 = zext i1 %30 to i32
  %32 = call i32 @ASSERT(i32 %31)
  %33 = load i32, i32* @UV_EINVAL, align 4
  %34 = load i64, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @open_req1, i32 0, i32 0), align 8
  %35 = getelementptr inbounds [4 x %struct.TYPE_11__], [4 x %struct.TYPE_11__]* %4, i64 0, i64 0
  %36 = call i32 @uv_fs_read(i32* null, %struct.TYPE_12__* @read_req, i64 %34, %struct.TYPE_11__* %35, i32 0, i32 0, i32* null)
  %37 = icmp eq i32 %33, %36
  %38 = zext i1 %37 to i32
  %39 = call i32 @ASSERT(i32 %38)
  %40 = getelementptr inbounds [4 x %struct.TYPE_11__], [4 x %struct.TYPE_11__]* %4, i64 0, i64 0
  %41 = getelementptr inbounds [768 x i8], [768 x i8]* %3, i64 0, i64 0
  %42 = getelementptr inbounds i8, i8* %41, i64 0
  %43 = call i64 @uv_buf_init(i8* %42, i32 256)
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 0
  store i64 %43, i64* %44, align 8
  %45 = bitcast %struct.TYPE_11__* %40 to i8*
  %46 = bitcast %struct.TYPE_11__* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %45, i8* align 8 %46, i64 8, i1 false)
  %47 = getelementptr inbounds [4 x %struct.TYPE_11__], [4 x %struct.TYPE_11__]* %4, i64 0, i64 1
  %48 = getelementptr inbounds [768 x i8], [768 x i8]* %3, i64 0, i64 0
  %49 = getelementptr inbounds i8, i8* %48, i64 256
  %50 = call i64 @uv_buf_init(i8* %49, i32 256)
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %6, i32 0, i32 0
  store i64 %50, i64* %51, align 8
  %52 = bitcast %struct.TYPE_11__* %47 to i8*
  %53 = bitcast %struct.TYPE_11__* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %52, i8* align 8 %53, i64 8, i1 false)
  %54 = getelementptr inbounds [4 x %struct.TYPE_11__], [4 x %struct.TYPE_11__]* %4, i64 0, i64 2
  %55 = getelementptr inbounds [768 x i8], [768 x i8]* %3, i64 0, i64 0
  %56 = getelementptr inbounds i8, i8* %55, i64 512
  %57 = call i64 @uv_buf_init(i8* %56, i32 128)
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 0
  store i64 %57, i64* %58, align 8
  %59 = bitcast %struct.TYPE_11__* %54 to i8*
  %60 = bitcast %struct.TYPE_11__* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %59, i8* align 8 %60, i64 8, i1 false)
  %61 = getelementptr inbounds [4 x %struct.TYPE_11__], [4 x %struct.TYPE_11__]* %4, i64 0, i64 3
  %62 = getelementptr inbounds [768 x i8], [768 x i8]* %3, i64 0, i64 0
  %63 = getelementptr inbounds i8, i8* %62, i64 640
  %64 = call i64 @uv_buf_init(i8* %63, i32 128)
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 0
  store i64 %64, i64* %65, align 8
  %66 = bitcast %struct.TYPE_11__* %61 to i8*
  %67 = bitcast %struct.TYPE_11__* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %66, i8* align 8 %67, i64 8, i1 false)
  %68 = load i64, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @open_req1, i32 0, i32 0), align 8
  %69 = getelementptr inbounds [4 x %struct.TYPE_11__], [4 x %struct.TYPE_11__]* %4, i64 0, i64 0
  %70 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %69, i64 0
  %71 = call i32 @uv_fs_read(i32* null, %struct.TYPE_12__* @read_req, i64 %68, %struct.TYPE_11__* %70, i32 2, i32 0, i32* null)
  %72 = icmp eq i32 446, %71
  %73 = zext i1 %72 to i32
  %74 = call i32 @ASSERT(i32 %73)
  %75 = load i64, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @read_req, i32 0, i32 0), align 8
  %76 = icmp eq i64 %75, 446
  %77 = zext i1 %76 to i32
  %78 = call i32 @ASSERT(i32 %77)
  %79 = call i32 @uv_fs_req_cleanup(%struct.TYPE_12__* @read_req)
  %80 = load i64, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @open_req1, i32 0, i32 0), align 8
  %81 = getelementptr inbounds [4 x %struct.TYPE_11__], [4 x %struct.TYPE_11__]* %4, i64 0, i64 0
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %81, i64 2
  %83 = call i32 @uv_fs_read(i32* null, %struct.TYPE_12__* @read_req, i64 %80, %struct.TYPE_11__* %82, i32 2, i32 256, i32* null)
  %84 = icmp eq i32 190, %83
  %85 = zext i1 %84 to i32
  %86 = call i32 @ASSERT(i32 %85)
  %87 = load i64, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @read_req, i32 0, i32 0), align 8
  %88 = icmp eq i64 %87, 190
  %89 = zext i1 %88 to i32
  %90 = call i32 @ASSERT(i32 %89)
  %91 = call i32 @uv_fs_req_cleanup(%struct.TYPE_12__* @read_req)
  %92 = getelementptr inbounds [4 x %struct.TYPE_11__], [4 x %struct.TYPE_11__]* %4, i64 0, i64 1
  %93 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = add nsw i64 %94, 0
  %96 = getelementptr inbounds [4 x %struct.TYPE_11__], [4 x %struct.TYPE_11__]* %4, i64 0, i64 2
  %97 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 16
  %99 = call i64 @memcmp(i64 %95, i64 %98, i32 128)
  %100 = icmp eq i64 0, %99
  %101 = zext i1 %100 to i32
  %102 = call i32 @ASSERT(i32 %101)
  %103 = getelementptr inbounds [4 x %struct.TYPE_11__], [4 x %struct.TYPE_11__]* %4, i64 0, i64 1
  %104 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = add nsw i64 %105, 128
  %107 = getelementptr inbounds [4 x %struct.TYPE_11__], [4 x %struct.TYPE_11__]* %4, i64 0, i64 3
  %108 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = call i64 @memcmp(i64 %106, i64 %109, i32 62)
  %111 = icmp eq i64 0, %110
  %112 = zext i1 %111 to i32
  %113 = call i32 @ASSERT(i32 %112)
  %114 = load i64, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @open_req1, i32 0, i32 0), align 8
  %115 = trunc i64 %114 to i32
  %116 = call i64 @uv_fs_close(i32* null, %struct.TYPE_12__* @close_req, i32 %115, i32* null)
  %117 = icmp eq i64 0, %116
  %118 = zext i1 %117 to i32
  %119 = call i32 @ASSERT(i32 %118)
  %120 = load i64, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @close_req, i32 0, i32 0), align 8
  %121 = icmp eq i64 %120, 0
  %122 = zext i1 %121 to i32
  %123 = call i32 @ASSERT(i32 %122)
  %124 = call i32 @uv_fs_req_cleanup(%struct.TYPE_12__* @close_req)
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i64 @uv_fs_open(i32*, %struct.TYPE_12__*, i8*, i32, i32, i32*) #1

declare dso_local i32 @uv_fs_req_cleanup(%struct.TYPE_12__*) #1

declare dso_local i32 @uv_fs_read(i32*, %struct.TYPE_12__*, i64, %struct.TYPE_11__*, i32, i32, i32*) #1

declare dso_local i64 @uv_buf_init(i8*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @memcmp(i64, i64, i32) #1

declare dso_local i64 @uv_fs_close(i32*, %struct.TYPE_12__*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
