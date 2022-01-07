; ModuleID = '/home/carl/AnghaBench/h2o/deps/quicly/src/extr_cli.c_run_client.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/quicly/src/extr_cli.c_run_client.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i64 (%struct.TYPE_11__*)* }
%struct.TYPE_14__ = type { i32 }
%struct.sockaddr = type { i32 }
%struct.sockaddr_in = type { i32, i32, %struct.iovec*, %struct.sockaddr*, i32 }
%struct.iovec = type { i32, i32* }
%struct.timeval = type { i64, i64 }
%struct.TYPE_10__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i64 (%struct.TYPE_12__*)* }
%struct.msghdr = type { i32, i32, %struct.iovec*, %struct.sockaddr*, i32 }

@SOCK_DGRAM = common dso_local global i32 0, align 4
@IPPROTO_UDP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"socket(2) failed\00", align 1
@AF_INET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"bind(2) failed\00", align 1
@ctx = common dso_local global %struct.TYPE_13__ zeroinitializer, align 8
@next_cid = common dso_local global %struct.TYPE_14__ zeroinitializer, align 4
@resumption_token = common dso_local global i32 0, align 4
@hs_properties = common dso_local global i32 0, align 4
@resumed_transport_params = common dso_local global i32 0, align 4
@INT64_MAX = common dso_local global i64 0, align 8
@enqueue_requests_at = common dso_local global i64 0, align 8
@errno = common dso_local global i64 0, align 8
@EINTR = common dso_local global i64 0, align 8
@verbosity = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"recvmsg\00", align 1
@SIZE_MAX = common dso_local global i64 0, align 8
@QUICLY_ERROR_FREE_CONNECTION = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"quicly_send returned %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sockaddr*, i8*)* @run_client to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @run_client(%struct.sockaddr* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sockaddr*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.sockaddr_in, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.timeval*, align 8
  %12 = alloca %struct.timeval, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.TYPE_10__*, align 8
  %15 = alloca i64, align 8
  %16 = alloca [4096 x i32], align 16
  %17 = alloca %struct.msghdr, align 8
  %18 = alloca %struct.sockaddr, align 4
  %19 = alloca %struct.iovec, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  %23 = alloca i64, align 8
  store %struct.sockaddr* %0, %struct.sockaddr** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32* null, i32** %9, align 8
  %24 = load %struct.sockaddr*, %struct.sockaddr** %4, align 8
  %25 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @SOCK_DGRAM, align 4
  %28 = load i32, i32* @IPPROTO_UDP, align 4
  %29 = call i32 @socket(i32 %26, i32 %27, i32 %28)
  store i32 %29, i32* %6, align 4
  %30 = icmp eq i32 %29, -1
  br i1 %30, label %31, label %33

31:                                               ; preds = %2
  %32 = call i32 @perror(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %208

33:                                               ; preds = %2
  %34 = call i32 @memset(%struct.sockaddr_in* %8, i32 0, i32 32)
  %35 = load i32, i32* @AF_INET, align 4
  %36 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %8, i32 0, i32 4
  store i32 %35, i32* %36, align 8
  %37 = load i32, i32* %6, align 4
  %38 = bitcast %struct.sockaddr_in* %8 to i8*
  %39 = call i64 @bind(i32 %37, i8* %38, i32 32)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %33
  %42 = call i32 @perror(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %208

43:                                               ; preds = %33
  %44 = load i8*, i8** %5, align 8
  %45 = load %struct.sockaddr*, %struct.sockaddr** %4, align 8
  %46 = load i32, i32* @resumption_token, align 4
  %47 = call i32 @quicly_connect(i32** %9, %struct.TYPE_13__* @ctx, i8* %44, %struct.sockaddr* %45, i32* null, %struct.TYPE_14__* @next_cid, i32 %46, i32* @hs_properties, i32* @resumed_transport_params)
  store i32 %47, i32* %7, align 4
  %48 = load i32, i32* %7, align 4
  %49 = icmp eq i32 %48, 0
  %50 = zext i1 %49 to i32
  %51 = call i32 @assert(i32 %50)
  %52 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @next_cid, i32 0, i32 0), align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @next_cid, i32 0, i32 0), align 4
  %54 = load i32*, i32** %9, align 8
  %55 = call i32 @enqueue_requests(i32* %54)
  %56 = load i32, i32* %6, align 4
  %57 = load i32*, i32** %9, align 8
  %58 = call i32 @send_pending(i32 %56, i32* %57)
  br label %59

