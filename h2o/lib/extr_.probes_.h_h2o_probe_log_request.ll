; ModuleID = '/home/carl/AnghaBench/h2o/lib/extr_.probes_.h_h2o_probe_log_request.c'
source_filename = "/home/carl/AnghaBench/h2o/lib/extr_.probes_.h_h2o_probe_log_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_17__ = type { %struct.TYPE_16__, %struct.TYPE_15__, i32, i32 }
%struct.TYPE_16__ = type { i64, %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i32, i32* }
%struct.TYPE_15__ = type { %struct.TYPE_14__*, i32, i32, i32 }
%struct.TYPE_14__ = type { i32 }

@RECEIVE_REQUEST = common dso_local global i32 0, align 4
@RECEIVE_REQUEST_HEADER = common dso_local global i32 0, align 4
@H2O_TOKEN_AUTHORITY = common dso_local global %struct.TYPE_13__* null, align 8
@H2O_TOKEN_METHOD = common dso_local global %struct.TYPE_12__* null, align 8
@H2O_TOKEN_PATH = common dso_local global %struct.TYPE_20__* null, align 8
@H2O_TOKEN_SCHEME = common dso_local global %struct.TYPE_19__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_17__*, i32)* @h2o_probe_log_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @h2o_probe_log_request(%struct.TYPE_17__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_17__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_18__*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* @RECEIVE_REQUEST, align 4
  %8 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* %4, align 4
  %12 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @H2O_PROBE_CONN(i32 %7, i32 %10, i32 %11, i32 %14)
  %16 = load i32, i32* @RECEIVE_REQUEST_HEADER, align 4
  %17 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = call i64 @H2O_CONN_IS_PROBED(i32 %16, i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %93

22:                                               ; preds = %2
  %23 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %24 = load i32, i32* %4, align 4
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** @H2O_TOKEN_AUTHORITY, align 8
  %26 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @h2o_probe_request_header(%struct.TYPE_17__* %23, i32 %24, i32 %27, i32 %31)
  %33 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %34 = load i32, i32* %4, align 4
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** @H2O_TOKEN_METHOD, align 8
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @h2o_probe_request_header(%struct.TYPE_17__* %33, i32 %34, i32 %37, i32 %41)
  %43 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %44 = load i32, i32* %4, align 4
  %45 = load %struct.TYPE_20__*, %struct.TYPE_20__** @H2O_TOKEN_PATH, align 8
  %46 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @h2o_probe_request_header(%struct.TYPE_17__* %43, i32 %44, i32 %47, i32 %51)
  %53 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %54 = load i32, i32* %4, align 4
  %55 = load %struct.TYPE_19__*, %struct.TYPE_19__** @H2O_TOKEN_SCHEME, align 8
  %56 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %59, i32 0, i32 0
  %61 = load %struct.TYPE_14__*, %struct.TYPE_14__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @h2o_probe_request_header(%struct.TYPE_17__* %53, i32 %54, i32 %57, i32 %63)
  store i64 0, i64* %5, align 8
  br label %65

65:                                               ; preds = %89, %22
  %66 = load i64, i64* %5, align 8
  %67 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %66, %70
  br i1 %71, label %72, label %92

72:                                               ; preds = %65
  %73 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %74, i32 0, i32 1
  %76 = load %struct.TYPE_18__*, %struct.TYPE_18__** %75, align 8
  %77 = load i64, i64* %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %76, i64 %77
  store %struct.TYPE_18__* %78, %struct.TYPE_18__** %6, align 8
  %79 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %80 = load i32, i32* %4, align 4
  %81 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %81, i32 0, i32 1
  %83 = load i32*, i32** %82, align 8
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %86 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @h2o_probe_request_header(%struct.TYPE_17__* %79, i32 %80, i32 %84, i32 %87)
  br label %89

89:                                               ; preds = %72
  %90 = load i64, i64* %5, align 8
  %91 = add i64 %90, 1
  store i64 %91, i64* %5, align 8
  br label %65

92:                                               ; preds = %65
  br label %93

93:                                               ; preds = %92, %2
  ret void
}

declare dso_local i32 @H2O_PROBE_CONN(i32, i32, i32, i32) #1

declare dso_local i64 @H2O_CONN_IS_PROBED(i32, i32) #1

declare dso_local i32 @h2o_probe_request_header(%struct.TYPE_17__*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
