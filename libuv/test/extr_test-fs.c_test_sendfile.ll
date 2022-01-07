; ModuleID = '/home/carl/AnghaBench/libuv/test/extr_test-fs.c_test_sendfile.c'
source_filename = "/home/carl/AnghaBench/libuv/test/extr_test-fs.c_test_sendfile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64 }
%struct.stat = type { i64 }

@loop = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"test_file\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"test_file2\00", align 1
@O_WRONLY = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@S_IWUSR = common dso_local global i32 0, align 4
@S_IRUSR = common dso_local global i32 0, align 4
@open_req1 = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@O_RDWR = common dso_local global i32 0, align 4
@open_req2 = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@sendfile_req = common dso_local global i32 0, align 4
@UV_RUN_DEFAULT = common dso_local global i32 0, align 4
@sendfile_cb_count = common dso_local global i32 0, align 4
@close_req = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (void (i32)*, i32, i64)* @test_sendfile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_sendfile(void (i32)* %0, i32 %1, i64 %2) #0 {
  %4 = alloca void (i32)*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.stat, align 8
  %10 = alloca %struct.stat, align 8
  store void (i32)* %0, void (i32)** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %11 = call i32 (...) @uv_default_loop()
  store i32 %11, i32* @loop, align 4
  %12 = call i32 @unlink(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %13 = call i32 @unlink(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %14 = load i32, i32* @O_WRONLY, align 4
  %15 = load i32, i32* @O_CREAT, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @S_IWUSR, align 4
  %18 = load i32, i32* @S_IRUSR, align 4
  %19 = or i32 %17, %18
  %20 = call i32 @open(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %16, i32 %19)
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = icmp ne i32 %21, -1
  %23 = zext i1 %22 to i32
  %24 = call i32 @ASSERT(i32 %23)
  %25 = load void (i32)*, void (i32)** %4, align 8
  %26 = icmp ne void (i32)* %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %3
  %28 = load void (i32)*, void (i32)** %4, align 8
  %29 = load i32, i32* %7, align 4
  call void %28(i32 %29)
  br label %30

30:                                               ; preds = %27, %3
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @close(i32 %31)
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %8, align 4
  %34 = icmp eq i32 %33, 0
  %35 = zext i1 %34 to i32
  %36 = call i32 @ASSERT(i32 %35)
  %37 = load i32, i32* @O_RDWR, align 4
  %38 = call i32 @uv_fs_open(i32* null, %struct.TYPE_7__* @open_req1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %37, i32 0, i32* null)
  store i32 %38, i32* %8, align 4
  %39 = load i32, i32* %8, align 4
  %40 = icmp sge i32 %39, 0
  %41 = zext i1 %40 to i32
  %42 = call i32 @ASSERT(i32 %41)
  %43 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @open_req1, i32 0, i32 0), align 8
  %44 = icmp sge i64 %43, 0
  %45 = zext i1 %44 to i32
  %46 = call i32 @ASSERT(i32 %45)
  %47 = call i32 @uv_fs_req_cleanup(%struct.TYPE_7__* @open_req1)
  %48 = load i32, i32* @O_WRONLY, align 4
  %49 = load i32, i32* @O_CREAT, align 4
  %50 = or i32 %48, %49
  %51 = load i32, i32* @S_IWUSR, align 4
  %52 = load i32, i32* @S_IRUSR, align 4
  %53 = or i32 %51, %52
  %54 = call i32 @uv_fs_open(i32* null, %struct.TYPE_7__* @open_req2, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %50, i32 %53, i32* null)
  store i32 %54, i32* %8, align 4
  %55 = load i32, i32* %8, align 4
  %56 = icmp sge i32 %55, 0
  %57 = zext i1 %56 to i32
  %58 = call i32 @ASSERT(i32 %57)
  %59 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @open_req2, i32 0, i32 0), align 8
  %60 = icmp sge i64 %59, 0
  %61 = zext i1 %60 to i32
  %62 = call i32 @ASSERT(i32 %61)
  %63 = call i32 @uv_fs_req_cleanup(%struct.TYPE_7__* @open_req2)
  %64 = load i32, i32* @loop, align 4
  %65 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @open_req2, i32 0, i32 0), align 8
  %66 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @open_req1, i32 0, i32 0), align 8
  %67 = load i32, i32* %5, align 4
  %68 = call i32 @uv_fs_sendfile(i32 %64, i32* @sendfile_req, i64 %65, i64 %66, i32 0, i32 131072, i32 %67)
  store i32 %68, i32* %8, align 4
  %69 = load i32, i32* %8, align 4
  %70 = icmp eq i32 %69, 0
  %71 = zext i1 %70 to i32
  %72 = call i32 @ASSERT(i32 %71)
  %73 = load i32, i32* @loop, align 4
  %74 = load i32, i32* @UV_RUN_DEFAULT, align 4
  %75 = call i32 @uv_run(i32 %73, i32 %74)
  %76 = load i32, i32* @sendfile_cb_count, align 4
  %77 = icmp eq i32 %76, 1
  %78 = zext i1 %77 to i32
  %79 = call i32 @ASSERT(i32 %78)
  %80 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @open_req1, i32 0, i32 0), align 8
  %81 = call i32 @uv_fs_close(i32* null, %struct.TYPE_7__* @close_req, i64 %80, i32* null)
  store i32 %81, i32* %8, align 4
  %82 = load i32, i32* %8, align 4
  %83 = icmp eq i32 %82, 0
  %84 = zext i1 %83 to i32
  %85 = call i32 @ASSERT(i32 %84)
  %86 = call i32 @uv_fs_req_cleanup(%struct.TYPE_7__* @close_req)
  %87 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @open_req2, i32 0, i32 0), align 8
  %88 = call i32 @uv_fs_close(i32* null, %struct.TYPE_7__* @close_req, i64 %87, i32* null)
  store i32 %88, i32* %8, align 4
  %89 = load i32, i32* %8, align 4
  %90 = icmp eq i32 %89, 0
  %91 = zext i1 %90 to i32
  %92 = call i32 @ASSERT(i32 %91)
  %93 = call i32 @uv_fs_req_cleanup(%struct.TYPE_7__* @close_req)
  %94 = call i64 @stat(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), %struct.stat* %9)
  %95 = icmp eq i64 0, %94
  %96 = zext i1 %95 to i32
  %97 = call i32 @ASSERT(i32 %96)
  %98 = call i64 @stat(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), %struct.stat* %10)
  %99 = icmp eq i64 0, %98
  %100 = zext i1 %99 to i32
  %101 = call i32 @ASSERT(i32 %100)
  %102 = getelementptr inbounds %struct.stat, %struct.stat* %9, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = getelementptr inbounds %struct.stat, %struct.stat* %10, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = icmp eq i64 %103, %105
  %107 = zext i1 %106 to i32
  %108 = call i32 @ASSERT(i32 %107)
  %109 = getelementptr inbounds %struct.stat, %struct.stat* %10, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = load i64, i64* %6, align 8
  %112 = icmp eq i64 %110, %111
  %113 = zext i1 %112 to i32
  %114 = call i32 @ASSERT(i32 %113)
  %115 = call i32 @unlink(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %116 = call i32 @unlink(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %117 = call i32 (...) @MAKE_VALGRIND_HAPPY()
  ret i32 0
}

declare dso_local i32 @uv_default_loop(...) #1

declare dso_local i32 @unlink(i8*) #1

declare dso_local i32 @open(i8*, i32, i32) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @uv_fs_open(i32*, %struct.TYPE_7__*, i8*, i32, i32, i32*) #1

declare dso_local i32 @uv_fs_req_cleanup(%struct.TYPE_7__*) #1

declare dso_local i32 @uv_fs_sendfile(i32, i32*, i64, i64, i32, i32, i32) #1

declare dso_local i32 @uv_run(i32, i32) #1

declare dso_local i32 @uv_fs_close(i32*, %struct.TYPE_7__*, i64, i32*) #1

declare dso_local i64 @stat(i8*, %struct.stat*) #1

declare dso_local i32 @MAKE_VALGRIND_HAPPY(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