59:                                               ; preds = %43, %207
  br label %60

60:                                               ; preds = %122, %59
  %61 = load i32*, i32** %9, align 8
  %62 = icmp ne i32* %61, null
  br i1 %62, label %63, label %66

63:                                               ; preds = %60
  %64 = load i32*, i32** %9, align 8
  %65 = call i64 @quicly_get_first_timeout(i32* %64)
  br label %68

66:                                               ; preds = %60
  %67 = load i64, i64* @INT64_MAX, align 8
  br label %68

68:                                               ; preds = %66, %63
  %69 = phi i64 [ %65, %63 ], [ %67, %66 ]
  store i64 %69, i64* %13, align 8
  %70 = load i64, i64* @enqueue_requests_at, align 8
  %71 = load i64, i64* %13, align 8
  %72 = icmp slt i64 %70, %71
  br i1 %72, label %73, label %75

73:                                               ; preds = %68
  %74 = load i64, i64* @enqueue_requests_at, align 8
  store i64 %74, i64* %13, align 8
  br label %75

75:                                               ; preds = %73, %68
  %76 = load i64, i64* %13, align 8
  %77 = load i64, i64* @INT64_MAX, align 8
  %78 = icmp ne i64 %76, %77
  br i1 %78, label %79, label %107

79:                                               ; preds = %75
  %80 = load i32*, i32** %9, align 8
  %81 = call %struct.TYPE_10__* @quicly_get_context(i32* %80)
  store %struct.TYPE_10__* %81, %struct.TYPE_10__** %14, align 8
  %82 = load i64, i64* %13, align 8
  %83 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 0
  %85 = load %struct.TYPE_12__*, %struct.TYPE_12__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %85, i32 0, i32 0
  %87 = load i64 (%struct.TYPE_12__*)*, i64 (%struct.TYPE_12__*)** %86, align 8
  %88 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i32 0, i32 0
  %90 = load %struct.TYPE_12__*, %struct.TYPE_12__** %89, align 8
  %91 = call i64 %87(%struct.TYPE_12__* %90)
  %92 = sub nsw i64 %82, %91
  store i64 %92, i64* %15, align 8
  %93 = load i64, i64* %15, align 8
  %94 = icmp sgt i64 %93, 0
  br i1 %94, label %95, label %103

95:                                               ; preds = %79
  %96 = load i64, i64* %15, align 8
  %97 = sdiv i64 %96, 1000
  %98 = getelementptr inbounds %struct.timeval, %struct.timeval* %12, i32 0, i32 1
  store i64 %97, i64* %98, align 8
  %99 = load i64, i64* %15, align 8
  %100 = srem i64 %99, 1000
  %101 = mul nsw i64 %100, 1000
  %102 = getelementptr inbounds %struct.timeval, %struct.timeval* %12, i32 0, i32 0
  store i64 %101, i64* %102, align 8
  br label %106

103:                                              ; preds = %79
  %104 = getelementptr inbounds %struct.timeval, %struct.timeval* %12, i32 0, i32 1
  store i64 0, i64* %104, align 8
  %105 = getelementptr inbounds %struct.timeval, %struct.timeval* %12, i32 0, i32 0
  store i64 0, i64* %105, align 8
  br label %106

106:                                              ; preds = %103, %95
  store %struct.timeval* %12, %struct.timeval** %11, align 8
  br label %108

107:                                              ; preds = %75
  store %struct.timeval* null, %struct.timeval** %11, align 8
  br label %108

108:                                              ; preds = %107, %106
  %109 = call i32 @FD_ZERO(i32* %10)
  %110 = load i32, i32* %6, align 4
  %111 = call i32 @FD_SET(i32 %110, i32* %10)
  br label %112

