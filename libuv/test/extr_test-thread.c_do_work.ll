; ModuleID = '/home/carl/AnghaBench/libuv/test/extr_test-thread.c_do_work.c'
source_filename = "/home/carl/AnghaBench/libuv/test/extr_test-thread.c_do_work.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.getaddrinfo_req = type { i32, i32* }
%struct.fs_req = type { i32, i32* }
%struct.test_thread = type { i32 }

@UV_RUN_DEFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @do_work to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_work(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca [4 x %struct.getaddrinfo_req], align 16
  %4 = alloca [4 x %struct.fs_req], align 16
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.test_thread*, align 8
  %8 = alloca %struct.getaddrinfo_req*, align 8
  %9 = alloca %struct.fs_req*, align 8
  store i8* %0, i8** %2, align 8
  %10 = load i8*, i8** %2, align 8
  %11 = bitcast i8* %10 to %struct.test_thread*
  store %struct.test_thread* %11, %struct.test_thread** %7, align 8
  %12 = call i64 @uv_loop_init(i32* %5)
  %13 = icmp eq i64 0, %12
  %14 = zext i1 %13 to i32
  %15 = call i32 @ASSERT(i32 %14)
  store i64 0, i64* %6, align 8
  br label %16

16:                                               ; preds = %31, %1
  %17 = load i64, i64* %6, align 8
  %18 = getelementptr inbounds [4 x %struct.getaddrinfo_req], [4 x %struct.getaddrinfo_req]* %3, i64 0, i64 0
  %19 = call i64 @ARRAY_SIZE(%struct.getaddrinfo_req* %18)
  %20 = icmp ult i64 %17, %19
  br i1 %20, label %21, label %34

21:                                               ; preds = %16
  %22 = getelementptr inbounds [4 x %struct.getaddrinfo_req], [4 x %struct.getaddrinfo_req]* %3, i64 0, i64 0
  %23 = load i64, i64* %6, align 8
  %24 = getelementptr inbounds %struct.getaddrinfo_req, %struct.getaddrinfo_req* %22, i64 %23
  store %struct.getaddrinfo_req* %24, %struct.getaddrinfo_req** %8, align 8
  %25 = load %struct.getaddrinfo_req*, %struct.getaddrinfo_req** %8, align 8
  %26 = getelementptr inbounds %struct.getaddrinfo_req, %struct.getaddrinfo_req* %25, i32 0, i32 0
  store i32 4, i32* %26, align 8
  %27 = load %struct.getaddrinfo_req*, %struct.getaddrinfo_req** %8, align 8
  %28 = getelementptr inbounds %struct.getaddrinfo_req, %struct.getaddrinfo_req* %27, i32 0, i32 1
  store i32* %5, i32** %28, align 8
  %29 = load %struct.getaddrinfo_req*, %struct.getaddrinfo_req** %8, align 8
  %30 = call i32 @getaddrinfo_do(%struct.getaddrinfo_req* %29)
  br label %31

31:                                               ; preds = %21
  %32 = load i64, i64* %6, align 8
  %33 = add i64 %32, 1
  store i64 %33, i64* %6, align 8
  br label %16

34:                                               ; preds = %16
  store i64 0, i64* %6, align 8
  br label %35

35:                                               ; preds = %52, %34
  %36 = load i64, i64* %6, align 8
  %37 = getelementptr inbounds [4 x %struct.fs_req], [4 x %struct.fs_req]* %4, i64 0, i64 0
  %38 = bitcast %struct.fs_req* %37 to %struct.getaddrinfo_req*
  %39 = call i64 @ARRAY_SIZE(%struct.getaddrinfo_req* %38)
  %40 = icmp ult i64 %36, %39
  br i1 %40, label %41, label %55

41:                                               ; preds = %35
  %42 = getelementptr inbounds [4 x %struct.fs_req], [4 x %struct.fs_req]* %4, i64 0, i64 0
  %43 = load i64, i64* %6, align 8
  %44 = getelementptr inbounds %struct.fs_req, %struct.fs_req* %42, i64 %43
  store %struct.fs_req* %44, %struct.fs_req** %9, align 8
  %45 = load %struct.fs_req*, %struct.fs_req** %9, align 8
  %46 = getelementptr inbounds %struct.fs_req, %struct.fs_req* %45, i32 0, i32 0
  store i32 4, i32* %46, align 8
  %47 = load %struct.fs_req*, %struct.fs_req** %9, align 8
  %48 = getelementptr inbounds %struct.fs_req, %struct.fs_req* %47, i32 0, i32 1
  store i32* %5, i32** %48, align 8
  %49 = load %struct.fs_req*, %struct.fs_req** %9, align 8
  %50 = bitcast %struct.fs_req* %49 to %struct.getaddrinfo_req*
  %51 = call i32 @fs_do(%struct.getaddrinfo_req* %50)
  br label %52

52:                                               ; preds = %41
  %53 = load i64, i64* %6, align 8
  %54 = add i64 %53, 1
  store i64 %54, i64* %6, align 8
  br label %35

55:                                               ; preds = %35
  %56 = load i32, i32* @UV_RUN_DEFAULT, align 4
  %57 = call i64 @uv_run(i32* %5, i32 %56)
  %58 = icmp eq i64 0, %57
  %59 = zext i1 %58 to i32
  %60 = call i32 @ASSERT(i32 %59)
  %61 = call i64 @uv_loop_close(i32* %5)
  %62 = icmp eq i64 0, %61
  %63 = zext i1 %62 to i32
  %64 = call i32 @ASSERT(i32 %63)
  %65 = load %struct.test_thread*, %struct.test_thread** %7, align 8
  %66 = getelementptr inbounds %struct.test_thread, %struct.test_thread* %65, i32 0, i32 0
  store i32 1, i32* %66, align 4
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i64 @uv_loop_init(i32*) #1

declare dso_local i64 @ARRAY_SIZE(%struct.getaddrinfo_req*) #1

declare dso_local i32 @getaddrinfo_do(%struct.getaddrinfo_req*) #1

declare dso_local i32 @fs_do(%struct.getaddrinfo_req*) #1

declare dso_local i64 @uv_run(i32*, i32) #1

declare dso_local i64 @uv_loop_close(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
