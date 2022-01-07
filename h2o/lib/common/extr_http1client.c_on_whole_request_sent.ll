; ModuleID = '/home/carl/AnghaBench/h2o/lib/common/extr_http1client.c_on_whole_request_sent.c'
source_filename = "/home/carl/AnghaBench/h2o/lib/common/extr_http1client.c_on_whole_request_sent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { %struct.st_h2o_http1client_t* }
%struct.st_h2o_http1client_t = type { %struct.TYPE_18__, %struct.TYPE_16__, i32, i64 }
%struct.TYPE_18__ = type { %struct.TYPE_21__, %struct.TYPE_17__*, %struct.TYPE_15__, %struct.TYPE_14__ }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_17__ = type { i32, i32 }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_16__ = type { i32, i32 }
%struct.TYPE_20__ = type { i64 }

@h2o_httpclient_error_io = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"0\0D\0A\0D\0A\00", align 1
@on_head_first_byte_timeout = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_19__*, i8*)* @on_whole_request_sent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @on_whole_request_sent(%struct.TYPE_19__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_19__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.st_h2o_http1client_t*, align 8
  %6 = alloca %struct.TYPE_20__, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %7, i32 0, i32 0
  %9 = load %struct.st_h2o_http1client_t*, %struct.st_h2o_http1client_t** %8, align 8
  store %struct.st_h2o_http1client_t* %9, %struct.st_h2o_http1client_t** %5, align 8
  %10 = load %struct.st_h2o_http1client_t*, %struct.st_h2o_http1client_t** %5, align 8
  %11 = getelementptr inbounds %struct.st_h2o_http1client_t, %struct.st_h2o_http1client_t* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %11, i32 0, i32 0
  %13 = call i32 @h2o_timer_unlink(%struct.TYPE_21__* %12)
  %14 = load i8*, i8** %4, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %16, label %20

16:                                               ; preds = %2
  %17 = load %struct.st_h2o_http1client_t*, %struct.st_h2o_http1client_t** %5, align 8
  %18 = load i32, i32* @h2o_httpclient_error_io, align 4
  %19 = call i32 @on_error(%struct.st_h2o_http1client_t* %17, i32 %18)
  br label %100

20:                                               ; preds = %2
  %21 = load %struct.st_h2o_http1client_t*, %struct.st_h2o_http1client_t** %5, align 8
  %22 = getelementptr inbounds %struct.st_h2o_http1client_t, %struct.st_h2o_http1client_t* %21, i32 0, i32 3
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %55

25:                                               ; preds = %20
  %26 = load %struct.st_h2o_http1client_t*, %struct.st_h2o_http1client_t** %5, align 8
  %27 = getelementptr inbounds %struct.st_h2o_http1client_t, %struct.st_h2o_http1client_t* %26, i32 0, i32 3
  store i64 0, i64* %27, align 8
  %28 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %29 = call i64 @h2o_iovec_init(i32 %28)
  %30 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %6, i32 0, i32 0
  store i64 %29, i64* %30, align 8
  %31 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %6, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.st_h2o_http1client_t*, %struct.st_h2o_http1client_t** %5, align 8
  %34 = getelementptr inbounds %struct.st_h2o_http1client_t, %struct.st_h2o_http1client_t* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %34, i32 0, i32 3
  %36 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = sext i32 %37 to i64
  %39 = add nsw i64 %38, %32
  %40 = trunc i64 %39 to i32
  store i32 %40, i32* %36, align 4
  %41 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %6, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.st_h2o_http1client_t*, %struct.st_h2o_http1client_t** %5, align 8
  %44 = getelementptr inbounds %struct.st_h2o_http1client_t, %struct.st_h2o_http1client_t* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %44, i32 0, i32 3
  %46 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = sext i32 %47 to i64
  %49 = add nsw i64 %48, %42
  %50 = trunc i64 %49 to i32
  store i32 %50, i32* %46, align 4
  %51 = load %struct.st_h2o_http1client_t*, %struct.st_h2o_http1client_t** %5, align 8
  %52 = getelementptr inbounds %struct.st_h2o_http1client_t, %struct.st_h2o_http1client_t* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @h2o_socket_write(i32 %53, %struct.TYPE_20__* %6, i32 1, void (%struct.TYPE_19__*, i8*)* @on_whole_request_sent)
  br label %100

55:                                               ; preds = %20
  %56 = load %struct.st_h2o_http1client_t*, %struct.st_h2o_http1client_t** %5, align 8
  %57 = getelementptr inbounds %struct.st_h2o_http1client_t, %struct.st_h2o_http1client_t* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %57, i32 0, i32 0
  store i32 129, i32* %58, align 8
  %59 = load %struct.st_h2o_http1client_t*, %struct.st_h2o_http1client_t** %5, align 8
  %60 = getelementptr inbounds %struct.st_h2o_http1client_t, %struct.st_h2o_http1client_t* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %60, i32 0, i32 1
  %62 = load %struct.TYPE_17__*, %struct.TYPE_17__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @h2o_gettimeofday(i32 %64)
  %66 = load %struct.st_h2o_http1client_t*, %struct.st_h2o_http1client_t** %5, align 8
  %67 = getelementptr inbounds %struct.st_h2o_http1client_t, %struct.st_h2o_http1client_t* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %67, i32 0, i32 2
  %69 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %68, i32 0, i32 0
  store i32 %65, i32* %69, align 8
  %70 = load %struct.st_h2o_http1client_t*, %struct.st_h2o_http1client_t** %5, align 8
  %71 = getelementptr inbounds %struct.st_h2o_http1client_t, %struct.st_h2o_http1client_t* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  switch i32 %73, label %100 [
    i32 128, label %74
    i32 130, label %96
    i32 129, label %97
  ]

74:                                               ; preds = %55
  %75 = load i32, i32* @on_head_first_byte_timeout, align 4
  %76 = load %struct.st_h2o_http1client_t*, %struct.st_h2o_http1client_t** %5, align 8
  %77 = getelementptr inbounds %struct.st_h2o_http1client_t, %struct.st_h2o_http1client_t* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %78, i32 0, i32 0
  store i32 %75, i32* %79, align 8
  %80 = load %struct.st_h2o_http1client_t*, %struct.st_h2o_http1client_t** %5, align 8
  %81 = getelementptr inbounds %struct.st_h2o_http1client_t, %struct.st_h2o_http1client_t* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %81, i32 0, i32 1
  %83 = load %struct.TYPE_17__*, %struct.TYPE_17__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.st_h2o_http1client_t*, %struct.st_h2o_http1client_t** %5, align 8
  %87 = getelementptr inbounds %struct.st_h2o_http1client_t, %struct.st_h2o_http1client_t* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %87, i32 0, i32 1
  %89 = load %struct.TYPE_17__*, %struct.TYPE_17__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.st_h2o_http1client_t*, %struct.st_h2o_http1client_t** %5, align 8
  %93 = getelementptr inbounds %struct.st_h2o_http1client_t, %struct.st_h2o_http1client_t* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %93, i32 0, i32 0
  %95 = call i32 @h2o_timer_link(i32 %85, i32 %91, %struct.TYPE_21__* %94)
  br label %100

96:                                               ; preds = %55
  br label %100

97:                                               ; preds = %55
  %98 = load %struct.st_h2o_http1client_t*, %struct.st_h2o_http1client_t** %5, align 8
  %99 = call i32 @close_client(%struct.st_h2o_http1client_t* %98)
  br label %100

100:                                              ; preds = %16, %25, %55, %97, %96, %74
  ret void
}

declare dso_local i32 @h2o_timer_unlink(%struct.TYPE_21__*) #1

declare dso_local i32 @on_error(%struct.st_h2o_http1client_t*, i32) #1

declare dso_local i64 @h2o_iovec_init(i32) #1

declare dso_local i32 @H2O_STRLIT(i8*) #1

declare dso_local i32 @h2o_socket_write(i32, %struct.TYPE_20__*, i32, void (%struct.TYPE_19__*, i8*)*) #1

declare dso_local i32 @h2o_gettimeofday(i32) #1

declare dso_local i32 @h2o_timer_link(i32, i32, %struct.TYPE_21__*) #1

declare dso_local i32 @close_client(%struct.st_h2o_http1client_t*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
