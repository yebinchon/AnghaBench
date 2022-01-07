; ModuleID = '/home/carl/AnghaBench/h2o/deps/quicly/src/extr_cli.c_client_on_receive.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/quicly/src/extr_cli.c_client_on_receive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32* }
%struct.TYPE_15__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i64 (%struct.TYPE_13__*)* }
%struct.TYPE_11__ = type { i32, i32, %struct.st_stream_data_t* }
%struct.st_stream_data_t = type { i32* }
%struct.TYPE_12__ = type { i64, i32 }

@stdout = common dso_local global i32* null, align 8
@client_on_receive.num_resp_received = internal global i64 0, align 8
@reqs = common dso_local global %struct.TYPE_14__* null, align 8
@request_interval = common dso_local global i64 0, align 8
@ctx = common dso_local global %struct.TYPE_15__ zeroinitializer, align 8
@enqueue_requests_at = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, i64, i8*, i64)* @client_on_receive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @client_on_receive(%struct.TYPE_11__* %0, i64 %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.st_stream_data_t*, align 8
  %11 = alloca %struct.TYPE_12__, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_12__, align 8
  %14 = alloca %struct.TYPE_12__, align 8
  %15 = alloca i32*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %6, align 8
  store i64 %1, i64* %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 2
  %18 = load %struct.st_stream_data_t*, %struct.st_stream_data_t** %17, align 8
  store %struct.st_stream_data_t* %18, %struct.st_stream_data_t** %10, align 8
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %20 = load i64, i64* %7, align 8
  %21 = load i8*, i8** %8, align 8
  %22 = load i64, i64* %9, align 8
  %23 = call i32 @quicly_streambuf_ingress_receive(%struct.TYPE_11__* %19, i64 %20, i8* %21, i64 %22)
  store i32 %23, i32* %12, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %4
  %26 = load i32, i32* %12, align 4
  store i32 %26, i32* %5, align 4
  br label %115

27:                                               ; preds = %4
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %29 = call { i64, i32 } @quicly_streambuf_ingress_get(%struct.TYPE_11__* %28)
  %30 = bitcast %struct.TYPE_12__* %14 to { i64, i32 }*
  %31 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %30, i32 0, i32 0
  %32 = extractvalue { i64, i32 } %29, 0
  store i64 %32, i64* %31, align 8
  %33 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %30, i32 0, i32 1
  %34 = extractvalue { i64, i32 } %29, 1
  store i32 %34, i32* %33, align 8
  %35 = bitcast %struct.TYPE_12__* %11 to i8*
  %36 = bitcast %struct.TYPE_12__* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %35, i8* align 8 %36, i64 16, i1 false)
  %37 = bitcast %struct.TYPE_12__* %13 to i8*
  %38 = bitcast %struct.TYPE_12__* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %37, i8* align 8 %38, i64 16, i1 false)
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %67

42:                                               ; preds = %27
  %43 = load %struct.st_stream_data_t*, %struct.st_stream_data_t** %10, align 8
  %44 = getelementptr inbounds %struct.st_stream_data_t, %struct.st_stream_data_t* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = icmp eq i32* %45, null
  br i1 %46, label %47, label %49

47:                                               ; preds = %42
  %48 = load i32*, i32** @stdout, align 8
  br label %53

49:                                               ; preds = %42
  %50 = load %struct.st_stream_data_t*, %struct.st_stream_data_t** %10, align 8
  %51 = getelementptr inbounds %struct.st_stream_data_t, %struct.st_stream_data_t* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  br label %53

53:                                               ; preds = %49, %47
  %54 = phi i32* [ %48, %47 ], [ %52, %49 ]
  store i32* %54, i32** %15, align 8
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i32*, i32** %15, align 8
  %60 = call i32 @fwrite(i32 %56, i32 1, i64 %58, i32* %59)
  %61 = load i32*, i32** %15, align 8
  %62 = call i32 @fflush(i32* %61)
  %63 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = call i32 @quicly_streambuf_ingress_shift(%struct.TYPE_11__* %63, i64 %65)
  br label %67

67:                                               ; preds = %53, %27
  %68 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %68, i32 0, i32 1
  %70 = call i64 @quicly_recvstate_transfer_complete(i32* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %114

72:                                               ; preds = %67
  %73 = load %struct.st_stream_data_t*, %struct.st_stream_data_t** %10, align 8
  %74 = getelementptr inbounds %struct.st_stream_data_t, %struct.st_stream_data_t* %73, i32 0, i32 0
  %75 = load i32*, i32** %74, align 8
  %76 = icmp ne i32* %75, null
  br i1 %76, label %77, label %82

77:                                               ; preds = %72
  %78 = load %struct.st_stream_data_t*, %struct.st_stream_data_t** %10, align 8
  %79 = getelementptr inbounds %struct.st_stream_data_t, %struct.st_stream_data_t* %78, i32 0, i32 0
  %80 = load i32*, i32** %79, align 8
  %81 = call i32 @fclose(i32* %80)
  br label %82

82:                                               ; preds = %77, %72
  %83 = load i64, i64* @client_on_receive.num_resp_received, align 8
  %84 = add i64 %83, 1
  store i64 %84, i64* @client_on_receive.num_resp_received, align 8
  %85 = load %struct.TYPE_14__*, %struct.TYPE_14__** @reqs, align 8
  %86 = load i64, i64* @client_on_receive.num_resp_received, align 8
  %87 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %85, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %87, i32 0, i32 0
  %89 = load i32*, i32** %88, align 8
  %90 = icmp eq i32* %89, null
  br i1 %90, label %91, label %113

91:                                               ; preds = %82
  %92 = load i64, i64* @request_interval, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %102

94:                                               ; preds = %91
  %95 = load %struct.TYPE_13__*, %struct.TYPE_13__** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @ctx, i32 0, i32 0), align 8
  %96 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %95, i32 0, i32 0
  %97 = load i64 (%struct.TYPE_13__*)*, i64 (%struct.TYPE_13__*)** %96, align 8
  %98 = load %struct.TYPE_13__*, %struct.TYPE_13__** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @ctx, i32 0, i32 0), align 8
  %99 = call i64 %97(%struct.TYPE_13__* %98)
  %100 = load i64, i64* @request_interval, align 8
  %101 = add nsw i64 %99, %100
  store i64 %101, i64* @enqueue_requests_at, align 8
  br label %112

102:                                              ; preds = %91
  %103 = load i32, i32* @stderr, align 4
  %104 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %105 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = call i32 @dump_stats(i32 %103, i32 %106)
  %108 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %109 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = call i32 @quicly_close(i32 %110, i32 0, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  br label %112

112:                                              ; preds = %102, %94
  br label %113

113:                                              ; preds = %112, %82
  br label %114

114:                                              ; preds = %113, %67
  store i32 0, i32* %5, align 4
  br label %115

115:                                              ; preds = %114, %25
  %116 = load i32, i32* %5, align 4
  ret i32 %116
}

declare dso_local i32 @quicly_streambuf_ingress_receive(%struct.TYPE_11__*, i64, i8*, i64) #1

declare dso_local { i64, i32 } @quicly_streambuf_ingress_get(%struct.TYPE_11__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @fwrite(i32, i32, i64, i32*) #1

declare dso_local i32 @fflush(i32*) #1

declare dso_local i32 @quicly_streambuf_ingress_shift(%struct.TYPE_11__*, i64) #1

declare dso_local i64 @quicly_recvstate_transfer_complete(i32*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @dump_stats(i32, i32) #1

declare dso_local i32 @quicly_close(i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
