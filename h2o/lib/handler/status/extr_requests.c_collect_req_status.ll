; ModuleID = '/home/carl/AnghaBench/h2o/lib/handler/status/extr_requests.c_collect_req_status.c'
source_filename = "/home/carl/AnghaBench/h2o/lib/handler/status/extr_requests.c_collect_req_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.st_collect_req_status_cbdata_t = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i64, i64 }
%struct.TYPE_3__ = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*)* @collect_req_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @collect_req_status(i32* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.st_collect_req_status_cbdata_t*, align 8
  %7 = alloca [4096 x i8], align 16
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_3__, align 8
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.st_collect_req_status_cbdata_t*
  store %struct.st_collect_req_status_cbdata_t* %12, %struct.st_collect_req_status_cbdata_t** %6, align 8
  store i64 4096, i64* %8, align 8
  %13 = load %struct.st_collect_req_status_cbdata_t*, %struct.st_collect_req_status_cbdata_t** %6, align 8
  %14 = getelementptr inbounds %struct.st_collect_req_status_cbdata_t, %struct.st_collect_req_status_cbdata_t* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = load i32*, i32** %4, align 8
  %17 = getelementptr inbounds [4096 x i8], [4096 x i8]* %7, i64 0, i64 0
  %18 = call i8* @h2o_log_request(i32 %15, i32* %16, i64* %8, i8* %17)
  store i8* %18, i8** %9, align 8
  %19 = load i64, i64* %8, align 8
  %20 = icmp ne i64 %19, 0
  %21 = zext i1 %20 to i32
  %22 = call i32 @assert(i32 %21)
  %23 = load i64, i64* %8, align 8
  %24 = add i64 %23, -1
  store i64 %24, i64* %8, align 8
  %25 = load %struct.st_collect_req_status_cbdata_t*, %struct.st_collect_req_status_cbdata_t** %6, align 8
  %26 = getelementptr inbounds %struct.st_collect_req_status_cbdata_t, %struct.st_collect_req_status_cbdata_t* %25, i32 0, i32 0
  %27 = load i64, i64* %8, align 8
  %28 = add i64 %27, 3
  %29 = call i32* @h2o_buffer_try_reserve(%struct.TYPE_4__** %26, i64 %28)
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  store i32* %29, i32** %30, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = icmp eq i32* %32, null
  br i1 %33, label %34, label %42

34:                                               ; preds = %2
  %35 = load i8*, i8** %9, align 8
  %36 = getelementptr inbounds [4096 x i8], [4096 x i8]* %7, i64 0, i64 0
  %37 = icmp ne i8* %35, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %34
  %39 = load i8*, i8** %9, align 8
  %40 = call i32 @free(i8* %39)
  br label %41

41:                                               ; preds = %38, %34
  store i32 -1, i32* %3, align 4
  br label %71

42:                                               ; preds = %2
  %43 = load %struct.st_collect_req_status_cbdata_t*, %struct.st_collect_req_status_cbdata_t** %6, align 8
  %44 = getelementptr inbounds %struct.st_collect_req_status_cbdata_t, %struct.st_collect_req_status_cbdata_t* %43, i32 0, i32 0
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.st_collect_req_status_cbdata_t*, %struct.st_collect_req_status_cbdata_t** %6, align 8
  %49 = getelementptr inbounds %struct.st_collect_req_status_cbdata_t, %struct.st_collect_req_status_cbdata_t* %48, i32 0, i32 0
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = add nsw i64 %47, %52
  %54 = load i8*, i8** %9, align 8
  %55 = load i64, i64* %8, align 8
  %56 = call i32 @memcpy(i64 %53, i8* %54, i64 %55)
  %57 = load i64, i64* %8, align 8
  %58 = load %struct.st_collect_req_status_cbdata_t*, %struct.st_collect_req_status_cbdata_t** %6, align 8
  %59 = getelementptr inbounds %struct.st_collect_req_status_cbdata_t, %struct.st_collect_req_status_cbdata_t* %58, i32 0, i32 0
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = add i64 %62, %57
  store i64 %63, i64* %61, align 8
  %64 = load i8*, i8** %9, align 8
  %65 = getelementptr inbounds [4096 x i8], [4096 x i8]* %7, i64 0, i64 0
  %66 = icmp ne i8* %64, %65
  br i1 %66, label %67, label %70

67:                                               ; preds = %42
  %68 = load i8*, i8** %9, align 8
  %69 = call i32 @free(i8* %68)
  br label %70

70:                                               ; preds = %67, %42
  store i32 0, i32* %3, align 4
  br label %71

71:                                               ; preds = %70, %41
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

declare dso_local i8* @h2o_log_request(i32, i32*, i64*, i8*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32* @h2o_buffer_try_reserve(%struct.TYPE_4__**, i64) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @memcpy(i64, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
