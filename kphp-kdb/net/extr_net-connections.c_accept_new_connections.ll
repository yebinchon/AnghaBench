; ModuleID = '/home/carl/AnghaBench/kphp-kdb/net/extr_net-connections.c_accept_new_connections.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/net/extr_net-connections.c_accept_new_connections.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.sockaddr_in46 = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i64, %struct.TYPE_13__, i32 }
%struct.TYPE_13__ = type { i32 }
%struct.connection = type { i64, i32, i32, i32, i32, %struct.TYPE_16__, %struct.TYPE_16__, %struct.TYPE_16__, %struct.TYPE_16__, i64, i64, %struct.TYPE_15__*, i8*, i8*, %struct.conn_query*, %struct.conn_query*, %struct.TYPE_14__, i32, i32, i8*, i8*, %struct.TYPE_12__, i32, i32, %struct.TYPE_10__, i32, %struct.TYPE_17__, i32, %struct.TYPE_17__, i32* }
%struct.TYPE_16__ = type { i64 }
%struct.TYPE_15__ = type { i32, i64 (%union.sockaddr_in46*)*, i32 }
%struct.conn_query = type { i32 }
%struct.TYPE_12__ = type { i64, i32, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_17__ = type { i64 }
%struct.sockaddr = type { i32 }

@ct_listen = common dso_local global i64 0, align 8
@errno = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [40 x i8] c"accept(%d) unexpectedly returns %d: %m\0A\00", align 1
@inbound_connections_accepted = common dso_local global i32 0, align 4
@MAX_EVENTS = common dso_local global i32 0, align 4
@Events = common dso_local global i32* null, align 8
@C_IPV6 = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i64 0, align 8
@AF_INET = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [66 x i8] c"accepted incoming connection of type %s at %s:%d -> %s:%d, fd=%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [75 x i8] c"accepted incoming ipv6 connection of type %s at [%s]:%d -> [%s]:%d, fd=%d\0A\00", align 1
@F_GETFL = common dso_local global i32 0, align 4
@F_SETFL = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [49 x i8] c"cannot set O_NONBLOCK on accepted socket %d: %m\0A\00", align 1
@MAX_CONNECTIONS = common dso_local global i32 0, align 4
@maxconn = common dso_local global i32 0, align 4
@max_connection = common dso_local global i32 0, align 4
@IPPROTO_TCP = common dso_local global i32 0, align 4
@TCP_NODELAY = common dso_local global i32 0, align 4
@tcp_maximize_buffers = common dso_local global i64 0, align 8
@Connections = common dso_local global %union.sockaddr_in46* null, align 8
@conn_generation = common dso_local global i64 0, align 8
@C_WANTRD = common dso_local global i32 0, align 4
@C_RAWMSG = common dso_local global i32 0, align 4
@BUFF_SIZE = common dso_local global i32 0, align 4
@conn_timer_wakeup_gateway = common dso_local global i32 0, align 4
@ct_inbound = common dso_local global i64 0, align 8
@conn_expect_query = common dso_local global i32 0, align 4
@server_read_write_gateway = common dso_local global i32 0, align 4
@EVT_READ = common dso_local global i32 0, align 4
@C_WANTWR = common dso_local global i32 0, align 4
@EVT_WRITE = common dso_local global i32 0, align 4
@EVT_SPEC = common dso_local global i32 0, align 4
@active_connections = common dso_local global i32 0, align 4
@C_SPECIAL = common dso_local global i32 0, align 4
@active_special_connections = common dso_local global i64 0, align 8
@max_special_connections = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [90 x i8] c"ERROR: forced to accept connection when special connections limit was reached (%d of %d)\0A\00", align 1
@EVA_REMOVE = common dso_local global i32 0, align 4
@C_NOQACK = common dso_local global i32 0, align 4
@TCP_WINDOW_CLAMP = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [57 x i8] c"error while setting window size for socket %d to %d: %m\0A\00", align 1
@SOL_SOCKET = common dso_local global i32 0, align 4
@SO_RCVBUF = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [56 x i8] c"window clamp for socket %d is %d, receive buffer is %d\0A\00", align 1
@ct_none = common dso_local global i64 0, align 8
@EVA_CONTINUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @accept_new_connections(%struct.connection* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.connection*, align 8
  %4 = alloca [64 x i8], align 16
  %5 = alloca [64 x i8], align 16
  %6 = alloca %union.sockaddr_in46, align 8
  %7 = alloca %union.sockaddr_in46, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.connection*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.connection* %0, %struct.connection** %3, align 8
  store i32 0, i32* %11, align 4
  %19 = load %struct.connection*, %struct.connection** %3, align 8
  %20 = getelementptr inbounds %struct.connection, %struct.connection* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @ct_listen, align 8
  %23 = icmp eq i64 %21, %22
  %24 = zext i1 %23 to i32
  %25 = call i32 @assert(i32 %24)
  br label %26

26:                                               ; preds = %631, %1
  store i32 16, i32* %8, align 4
  store i32 16, i32* %9, align 4
  %27 = call i32 @memset(%union.sockaddr_in46* %6, i32 0, i32 16)
  %28 = call i32 @memset(%union.sockaddr_in46* %7, i32 0, i32 16)
  %29 = load %struct.connection*, %struct.connection** %3, align 8
  %30 = getelementptr inbounds %struct.connection, %struct.connection* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = bitcast %union.sockaddr_in46* %6 to %struct.sockaddr*
  %33 = call i32 @accept(i32 %31, %struct.sockaddr* %32, i32* %8)
  store i32 %33, i32* %10, align 4
  %34 = load i32, i32* %10, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %51

36:                                               ; preds = %26
  %37 = load i32, i32* %11, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %50, label %39

39:                                               ; preds = %36
  %40 = load i64, i64* @errno, align 8
  %41 = load i64, i64* @EAGAIN, align 8
  %42 = icmp eq i64 %40, %41
  %43 = zext i1 %42 to i64
  %44 = select i1 %42, i32 1, i32 0
  %45 = load %struct.connection*, %struct.connection** %3, align 8
  %46 = getelementptr inbounds %struct.connection, %struct.connection* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* %10, align 4
  %49 = call i32 (i32, i8*, i32, i32, ...) @vkprintf(i32 %44, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %47, i32 %48)
  br label %50

50:                                               ; preds = %39, %36
  br label %632

51:                                               ; preds = %26
  %52 = load i32, i32* %11, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %11, align 4
  %54 = load i32, i32* @inbound_connections_accepted, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* @inbound_connections_accepted, align 4
  %56 = load i32, i32* %10, align 4
  %57 = bitcast %union.sockaddr_in46* %7 to %struct.sockaddr*
  %58 = call i32 @getsockname(i32 %56, %struct.sockaddr* %57, i32* %9)
  %59 = load i32, i32* %10, align 4
  %60 = load i32, i32* @MAX_EVENTS, align 4
  %61 = icmp slt i32 %59, %60
  %62 = zext i1 %61 to i32
  %63 = call i32 @assert(i32 %62)
  %64 = load i32*, i32** @Events, align 8
  %65 = load i32, i32* %10, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  store i32* %67, i32** %14, align 8
  %68 = load i32, i32* %8, align 4
  %69 = load i32, i32* %9, align 4
  %70 = icmp eq i32 %68, %69
  %71 = zext i1 %70 to i32
  %72 = call i32 @assert(i32 %71)
  %73 = load %struct.connection*, %struct.connection** %3, align 8
  %74 = getelementptr inbounds %struct.connection, %struct.connection* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @C_IPV6, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %99

79:                                               ; preds = %51
  %80 = load i32, i32* %8, align 4
  %81 = zext i32 %80 to i64
  %82 = icmp eq i64 %81, 4
  %83 = zext i1 %82 to i32
  %84 = call i32 @assert(i32 %83)
  %85 = bitcast %union.sockaddr_in46* %6 to %struct.TYPE_14__*
  %86 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @AF_INET6, align 8
  %89 = icmp eq i64 %87, %88
  %90 = zext i1 %89 to i32
  %91 = call i32 @assert(i32 %90)
  %92 = bitcast %union.sockaddr_in46* %7 to %struct.TYPE_14__*
  %93 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @AF_INET6, align 8
  %96 = icmp eq i64 %94, %95
  %97 = zext i1 %96 to i32
  %98 = call i32 @assert(i32 %97)
  br label %119

99:                                               ; preds = %51
  %100 = load i32, i32* %8, align 4
  %101 = zext i32 %100 to i64
  %102 = icmp eq i64 %101, 4
  %103 = zext i1 %102 to i32
  %104 = call i32 @assert(i32 %103)
  %105 = bitcast %union.sockaddr_in46* %6 to %struct.TYPE_12__*
  %106 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* @AF_INET, align 8
  %109 = icmp eq i64 %107, %108
  %110 = zext i1 %109 to i32
  %111 = call i32 @assert(i32 %110)
  %112 = bitcast %union.sockaddr_in46* %7 to %struct.TYPE_12__*
  %113 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* @AF_INET, align 8
  %116 = icmp eq i64 %114, %115
  %117 = zext i1 %116 to i32
  %118 = call i32 @assert(i32 %117)
  br label %119

119:                                              ; preds = %99, %79
  %120 = bitcast %union.sockaddr_in46* %6 to %struct.TYPE_12__*
  %121 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = load i64, i64* @AF_INET, align 8
  %124 = icmp eq i64 %122, %123
  br i1 %124, label %125, label %153

125:                                              ; preds = %119
  %126 = load %struct.connection*, %struct.connection** %3, align 8
  %127 = getelementptr inbounds %struct.connection, %struct.connection* %126, i32 0, i32 11
  %128 = load %struct.TYPE_15__*, %struct.TYPE_15__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 8
  %131 = bitcast %union.sockaddr_in46* %6 to %struct.TYPE_12__*
  %132 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %131, i32 0, i32 2
  %133 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0
  %136 = call i32 @conv_addr(i32 %134, i8* %135)
  %137 = bitcast %union.sockaddr_in46* %6 to %struct.TYPE_12__*
  %138 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 8
  %140 = call i8* @ntohs(i32 %139)
  %141 = bitcast %union.sockaddr_in46* %7 to %struct.TYPE_12__*
  %142 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %141, i32 0, i32 2
  %143 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 0
  %146 = call i32 @conv_addr(i32 %144, i8* %145)
  %147 = bitcast %union.sockaddr_in46* %7 to %struct.TYPE_12__*
  %148 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 8
  %150 = call i8* @ntohs(i32 %149)
  %151 = load i32, i32* %10, align 4
  %152 = call i32 (i32, i8*, i32, i32, ...) @vkprintf(i32 1, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.1, i64 0, i64 0), i32 %130, i32 %136, i8* %140, i32 %146, i8* %150, i32 %151)
  br label %181

153:                                              ; preds = %119
  %154 = load %struct.connection*, %struct.connection** %3, align 8
  %155 = getelementptr inbounds %struct.connection, %struct.connection* %154, i32 0, i32 11
  %156 = load %struct.TYPE_15__*, %struct.TYPE_15__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %156, i32 0, i32 2
  %158 = load i32, i32* %157, align 8
  %159 = bitcast %union.sockaddr_in46* %6 to %struct.TYPE_14__*
  %160 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %159, i32 0, i32 1
  %161 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0
  %164 = call i32 @conv_addr6(i32 %162, i8* %163)
  %165 = bitcast %union.sockaddr_in46* %6 to %struct.TYPE_14__*
  %166 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %165, i32 0, i32 2
  %167 = load i32, i32* %166, align 4
  %168 = call i8* @ntohs(i32 %167)
  %169 = bitcast %union.sockaddr_in46* %7 to %struct.TYPE_14__*
  %170 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %169, i32 0, i32 1
  %171 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 0
  %174 = call i32 @conv_addr6(i32 %172, i8* %173)
  %175 = bitcast %union.sockaddr_in46* %7 to %struct.TYPE_14__*
  %176 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %175, i32 0, i32 2
  %177 = load i32, i32* %176, align 4
  %178 = call i8* @ntohs(i32 %177)
  %179 = load i32, i32* %10, align 4
  %180 = call i32 (i32, i8*, i32, i32, ...) @vkprintf(i32 1, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.2, i64 0, i64 0), i32 %158, i32 %164, i8* %168, i32 %174, i8* %178, i32 %179)
  br label %181

