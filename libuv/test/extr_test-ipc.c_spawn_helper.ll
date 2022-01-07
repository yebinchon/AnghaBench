; ModuleID = '/home/carl/AnghaBench/libuv/test/extr_test-ipc.c_spawn_helper.c'
source_filename = "/home/carl/AnghaBench/libuv/test/extr_test-ipc.c_spawn_helper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i8*, i8**, i32, %struct.TYPE_11__*, i32 }
%struct.TYPE_11__ = type { i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i32* }

@exit_cb = common dso_local global i32 0, align 4
@UV_CREATE_PIPE = common dso_local global i32 0, align 4
@UV_READABLE_PIPE = common dso_local global i32 0, align 4
@UV_WRITABLE_PIPE = common dso_local global i32 0, align 4
@UV_INHERIT_FD = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @spawn_helper(%struct.TYPE_13__* %0, i32* %1, i8* %2) #0 {
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_12__, align 8
  %8 = alloca i64, align 8
  %9 = alloca [1024 x i8], align 16
  %10 = alloca [3 x i8*], align 16
  %11 = alloca i32, align 4
  %12 = alloca [3 x %struct.TYPE_11__], align 16
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i8* %2, i8** %6, align 8
  %13 = call i32 (...) @uv_default_loop()
  %14 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %15 = call i32 @uv_pipe_init(i32 %13, %struct.TYPE_13__* %14, i32 1)
  store i32 %15, i32* %11, align 4
  %16 = load i32, i32* %11, align 4
  %17 = icmp eq i32 %16, 0
  %18 = zext i1 %17 to i32
  %19 = call i32 @ASSERT(i32 %18)
  %20 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @ASSERT(i32 %22)
  store i64 1024, i64* %8, align 8
  %24 = getelementptr inbounds [1024 x i8], [1024 x i8]* %9, i64 0, i64 0
  %25 = call i32 @uv_exepath(i8* %24, i64* %8)
  store i32 %25, i32* %11, align 4
  %26 = load i32, i32* %11, align 4
  %27 = icmp eq i32 %26, 0
  %28 = zext i1 %27 to i32
  %29 = call i32 @ASSERT(i32 %28)
  %30 = load i64, i64* %8, align 8
  %31 = getelementptr inbounds [1024 x i8], [1024 x i8]* %9, i64 0, i64 %30
  store i8 0, i8* %31, align 1
  %32 = getelementptr inbounds [1024 x i8], [1024 x i8]* %9, i64 0, i64 0
  %33 = getelementptr inbounds [3 x i8*], [3 x i8*]* %10, i64 0, i64 0
  store i8* %32, i8** %33, align 16
  %34 = load i8*, i8** %6, align 8
  %35 = getelementptr inbounds [3 x i8*], [3 x i8*]* %10, i64 0, i64 1
  store i8* %34, i8** %35, align 8
  %36 = getelementptr inbounds [3 x i8*], [3 x i8*]* %10, i64 0, i64 2
  store i8* null, i8** %36, align 16
  %37 = call i32 @memset(%struct.TYPE_12__* %7, i32 0, i32 40)
  %38 = getelementptr inbounds [1024 x i8], [1024 x i8]* %9, i64 0, i64 0
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %7, i32 0, i32 0
  store i8* %38, i8** %39, align 8
  %40 = getelementptr inbounds [3 x i8*], [3 x i8*]* %10, i64 0, i64 0
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %7, i32 0, i32 1
  store i8** %40, i8*** %41, align 8
  %42 = load i32, i32* @exit_cb, align 4
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %7, i32 0, i32 4
  store i32 %42, i32* %43, align 8
  %44 = getelementptr inbounds [3 x %struct.TYPE_11__], [3 x %struct.TYPE_11__]* %12, i64 0, i64 0
  %45 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %7, i32 0, i32 3
  store %struct.TYPE_11__* %44, %struct.TYPE_11__** %45, align 8
  %46 = getelementptr inbounds [3 x %struct.TYPE_11__], [3 x %struct.TYPE_11__]* %12, i64 0, i64 0
  %47 = call i32 @ARRAY_SIZE(%struct.TYPE_11__* %46)
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %7, i32 0, i32 2
  store i32 %47, i32* %48, align 8
  %49 = load i32, i32* @UV_CREATE_PIPE, align 4
  %50 = load i32, i32* @UV_READABLE_PIPE, align 4
  %51 = or i32 %49, %50
  %52 = load i32, i32* @UV_WRITABLE_PIPE, align 4
  %53 = or i32 %51, %52
  %54 = getelementptr inbounds [3 x %struct.TYPE_11__], [3 x %struct.TYPE_11__]* %12, i64 0, i64 0
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 16
  %56 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %57 = bitcast %struct.TYPE_13__* %56 to i32*
  %58 = getelementptr inbounds [3 x %struct.TYPE_11__], [3 x %struct.TYPE_11__]* %12, i64 0, i64 0
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 1
  store i32* %57, i32** %60, align 8
  %61 = load i8*, i8** @UV_INHERIT_FD, align 8
  %62 = ptrtoint i8* %61 to i32
  %63 = getelementptr inbounds [3 x %struct.TYPE_11__], [3 x %struct.TYPE_11__]* %12, i64 0, i64 1
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 0
  store i32 %62, i32* %64, align 8
  %65 = getelementptr inbounds [3 x %struct.TYPE_11__], [3 x %struct.TYPE_11__]* %12, i64 0, i64 1
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 0
  store i32 1, i32* %67, align 8
  %68 = load i8*, i8** @UV_INHERIT_FD, align 8
  %69 = ptrtoint i8* %68 to i32
  %70 = getelementptr inbounds [3 x %struct.TYPE_11__], [3 x %struct.TYPE_11__]* %12, i64 0, i64 2
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 16
  %72 = getelementptr inbounds [3 x %struct.TYPE_11__], [3 x %struct.TYPE_11__]* %12, i64 0, i64 2
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 0
  store i32 2, i32* %74, align 8
  %75 = call i32 (...) @uv_default_loop()
  %76 = load i32*, i32** %5, align 8
  %77 = call i32 @uv_spawn(i32 %75, i32* %76, %struct.TYPE_12__* %7)
  store i32 %77, i32* %11, align 4
  %78 = load i32, i32* %11, align 4
  %79 = icmp eq i32 %78, 0
  %80 = zext i1 %79 to i32
  %81 = call i32 @ASSERT(i32 %80)
  ret void
}

declare dso_local i32 @uv_pipe_init(i32, %struct.TYPE_13__*, i32) #1

declare dso_local i32 @uv_default_loop(...) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @uv_exepath(i8*, i64*) #1

declare dso_local i32 @memset(%struct.TYPE_12__*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_11__*) #1

declare dso_local i32 @uv_spawn(i32, i32*, %struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
