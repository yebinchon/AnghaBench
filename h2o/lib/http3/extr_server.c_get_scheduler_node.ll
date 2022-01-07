; ModuleID = '/home/carl/AnghaBench/h2o/lib/http3/extr_server.c_get_scheduler_node.c'
source_filename = "/home/carl/AnghaBench/h2o/lib/http3/extr_server.c_get_scheduler_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.st_h2o_http3_server_conn_t = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_10__ = type { %struct.st_h2o_http3_server_stream_t* }
%struct.st_h2o_http3_server_stream_t = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i32 }

@.str = private unnamed_addr constant [44 x i8] c"invalid request stream id in PRIORITY frame\00", align 1
@H2O_HTTP3_ERROR_FRAME = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [54 x i8] c"unexpectedly found a push stream id in PRIORITY frame\00", align 1
@H2O_HTTP3_ERROR_GENERAL_PROTOCOL = common dso_local global i32 0, align 4
@H2O_HTTP3_SETTINGS_NUM_PLACEHOLDERS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [47 x i8] c"invalid placeholder id found in PRIORITY frame\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"invalid depedency type in PRIORITY frame\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.st_h2o_http3_server_conn_t*, i32**, i32, i32, i32*, i8**)* @get_scheduler_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_scheduler_node(%struct.st_h2o_http3_server_conn_t* %0, i32** %1, i32 %2, i32 %3, i32* %4, i8** %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.st_h2o_http3_server_conn_t*, align 8
  %9 = alloca i32**, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i8**, align 8
  %14 = alloca %struct.TYPE_10__*, align 8
  %15 = alloca %struct.st_h2o_http3_server_stream_t*, align 8
  %16 = alloca %struct.TYPE_11__*, align 8
  store %struct.st_h2o_http3_server_conn_t* %0, %struct.st_h2o_http3_server_conn_t** %8, align 8
  store i32** %1, i32*** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i8** %5, i8*** %13, align 8
  %17 = load i32, i32* %10, align 4
  switch i32 %17, label %114 [
    i32 129, label %18
    i32 130, label %88
    i32 131, label %91
    i32 128, label %105
  ]

18:                                               ; preds = %6
  %19 = load i32, i32* %11, align 4
  %20 = call i32 @quicly_stream_is_client_initiated(i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %35

22:                                               ; preds = %18
  %23 = load i32, i32* %11, align 4
  %24 = call i32 @quicly_stream_is_unidirectional(i32 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %35, label %26

26:                                               ; preds = %22
  %27 = load i32, i32* %11, align 4
  %28 = sdiv i32 %27, 4
  %29 = load %struct.st_h2o_http3_server_conn_t*, %struct.st_h2o_http3_server_conn_t** %8, align 8
  %30 = getelementptr inbounds %struct.st_h2o_http3_server_conn_t, %struct.st_h2o_http3_server_conn_t* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @quicly_get_ingress_max_streams(i32 %32, i32 0)
  %34 = icmp slt i32 %28, %33
  br i1 %34, label %38, label %35

35:                                               ; preds = %26, %22, %18
  %36 = load i8**, i8*** %13, align 8
  store i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i8** %36, align 8
  %37 = load i32, i32* @H2O_HTTP3_ERROR_FRAME, align 4
  store i32 %37, i32* %7, align 4
  br label %115

38:                                               ; preds = %26
  %39 = load %struct.st_h2o_http3_server_conn_t*, %struct.st_h2o_http3_server_conn_t** %8, align 8
  %40 = getelementptr inbounds %struct.st_h2o_http3_server_conn_t, %struct.st_h2o_http3_server_conn_t* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %11, align 4
  %44 = call %struct.TYPE_10__* @quicly_get_stream(i32 %42, i32 %43)
  store %struct.TYPE_10__* %44, %struct.TYPE_10__** %14, align 8
  %45 = icmp ne %struct.TYPE_10__* %44, null
  br i1 %45, label %46, label %64

46:                                               ; preds = %38
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 0
  %49 = load %struct.st_h2o_http3_server_stream_t*, %struct.st_h2o_http3_server_stream_t** %48, align 8
  store %struct.st_h2o_http3_server_stream_t* %49, %struct.st_h2o_http3_server_stream_t** %15, align 8
  %50 = load %struct.st_h2o_http3_server_stream_t*, %struct.st_h2o_http3_server_stream_t** %15, align 8
  %51 = icmp ne %struct.st_h2o_http3_server_stream_t* %50, null
  %52 = zext i1 %51 to i32
  %53 = call i32 @assert(i32 %52)
  %54 = load %struct.st_h2o_http3_server_stream_t*, %struct.st_h2o_http3_server_stream_t** %15, align 8
  %55 = getelementptr inbounds %struct.st_h2o_http3_server_stream_t, %struct.st_h2o_http3_server_stream_t* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 0
  %57 = call i32 @h2o_http2_scheduler_is_open(%struct.TYPE_12__* %56)
  %58 = call i32 @assert(i32 %57)
  %59 = load %struct.st_h2o_http3_server_stream_t*, %struct.st_h2o_http3_server_stream_t** %15, align 8
  %60 = getelementptr inbounds %struct.st_h2o_http3_server_stream_t, %struct.st_h2o_http3_server_stream_t* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %61, i32 0, i32 0
  %63 = load i32**, i32*** %9, align 8
  store i32* %62, i32** %63, align 8
  br label %87

64:                                               ; preds = %38
  %65 = load %struct.st_h2o_http3_server_conn_t*, %struct.st_h2o_http3_server_conn_t** %8, align 8
  %66 = load i32, i32* %11, align 4
  %67 = load i32, i32* %11, align 4
  %68 = load %struct.st_h2o_http3_server_conn_t*, %struct.st_h2o_http3_server_conn_t** %8, align 8
  %69 = getelementptr inbounds %struct.st_h2o_http3_server_conn_t, %struct.st_h2o_http3_server_conn_t* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @quicly_get_peer_next_stream_id(i32 %71, i32 0)
  %73 = icmp sge i32 %67, %72
  %74 = zext i1 %73 to i32
  %75 = call %struct.TYPE_11__* @get_freestanding_scheduler_ref(%struct.st_h2o_http3_server_conn_t* %65, i32 %66, i32 %74)
  store %struct.TYPE_11__* %75, %struct.TYPE_11__** %16, align 8
  %76 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %77 = icmp ne %struct.TYPE_11__* %76, null
  br i1 %77, label %78, label %81

78:                                               ; preds = %64
  %79 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %80 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %79, i32 0, i32 0
  br label %84

81:                                               ; preds = %64
  %82 = load %struct.st_h2o_http3_server_conn_t*, %struct.st_h2o_http3_server_conn_t** %8, align 8
  %83 = call i32* @get_orphan_placeholder(%struct.st_h2o_http3_server_conn_t* %82)
  br label %84

84:                                               ; preds = %81, %78
  %85 = phi i32* [ %80, %78 ], [ %83, %81 ]
  %86 = load i32**, i32*** %9, align 8
  store i32* %85, i32** %86, align 8
  br label %87

87:                                               ; preds = %84, %46
  br label %114

88:                                               ; preds = %6
  %89 = load i8**, i8*** %13, align 8
  store i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0), i8** %89, align 8
  %90 = load i32, i32* @H2O_HTTP3_ERROR_GENERAL_PROTOCOL, align 4
  store i32 %90, i32* %7, align 4
  br label %115

91:                                               ; preds = %6
  %92 = load i32, i32* %11, align 4
  %93 = load i32, i32* @H2O_HTTP3_SETTINGS_NUM_PLACEHOLDERS, align 4
  %94 = icmp sge i32 %92, %93
  br i1 %94, label %95, label %98

95:                                               ; preds = %91
  %96 = load i8**, i8*** %13, align 8
  store i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i8** %96, align 8
  %97 = load i32, i32* @H2O_HTTP3_ERROR_FRAME, align 4
  store i32 %97, i32* %7, align 4
  br label %115

98:                                               ; preds = %91
  %99 = load %struct.st_h2o_http3_server_conn_t*, %struct.st_h2o_http3_server_conn_t** %8, align 8
  %100 = load i32, i32* %11, align 4
  %101 = sub nsw i32 -1, %100
  %102 = call %struct.TYPE_11__* @get_freestanding_scheduler_ref(%struct.st_h2o_http3_server_conn_t* %99, i32 %101, i32 1)
  %103 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %102, i32 0, i32 0
  %104 = load i32**, i32*** %9, align 8
  store i32* %103, i32** %104, align 8
  br label %114

105:                                              ; preds = %6
  %106 = load i32*, i32** %12, align 8
  %107 = icmp eq i32* %106, null
  br i1 %107, label %108, label %111

108:                                              ; preds = %105
  %109 = load i8**, i8*** %13, align 8
  store i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i8** %109, align 8
  %110 = load i32, i32* @H2O_HTTP3_ERROR_FRAME, align 4
  store i32 %110, i32* %7, align 4
  br label %115

111:                                              ; preds = %105
  %112 = load i32*, i32** %12, align 8
  %113 = load i32**, i32*** %9, align 8
  store i32* %112, i32** %113, align 8
  br label %114

114:                                              ; preds = %6, %111, %98, %87
  store i32 0, i32* %7, align 4
  br label %115

115:                                              ; preds = %114, %108, %95, %88, %35
  %116 = load i32, i32* %7, align 4
  ret i32 %116
}

declare dso_local i32 @quicly_stream_is_client_initiated(i32) #1

declare dso_local i32 @quicly_stream_is_unidirectional(i32) #1

declare dso_local i32 @quicly_get_ingress_max_streams(i32, i32) #1

declare dso_local %struct.TYPE_10__* @quicly_get_stream(i32, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @h2o_http2_scheduler_is_open(%struct.TYPE_12__*) #1

declare dso_local %struct.TYPE_11__* @get_freestanding_scheduler_ref(%struct.st_h2o_http3_server_conn_t*, i32, i32) #1

declare dso_local i32 @quicly_get_peer_next_stream_id(i32, i32) #1

declare dso_local i32* @get_orphan_placeholder(%struct.st_h2o_http3_server_conn_t*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