181:                                              ; preds = %153, %125
  %182 = load i32, i32* %10, align 4
  %183 = load i32, i32* @F_GETFL, align 4
  %184 = call i64 @fcntl(i32 %182, i32 %183, i32 0)
  %185 = icmp slt i64 %184, 0
  %186 = zext i1 %185 to i32
  store i32 %186, i32* %12, align 4
  br i1 %185, label %195, label %187

187:                                              ; preds = %181
  %188 = load i32, i32* %10, align 4
  %189 = load i32, i32* @F_SETFL, align 4
  %190 = load i32, i32* %12, align 4
  %191 = load i32, i32* @O_NONBLOCK, align 4
  %192 = or i32 %190, %191
  %193 = call i64 @fcntl(i32 %188, i32 %189, i32 %192)
  %194 = icmp slt i64 %193, 0
  br i1 %194, label %195, label %201

195:                                              ; preds = %187, %181
  %196 = load i32, i32* %10, align 4
  %197 = sext i32 %196 to i64
  %198 = call i32 (i8*, i64, ...) @kprintf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0), i64 %197)
  %199 = load i32, i32* %10, align 4
  %200 = call i32 @close(i32 %199)
  br label %631

201:                                              ; preds = %187
  %202 = load i32, i32* %10, align 4
  %203 = load i32, i32* @MAX_CONNECTIONS, align 4
  %204 = icmp sge i32 %202, %203
  br i1 %204, label %212, label %205

