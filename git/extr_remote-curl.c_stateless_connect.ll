; ModuleID = '/home/carl/AnghaBench/git/extr_remote-curl.c_stateless_connect.c'
source_filename = "/home/carl/AnghaBench/git/extr_remote-curl.c_stateless_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }
%struct.TYPE_2__ = type { i32 }
%struct.discovery = type { i64, i32, i32 }
%struct.rpc_state = type { i8*, i32, i32, i32, i32*, i32*, i32*, i32*, i32*, i64, i64, i64, i64, i64, i64, i32 }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@protocol_v2 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [10 x i8] c"fallback\0A\00", align 1
@stdout = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@url = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@.str.3 = private unnamed_addr constant [39 x i8] c"Content-Type: application/x-%s-request\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"Accept: application/x-%s-result\00", align 1
@http_post_buffer = common dso_local global i32 0, align 4
@PACKET_READ_GENTLE_ON_EOF = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [59 x i8] c"The entire rpc->buf should be larger than LARGE_PACKET_MAX\00", align 1
@PACKET_READ_EOF = common dso_local global i32 0, align 4
@PACKET_READ_FLUSH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @stateless_connect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stateless_connect(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.discovery*, align 8
  %5 = alloca %struct.rpc_state, align 8
  %6 = alloca %struct.strbuf, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %9 = bitcast %struct.strbuf* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %9, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 4, i1 false)
  %10 = load i8*, i8** %3, align 8
  %11 = call %struct.discovery* @discover_refs(i8* %10, i32 0)
  store %struct.discovery* %11, %struct.discovery** %4, align 8
  %12 = load %struct.discovery*, %struct.discovery** %4, align 8
  %13 = getelementptr inbounds %struct.discovery, %struct.discovery* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @protocol_v2, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %21

17:                                               ; preds = %1
  %18 = call i32 @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* @stdout, align 4
  %20 = call i32 @fflush(i32 %19)
  store i32 -1, i32* %2, align 4
  br label %119

21:                                               ; preds = %1
  %22 = call i32 @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %23 = load i32, i32* @stdout, align 4
  %24 = call i32 @fflush(i32 %23)
  br label %25

25:                                               ; preds = %21
  %26 = load i8*, i8** %3, align 8
  %27 = getelementptr inbounds %struct.rpc_state, %struct.rpc_state* %5, i32 0, i32 0
  store i8* %26, i8** %27, align 8
  %28 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @url, i32 0, i32 0), align 4
  %29 = sext i32 %28 to i64
  %30 = inttoptr i64 %29 to i8*
  %31 = getelementptr inbounds %struct.rpc_state, %struct.rpc_state* %5, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  %33 = call i8* (i8*, i8*, ...) @xstrfmt(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* %30, i8* %32)
  %34 = bitcast i8* %33 to i32*
  %35 = getelementptr inbounds %struct.rpc_state, %struct.rpc_state* %5, i32 0, i32 8
  store i32* %34, i32** %35, align 8
  %36 = getelementptr inbounds %struct.rpc_state, %struct.rpc_state* %5, i32 0, i32 0
  %37 = load i8*, i8** %36, align 8
  %38 = call i8* (i8*, i8*, ...) @xstrfmt(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i8* %37)
  %39 = bitcast i8* %38 to i32*
  %40 = getelementptr inbounds %struct.rpc_state, %struct.rpc_state* %5, i32 0, i32 7
  store i32* %39, i32** %40, align 8
  %41 = getelementptr inbounds %struct.rpc_state, %struct.rpc_state* %5, i32 0, i32 0
  %42 = load i8*, i8** %41, align 8
  %43 = call i8* (i8*, i8*, ...) @xstrfmt(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i8* %42)
  %44 = bitcast i8* %43 to i32*
  %45 = getelementptr inbounds %struct.rpc_state, %struct.rpc_state* %5, i32 0, i32 6
  store i32* %44, i32** %45, align 8
  %46 = load %struct.discovery*, %struct.discovery** %4, align 8
  %47 = getelementptr inbounds %struct.discovery, %struct.discovery* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = call i64 @get_protocol_http_header(i64 %48, %struct.strbuf* %6)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %25
  %52 = call i32* @strbuf_detach(%struct.strbuf* %6, i32* null)
  %53 = getelementptr inbounds %struct.rpc_state, %struct.rpc_state* %5, i32 0, i32 5
  store i32* %52, i32** %53, align 8
  br label %57

54:                                               ; preds = %25
  %55 = getelementptr inbounds %struct.rpc_state, %struct.rpc_state* %5, i32 0, i32 5
  store i32* null, i32** %55, align 8
  %56 = call i32 @strbuf_release(%struct.strbuf* %6)
  br label %57

