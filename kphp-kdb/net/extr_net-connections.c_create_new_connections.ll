; ModuleID = '/home/carl/AnghaBench/kphp-kdb/net/extr_net-connections.c_create_new_connections.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/net/extr_net-connections.c_create_new_connections.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in6 = type { i32, i32, i32, %struct.sockaddr_in6*, %struct.sockaddr_in6*, i32, %struct.TYPE_13__, %struct.TYPE_13__, %struct.TYPE_13__, %struct.TYPE_13__, %struct.TYPE_12__*, i32, i8*, i32, i32, %struct.TYPE_11__, i8*, i32, %struct.TYPE_10__, i8*, %struct.conn_query*, %struct.conn_query*, i32, i32, %struct.TYPE_9__, i32, %struct.TYPE_14__, i32, %struct.TYPE_14__, i64, %struct.conn_target*, i32* }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_12__ = type { i32 (%struct.sockaddr_in6*)*, i32, i64 (%struct.sockaddr_in6*)* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i64 }
%struct.conn_query = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_14__ = type { i64 }
%struct.conn_target = type { i64, i32, i32, i32, i64, i32, i32, %struct.TYPE_15__, i32, i32, %struct.TYPE_12__*, i32, %struct.sockaddr_in6* }
%struct.TYPE_15__ = type { i64 }
%struct.sockaddr_in = type { i32, i32, i32, %struct.sockaddr_in*, %struct.sockaddr_in*, i32, %struct.TYPE_13__, %struct.TYPE_13__, %struct.TYPE_13__, %struct.TYPE_13__, %struct.TYPE_12__*, i32, i8*, i32, i32, %struct.TYPE_11__, i8*, i32, %struct.TYPE_10__, i8*, %struct.conn_query*, %struct.conn_query*, i32, i32, %struct.TYPE_9__, i32, %struct.TYPE_14__, i32, %struct.TYPE_14__, i64, %struct.conn_target*, i32* }
%struct.connection = type { i32, i32, i32, %struct.connection*, %struct.connection*, i32, %struct.TYPE_13__, %struct.TYPE_13__, %struct.TYPE_13__, %struct.TYPE_13__, %struct.TYPE_12__*, i32, i8*, i32, i32, %struct.TYPE_11__, i8*, i32, %struct.TYPE_10__, i8*, %struct.conn_query*, %struct.conn_query*, i32, i32, %struct.TYPE_9__, i32, %struct.TYPE_14__, i32, %struct.TYPE_14__, i64, %struct.conn_target*, i32* }
%struct.sockaddr = type { i32 }

@precise_now = common dso_local global i64 0, align 8
@verbosity = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Creating NEW connection to %s:%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"Creating NEW ipv6 connection to [%s]:%d\0A\00", align 1
@SM_IPV6 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"error connecting to %s:%d: %m\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"error connecting to [%s]:%d\0A\00", align 1
@MAX_EVENTS = common dso_local global i32 0, align 4
@MAX_CONNECTIONS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [40 x i8] c"out of sockets when connecting to %s:%d\00", align 1
@.str.5 = private unnamed_addr constant [43 x i8] c"out of sockets when connecting to [%s]:%d\0A\00", align 1
@max_connection = common dso_local global i32 0, align 4
@Events = common dso_local global i32* null, align 8
@Connections = common dso_local global %struct.sockaddr_in6* null, align 8
@conn_generation = common dso_local global i64 0, align 8
@C_WANTWR = common dso_local global i32 0, align 4
@C_RAWMSG = common dso_local global i32 0, align 4
@BUFF_SIZE = common dso_local global i32 0, align 4
@conn_timer_wakeup_gateway = common dso_local global i32 0, align 4
@ct_outbound = common dso_local global i32 0, align 4
@conn_connecting = common dso_local global i32 0, align 4
@create_new_connections.self = internal global %struct.sockaddr_in zeroinitializer, align 8
@.str.6 = private unnamed_addr constant [48 x i8] c"Created new outbound connection %s:%d -> %s:%d\0A\00", align 1
@C_IPV6 = common dso_local global i32 0, align 4
@create_new_connections.self.7 = internal global %struct.sockaddr_in6 zeroinitializer, align 8
@.str.8 = private unnamed_addr constant [57 x i8] c"Created new outbound ipv6 connection [%s]:%d -> [%s]:%d\0A\00", align 1
@server_read_write_gateway = common dso_local global i32 0, align 4
@C_WANTRD = common dso_local global i32 0, align 4
@EVT_READ = common dso_local global i32 0, align 4
@EVT_WRITE = common dso_local global i32 0, align 4
@EVT_SPEC = common dso_local global i32 0, align 4
@outbound_connections = common dso_local global i32 0, align 4
@outbound_connections_created = common dso_local global i32 0, align 4
@ct_none = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [48 x i8] c"outbound ipv6 connection: handle %d to [%s]:%d\0A\00", align 1
@.str.10 = private unnamed_addr constant [41 x i8] c"outbound connection: handle %d to %s:%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @create_new_connections(%struct.conn_target* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.conn_target*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.connection*, align 8
  %10 = alloca %struct.connection*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.conn_target* %0, %struct.conn_target** %3, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %16 = load %struct.conn_target*, %struct.conn_target** %3, align 8
  %17 = getelementptr inbounds %struct.conn_target, %struct.conn_target* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp sge i64 %18, 0
  %20 = zext i1 %19 to i32
  %21 = call i32 @assert(i32 %20)
  %22 = load %struct.conn_target*, %struct.conn_target** %3, align 8
  %23 = getelementptr inbounds %struct.conn_target, %struct.conn_target* %22, i32 0, i32 12
  %24 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %23, align 8
  %25 = bitcast %struct.sockaddr_in6* %24 to %struct.connection*
  store %struct.connection* %25, %struct.connection** %9, align 8
  br label %26

26:                                               ; preds = %54, %1
  %27 = load %struct.connection*, %struct.connection** %9, align 8
  %28 = load %struct.conn_target*, %struct.conn_target** %3, align 8
  %29 = bitcast %struct.conn_target* %28 to %struct.connection*
  %30 = icmp ne %struct.connection* %27, %29
  br i1 %30, label %31, label %58