205:                                              ; preds = %201
  %206 = load i32, i32* %10, align 4
  %207 = load i32, i32* @maxconn, align 4
  %208 = icmp sge i32 %206, %207
  br i1 %208, label %209, label %215

209:                                              ; preds = %205
  %210 = load i32, i32* @maxconn, align 4
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %215

212:                                              ; preds = %209, %201
  %213 = load i32, i32* %10, align 4
  %214 = call i32 @close(i32 %213)
  br label %631

215:                                              ; preds = %209, %205
  %216 = load i32, i32* %10, align 4
  %217 = load i32, i32* @max_connection, align 4
  %218 = icmp sgt i32 %216, %217
  br i1 %218, label %219, label %221

219:                                              ; preds = %215
  %220 = load i32, i32* %10, align 4
  store i32 %220, i32* @max_connection, align 4
  br label %221

221:                                              ; preds = %219, %215
  store i32 1, i32* %12, align 4
  %222 = load i32, i32* %10, align 4
  %223 = load i32, i32* @IPPROTO_TCP, align 4
  %224 = load i32, i32* @TCP_NODELAY, align 4
  %225 = call i64 @setsockopt(i32 %222, i32 %223, i32 %224, i32* %12, i32 4)
  %226 = load i64, i64* @tcp_maximize_buffers, align 8
  %227 = icmp ne i64 %226, 0
  br i1 %227, label %228, label %233

228:                                              ; preds = %221
  %229 = load i32, i32* %10, align 4
  %230 = call i32 @maximize_sndbuf(i32 %229, i32 0)
  %231 = load i32, i32* %10, align 4
  %232 = call i32 @maximize_rcvbuf(i32 %231, i32 0)
  br label %233

233:                                              ; preds = %228, %221
  %234 = load %union.sockaddr_in46*, %union.sockaddr_in46** @Connections, align 8
  %235 = load i32, i32* %10, align 4
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds %union.sockaddr_in46, %union.sockaddr_in46* %234, i64 %236
  %238 = bitcast %union.sockaddr_in46* %237 to %struct.connection*
  store %struct.connection* %238, %struct.connection** %13, align 8
  %239 = load %struct.connection*, %struct.connection** %13, align 8
  %240 = bitcast %struct.connection* %239 to %union.sockaddr_in46*
  %241 = call i32 @memset(%union.sockaddr_in46* %240, i32 0, i32 216)
  %242 = load i32, i32* %10, align 4
  %243 = load %struct.connection*, %struct.connection** %13, align 8
  %244 = getelementptr inbounds %struct.connection, %struct.connection* %243, i32 0, i32 1
  store i32 %242, i32* %244, align 8
  %245 = load i32*, i32** %14, align 8
  %246 = load %struct.connection*, %struct.connection** %13, align 8
  %247 = getelementptr inbounds %struct.connection, %struct.connection* %246, i32 0, i32 29
  store i32* %245, i32** %247, align 8
  %248 = load i64, i64* @conn_generation, align 8
  %249 = add nsw i64 %248, 1
  store i64 %249, i64* @conn_generation, align 8
  %250 = load %struct.connection*, %struct.connection** %13, align 8
  %251 = getelementptr inbounds %struct.connection, %struct.connection* %250, i32 0, i32 9
  store i64 %249, i64* %251, align 8
  %252 = load i32, i32* @C_WANTRD, align 4
  %253 = load %struct.connection*, %struct.connection** %13, align 8
  %254 = getelementptr inbounds %struct.connection, %struct.connection* %253, i32 0, i32 2
  store i32 %252, i32* %254, align 4
  %255 = load %struct.connection*, %struct.connection** %3, align 8
  %256 = getelementptr inbounds %struct.connection, %struct.connection* %255, i32 0, i32 2
  %257 = load i32, i32* %256, align 4
  %258 = load i32, i32* @C_RAWMSG, align 4
  %259 = and i32 %257, %258
  %260 = icmp ne i32 %259, 0
  br i1 %260, label %270, label %261