57:                                               ; preds = %54, %51
  %58 = load i32, i32* @http_post_buffer, align 4
  %59 = call i32* @xmalloc(i32 %58)
  %60 = getelementptr inbounds %struct.rpc_state, %struct.rpc_state* %5, i32 0, i32 4
  store i32* %59, i32** %60, align 8
  %61 = load i32, i32* @http_post_buffer, align 4
  %62 = getelementptr inbounds %struct.rpc_state, %struct.rpc_state* %5, i32 0, i32 15
  store i32 %61, i32* %62, align 8
  %63 = getelementptr inbounds %struct.rpc_state, %struct.rpc_state* %5, i32 0, i32 9
  store i64 0, i64* %63, align 8
  %64 = getelementptr inbounds %struct.rpc_state, %struct.rpc_state* %5, i32 0, i32 14
  store i64 0, i64* %64, align 8
  %65 = getelementptr inbounds %struct.rpc_state, %struct.rpc_state* %5, i32 0, i32 1
  store i32 1, i32* %65, align 8
  %66 = getelementptr inbounds %struct.rpc_state, %struct.rpc_state* %5, i32 0, i32 13
  store i64 0, i64* %66, align 8
  %67 = getelementptr inbounds %struct.rpc_state, %struct.rpc_state* %5, i32 0, i32 12
  store i64 0, i64* %67, align 8
  %68 = getelementptr inbounds %struct.rpc_state, %struct.rpc_state* %5, i32 0, i32 2
  store i32 1, i32* %68, align 4
  %69 = getelementptr inbounds %struct.rpc_state, %struct.rpc_state* %5, i32 0, i32 11
  store i64 0, i64* %69, align 8
  %70 = getelementptr inbounds %struct.rpc_state, %struct.rpc_state* %5, i32 0, i32 3
  store i32 1, i32* %70, align 8
  %71 = getelementptr inbounds %struct.rpc_state, %struct.rpc_state* %5, i32 0, i32 10
  store i64 0, i64* %71, align 8
  %72 = getelementptr inbounds %struct.rpc_state, %struct.rpc_state* %5, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.discovery*, %struct.discovery** %4, align 8
  %75 = getelementptr inbounds %struct.discovery, %struct.discovery* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.discovery*, %struct.discovery** %4, align 8
  %78 = getelementptr inbounds %struct.discovery, %struct.discovery* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @write_or_die(i32 %73, i32 %76, i32 %79)
  br label %81

81:                                               ; preds = %57, %100
  %82 = load i32, i32* @PACKET_READ_GENTLE_ON_EOF, align 4
  %83 = call i32 @rpc_read_from_out(%struct.rpc_state* %5, i32 %82, i64* %7, i32* %8)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %87, label %85

85:                                               ; preds = %81
  %86 = call i32 @BUG(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.5, i64 0, i64 0))
  br label %87

87:                                               ; preds = %85, %81
  %88 = load i32, i32* %8, align 4
  %89 = load i32, i32* @PACKET_READ_EOF, align 4
  %90 = icmp eq i32 %88, %89
  br i1 %90, label %91, label %92

91:                                               ; preds = %87
  br label %102

92:                                               ; preds = %87
  %93 = load i32, i32* %8, align 4
  %94 = load i32, i32* @PACKET_READ_FLUSH, align 4
  %95 = icmp eq i32 %93, %94
  %96 = zext i1 %95 to i32
  %97 = call i64 @post_rpc(%struct.rpc_state* %5, i32 %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %92
  br label %102

100:                                              ; preds = %92
  %101 = getelementptr inbounds %struct.rpc_state, %struct.rpc_state* %5, i32 0, i32 9
  store i64 0, i64* %101, align 8
  br label %81

102:                                              ; preds = %99, %91
  %103 = getelementptr inbounds %struct.rpc_state, %struct.rpc_state* %5, i32 0, i32 8
  %104 = load i32*, i32** %103, align 8
  %105 = call i32 @free(i32* %104)
  %106 = getelementptr inbounds %struct.rpc_state, %struct.rpc_state* %5, i32 0, i32 7
  %107 = load i32*, i32** %106, align 8
  %108 = call i32 @free(i32* %107)
  %109 = getelementptr inbounds %struct.rpc_state, %struct.rpc_state* %5, i32 0, i32 6
  %110 = load i32*, i32** %109, align 8
  %111 = call i32 @free(i32* %110)
  %112 = getelementptr inbounds %struct.rpc_state, %struct.rpc_state* %5, i32 0, i32 5
  %113 = load i32*, i32** %112, align 8
  %114 = call i32 @free(i32* %113)
  %115 = getelementptr inbounds %struct.rpc_state, %struct.rpc_state* %5, i32 0, i32 4
  %116 = load i32*, i32** %115, align 8
  %117 = call i32 @free(i32* %116)
  %118 = call i32 @strbuf_release(%struct.strbuf* %6)
  store i32 0, i32* %2, align 4
  br label %119

119:                                              ; preds = %102, %17
  %120 = load i32, i32* %2, align 4
  ret i32 %120
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local %struct.discovery* @discover_refs(i8*, i32) #2

declare dso_local i32 @printf(i8*) #2

declare dso_local i32 @fflush(i32) #2

declare dso_local i8* @xstrfmt(i8*, i8*, ...) #2

declare dso_local i64 @get_protocol_http_header(i64, %struct.strbuf*) #2

declare dso_local i32* @strbuf_detach(%struct.strbuf*, i32*) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

declare dso_local i32* @xmalloc(i32) #2

declare dso_local i32 @write_or_die(i32, i32, i32) #2

declare dso_local i32 @rpc_read_from_out(%struct.rpc_state*, i32, i64*, i32*) #2

declare dso_local i32 @BUG(i8*) #2

declare dso_local i64 @post_rpc(%struct.rpc_state*, i32) #2

declare dso_local i32 @free(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