31:                                               ; preds = %26
  %32 = load %struct.connection*, %struct.connection** %9, align 8
  %33 = getelementptr inbounds %struct.connection, %struct.connection* %32, i32 0, i32 10
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 0
  %36 = load i32 (%struct.sockaddr_in6*)*, i32 (%struct.sockaddr_in6*)** %35, align 8
  %37 = load %struct.connection*, %struct.connection** %9, align 8
  %38 = bitcast %struct.connection* %37 to %struct.sockaddr_in6*
  %39 = call i32 %36(%struct.sockaddr_in6* %38)
  store i32 %39, i32* %12, align 4
  %40 = load i32, i32* %12, align 4
  switch i32 %40, label %51 [
    i32 130, label %41
    i32 132, label %41
    i32 129, label %42
    i32 128, label %45
    i32 131, label %48
  ]

41:                                               ; preds = %31, %31
  br label %53

42:                                               ; preds = %31
  %43 = load i32, i32* %5, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %5, align 4
  br label %53

45:                                               ; preds = %31
  %46 = load i32, i32* %7, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %7, align 4
  br label %53

48:                                               ; preds = %31
  %49 = load i32, i32* %6, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %6, align 4
  br label %53

51:                                               ; preds = %31
  %52 = call i32 @assert(i32 0)
  br label %53

53:                                               ; preds = %51, %48, %45, %42, %41
  br label %54

54:                                               ; preds = %53
  %55 = load %struct.connection*, %struct.connection** %9, align 8
  %56 = getelementptr inbounds %struct.connection, %struct.connection* %55, i32 0, i32 4
  %57 = load %struct.connection*, %struct.connection** %56, align 8
  store %struct.connection* %57, %struct.connection** %9, align 8
  br label %26

58:                                               ; preds = %26
  %59 = load i32, i32* %5, align 4
  %60 = load %struct.conn_target*, %struct.conn_target** %3, align 8
  %61 = getelementptr inbounds %struct.conn_target, %struct.conn_target* %60, i32 0, i32 1
  store i32 %59, i32* %61, align 8
  %62 = load %struct.conn_target*, %struct.conn_target** %3, align 8
  %63 = getelementptr inbounds %struct.conn_target, %struct.conn_target* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* %6, align 4
  %66 = add nsw i32 %64, %65
  %67 = load i32, i32* %7, align 4
  %68 = add nsw i32 %67, 1
  %69 = ashr i32 %68, 1
  %70 = add nsw i32 %66, %69
  store i32 %70, i32* %8, align 4
  %71 = load i32, i32* %8, align 4
  %72 = load %struct.conn_target*, %struct.conn_target** %3, align 8
  %73 = getelementptr inbounds %struct.conn_target, %struct.conn_target* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 8
  %75 = icmp sgt i32 %71, %74
  br i1 %75, label %76, label %80

76:                                               ; preds = %58
  %77 = load %struct.conn_target*, %struct.conn_target** %3, align 8
  %78 = getelementptr inbounds %struct.conn_target, %struct.conn_target* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 8
  store i32 %79, i32* %8, align 4
  br label %80

80:                                               ; preds = %76, %58
  %81 = load i64, i64* @precise_now, align 8
  %82 = load %struct.conn_target*, %struct.conn_target** %3, align 8
  %83 = getelementptr inbounds %struct.conn_target, %struct.conn_target* %82, i32 0, i32 4
  %84 = load i64, i64* %83, align 8
  %85 = icmp slt i64 %81, %84
  br i1 %85, label %86, label %92

86:                                               ; preds = %80
  %87 = load %struct.conn_target*, %struct.conn_target** %3, align 8
  %88 = getelementptr inbounds %struct.conn_target, %struct.conn_target* %87, i32 0, i32 11
  %89 = load i32, i32* %88, align 8
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %92, label %91

91:                                               ; preds = %86
  store i32 0, i32* %2, align 4
  br label %588

92:                                               ; preds = %86, %80
  br label %93

93:                                               ; preds = %585, %92
  %94 = load %struct.conn_target*, %struct.conn_target** %3, align 8
  %95 = getelementptr inbounds %struct.conn_target, %struct.conn_target* %94, i32 0, i32 5
  %96 = load i32, i32* %95, align 8
  %97 = load i32, i32* %8, align 4
  %98 = icmp slt i32 %96, %97
  br i1 %98, label %99, label %586

99:                                               ; preds = %93
  %100 = load i64, i64* @verbosity, align 8
  %101 = icmp sgt i64 %100, 0
  br i1 %101, label %102, label %130

102:                                              ; preds = %99
  %103 = load %struct.conn_target*, %struct.conn_target** %3, align 8
  %104 = getelementptr inbounds %struct.conn_target, %struct.conn_target* %103, i32 0, i32 7
  %105 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %119

108:                                              ; preds = %102
  %109 = load i32, i32* @stderr, align 4
  %110 = load %struct.conn_target*, %struct.conn_target** %3, align 8
  %111 = getelementptr inbounds %struct.conn_target, %struct.conn_target* %110, i32 0, i32 7
  %112 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = call i8* @inet_ntoa(i64 %113)
  %115 = load %struct.conn_target*, %struct.conn_target** %3, align 8
  %116 = getelementptr inbounds %struct.conn_target, %struct.conn_target* %115, i32 0, i32 6
  %117 = load i32, i32* %116, align 4
  %118 = call i32 (i32, i8*, ...) @fprintf(i32 %109, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i8* %114, i32 %117)
  br label %129

119:                                              ; preds = %102
  %120 = load i32, i32* @stderr, align 4
  %121 = load %struct.conn_target*, %struct.conn_target** %3, align 8
  %122 = getelementptr inbounds %struct.conn_target, %struct.conn_target* %121, i32 0, i32 8
  %123 = load i32, i32* %122, align 8
  %124 = call i8* @show_ipv6(i32 %123)
  %125 = load %struct.conn_target*, %struct.conn_target** %3, align 8
  %126 = getelementptr inbounds %struct.conn_target, %struct.conn_target* %125, i32 0, i32 6
  %127 = load i32, i32* %126, align 4
  %128 = call i32 (i32, i8*, ...) @fprintf(i32 %120, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i8* %124, i32 %127)
  br label %129