261:                                              ; preds = %233
  %262 = load %struct.connection*, %struct.connection** %3, align 8
  %263 = getelementptr inbounds %struct.connection, %struct.connection* %262, i32 0, i32 11
  %264 = load %struct.TYPE_15__*, %struct.TYPE_15__** %263, align 8
  %265 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %264, i32 0, i32 0
  %266 = load i32, i32* %265, align 8
  %267 = load i32, i32* @C_RAWMSG, align 4
  %268 = and i32 %266, %267
  %269 = icmp ne i32 %268, 0
  br i1 %269, label %270, label %294

270:                                              ; preds = %261, %233
  %271 = load i32, i32* @C_RAWMSG, align 4
  %272 = load %struct.connection*, %struct.connection** %13, align 8
  %273 = getelementptr inbounds %struct.connection, %struct.connection* %272, i32 0, i32 2
  %274 = load i32, i32* %273, align 4
  %275 = or i32 %274, %271
  store i32 %275, i32* %273, align 4
  %276 = load %struct.connection*, %struct.connection** %13, align 8
  %277 = getelementptr inbounds %struct.connection, %struct.connection* %276, i32 0, i32 26
  %278 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %277, i32 0, i32 0
  store i64 0, i64* %278, align 8
  %279 = load %struct.connection*, %struct.connection** %13, align 8
  %280 = getelementptr inbounds %struct.connection, %struct.connection* %279, i32 0, i32 28
  %281 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %280, i32 0, i32 0
  store i64 0, i64* %281, align 8
  %282 = load %struct.connection*, %struct.connection** %13, align 8
  %283 = getelementptr inbounds %struct.connection, %struct.connection* %282, i32 0, i32 8
  %284 = call i32 @rwm_init(%struct.TYPE_16__* %283, i32 0)
  %285 = load %struct.connection*, %struct.connection** %13, align 8
  %286 = getelementptr inbounds %struct.connection, %struct.connection* %285, i32 0, i32 7
  %287 = call i32 @rwm_init(%struct.TYPE_16__* %286, i32 0)
  %288 = load %struct.connection*, %struct.connection** %13, align 8
  %289 = getelementptr inbounds %struct.connection, %struct.connection* %288, i32 0, i32 6
  %290 = call i32 @rwm_init(%struct.TYPE_16__* %289, i32 0)
  %291 = load %struct.connection*, %struct.connection** %13, align 8
  %292 = getelementptr inbounds %struct.connection, %struct.connection* %291, i32 0, i32 5
  %293 = call i32 @rwm_init(%struct.TYPE_16__* %292, i32 0)
  br label %315

294:                                              ; preds = %261
  %295 = load %struct.connection*, %struct.connection** %13, align 8
  %296 = getelementptr inbounds %struct.connection, %struct.connection* %295, i32 0, i32 7
  %297 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %296, i32 0, i32 0
  store i64 0, i64* %297, align 8
  %298 = load %struct.connection*, %struct.connection** %13, align 8
  %299 = getelementptr inbounds %struct.connection, %struct.connection* %298, i32 0, i32 8
  %300 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %299, i32 0, i32 0
  store i64 0, i64* %300, align 8
  %301 = load %struct.connection*, %struct.connection** %13, align 8
  %302 = getelementptr inbounds %struct.connection, %struct.connection* %301, i32 0, i32 28
  %303 = load %struct.connection*, %struct.connection** %13, align 8
  %304 = getelementptr inbounds %struct.connection, %struct.connection* %303, i32 0, i32 27
  %305 = load i32, i32* %304, align 8
  %306 = load i32, i32* @BUFF_SIZE, align 4
  %307 = call i32 @init_builtin_buffer(%struct.TYPE_17__* %302, i32 %305, i32 %306)
  %308 = load %struct.connection*, %struct.connection** %13, align 8
  %309 = getelementptr inbounds %struct.connection, %struct.connection* %308, i32 0, i32 26
  %310 = load %struct.connection*, %struct.connection** %13, align 8
  %311 = getelementptr inbounds %struct.connection, %struct.connection* %310, i32 0, i32 25
  %312 = load i32, i32* %311, align 4
  %313 = load i32, i32* @BUFF_SIZE, align 4
  %314 = call i32 @init_builtin_buffer(%struct.TYPE_17__* %309, i32 %312, i32 %313)
  br label %315

315:                                              ; preds = %294, %270
  %316 = load i32, i32* @conn_timer_wakeup_gateway, align 4
  %317 = load %struct.connection*, %struct.connection** %13, align 8
  %318 = getelementptr inbounds %struct.connection, %struct.connection* %317, i32 0, i32 24
  %319 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %318, i32 0, i32 0
  store i32 %316, i32* %319, align 8
  %320 = load %struct.connection*, %struct.connection** %3, align 8
  %321 = getelementptr inbounds %struct.connection, %struct.connection* %320, i32 0, i32 11
  %322 = load %struct.TYPE_15__*, %struct.TYPE_15__** %321, align 8
  %323 = load %struct.connection*, %struct.connection** %13, align 8
  %324 = getelementptr inbounds %struct.connection, %struct.connection* %323, i32 0, i32 11
  store %struct.TYPE_15__* %322, %struct.TYPE_15__** %324, align 8
  %325 = load %struct.connection*, %struct.connection** %3, align 8
  %326 = getelementptr inbounds %struct.connection, %struct.connection* %325, i32 0, i32 23
  %327 = load i32, i32* %326, align 4
  %328 = load %struct.connection*, %struct.connection** %13, align 8
  %329 = getelementptr inbounds %struct.connection, %struct.connection* %328, i32 0, i32 23
  store i32 %327, i32* %329, align 4
  %330 = load i64, i64* @ct_inbound, align 8
  %331 = load %struct.connection*, %struct.connection** %13, align 8
  %332 = getelementptr inbounds %struct.connection, %struct.connection* %331, i32 0, i32 0
  store i64 %330, i64* %332, align 8
  %333 = load i32, i32* @conn_expect_query, align 4
  %334 = load %struct.connection*, %struct.connection** %13, align 8
  %335 = getelementptr inbounds %struct.connection, %struct.connection* %334, i32 0, i32 22
  store i32 %333, i32* %335, align 8
  %336 = bitcast %union.sockaddr_in46* %6 to %struct.TYPE_12__*
  %337 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %336, i32 0, i32 0
  %338 = load i64, i64* %337, align 8
  %339 = load i64, i64* @AF_INET, align 8
  %340 = icmp eq i64 %338, %339
  br i1 %340, label %341, label %368