112:                                              ; preds = %108
  %113 = load i32, i32* %6, align 4
  %114 = add nsw i32 %113, 1
  %115 = load %struct.timeval*, %struct.timeval** %11, align 8
  %116 = call i32 @select(i32 %114, i32* %10, i32* null, i32* null, %struct.timeval* %115)
  %117 = icmp eq i32 %116, -1
  br i1 %117, label %118, label %122

118:                                              ; preds = %112
  %119 = load i64, i64* @errno, align 8
  %120 = load i64, i64* @EINTR, align 8
  %121 = icmp eq i64 %119, %120
  br label %122

122:                                              ; preds = %118, %112
  %123 = phi i1 [ false, %112 ], [ %121, %118 ]
  br i1 %123, label %60, label %124

124:                                              ; preds = %122
  %125 = load i64, i64* @enqueue_requests_at, align 8
  %126 = load %struct.TYPE_11__*, %struct.TYPE_11__** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @ctx, i32 0, i32 0), align 8
  %127 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %126, i32 0, i32 0
  %128 = load i64 (%struct.TYPE_11__*)*, i64 (%struct.TYPE_11__*)** %127, align 8
  %129 = load %struct.TYPE_11__*, %struct.TYPE_11__** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @ctx, i32 0, i32 0), align 8
  %130 = call i64 %128(%struct.TYPE_11__* %129)
  %131 = icmp sle i64 %125, %130
  br i1 %131, label %132, label %135

132:                                              ; preds = %124
  %133 = load i32*, i32** %9, align 8
  %134 = call i32 @enqueue_requests(i32* %133)
  br label %135

135:                                              ; preds = %132, %124
  %136 = load i32, i32* %6, align 4
  %137 = call i64 @FD_ISSET(i32 %136, i32* %10)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %186

139:                                              ; preds = %135
  %140 = bitcast %struct.msghdr* %17 to %struct.sockaddr_in*
  %141 = call i32 @memset(%struct.sockaddr_in* %140, i32 0, i32 32)
  %142 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %17, i32 0, i32 3
  store %struct.sockaddr* %18, %struct.sockaddr** %142, align 8
  %143 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %17, i32 0, i32 0
  store i32 4, i32* %143, align 8
  %144 = getelementptr inbounds [4096 x i32], [4096 x i32]* %16, i64 0, i64 0
  %145 = getelementptr inbounds %struct.iovec, %struct.iovec* %19, i32 0, i32 1
  store i32* %144, i32** %145, align 8
  %146 = getelementptr inbounds %struct.iovec, %struct.iovec* %19, i32 0, i32 0
  store i32 16384, i32* %146, align 8
  %147 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %17, i32 0, i32 2
  store %struct.iovec* %19, %struct.iovec** %147, align 8
  %148 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %17, i32 0, i32 1
  store i32 1, i32* %148, align 4
  br label %149

149:                                              ; preds = %154, %139
  %150 = load i32, i32* %6, align 4
  %151 = bitcast %struct.msghdr* %17 to %struct.sockaddr_in*
  %152 = call i64 @recvmsg(i32 %150, %struct.sockaddr_in* %151, i32 0)
  store i64 %152, i64* %20, align 8
  %153 = icmp ule i64 %152, 0
  br i1 %153, label %154, label %155

154:                                              ; preds = %149
  br label %149

155:                                              ; preds = %149
  %156 = load i32, i32* @verbosity, align 4
  %157 = icmp sge i32 %156, 2
  br i1 %157, label %158, label %162

158:                                              ; preds = %155
  %159 = getelementptr inbounds [4096 x i32], [4096 x i32]* %16, i64 0, i64 0
  %160 = load i64, i64* %20, align 8
  %161 = call i32 @hexdump(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32* %159, i64 %160)
  br label %162

162:                                              ; preds = %158, %155
  store i64 0, i64* %21, align 8
  br label %163

163:                                              ; preds = %179, %162
  %164 = load i64, i64* %21, align 8
  %165 = load i64, i64* %20, align 8
  %166 = icmp ne i64 %164, %165
  br i1 %166, label %167, label %185