129:                                              ; preds = %119, %108
  br label %130

130:                                              ; preds = %129, %99
  %131 = load %struct.conn_target*, %struct.conn_target** %3, align 8
  %132 = getelementptr inbounds %struct.conn_target, %struct.conn_target* %131, i32 0, i32 7
  %133 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %145

136:                                              ; preds = %130
  %137 = load %struct.conn_target*, %struct.conn_target** %3, align 8
  %138 = getelementptr inbounds %struct.conn_target, %struct.conn_target* %137, i32 0, i32 7
  %139 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = load %struct.conn_target*, %struct.conn_target** %3, align 8
  %142 = getelementptr inbounds %struct.conn_target, %struct.conn_target* %141, i32 0, i32 6
  %143 = load i32, i32* %142, align 4
  %144 = call i32 @client_socket(i64 %140, i32 %143, i32 0)
  br label %154

145:                                              ; preds = %130
  %146 = load %struct.conn_target*, %struct.conn_target** %3, align 8
  %147 = getelementptr inbounds %struct.conn_target, %struct.conn_target* %146, i32 0, i32 8
  %148 = load i32, i32* %147, align 8
  %149 = load %struct.conn_target*, %struct.conn_target** %3, align 8
  %150 = getelementptr inbounds %struct.conn_target, %struct.conn_target* %149, i32 0, i32 6
  %151 = load i32, i32* %150, align 4
  %152 = load i32, i32* @SM_IPV6, align 4
  %153 = call i32 @client_socket_ipv6(i32 %148, i32 %151, i32 %152)
  br label %154

154:                                              ; preds = %145, %136
  %155 = phi i32 [ %144, %136 ], [ %153, %145 ]
  store i32 %155, i32* %13, align 4
  %156 = load i32, i32* %13, align 4
  %157 = icmp slt i32 %156, 0
  br i1 %157, label %158, label %196

158:                                              ; preds = %154
  %159 = load i64, i64* @verbosity, align 8
  %160 = icmp sgt i64 %159, 0
  br i1 %160, label %161, label %196

161:                                              ; preds = %158
  %162 = load %struct.conn_target*, %struct.conn_target** %3, align 8
  %163 = call i32 @compute_next_reconnect(%struct.conn_target* %162)
  %164 = load i64, i64* @verbosity, align 8
  %165 = icmp sgt i64 %164, 0
  br i1 %165, label %166, label %194

166:                                              ; preds = %161
  %167 = load %struct.conn_target*, %struct.conn_target** %3, align 8
  %168 = getelementptr inbounds %struct.conn_target, %struct.conn_target* %167, i32 0, i32 7
  %169 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %168, i32 0, i32 0
  %170 = load i64, i64* %169, align 8
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %183

172:                                              ; preds = %166
  %173 = load i32, i32* @stderr, align 4
  %174 = load %struct.conn_target*, %struct.conn_target** %3, align 8
  %175 = getelementptr inbounds %struct.conn_target, %struct.conn_target* %174, i32 0, i32 7
  %176 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %175, i32 0, i32 0
  %177 = load i64, i64* %176, align 8
  %178 = call i8* @inet_ntoa(i64 %177)
  %179 = load %struct.conn_target*, %struct.conn_target** %3, align 8
  %180 = getelementptr inbounds %struct.conn_target, %struct.conn_target* %179, i32 0, i32 6
  %181 = load i32, i32* %180, align 4
  %182 = call i32 (i32, i8*, ...) @fprintf(i32 %173, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i8* %178, i32 %181)
  br label %193

183:                                              ; preds = %166
  %184 = load i32, i32* @stderr, align 4
  %185 = load %struct.conn_target*, %struct.conn_target** %3, align 8
  %186 = getelementptr inbounds %struct.conn_target, %struct.conn_target* %185, i32 0, i32 8
  %187 = load i32, i32* %186, align 8
  %188 = call i8* @show_ipv6(i32 %187)
  %189 = load %struct.conn_target*, %struct.conn_target** %3, align 8
  %190 = getelementptr inbounds %struct.conn_target, %struct.conn_target* %189, i32 0, i32 6
  %191 = load i32, i32* %190, align 4
  %192 = call i32 (i32, i8*, ...) @fprintf(i32 %184, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i8* %188, i32 %191)
  br label %193

193:                                              ; preds = %183, %172
  br label %194

194:                                              ; preds = %193, %161
  %195 = load i32, i32* %4, align 4
  store i32 %195, i32* %2, align 4
  br label %588

196:                                              ; preds = %158, %154
  %197 = load i32, i32* %13, align 4
  %198 = load i32, i32* @MAX_EVENTS, align 4
  %199 = icmp sge i32 %197, %198
  br i1 %199, label %204, label %200

200:                                              ; preds = %196
  %201 = load i32, i32* %13, align 4
  %202 = load i32, i32* @MAX_CONNECTIONS, align 4
  %203 = icmp sge i32 %201, %202
  br i1 %203, label %204, label %241

204:                                              ; preds = %200, %196
  %205 = load i32, i32* %13, align 4
  %206 = call i32 @close(i32 %205)
  %207 = load %struct.conn_target*, %struct.conn_target** %3, align 8
  %208 = call i32 @compute_next_reconnect(%struct.conn_target* %207)
  %209 = load i64, i64* @verbosity, align 8
  %210 = icmp sgt i64 %209, 0
  br i1 %210, label %211, label %239

211:                                              ; preds = %204
  %212 = load %struct.conn_target*, %struct.conn_target** %3, align 8
  %213 = getelementptr inbounds %struct.conn_target, %struct.conn_target* %212, i32 0, i32 7
  %214 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %213, i32 0, i32 0
  %215 = load i64, i64* %214, align 8
  %216 = icmp ne i64 %215, 0
  br i1 %216, label %217, label %228