341:                                              ; preds = %315
  %342 = bitcast %union.sockaddr_in46* %7 to %struct.TYPE_12__*
  %343 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %342, i32 0, i32 2
  %344 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %343, i32 0, i32 0
  %345 = load i32, i32* %344, align 4
  %346 = call i8* @ntohl(i32 %345)
  %347 = load %struct.connection*, %struct.connection** %13, align 8
  %348 = getelementptr inbounds %struct.connection, %struct.connection* %347, i32 0, i32 20
  store i8* %346, i8** %348, align 8
  %349 = bitcast %union.sockaddr_in46* %7 to %struct.TYPE_12__*
  %350 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %349, i32 0, i32 1
  %351 = load i32, i32* %350, align 8
  %352 = call i8* @ntohs(i32 %351)
  %353 = load %struct.connection*, %struct.connection** %13, align 8
  %354 = getelementptr inbounds %struct.connection, %struct.connection* %353, i32 0, i32 12
  store i8* %352, i8** %354, align 8
  %355 = bitcast %union.sockaddr_in46* %6 to %struct.TYPE_12__*
  %356 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %355, i32 0, i32 2
  %357 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %356, i32 0, i32 0
  %358 = load i32, i32* %357, align 4
  %359 = call i8* @ntohl(i32 %358)
  %360 = load %struct.connection*, %struct.connection** %13, align 8
  %361 = getelementptr inbounds %struct.connection, %struct.connection* %360, i32 0, i32 19
  store i8* %359, i8** %361, align 8
  %362 = bitcast %union.sockaddr_in46* %6 to %struct.TYPE_12__*
  %363 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %362, i32 0, i32 1
  %364 = load i32, i32* %363, align 8
  %365 = call i8* @ntohs(i32 %364)
  %366 = load %struct.connection*, %struct.connection** %13, align 8
  %367 = getelementptr inbounds %struct.connection, %struct.connection* %366, i32 0, i32 13
  store i8* %365, i8** %367, align 8
  br label %445

368:                                              ; preds = %315
  %369 = bitcast %union.sockaddr_in46* %6 to %struct.TYPE_14__*
  %370 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %369, i32 0, i32 1
  %371 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %370, i32 0, i32 0
  %372 = load i32, i32* %371, align 8
  %373 = call i32 @is_4in6(i32 %372)
  %374 = icmp ne i32 %373, 0
  br i1 %374, label %375, label %410

375:                                              ; preds = %368
  %376 = bitcast %union.sockaddr_in46* %7 to %struct.TYPE_14__*
  %377 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %376, i32 0, i32 1
  %378 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %377, i32 0, i32 0
  %379 = load i32, i32* %378, align 8
  %380 = call i32 @is_4in6(i32 %379)
  %381 = call i32 @assert(i32 %380)
  %382 = bitcast %union.sockaddr_in46* %7 to %struct.TYPE_14__*
  %383 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %382, i32 0, i32 1
  %384 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %383, i32 0, i32 0
  %385 = load i32, i32* %384, align 8
  %386 = call i32 @extract_4in6(i32 %385)
  %387 = call i8* @ntohl(i32 %386)
  %388 = load %struct.connection*, %struct.connection** %13, align 8
  %389 = getelementptr inbounds %struct.connection, %struct.connection* %388, i32 0, i32 20
  store i8* %387, i8** %389, align 8
  %390 = bitcast %union.sockaddr_in46* %7 to %struct.TYPE_14__*
  %391 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %390, i32 0, i32 2
  %392 = load i32, i32* %391, align 4
  %393 = call i8* @ntohs(i32 %392)
  %394 = load %struct.connection*, %struct.connection** %13, align 8
  %395 = getelementptr inbounds %struct.connection, %struct.connection* %394, i32 0, i32 12
  store i8* %393, i8** %395, align 8
  %396 = bitcast %union.sockaddr_in46* %6 to %struct.TYPE_14__*
  %397 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %396, i32 0, i32 1
  %398 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %397, i32 0, i32 0
  %399 = load i32, i32* %398, align 8
  %400 = call i32 @extract_4in6(i32 %399)
  %401 = call i8* @ntohl(i32 %400)
  %402 = load %struct.connection*, %struct.connection** %13, align 8
  %403 = getelementptr inbounds %struct.connection, %struct.connection* %402, i32 0, i32 19
  store i8* %401, i8** %403, align 8
  %404 = bitcast %union.sockaddr_in46* %6 to %struct.TYPE_14__*
  %405 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %404, i32 0, i32 2
  %406 = load i32, i32* %405, align 4
  %407 = call i8* @ntohs(i32 %406)
  %408 = load %struct.connection*, %struct.connection** %13, align 8
  %409 = getelementptr inbounds %struct.connection, %struct.connection* %408, i32 0, i32 13
  store i8* %407, i8** %409, align 8
  br label %444

