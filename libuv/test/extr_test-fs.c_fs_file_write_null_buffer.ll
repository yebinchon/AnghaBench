; ModuleID = '/home/carl/AnghaBench/libuv/test/extr_test-fs.c_fs_file_write_null_buffer.c'
source_filename = "/home/carl/AnghaBench/libuv/test/extr_test-fs.c_fs_file_write_null_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64 }

@.str = private unnamed_addr constant [10 x i8] c"test_file\00", align 1
@loop = common dso_local global i32 0, align 4
@open_req1 = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@O_WRONLY = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@S_IWUSR = common dso_local global i32 0, align 4
@S_IRUSR = common dso_local global i32 0, align 4
@iov = common dso_local global i32 0, align 4
@write_req = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@close_req = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @fs_file_write_null_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fs_file_write_null_buffer(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = call i32 @unlink(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %5 = call i32 (...) @uv_default_loop()
  store i32 %5, i32* @loop, align 4
  %6 = load i32, i32* @O_WRONLY, align 4
  %7 = load i32, i32* @O_CREAT, align 4
  %8 = or i32 %6, %7
  %9 = load i32, i32* %2, align 4
  %10 = or i32 %8, %9
  %11 = load i32, i32* @S_IWUSR, align 4
  %12 = load i32, i32* @S_IRUSR, align 4
  %13 = or i32 %11, %12
  %14 = call i32 @uv_fs_open(i32* null, %struct.TYPE_8__* @open_req1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %10, i32 %13, i32* null)
  store i32 %14, i32* %3, align 4
  %15 = load i32, i32* %3, align 4
  %16 = icmp sge i32 %15, 0
  %17 = zext i1 %16 to i32
  %18 = call i32 @ASSERT(i32 %17)
  %19 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @open_req1, i32 0, i32 0), align 8
  %20 = icmp sge i64 %19, 0
  %21 = zext i1 %20 to i32
  %22 = call i32 @ASSERT(i32 %21)
  %23 = call i32 @uv_fs_req_cleanup(%struct.TYPE_8__* @open_req1)
  %24 = call i32 @uv_buf_init(i32* null, i32 0)
  store i32 %24, i32* @iov, align 4
  %25 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @open_req1, i32 0, i32 0), align 8
  %26 = call i32 @uv_fs_write(i32* null, %struct.TYPE_8__* @write_req, i64 %25, i32* @iov, i32 1, i32 -1, i32* null)
  store i32 %26, i32* %3, align 4
  %27 = load i32, i32* %3, align 4
  %28 = icmp eq i32 %27, 0
  %29 = zext i1 %28 to i32
  %30 = call i32 @ASSERT(i32 %29)
  %31 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @write_req, i32 0, i32 0), align 8
  %32 = icmp eq i64 %31, 0
  %33 = zext i1 %32 to i32
  %34 = call i32 @ASSERT(i32 %33)
  %35 = call i32 @uv_fs_req_cleanup(%struct.TYPE_8__* @write_req)
  %36 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @open_req1, i32 0, i32 0), align 8
  %37 = call i32 @uv_fs_close(i32* null, %struct.TYPE_8__* @close_req, i64 %36, i32* null)
  store i32 %37, i32* %3, align 4
  %38 = load i32, i32* %3, align 4
  %39 = icmp eq i32 %38, 0
  %40 = zext i1 %39 to i32
  %41 = call i32 @ASSERT(i32 %40)
  %42 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @close_req, i32 0, i32 0), align 8
  %43 = icmp eq i64 %42, 0
  %44 = zext i1 %43 to i32
  %45 = call i32 @ASSERT(i32 %44)
  %46 = call i32 @uv_fs_req_cleanup(%struct.TYPE_8__* @close_req)
  %47 = call i32 @unlink(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  ret void
}

declare dso_local i32 @unlink(i8*) #1

declare dso_local i32 @uv_default_loop(...) #1

declare dso_local i32 @uv_fs_open(i32*, %struct.TYPE_8__*, i8*, i32, i32, i32*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @uv_fs_req_cleanup(%struct.TYPE_8__*) #1

declare dso_local i32 @uv_buf_init(i32*, i32) #1

declare dso_local i32 @uv_fs_write(i32*, %struct.TYPE_8__*, i64, i32*, i32, i32, i32*) #1

declare dso_local i32 @uv_fs_close(i32*, %struct.TYPE_8__*, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