217:                                              ; preds = %211
  %218 = load i32, i32* @stderr, align 4
  %219 = load %struct.conn_target*, %struct.conn_target** %3, align 8
  %220 = getelementptr inbounds %struct.conn_target, %struct.conn_target* %219, i32 0, i32 7
  %221 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %220, i32 0, i32 0
  %222 = load i64, i64* %221, align 8
  %223 = call i8* @inet_ntoa(i64 %222)
  %224 = load %struct.conn_target*, %struct.conn_target** %3, align 8
  %225 = getelementptr inbounds %struct.conn_target, %struct.conn_target* %224, i32 0, i32 6
  %226 = load i32, i32* %225, align 4
  %227 = call i32 (i32, i8*, ...) @fprintf(i32 %218, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0), i8* %223, i32 %226)
  br label %238

228:                                              ; preds = %211
  %229 = load i32, i32* @stderr, align 4
  %230 = load %struct.conn_target*, %struct.conn_target** %3, align 8
  %231 = getelementptr inbounds %struct.conn_target, %struct.conn_target* %230, i32 0, i32 8
  %232 = load i32, i32* %231, align 8
  %233 = call i8* @show_ipv6(i32 %232)
  %234 = load %struct.conn_target*, %struct.conn_target** %3, align 8
  %235 = getelementptr inbounds %struct.conn_target, %struct.conn_target* %234, i32 0, i32 6
  %236 = load i32, i32* %235, align 4
  %237 = call i32 (i32, i8*, ...) @fprintf(i32 %229, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5, i64 0, i64 0), i8* %233, i32 %236)
  br label %238

238:                                              ; preds = %228, %217
  br label %239

239:                                              ; preds = %238, %204
  %240 = load i32, i32* %4, align 4
  store i32 %240, i32* %2, align 4
  br label %588

241:                                              ; preds = %200
  %242 = load i32, i32* %13, align 4
  %243 = load i32, i32* @max_connection, align 4
  %244 = icmp sgt i32 %242, %243
  br i1 %244, label %245, label %247

245:                                              ; preds = %241
  %246 = load i32, i32* %13, align 4
  store i32 %246, i32* @max_connection, align 4
  br label %247

247:                                              ; preds = %245, %241
  %248 = load i32*, i32** @Events, align 8
  %249 = load i32, i32* %13, align 4
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds i32, i32* %248, i64 %250
  store i32* %251, i32** %11, align 8
  %252 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** @Connections, align 8
  %253 = load i32, i32* %13, align 4
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %252, i64 %254
  %256 = bitcast %struct.sockaddr_in6* %255 to %struct.connection*
  store %struct.connection* %256, %struct.connection** %9, align 8
  %257 = load %struct.connection*, %struct.connection** %9, align 8
  %258 = bitcast %struct.connection* %257 to %struct.sockaddr_in6*
  %259 = call i32 @memset(%struct.sockaddr_in6* %258, i32 0, i32 224)
  %260 = load i32, i32* %13, align 4
  %261 = load %struct.connection*, %struct.connection** %9, align 8
  %262 = getelementptr inbounds %struct.connection, %struct.connection* %261, i32 0, i32 0
  store i32 %260, i32* %262, align 8
  %263 = load i32*, i32** %11, align 8
  %264 = load %struct.connection*, %struct.connection** %9, align 8
  %265 = getelementptr inbounds %struct.connection, %struct.connection* %264, i32 0, i32 31
  store i32* %263, i32** %265, align 8
  %266 = load %struct.conn_target*, %struct.conn_target** %3, align 8
  %267 = load %struct.connection*, %struct.connection** %9, align 8
  %268 = getelementptr inbounds %struct.connection, %struct.connection* %267, i32 0, i32 30
  store %struct.conn_target* %266, %struct.conn_target** %268, align 8
  %269 = load i64, i64* @conn_generation, align 8
  %270 = add nsw i64 %269, 1
  store i64 %270, i64* @conn_generation, align 8
  %271 = load %struct.connection*, %struct.connection** %9, align 8
  %272 = getelementptr inbounds %struct.connection, %struct.connection* %271, i32 0, i32 29
  store i64 %270, i64* %272, align 8
  %273 = load i32, i32* @C_WANTWR, align 4
  %274 = load %struct.connection*, %struct.connection** %9, align 8
  %275 = getelementptr inbounds %struct.connection, %struct.connection* %274, i32 0, i32 1
  store i32 %273, i32* %275, align 4
  %276 = load %struct.conn_target*, %struct.conn_target** %3, align 8
  %277 = getelementptr inbounds %struct.conn_target, %struct.conn_target* %276, i32 0, i32 10
  %278 = load %struct.TYPE_12__*, %struct.TYPE_12__** %277, align 8
  %279 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %278, i32 0, i32 1
  %280 = load i32, i32* %279, align 8
  %281 = load i32, i32* @C_RAWMSG, align 4
  %282 = and i32 %280, %281
  %283 = icmp ne i32 %282, 0
  br i1 %283, label %284, label %308

284:                                              ; preds = %247
  %285 = load i32, i32* @C_RAWMSG, align 4
  %286 = load %struct.connection*, %struct.connection** %9, align 8
  %287 = getelementptr inbounds %struct.connection, %struct.connection* %286, i32 0, i32 1
  %288 = load i32, i32* %287, align 4
  %289 = or i32 %288, %285
  store i32 %289, i32* %287, align 4
  %290 = load %struct.connection*, %struct.connection** %9, align 8
  %291 = getelementptr inbounds %struct.connection, %struct.connection* %290, i32 0, i32 26
  %292 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %291, i32 0, i32 0
  store i64 0, i64* %292, align 8
  %293 = load %struct.connection*, %struct.connection** %9, align 8
  %294 = getelementptr inbounds %struct.connection, %struct.connection* %293, i32 0, i32 28
  %295 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %294, i32 0, i32 0
  store i64 0, i64* %295, align 8
  %296 = load %struct.connection*, %struct.connection** %9, align 8
  %297 = getelementptr inbounds %struct.connection, %struct.connection* %296, i32 0, i32 9
  %298 = call i32 @rwm_init(%struct.TYPE_13__* %297, i32 0)
  %299 = load %struct.connection*, %struct.connection** %9, align 8
  %300 = getelementptr inbounds %struct.connection, %struct.connection* %299, i32 0, i32 8
  %301 = call i32 @rwm_init(%struct.TYPE_13__* %300, i32 0)
  %302 = load %struct.connection*, %struct.connection** %9, align 8
  %303 = getelementptr inbounds %struct.connection, %struct.connection* %302, i32 0, i32 7
  %304 = call i32 @rwm_init(%struct.TYPE_13__* %303, i32 0)
  %305 = load %struct.connection*, %struct.connection** %9, align 8
  %306 = getelementptr inbounds %struct.connection, %struct.connection* %305, i32 0, i32 6
  %307 = call i32 @rwm_init(%struct.TYPE_13__* %306, i32 0)
  br label %329

