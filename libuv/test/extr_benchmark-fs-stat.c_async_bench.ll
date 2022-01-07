; ModuleID = '/home/carl/AnghaBench/libuv/test/extr_benchmark-fs-stat.c_async_bench.c'
source_filename = "/home/carl/AnghaBench/libuv/test/extr_benchmark-fs-stat.c_async_bench.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.async_req = type { i8*, i32*, i32 }

@MAX_CONCURRENT_REQS = common dso_local global i32 0, align 4
@NUM_ASYNC_REQS = common dso_local global double 0.000000e+00, align 8
@stat_cb = common dso_local global i32 0, align 4
@UV_RUN_DEFAULT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"%s stats (%d concurrent): %.2fs (%s/s)\0A\00", align 1
@stdout = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @async_bench to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @async_bench(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.async_req*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %10 = load i32, i32* @MAX_CONCURRENT_REQS, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %3, align 8
  %13 = alloca %struct.async_req, i64 %11, align 16
  store i64 %11, i64* %4, align 8
  store i32 1, i32* %9, align 4
  br label %14

14:                                               ; preds = %72, %1
  %15 = load i32, i32* %9, align 4
  %16 = load i32, i32* @MAX_CONCURRENT_REQS, align 4
  %17 = icmp sle i32 %15, %16
  br i1 %17, label %18, label %75

18:                                               ; preds = %14
  %19 = load double, double* @NUM_ASYNC_REQS, align 8
  %20 = fptosi double %19 to i32
  store i32 %20, i32* %8, align 4
  store %struct.async_req* %13, %struct.async_req** %5, align 8
  br label %21

21:                                               ; preds = %41, %18
  %22 = load %struct.async_req*, %struct.async_req** %5, align 8
  %23 = load i32, i32* %9, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.async_req, %struct.async_req* %13, i64 %24
  %26 = icmp ult %struct.async_req* %22, %25
  br i1 %26, label %27, label %44

27:                                               ; preds = %21
  %28 = load i8*, i8** %2, align 8
  %29 = load %struct.async_req*, %struct.async_req** %5, align 8
  %30 = getelementptr inbounds %struct.async_req, %struct.async_req* %29, i32 0, i32 0
  store i8* %28, i8** %30, align 8
  %31 = load %struct.async_req*, %struct.async_req** %5, align 8
  %32 = getelementptr inbounds %struct.async_req, %struct.async_req* %31, i32 0, i32 1
  store i32* %8, i32** %32, align 8
  %33 = call i32 (...) @uv_default_loop()
  %34 = load %struct.async_req*, %struct.async_req** %5, align 8
  %35 = getelementptr inbounds %struct.async_req, %struct.async_req* %34, i32 0, i32 2
  %36 = load %struct.async_req*, %struct.async_req** %5, align 8
  %37 = getelementptr inbounds %struct.async_req, %struct.async_req* %36, i32 0, i32 0
  %38 = load i8*, i8** %37, align 8
  %39 = load i32, i32* @stat_cb, align 4
  %40 = call i32 @uv_fs_stat(i32 %33, i32* %35, i8* %38, i32 %39)
  br label %41

41:                                               ; preds = %27
  %42 = load %struct.async_req*, %struct.async_req** %5, align 8
  %43 = getelementptr inbounds %struct.async_req, %struct.async_req* %42, i32 1
  store %struct.async_req* %43, %struct.async_req** %5, align 8
  br label %21

44:                                               ; preds = %21
  %45 = call i32 (...) @uv_hrtime()
  store i32 %45, i32* %6, align 4
  %46 = call i32 (...) @uv_default_loop()
  %47 = load i32, i32* @UV_RUN_DEFAULT, align 4
  %48 = call i32 @uv_run(i32 %46, i32 %47)
  %49 = call i32 (...) @uv_hrtime()
  store i32 %49, i32* %7, align 4
  %50 = load double, double* @NUM_ASYNC_REQS, align 8
  %51 = fmul double 1.000000e+00, %50
  %52 = call i8* @fmt(double %51)
  %53 = load i32, i32* %9, align 4
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* %6, align 4
  %56 = sub nsw i32 %54, %55
  %57 = sitofp i32 %56 to double
  %58 = fdiv double %57, 1.000000e+09
  %59 = fptosi double %58 to i32
  %60 = load double, double* @NUM_ASYNC_REQS, align 8
  %61 = fmul double 1.000000e+00, %60
  %62 = load i32, i32* %7, align 4
  %63 = load i32, i32* %6, align 4
  %64 = sub nsw i32 %62, %63
  %65 = sitofp i32 %64 to double
  %66 = fdiv double %65, 1.000000e+09
  %67 = fdiv double %61, %66
  %68 = call i8* @fmt(double %67)
  %69 = call i32 @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i8* %52, i32 %53, i32 %59, i8* %68)
  %70 = load i32, i32* @stdout, align 4
  %71 = call i32 @fflush(i32 %70)
  br label %72

72:                                               ; preds = %44
  %73 = load i32, i32* %9, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %9, align 4
  br label %14

75:                                               ; preds = %14
  %76 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %76)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @uv_fs_stat(i32, i32*, i8*, i32) #2

declare dso_local i32 @uv_default_loop(...) #2

declare dso_local i32 @uv_hrtime(...) #2

declare dso_local i32 @uv_run(i32, i32) #2

declare dso_local i32 @printf(i8*, i8*, i32, i32, i8*) #2

declare dso_local i8* @fmt(double) #2

declare dso_local i32 @fflush(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
