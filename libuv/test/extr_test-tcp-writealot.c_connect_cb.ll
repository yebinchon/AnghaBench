; ModuleID = '/home/carl/AnghaBench/libuv/test/extr_test-tcp-writealot.c_connect_cb.c'
source_filename = "/home/carl/AnghaBench/libuv/test/extr_test-tcp-writealot.c_connect_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32* }

@CHUNKS_PER_WRITE = common dso_local global i32 0, align 4
@connect_req = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@connect_cb_called = common dso_local global i32 0, align 4
@WRITES = common dso_local global i32 0, align 4
@write_reqs = common dso_local global i32* null, align 8
@send_buffer = common dso_local global i64 0, align 8
@bytes_sent = common dso_local global i64 0, align 8
@CHUNK_SIZE = common dso_local global i64 0, align 8
@write_cb = common dso_local global i32 0, align 4
@shutdown_req = common dso_local global i32 0, align 4
@shutdown_cb = common dso_local global i32 0, align 4
@alloc_cb = common dso_local global i32 0, align 4
@read_cb = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*, i32)* @connect_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @connect_cb(%struct.TYPE_4__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  store i32 %1, i32* %4, align 4
  %12 = load i32, i32* @CHUNKS_PER_WRITE, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %5, align 8
  %15 = alloca i32, i64 %13, align 16
  store i64 %13, i64* %6, align 8
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %17 = icmp eq %struct.TYPE_4__* %16, @connect_req
  %18 = zext i1 %17 to i32
  %19 = call i32 @ASSERT(i32 %18)
  %20 = load i32, i32* %4, align 4
  %21 = icmp eq i32 %20, 0
  %22 = zext i1 %21 to i32
  %23 = call i32 @ASSERT(i32 %22)
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  store i32* %26, i32** %7, align 8
  %27 = load i32, i32* @connect_cb_called, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* @connect_cb_called, align 4
  store i32 0, i32* %8, align 4
  br label %29

29:                                               ; preds = %67, %2
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* @WRITES, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %70

33:                                               ; preds = %29
  %34 = load i32*, i32** @write_reqs, align 8
  %35 = load i32, i32* %8, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  store i32* %37, i32** %11, align 8
  store i32 0, i32* %9, align 4
  br label %38

38:                                               ; preds = %54, %33
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* @CHUNKS_PER_WRITE, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %57

42:                                               ; preds = %38
  %43 = load i64, i64* @send_buffer, align 8
  %44 = load i64, i64* @bytes_sent, align 8
  %45 = add nsw i64 %43, %44
  %46 = load i64, i64* @CHUNK_SIZE, align 8
  %47 = call i32 @uv_buf_init(i64 %45, i64 %46)
  %48 = load i32, i32* %9, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %15, i64 %49
  store i32 %47, i32* %50, align 4
  %51 = load i64, i64* @CHUNK_SIZE, align 8
  %52 = load i64, i64* @bytes_sent, align 8
  %53 = add nsw i64 %52, %51
  store i64 %53, i64* @bytes_sent, align 8
  br label %54

54:                                               ; preds = %42
  %55 = load i32, i32* %9, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %9, align 4
  br label %38

57:                                               ; preds = %38
  %58 = load i32*, i32** %11, align 8
  %59 = load i32*, i32** %7, align 8
  %60 = load i32, i32* @CHUNKS_PER_WRITE, align 4
  %61 = load i32, i32* @write_cb, align 4
  %62 = call i32 @uv_write(i32* %58, i32* %59, i32* %15, i32 %60, i32 %61)
  store i32 %62, i32* %10, align 4
  %63 = load i32, i32* %10, align 4
  %64 = icmp eq i32 %63, 0
  %65 = zext i1 %64 to i32
  %66 = call i32 @ASSERT(i32 %65)
  br label %67

67:                                               ; preds = %57
  %68 = load i32, i32* %8, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %8, align 4
  br label %29

70:                                               ; preds = %29
  %71 = load i32*, i32** %7, align 8
  %72 = load i32, i32* @shutdown_cb, align 4
  %73 = call i32 @uv_shutdown(i32* @shutdown_req, i32* %71, i32 %72)
  store i32 %73, i32* %10, align 4
  %74 = load i32, i32* %10, align 4
  %75 = icmp eq i32 %74, 0
  %76 = zext i1 %75 to i32
  %77 = call i32 @ASSERT(i32 %76)
  %78 = load i32*, i32** %7, align 8
  %79 = load i32, i32* @alloc_cb, align 4
  %80 = load i32, i32* @read_cb, align 4
  %81 = call i32 @uv_read_start(i32* %78, i32 %79, i32 %80)
  store i32 %81, i32* %10, align 4
  %82 = load i32, i32* %10, align 4
  %83 = icmp eq i32 %82, 0
  %84 = zext i1 %83 to i32
  %85 = call i32 @ASSERT(i32 %84)
  %86 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %86)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @ASSERT(i32) #2

declare dso_local i32 @uv_buf_init(i64, i64) #2

declare dso_local i32 @uv_write(i32*, i32*, i32*, i32, i32) #2

declare dso_local i32 @uv_shutdown(i32*, i32*, i32) #2

declare dso_local i32 @uv_read_start(i32*, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