308:                                              ; preds = %247
  %309 = load %struct.connection*, %struct.connection** %9, align 8
  %310 = getelementptr inbounds %struct.connection, %struct.connection* %309, i32 0, i32 8
  %311 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %310, i32 0, i32 0
  store i64 0, i64* %311, align 8
  %312 = load %struct.connection*, %struct.connection** %9, align 8
  %313 = getelementptr inbounds %struct.connection, %struct.connection* %312, i32 0, i32 9
  %314 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %313, i32 0, i32 0
  store i64 0, i64* %314, align 8
  %315 = load %struct.connection*, %struct.connection** %9, align 8
  %316 = getelementptr inbounds %struct.connection, %struct.connection* %315, i32 0, i32 28
  %317 = load %struct.connection*, %struct.connection** %9, align 8
  %318 = getelementptr inbounds %struct.connection, %struct.connection* %317, i32 0, i32 27
  %319 = load i32, i32* %318, align 8
  %320 = load i32, i32* @BUFF_SIZE, align 4
  %321 = call i32 @init_builtin_buffer(%struct.TYPE_14__* %316, i32 %319, i32 %320)
  %322 = load %struct.connection*, %struct.connection** %9, align 8
  %323 = getelementptr inbounds %struct.connection, %struct.connection* %322, i32 0, i32 26
  %324 = load %struct.connection*, %struct.connection** %9, align 8
  %325 = getelementptr inbounds %struct.connection, %struct.connection* %324, i32 0, i32 25
  %326 = load i32, i32* %325, align 4
  %327 = load i32, i32* @BUFF_SIZE, align 4
  %328 = call i32 @init_builtin_buffer(%struct.TYPE_14__* %323, i32 %326, i32 %327)
  br label %329

329:                                              ; preds = %308, %284
  %330 = load i32, i32* @conn_timer_wakeup_gateway, align 4
  %331 = load %struct.connection*, %struct.connection** %9, align 8
  %332 = getelementptr inbounds %struct.connection, %struct.connection* %331, i32 0, i32 24
  %333 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %332, i32 0, i32 0
  store i32 %330, i32* %333, align 8
  %334 = load %struct.conn_target*, %struct.conn_target** %3, align 8
  %335 = getelementptr inbounds %struct.conn_target, %struct.conn_target* %334, i32 0, i32 10
  %336 = load %struct.TYPE_12__*, %struct.TYPE_12__** %335, align 8
  %337 = load %struct.connection*, %struct.connection** %9, align 8
  %338 = getelementptr inbounds %struct.connection, %struct.connection* %337, i32 0, i32 10
  store %struct.TYPE_12__* %336, %struct.TYPE_12__** %338, align 8
  %339 = load %struct.conn_target*, %struct.conn_target** %3, align 8
  %340 = getelementptr inbounds %struct.conn_target, %struct.conn_target* %339, i32 0, i32 9
  %341 = load i32, i32* %340, align 4
  %342 = load %struct.connection*, %struct.connection** %9, align 8
  %343 = getelementptr inbounds %struct.connection, %struct.connection* %342, i32 0, i32 23
  store i32 %341, i32* %343, align 4
  %344 = load i32, i32* @ct_outbound, align 4
  %345 = load %struct.connection*, %struct.connection** %9, align 8
  %346 = getelementptr inbounds %struct.connection, %struct.connection* %345, i32 0, i32 5
  store i32 %344, i32* %346, align 8
  %347 = load i32, i32* @conn_connecting, align 4
  %348 = load %struct.connection*, %struct.connection** %9, align 8
  %349 = getelementptr inbounds %struct.connection, %struct.connection* %348, i32 0, i32 22
  store i32 %347, i32* %349, align 8
  %350 = load %struct.connection*, %struct.connection** %9, align 8
  %351 = bitcast %struct.connection* %350 to %struct.conn_query*
  %352 = load %struct.connection*, %struct.connection** %9, align 8
  %353 = getelementptr inbounds %struct.connection, %struct.connection* %352, i32 0, i32 20
  store %struct.conn_query* %351, %struct.conn_query** %353, align 8
  %354 = load %struct.connection*, %struct.connection** %9, align 8
  %355 = getelementptr inbounds %struct.connection, %struct.connection* %354, i32 0, i32 21
  store %struct.conn_query* %351, %struct.conn_query** %355, align 8
  %356 = load %struct.conn_target*, %struct.conn_target** %3, align 8
  %357 = getelementptr inbounds %struct.conn_target, %struct.conn_target* %356, i32 0, i32 7
  %358 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %357, i32 0, i32 0
  %359 = load i64, i64* %358, align 8
  %360 = icmp ne i64 %359, 0
  br i1 %360, label %361, label %400