410:                                              ; preds = %368
  %411 = bitcast %union.sockaddr_in46* %7 to %struct.TYPE_14__*
  %412 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %411, i32 0, i32 2
  %413 = load i32, i32* %412, align 4
  %414 = call i8* @ntohs(i32 %413)
  %415 = load %struct.connection*, %struct.connection** %13, align 8
  %416 = getelementptr inbounds %struct.connection, %struct.connection* %415, i32 0, i32 12
  store i8* %414, i8** %416, align 8
  %417 = bitcast %union.sockaddr_in46* %6 to %struct.TYPE_14__*
  %418 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %417, i32 0, i32 2
  %419 = load i32, i32* %418, align 4
  %420 = call i8* @ntohs(i32 %419)
  %421 = load %struct.connection*, %struct.connection** %13, align 8
  %422 = getelementptr inbounds %struct.connection, %struct.connection* %421, i32 0, i32 13
  store i8* %420, i8** %422, align 8
  %423 = load %struct.connection*, %struct.connection** %13, align 8
  %424 = getelementptr inbounds %struct.connection, %struct.connection* %423, i32 0, i32 18
  %425 = load i32, i32* %424, align 4
  %426 = bitcast %union.sockaddr_in46* %7 to %struct.TYPE_14__*
  %427 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %426, i32 0, i32 1
  %428 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %427, i32 0, i32 0
  %429 = load i32, i32* %428, align 8
  %430 = call i32 @memcpy(i32 %425, i32 %429, i32 16)
  %431 = load %struct.connection*, %struct.connection** %13, align 8
  %432 = getelementptr inbounds %struct.connection, %struct.connection* %431, i32 0, i32 17
  %433 = load i32, i32* %432, align 8
  %434 = bitcast %union.sockaddr_in46* %6 to %struct.TYPE_14__*
  %435 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %434, i32 0, i32 1
  %436 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %435, i32 0, i32 0
  %437 = load i32, i32* %436, align 8
  %438 = call i32 @memcpy(i32 %433, i32 %437, i32 16)
  %439 = load i32, i32* @C_IPV6, align 4
  %440 = load %struct.connection*, %struct.connection** %13, align 8
  %441 = getelementptr inbounds %struct.connection, %struct.connection* %440, i32 0, i32 2
  %442 = load i32, i32* %441, align 4
  %443 = or i32 %442, %439
  store i32 %443, i32* %441, align 4
  br label %444

444:                                              ; preds = %410, %375
  br label %445

445:                                              ; preds = %444, %341
  %446 = load %struct.connection*, %struct.connection** %13, align 8
  %447 = bitcast %struct.connection* %446 to %struct.conn_query*
  %448 = load %struct.connection*, %struct.connection** %13, align 8
  %449 = getelementptr inbounds %struct.connection, %struct.connection* %448, i32 0, i32 14
  store %struct.conn_query* %447, %struct.conn_query** %449, align 8
  %450 = load %struct.connection*, %struct.connection** %13, align 8
  %451 = getelementptr inbounds %struct.connection, %struct.connection* %450, i32 0, i32 15
  store %struct.conn_query* %447, %struct.conn_query** %451, align 8
  %452 = load %struct.connection*, %struct.connection** %13, align 8
  %453 = getelementptr inbounds %struct.connection, %struct.connection* %452, i32 0, i32 11
  %454 = load %struct.TYPE_15__*, %struct.TYPE_15__** %453, align 8
  %455 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %454, i32 0, i32 2
  %456 = load i32, i32* %455, align 8
  %457 = load %struct.connection*, %struct.connection** %13, align 8
  %458 = bitcast %struct.connection* %457 to %union.sockaddr_in46*
  %459 = call i32 @show_remote_ip(%union.sockaddr_in46* %458)
  %460 = load %struct.connection*, %struct.connection** %13, align 8
  %461 = getelementptr inbounds %struct.connection, %struct.connection* %460, i32 0, i32 13
  %462 = load i8*, i8** %461, align 8
  %463 = load %struct.connection*, %struct.connection** %13, align 8
  %464 = bitcast %struct.connection* %463 to %union.sockaddr_in46*
  %465 = call i32 @show_our_ip(%union.sockaddr_in46* %464)
  %466 = load %struct.connection*, %struct.connection** %13, align 8
  %467 = getelementptr inbounds %struct.connection, %struct.connection* %466, i32 0, i32 12
  %468 = load i8*, i8** %467, align 8
  %469 = load i32, i32* %10, align 4
  %470 = call i32 (i32, i8*, i32, i32, ...) @vkprintf(i32 2, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.1, i64 0, i64 0), i32 %456, i32 %459, i8* %462, i32 %465, i8* %468, i32 %469)
  %471 = load %struct.connection*, %struct.connection** %13, align 8
  %472 = getelementptr inbounds %struct.connection, %struct.connection* %471, i32 0, i32 11
  %473 = load %struct.TYPE_15__*, %struct.TYPE_15__** %472, align 8
  %474 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %473, i32 0, i32 1
  %475 = load i64 (%union.sockaddr_in46*)*, i64 (%union.sockaddr_in46*)** %474, align 8
  %476 = load %struct.connection*, %struct.connection** %13, align 8
  %477 = bitcast %struct.connection* %476 to %union.sockaddr_in46*
  %478 = call i64 %475(%union.sockaddr_in46* %477)
  %479 = icmp sge i64 %478, 0
  br i1 %479, label %480, label %604

480:                                              ; preds = %445
  %481 = load i32, i32* %10, align 4
  %482 = load i32, i32* @server_read_write_gateway, align 4
  %483 = load %struct.connection*, %struct.connection** %13, align 8
  %484 = bitcast %struct.connection* %483 to %union.sockaddr_in46*
  %485 = call i32 @epoll_sethandler(i32 %481, i32 0, i32 %482, %union.sockaddr_in46* %484)
  %486 = load i32, i32* %10, align 4
  %487 = load %struct.connection*, %struct.connection** %13, align 8
  %488 = getelementptr inbounds %struct.connection, %struct.connection* %487, i32 0, i32 2
  %489 = load i32, i32* %488, align 4
  %490 = load i32, i32* @C_WANTRD, align 4
  %491 = and i32 %489, %490
  %492 = icmp ne i32 %491, 0
  br i1 %492, label %493, label %495

493:                                              ; preds = %480
  %494 = load i32, i32* @EVT_READ, align 4
  br label %496