167:                                              ; preds = %163
  %168 = getelementptr inbounds [4096 x i32], [4096 x i32]* %16, i64 0, i64 0
  %169 = load i64, i64* %21, align 8
  %170 = getelementptr inbounds i32, i32* %168, i64 %169
  %171 = load i64, i64* %20, align 8
  %172 = load i64, i64* %21, align 8
  %173 = sub i64 %171, %172
  %174 = call i64 @quicly_decode_packet(%struct.TYPE_13__* @ctx, i32* %22, i32* %170, i64 %173)
  store i64 %174, i64* %23, align 8
  %175 = load i64, i64* %23, align 8
  %176 = load i64, i64* @SIZE_MAX, align 8
  %177 = icmp eq i64 %175, %176
  br i1 %177, label %178, label %179

178:                                              ; preds = %167
  br label %185

179:                                              ; preds = %167
  %180 = load i32*, i32** %9, align 8
  %181 = call i32 @quicly_receive(i32* %180, i32* null, %struct.sockaddr* %18, i32* %22)
  %182 = load i64, i64* %23, align 8
  %183 = load i64, i64* %21, align 8
  %184 = add i64 %183, %182
  store i64 %184, i64* %21, align 8
  br label %163

185:                                              ; preds = %178, %163
  br label %186

186:                                              ; preds = %185, %135
  %187 = load i32*, i32** %9, align 8
  %188 = icmp ne i32* %187, null
  br i1 %188, label %189, label %207

189:                                              ; preds = %186
  %190 = load i32, i32* %6, align 4
  %191 = load i32*, i32** %9, align 8
  %192 = call i32 @send_pending(i32 %190, i32* %191)
  store i32 %192, i32* %7, align 4
  %193 = load i32, i32* %7, align 4
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %206

195:                                              ; preds = %189
  %196 = load i32*, i32** %9, align 8
  %197 = call i32 @quicly_free(i32* %196)
  store i32* null, i32** %9, align 8
  %198 = load i32, i32* %7, align 4
  %199 = load i32, i32* @QUICLY_ERROR_FREE_CONNECTION, align 4
  %200 = icmp eq i32 %198, %199
  br i1 %200, label %201, label %202

201:                                              ; preds = %195
  store i32 0, i32* %3, align 4
  br label %208

202:                                              ; preds = %195
  %203 = load i32, i32* @stderr, align 4
  %204 = load i32, i32* %7, align 4
  %205 = call i32 @fprintf(i32 %203, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 %204)
  store i32 1, i32* %3, align 4
  br label %208

206:                                              ; preds = %189
  br label %207

207:                                              ; preds = %206, %186
  br label %59

208:                                              ; preds = %202, %201, %41, %31
  %209 = load i32, i32* %3, align 4
  ret i32 %209
}

declare dso_local i32 @socket(i32, i32, i32) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @memset(%struct.sockaddr_in*, i32, i32) #1

declare dso_local i64 @bind(i32, i8*, i32) #1

declare dso_local i32 @quicly_connect(i32**, %struct.TYPE_13__*, i8*, %struct.sockaddr*, i32*, %struct.TYPE_14__*, i32, i32*, i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @enqueue_requests(i32*) #1

declare dso_local i32 @send_pending(i32, i32*) #1

declare dso_local i64 @quicly_get_first_timeout(i32*) #1

declare dso_local %struct.TYPE_10__* @quicly_get_context(i32*) #1

declare dso_local i32 @FD_ZERO(i32*) #1

declare dso_local i32 @FD_SET(i32, i32*) #1

declare dso_local i32 @select(i32, i32*, i32*, i32*, %struct.timeval*) #1

declare dso_local i64 @FD_ISSET(i32, i32*) #1

declare dso_local i64 @recvmsg(i32, %struct.sockaddr_in*, i32) #1

declare dso_local i32 @hexdump(i8*, i32*, i64) #1

declare dso_local i64 @quicly_decode_packet(%struct.TYPE_13__*, i32*, i32*, i64) #1

declare dso_local i32 @quicly_receive(i32*, i32*, %struct.sockaddr*, i32*) #1

declare dso_local i32 @quicly_free(i32*) #1

declare dso_local i32 @fprintf(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