361:                                              ; preds = %329
  store i32 224, i32* %14, align 4
  %362 = call i32 @memset(%struct.sockaddr_in6* bitcast (%struct.sockaddr_in* @create_new_connections.self to %struct.sockaddr_in6*), i32 0, i32 224)
  %363 = load %struct.connection*, %struct.connection** %9, align 8
  %364 = getelementptr inbounds %struct.connection, %struct.connection* %363, i32 0, i32 0
  %365 = load i32, i32* %364, align 8
  %366 = call i32 @getsockname(i32 %365, %struct.sockaddr* bitcast (%struct.sockaddr_in* @create_new_connections.self to %struct.sockaddr*), i32* %14)
  %367 = load i64, i64* getelementptr inbounds (%struct.sockaddr_in, %struct.sockaddr_in* @create_new_connections.self, i32 0, i32 18, i32 0), align 8
  %368 = call i8* @ntohl(i64 %367)
  %369 = load %struct.connection*, %struct.connection** %9, align 8
  %370 = getelementptr inbounds %struct.connection, %struct.connection* %369, i32 0, i32 19
  store i8* %368, i8** %370, align 8
  %371 = load i32, i32* getelementptr inbounds (%struct.sockaddr_in, %struct.sockaddr_in* @create_new_connections.self, i32 0, i32 17), align 8
  %372 = call i8* @ntohs(i32 %371)
  %373 = load %struct.connection*, %struct.connection** %9, align 8
  %374 = getelementptr inbounds %struct.connection, %struct.connection* %373, i32 0, i32 12
  store i8* %372, i8** %374, align 8
  %375 = load %struct.conn_target*, %struct.conn_target** %3, align 8
  %376 = getelementptr inbounds %struct.conn_target, %struct.conn_target* %375, i32 0, i32 7
  %377 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %376, i32 0, i32 0
  %378 = load i64, i64* %377, align 8
  %379 = call i8* @ntohl(i64 %378)
  %380 = load %struct.connection*, %struct.connection** %9, align 8
  %381 = getelementptr inbounds %struct.connection, %struct.connection* %380, i32 0, i32 16
  store i8* %379, i8** %381, align 8
  %382 = load %struct.conn_target*, %struct.conn_target** %3, align 8
  %383 = getelementptr inbounds %struct.conn_target, %struct.conn_target* %382, i32 0, i32 6
  %384 = load i32, i32* %383, align 4
  %385 = load %struct.connection*, %struct.connection** %9, align 8
  %386 = getelementptr inbounds %struct.connection, %struct.connection* %385, i32 0, i32 2
  store i32 %384, i32* %386, align 8
  %387 = load %struct.connection*, %struct.connection** %9, align 8
  %388 = bitcast %struct.connection* %387 to %struct.sockaddr_in6*
  %389 = call i8* @show_our_ip(%struct.sockaddr_in6* %388)
  %390 = load %struct.connection*, %struct.connection** %9, align 8
  %391 = getelementptr inbounds %struct.connection, %struct.connection* %390, i32 0, i32 12
  %392 = load i8*, i8** %391, align 8
  %393 = load %struct.connection*, %struct.connection** %9, align 8
  %394 = bitcast %struct.connection* %393 to %struct.sockaddr_in6*
  %395 = call i8* @show_remote_ip(%struct.sockaddr_in6* %394)
  %396 = load %struct.connection*, %struct.connection** %9, align 8
  %397 = getelementptr inbounds %struct.connection, %struct.connection* %396, i32 0, i32 2
  %398 = load i32, i32* %397, align 8
  %399 = call i32 @vkprintf(i32 2, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.6, i64 0, i64 0), i8* %389, i8* %392, i8* %395, i32 %398)
  br label %447

400:                                              ; preds = %329
  %401 = load i32, i32* @C_IPV6, align 4
  %402 = load %struct.connection*, %struct.connection** %9, align 8
  %403 = getelementptr inbounds %struct.connection, %struct.connection* %402, i32 0, i32 1
  %404 = load i32, i32* %403, align 4
  %405 = or i32 %404, %401
  store i32 %405, i32* %403, align 4
  store i32 224, i32* %15, align 4
  %406 = call i32 @memset(%struct.sockaddr_in6* @create_new_connections.self.7, i32 0, i32 224)
  %407 = load %struct.connection*, %struct.connection** %9, align 8
  %408 = getelementptr inbounds %struct.connection, %struct.connection* %407, i32 0, i32 0
  %409 = load i32, i32* %408, align 8
  %410 = call i32 @getsockname(i32 %409, %struct.sockaddr* bitcast (%struct.sockaddr_in6* @create_new_connections.self.7 to %struct.sockaddr*), i32* %15)
  %411 = load %struct.connection*, %struct.connection** %9, align 8
  %412 = getelementptr inbounds %struct.connection, %struct.connection* %411, i32 0, i32 13
  %413 = load i32, i32* %412, align 8
  %414 = load i32, i32* getelementptr inbounds (%struct.sockaddr_in6, %struct.sockaddr_in6* @create_new_connections.self.7, i32 0, i32 15, i32 0), align 8
  %415 = call i32 @memcpy(i32 %413, i32 %414, i32 16)
  %416 = load %struct.connection*, %struct.connection** %9, align 8
  %417 = getelementptr inbounds %struct.connection, %struct.connection* %416, i32 0, i32 11
  %418 = load i32, i32* %417, align 8
  %419 = load %struct.conn_target*, %struct.conn_target** %3, align 8
  %420 = getelementptr inbounds %struct.conn_target, %struct.conn_target* %419, i32 0, i32 8
  %421 = load i32, i32* %420, align 8
  %422 = call i32 @memcpy(i32 %418, i32 %421, i32 16)
  %423 = load i32, i32* getelementptr inbounds (%struct.sockaddr_in6, %struct.sockaddr_in6* @create_new_connections.self.7, i32 0, i32 14), align 4
  %424 = call i8* @ntohs(i32 %423)
  %425 = load %struct.connection*, %struct.connection** %9, align 8
  %426 = getelementptr inbounds %struct.connection, %struct.connection* %425, i32 0, i32 12
  store i8* %424, i8** %426, align 8
  %427 = load %struct.conn_target*, %struct.conn_target** %3, align 8
  %428 = getelementptr inbounds %struct.conn_target, %struct.conn_target* %427, i32 0, i32 6
  %429 = load i32, i32* %428, align 4
  %430 = load %struct.connection*, %struct.connection** %9, align 8
  %431 = getelementptr inbounds %struct.connection, %struct.connection* %430, i32 0, i32 2
  store i32 %429, i32* %431, align 8
  %432 = load %struct.connection*, %struct.connection** %9, align 8
  %433 = getelementptr inbounds %struct.connection, %struct.connection* %432, i32 0, i32 13
  %434 = load i32, i32* %433, align 8
  %435 = call i8* @show_ipv6(i32 %434)
  %436 = load %struct.connection*, %struct.connection** %9, align 8
  %437 = getelementptr inbounds %struct.connection, %struct.connection* %436, i32 0, i32 12
  %438 = load i8*, i8** %437, align 8
  %439 = load %struct.connection*, %struct.connection** %9, align 8
  %440 = getelementptr inbounds %struct.connection, %struct.connection* %439, i32 0, i32 11
  %441 = load i32, i32* %440, align 8
  %442 = call i8* @show_ipv6(i32 %441)
  %443 = load %struct.connection*, %struct.connection** %9, align 8
  %444 = getelementptr inbounds %struct.connection, %struct.connection* %443, i32 0, i32 2
  %445 = load i32, i32* %444, align 8
  %446 = call i32 @vkprintf(i32 2, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.8, i64 0, i64 0), i8* %435, i8* %438, i8* %442, i32 %445)
  br label %447