495:                                              ; preds = %480
  br label %496

496:                                              ; preds = %495, %493
  %497 = phi i32 [ %494, %493 ], [ 0, %495 ]
  %498 = load %struct.connection*, %struct.connection** %13, align 8
  %499 = getelementptr inbounds %struct.connection, %struct.connection* %498, i32 0, i32 2
  %500 = load i32, i32* %499, align 4
  %501 = load i32, i32* @C_WANTWR, align 4
  %502 = and i32 %500, %501
  %503 = icmp ne i32 %502, 0
  br i1 %503, label %504, label %506

504:                                              ; preds = %496
  %505 = load i32, i32* @EVT_WRITE, align 4
  br label %507

506:                                              ; preds = %496
  br label %507

507:                                              ; preds = %506, %504
  %508 = phi i32 [ %505, %504 ], [ 0, %506 ]
  %509 = or i32 %497, %508
  %510 = load i32, i32* @EVT_SPEC, align 4
  %511 = or i32 %509, %510
  %512 = call i32 @epoll_insert(i32 %486, i32 %511)
  %513 = load i32, i32* @active_connections, align 4
  %514 = add nsw i32 %513, 1
  store i32 %514, i32* @active_connections, align 4
  %515 = load %struct.connection*, %struct.connection** %3, align 8
  %516 = getelementptr inbounds %struct.connection, %struct.connection* %515, i32 0, i32 1
  %517 = load i32, i32* %516, align 8
  %518 = load %struct.connection*, %struct.connection** %13, align 8
  %519 = getelementptr inbounds %struct.connection, %struct.connection* %518, i32 0, i32 3
  store i32 %517, i32* %519, align 8
  %520 = load %struct.connection*, %struct.connection** %3, align 8
  %521 = getelementptr inbounds %struct.connection, %struct.connection* %520, i32 0, i32 9
  %522 = load i64, i64* %521, align 8
  %523 = load %struct.connection*, %struct.connection** %13, align 8
  %524 = getelementptr inbounds %struct.connection, %struct.connection* %523, i32 0, i32 10
  store i64 %522, i64* %524, align 8
  %525 = load %struct.connection*, %struct.connection** %3, align 8
  %526 = getelementptr inbounds %struct.connection, %struct.connection* %525, i32 0, i32 2
  %527 = load i32, i32* %526, align 4
  %528 = load i32, i32* @C_SPECIAL, align 4
  %529 = and i32 %527, %528
  %530 = icmp ne i32 %529, 0
  br i1 %530, label %531, label %552

531:                                              ; preds = %507
  %532 = load i32, i32* @C_SPECIAL, align 4
  %533 = load %struct.connection*, %struct.connection** %13, align 8
  %534 = getelementptr inbounds %struct.connection, %struct.connection* %533, i32 0, i32 2
  %535 = load i32, i32* %534, align 4
  %536 = or i32 %535, %532
  store i32 %536, i32* %534, align 4
  %537 = load i64, i64* @active_special_connections, align 8
  %538 = load i64, i64* @max_special_connections, align 8
  %539 = icmp sge i64 %537, %538
  br i1 %539, label %540, label %544

540:                                              ; preds = %531
  %541 = load i64, i64* @active_special_connections, align 8
  %542 = load i64, i64* @max_special_connections, align 8
  %543 = call i32 (i8*, i64, ...) @kprintf(i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str.4, i64 0, i64 0), i64 %541, i64 %542)
  br label %544

544:                                              ; preds = %540, %531
  %545 = load i64, i64* @active_special_connections, align 8
  %546 = add nsw i64 %545, 1
  store i64 %546, i64* @active_special_connections, align 8
  %547 = load i64, i64* @max_special_connections, align 8
  %548 = icmp sge i64 %546, %547
  br i1 %548, label %549, label %551

549:                                              ; preds = %544
  %550 = load i32, i32* @EVA_REMOVE, align 4
  store i32 %550, i32* %2, align 4
  br label %634

551:                                              ; preds = %544
  br label %552

552:                                              ; preds = %551, %507
  %553 = load %struct.connection*, %struct.connection** %3, align 8
  %554 = getelementptr inbounds %struct.connection, %struct.connection* %553, i32 0, i32 2
  %555 = load i32, i32* %554, align 4
  %556 = load i32, i32* @C_NOQACK, align 4
  %557 = and i32 %555, %556
  %558 = icmp ne i32 %557, 0
  br i1 %558, label %559, label %565

559:                                              ; preds = %552
  %560 = load i32, i32* @C_NOQACK, align 4
  %561 = load %struct.connection*, %struct.connection** %13, align 8
  %562 = getelementptr inbounds %struct.connection, %struct.connection* %561, i32 0, i32 2
  %563 = load i32, i32* %562, align 4
  %564 = or i32 %563, %560
  store i32 %564, i32* %562, align 4
  br label %565

565:                                              ; preds = %559, %552
  %566 = load %struct.connection*, %struct.connection** %3, align 8
  %567 = getelementptr inbounds %struct.connection, %struct.connection* %566, i32 0, i32 4
  %568 = load i32, i32* %567, align 4
  %569 = load %struct.connection*, %struct.connection** %13, align 8
  %570 = getelementptr inbounds %struct.connection, %struct.connection* %569, i32 0, i32 4
  store i32 %568, i32* %570, align 4
  %571 = load %struct.connection*, %struct.connection** %13, align 8
  %572 = getelementptr inbounds %struct.connection, %struct.connection* %571, i32 0, i32 4
  %573 = load i32, i32* %572, align 4
  %574 = icmp ne i32 %573, 0
  br i1 %574, label %575, label %603

575:                                              ; preds = %565
  %576 = load i32, i32* %10, align 4
  %577 = load i32, i32* @IPPROTO_TCP, align 4
  %578 = load i32, i32* @TCP_WINDOW_CLAMP, align 4
  %579 = load %struct.connection*, %struct.connection** %13, align 8
  %580 = getelementptr inbounds %struct.connection, %struct.connection* %579, i32 0, i32 4
  %581 = call i64 @setsockopt(i32 %576, i32 %577, i32 %578, i32* %580, i32 4)
  %582 = icmp slt i64 %581, 0
  br i1 %582, label %583, label %589

