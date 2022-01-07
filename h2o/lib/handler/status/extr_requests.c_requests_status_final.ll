; ModuleID = '/home/carl/AnghaBench/h2o/lib/handler/status/extr_requests.c_requests_status_final.c'
source_filename = "/home/carl/AnghaBench/h2o/lib/handler/status/extr_requests.c_requests_status_final.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i32* }
%struct.st_requests_status_ctx_t = type { i32, %struct.TYPE_9__, i32* }
%struct.TYPE_9__ = type { %struct.st_requests_status_ctx_t* }

@.str = private unnamed_addr constant [17 x i8] c",\0A \22requests\22: [\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"\0A ]\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i32*, %struct.TYPE_7__*)* @requests_status_final to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @requests_status_final(i8* %0, i32* %1, %struct.TYPE_7__* %2) #0 {
  %4 = alloca %struct.TYPE_8__, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca %struct.st_requests_status_ctx_t*, align 8
  %9 = alloca %struct.TYPE_8__, align 8
  store i8* %0, i8** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.TYPE_7__* %2, %struct.TYPE_7__** %7, align 8
  %10 = bitcast %struct.TYPE_8__* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %10, i8 0, i64 8, i1 false)
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.st_requests_status_ctx_t*
  store %struct.st_requests_status_ctx_t* %12, %struct.st_requests_status_ctx_t** %8, align 8
  %13 = load %struct.st_requests_status_ctx_t*, %struct.st_requests_status_ctx_t** %8, align 8
  %14 = getelementptr inbounds %struct.st_requests_status_ctx_t, %struct.st_requests_status_ctx_t* %13, i32 0, i32 2
  %15 = load i32*, i32** %14, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %17, label %36

17:                                               ; preds = %3
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %21 = call i32 @h2o_iovec_init(i32 %20)
  %22 = load %struct.st_requests_status_ctx_t*, %struct.st_requests_status_ctx_t** %8, align 8
  %23 = getelementptr inbounds %struct.st_requests_status_ctx_t, %struct.st_requests_status_ctx_t* %22, i32 0, i32 1
  %24 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %25 = call i32 @h2o_iovec_init(i32 %24)
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 0
  %27 = load %struct.st_requests_status_ctx_t*, %struct.st_requests_status_ctx_t** %26, align 8
  %28 = call i32* @h2o_concat(i32* %19, i32 %21, %struct.st_requests_status_ctx_t* %27, i32 %25)
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  store i32* %28, i32** %29, align 8
  %30 = bitcast %struct.TYPE_8__* %4 to i8*
  %31 = bitcast %struct.TYPE_8__* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %30, i8* align 8 %31, i64 8, i1 false)
  %32 = load %struct.st_requests_status_ctx_t*, %struct.st_requests_status_ctx_t** %8, align 8
  %33 = getelementptr inbounds %struct.st_requests_status_ctx_t, %struct.st_requests_status_ctx_t* %32, i32 0, i32 2
  %34 = load i32*, i32** %33, align 8
  %35 = call i32 @h2o_logconf_dispose(i32* %34)
  br label %36

36:                                               ; preds = %17, %3
  %37 = load %struct.st_requests_status_ctx_t*, %struct.st_requests_status_ctx_t** %8, align 8
  %38 = getelementptr inbounds %struct.st_requests_status_ctx_t, %struct.st_requests_status_ctx_t* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 0
  %40 = load %struct.st_requests_status_ctx_t*, %struct.st_requests_status_ctx_t** %39, align 8
  %41 = call i32 @free(%struct.st_requests_status_ctx_t* %40)
  %42 = load %struct.st_requests_status_ctx_t*, %struct.st_requests_status_ctx_t** %8, align 8
  %43 = getelementptr inbounds %struct.st_requests_status_ctx_t, %struct.st_requests_status_ctx_t* %42, i32 0, i32 0
  %44 = call i32 @pthread_mutex_destroy(i32* %43)
  %45 = load %struct.st_requests_status_ctx_t*, %struct.st_requests_status_ctx_t** %8, align 8
  %46 = call i32 @free(%struct.st_requests_status_ctx_t* %45)
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  ret i32* %48
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32* @h2o_concat(i32*, i32, %struct.st_requests_status_ctx_t*, i32) #2

declare dso_local i32 @h2o_iovec_init(i32) #2

declare dso_local i32 @H2O_STRLIT(i8*) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @h2o_logconf_dispose(i32*) #2

declare dso_local i32 @free(%struct.st_requests_status_ctx_t*) #2

declare dso_local i32 @pthread_mutex_destroy(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