447:                                              ; preds = %400, %361
  %448 = load %struct.connection*, %struct.connection** %9, align 8
  %449 = getelementptr inbounds %struct.connection, %struct.connection* %448, i32 0, i32 10
  %450 = load %struct.TYPE_12__*, %struct.TYPE_12__** %449, align 8
  %451 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %450, i32 0, i32 2
  %452 = load i64 (%struct.sockaddr_in6*)*, i64 (%struct.sockaddr_in6*)** %451, align 8
  %453 = load %struct.connection*, %struct.connection** %9, align 8
  %454 = bitcast %struct.connection* %453 to %struct.sockaddr_in6*
  %455 = call i64 %452(%struct.sockaddr_in6* %454)
  %456 = icmp sge i64 %455, 0
  br i1 %456, label %457, label %500

457:                                              ; preds = %447
  %458 = load i32, i32* %13, align 4
  %459 = load i32, i32* @server_read_write_gateway, align 4
  %460 = load %struct.connection*, %struct.connection** %9, align 8
  %461 = bitcast %struct.connection* %460 to %struct.sockaddr_in6*
  %462 = call i32 @epoll_sethandler(i32 %458, i32 0, i32 %459, %struct.sockaddr_in6* %461)
  %463 = load i32, i32* %13, align 4
  %464 = load %struct.connection*, %struct.connection** %9, align 8
  %465 = getelementptr inbounds %struct.connection, %struct.connection* %464, i32 0, i32 1
  %466 = load i32, i32* %465, align 4
  %467 = load i32, i32* @C_WANTRD, align 4
  %468 = and i32 %466, %467
  %469 = icmp ne i32 %468, 0
  br i1 %469, label %470, label %472

470:                                              ; preds = %457
  %471 = load i32, i32* @EVT_READ, align 4
  br label %473

472:                                              ; preds = %457
  br label %473

473:                                              ; preds = %472, %470
  %474 = phi i32 [ %471, %470 ], [ 0, %472 ]
  %475 = load %struct.connection*, %struct.connection** %9, align 8
  %476 = getelementptr inbounds %struct.connection, %struct.connection* %475, i32 0, i32 1
  %477 = load i32, i32* %476, align 4
  %478 = load i32, i32* @C_WANTWR, align 4
  %479 = and i32 %477, %478
  %480 = icmp ne i32 %479, 0
  br i1 %480, label %481, label %483

481:                                              ; preds = %473
  %482 = load i32, i32* @EVT_WRITE, align 4
  br label %484

483:                                              ; preds = %473
  br label %484

484:                                              ; preds = %483, %481
  %485 = phi i32 [ %482, %481 ], [ 0, %483 ]
  %486 = or i32 %474, %485
  %487 = load i32, i32* @EVT_SPEC, align 4
  %488 = or i32 %486, %487
  %489 = call i32 @epoll_insert(i32 %463, i32 %488)
  %490 = load i32, i32* @outbound_connections, align 4
  %491 = add nsw i32 %490, 1
  store i32 %491, i32* @outbound_connections, align 4
  %492 = load %struct.conn_target*, %struct.conn_target** %3, align 8
  %493 = getelementptr inbounds %struct.conn_target, %struct.conn_target* %492, i32 0, i32 5
  %494 = load i32, i32* %493, align 8
  %495 = add nsw i32 %494, 1
  store i32 %495, i32* %493, align 8
  %496 = load i32, i32* @outbound_connections_created, align 4
  %497 = add nsw i32 %496, 1
  store i32 %497, i32* @outbound_connections_created, align 4
  %498 = load i32, i32* %4, align 4
  %499 = add nsw i32 %498, 1
  store i32 %499, i32* %4, align 4
  br label %529

500:                                              ; preds = %447
  %501 = load %struct.connection*, %struct.connection** %9, align 8
  %502 = getelementptr inbounds %struct.connection, %struct.connection* %501, i32 0, i32 1
  %503 = load i32, i32* %502, align 4
  %504 = load i32, i32* @C_RAWMSG, align 4
  %505 = and i32 %503, %504
  %506 = icmp ne i32 %505, 0
  br i1 %506, label %507, label %520

507:                                              ; preds = %500
  %508 = load %struct.connection*, %struct.connection** %9, align 8
  %509 = getelementptr inbounds %struct.connection, %struct.connection* %508, i32 0, i32 9
  %510 = call i32 @rwm_free(%struct.TYPE_13__* %509)
  %511 = load %struct.connection*, %struct.connection** %9, align 8
  %512 = getelementptr inbounds %struct.connection, %struct.connection* %511, i32 0, i32 8
  %513 = call i32 @rwm_free(%struct.TYPE_13__* %512)
  %514 = load %struct.connection*, %struct.connection** %9, align 8
  %515 = getelementptr inbounds %struct.connection, %struct.connection* %514, i32 0, i32 7
  %516 = call i32 @rwm_free(%struct.TYPE_13__* %515)
  %517 = load %struct.connection*, %struct.connection** %9, align 8
  %518 = getelementptr inbounds %struct.connection, %struct.connection* %517, i32 0, i32 6
  %519 = call i32 @rwm_free(%struct.TYPE_13__* %518)
  br label %520

520:                                              ; preds = %507, %500
  %521 = load i32, i32* @ct_none, align 4
  %522 = load %struct.connection*, %struct.connection** %9, align 8
  %523 = getelementptr inbounds %struct.connection, %struct.connection* %522, i32 0, i32 5
  store i32 %521, i32* %523, align 8
  %524 = load i32, i32* %13, align 4
  %525 = call i32 @close(i32 %524)
  %526 = load %struct.conn_target*, %struct.conn_target** %3, align 8
  %527 = call i32 @compute_next_reconnect(%struct.conn_target* %526)
  %528 = load i32, i32* %4, align 4
  store i32 %528, i32* %2, align 4
  br label %588