583:                                              ; preds = %575
  %584 = load i32, i32* %10, align 4
  %585 = load %struct.connection*, %struct.connection** %13, align 8
  %586 = getelementptr inbounds %struct.connection, %struct.connection* %585, i32 0, i32 4
  %587 = load i32, i32* %586, align 4
  %588 = call i32 (i32, i8*, i32, i32, ...) @vkprintf(i32 0, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.5, i64 0, i64 0), i32 %584, i32 %587)
  br label %602

589:                                              ; preds = %575
  store i32 -1, i32* %15, align 4
  store i32 -1, i32* %16, align 4
  store i32 4, i32* %17, align 4
  store i32 4, i32* %18, align 4
  %590 = load i32, i32* %10, align 4
  %591 = load i32, i32* @IPPROTO_TCP, align 4
  %592 = load i32, i32* @TCP_WINDOW_CLAMP, align 4
  %593 = call i32 @getsockopt(i32 %590, i32 %591, i32 %592, i32* %15, i32* %17)
  %594 = load i32, i32* %10, align 4
  %595 = load i32, i32* @SOL_SOCKET, align 4
  %596 = load i32, i32* @SO_RCVBUF, align 4
  %597 = call i32 @getsockopt(i32 %594, i32 %595, i32 %596, i32* %16, i32* %18)
  %598 = load i32, i32* %10, align 4
  %599 = load i32, i32* %15, align 4
  %600 = load i32, i32* %16, align 4
  %601 = call i32 (i32, i8*, i32, i32, ...) @vkprintf(i32 2, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.6, i64 0, i64 0), i32 %598, i32 %599, i32 %600)
  br label %602

602:                                              ; preds = %589, %583
  br label %603

603:                                              ; preds = %602, %565
  br label %630

604:                                              ; preds = %445
  %605 = load %struct.connection*, %struct.connection** %13, align 8
  %606 = getelementptr inbounds %struct.connection, %struct.connection* %605, i32 0, i32 2
  %607 = load i32, i32* %606, align 4
  %608 = load i32, i32* @C_RAWMSG, align 4
  %609 = and i32 %607, %608
  %610 = icmp ne i32 %609, 0
  br i1 %610, label %611, label %624

611:                                              ; preds = %604
  %612 = load %struct.connection*, %struct.connection** %13, align 8
  %613 = getelementptr inbounds %struct.connection, %struct.connection* %612, i32 0, i32 8
  %614 = call i32 @rwm_free(%struct.TYPE_16__* %613)
  %615 = load %struct.connection*, %struct.connection** %13, align 8
  %616 = getelementptr inbounds %struct.connection, %struct.connection* %615, i32 0, i32 7
  %617 = call i32 @rwm_free(%struct.TYPE_16__* %616)
  %618 = load %struct.connection*, %struct.connection** %13, align 8
  %619 = getelementptr inbounds %struct.connection, %struct.connection* %618, i32 0, i32 6
  %620 = call i32 @rwm_free(%struct.TYPE_16__* %619)
  %621 = load %struct.connection*, %struct.connection** %13, align 8
  %622 = getelementptr inbounds %struct.connection, %struct.connection* %621, i32 0, i32 5
  %623 = call i32 @rwm_free(%struct.TYPE_16__* %622)
  br label %624

624:                                              ; preds = %611, %604
  %625 = load i64, i64* @ct_none, align 8
  %626 = load %struct.connection*, %struct.connection** %13, align 8
  %627 = getelementptr inbounds %struct.connection, %struct.connection* %626, i32 0, i32 0
  store i64 %625, i64* %627, align 8
  %628 = load i32, i32* %10, align 4
  %629 = call i32 @close(i32 %628)
  br label %630

630:                                              ; preds = %624, %603
  br label %631

631:                                              ; preds = %630, %212, %195
  br i1 true, label %26, label %632

632:                                              ; preds = %631, %50
  %633 = load i32, i32* @EVA_CONTINUE, align 4
  store i32 %633, i32* %2, align 4
  br label %634

634:                                              ; preds = %632, %549
  %635 = load i32, i32* %2, align 4
  ret i32 %635
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @memset(%union.sockaddr_in46*, i32, i32) #1

declare dso_local i32 @accept(i32, %struct.sockaddr*, i32*) #1

declare dso_local i32 @vkprintf(i32, i8*, i32, i32, ...) #1

declare dso_local i32 @getsockname(i32, %struct.sockaddr*, i32*) #1

declare dso_local i32 @conv_addr(i32, i8*) #1

declare dso_local i8* @ntohs(i32) #1

declare dso_local i32 @conv_addr6(i32, i8*) #1

declare dso_local i64 @fcntl(i32, i32, i32) #1

declare dso_local i32 @kprintf(i8*, i64, ...) #1

declare dso_local i32 @close(i32) #1

declare dso_local i64 @setsockopt(i32, i32, i32, i32*, i32) #1

declare dso_local i32 @maximize_sndbuf(i32, i32) #1

declare dso_local i32 @maximize_rcvbuf(i32, i32) #1

declare dso_local i32 @rwm_init(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @init_builtin_buffer(%struct.TYPE_17__*, i32, i32) #1

declare dso_local i8* @ntohl(i32) #1

declare dso_local i32 @is_4in6(i32) #1

declare dso_local i32 @extract_4in6(i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @show_remote_ip(%union.sockaddr_in46*) #1

declare dso_local i32 @show_our_ip(%union.sockaddr_in46*) #1

declare dso_local i32 @epoll_sethandler(i32, i32, i32, %union.sockaddr_in46*) #1

declare dso_local i32 @epoll_insert(i32, i32) #1

declare dso_local i32 @getsockopt(i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @rwm_free(%struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