529:                                              ; preds = %484
  %530 = load %struct.conn_target*, %struct.conn_target** %3, align 8
  %531 = bitcast %struct.conn_target* %530 to %struct.connection*
  store %struct.connection* %531, %struct.connection** %10, align 8
  %532 = load %struct.connection*, %struct.connection** %10, align 8
  %533 = load %struct.connection*, %struct.connection** %9, align 8
  %534 = getelementptr inbounds %struct.connection, %struct.connection* %533, i32 0, i32 4
  store %struct.connection* %532, %struct.connection** %534, align 8
  %535 = load %struct.connection*, %struct.connection** %10, align 8
  %536 = getelementptr inbounds %struct.connection, %struct.connection* %535, i32 0, i32 3
  %537 = load %struct.connection*, %struct.connection** %536, align 8
  %538 = load %struct.connection*, %struct.connection** %9, align 8
  %539 = getelementptr inbounds %struct.connection, %struct.connection* %538, i32 0, i32 3
  store %struct.connection* %537, %struct.connection** %539, align 8
  %540 = load %struct.connection*, %struct.connection** %9, align 8
  %541 = load %struct.connection*, %struct.connection** %10, align 8
  %542 = getelementptr inbounds %struct.connection, %struct.connection* %541, i32 0, i32 3
  %543 = load %struct.connection*, %struct.connection** %542, align 8
  %544 = getelementptr inbounds %struct.connection, %struct.connection* %543, i32 0, i32 4
  store %struct.connection* %540, %struct.connection** %544, align 8
  %545 = load %struct.connection*, %struct.connection** %9, align 8
  %546 = load %struct.connection*, %struct.connection** %10, align 8
  %547 = getelementptr inbounds %struct.connection, %struct.connection* %546, i32 0, i32 3
  store %struct.connection* %545, %struct.connection** %547, align 8
  %548 = load i64, i64* @verbosity, align 8
  %549 = icmp sgt i64 %548, 0
  br i1 %549, label %550, label %585

550:                                              ; preds = %529
  %551 = load %struct.connection*, %struct.connection** %9, align 8
  %552 = getelementptr inbounds %struct.connection, %struct.connection* %551, i32 0, i32 1
  %553 = load i32, i32* %552, align 4
  %554 = load i32, i32* @C_IPV6, align 4
  %555 = and i32 %553, %554
  %556 = icmp ne i32 %555, 0
  br i1 %556, label %557, label %570

557:                                              ; preds = %550
  %558 = load i32, i32* @stderr, align 4
  %559 = load %struct.connection*, %struct.connection** %9, align 8
  %560 = getelementptr inbounds %struct.connection, %struct.connection* %559, i32 0, i32 0
  %561 = load i32, i32* %560, align 8
  %562 = load %struct.conn_target*, %struct.conn_target** %3, align 8
  %563 = getelementptr inbounds %struct.conn_target, %struct.conn_target* %562, i32 0, i32 8
  %564 = load i32, i32* %563, align 8
  %565 = call i8* @show_ipv6(i32 %564)
  %566 = load %struct.conn_target*, %struct.conn_target** %3, align 8
  %567 = getelementptr inbounds %struct.conn_target, %struct.conn_target* %566, i32 0, i32 6
  %568 = load i32, i32* %567, align 4
  %569 = call i32 (i32, i8*, ...) @fprintf(i32 %558, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.9, i64 0, i64 0), i32 %561, i8* %565, i32 %568)
  br label %584

570:                                              ; preds = %550
  %571 = load i32, i32* @stderr, align 4
  %572 = load %struct.connection*, %struct.connection** %9, align 8
  %573 = getelementptr inbounds %struct.connection, %struct.connection* %572, i32 0, i32 0
  %574 = load i32, i32* %573, align 8
  %575 = load %struct.conn_target*, %struct.conn_target** %3, align 8
  %576 = getelementptr inbounds %struct.conn_target, %struct.conn_target* %575, i32 0, i32 7
  %577 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %576, i32 0, i32 0
  %578 = load i64, i64* %577, align 8
  %579 = call i8* @inet_ntoa(i64 %578)
  %580 = load %struct.conn_target*, %struct.conn_target** %3, align 8
  %581 = getelementptr inbounds %struct.conn_target, %struct.conn_target* %580, i32 0, i32 6
  %582 = load i32, i32* %581, align 4
  %583 = call i32 (i32, i8*, ...) @fprintf(i32 %571, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.10, i64 0, i64 0), i32 %574, i8* %579, i32 %582)
  br label %584

584:                                              ; preds = %570, %557
  br label %585

585:                                              ; preds = %584, %529
  br label %93

586:                                              ; preds = %93
  %587 = load i32, i32* %4, align 4
  store i32 %587, i32* %2, align 4
  br label %588

588:                                              ; preds = %586, %520, %239, %194, %91
  %589 = load i32, i32* %2, align 4
  ret i32 %589
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i8* @inet_ntoa(i64) #1

declare dso_local i8* @show_ipv6(i32) #1

declare dso_local i32 @client_socket(i64, i32, i32) #1

declare dso_local i32 @client_socket_ipv6(i32, i32, i32) #1

declare dso_local i32 @compute_next_reconnect(%struct.conn_target*) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @memset(%struct.sockaddr_in6*, i32, i32) #1

declare dso_local i32 @rwm_init(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @init_builtin_buffer(%struct.TYPE_14__*, i32, i32) #1

declare dso_local i32 @getsockname(i32, %struct.sockaddr*, i32*) #1

declare dso_local i8* @ntohl(i64) #1

declare dso_local i8* @ntohs(i32) #1

declare dso_local i32 @vkprintf(i32, i8*, i8*, i8*, i8*, i32) #1

declare dso_local i8* @show_our_ip(%struct.sockaddr_in6*) #1

declare dso_local i8* @show_remote_ip(%struct.sockaddr_in6*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @epoll_sethandler(i32, i32, i32, %struct.sockaddr_in6*) #1

declare dso_local i32 @epoll_insert(i32, i32) #1

declare dso_local i32 @rwm_free(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
