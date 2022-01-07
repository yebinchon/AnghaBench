; ModuleID = '/home/carl/AnghaBench/lab/engine/code/qcommon/extr_net_ip.c_NET_OpenSocks.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/qcommon/extr_net_ip.c_NET_OpenSocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_7__ = type { i64* }
%struct.TYPE_10__ = type { i64* }
%struct.sockaddr_in = type { i16, i32, %struct.TYPE_6__, i64 }
%struct.TYPE_6__ = type { i32 }
%struct.hostent = type { i64, i64* }
%struct.sockaddr = type { i32 }

@qfalse = common dso_local global i8* null, align 8
@usingSocks = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [37 x i8] c"Opening connection to SOCKS server.\0A\00", align 1
@AF_INET = common dso_local global i64 0, align 8
@SOCK_STREAM = common dso_local global i32 0, align 4
@IPPROTO_TCP = common dso_local global i32 0, align 4
@socks_socket = common dso_local global i32 0, align 4
@INVALID_SOCKET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"WARNING: NET_OpenSocks: socket: %s\0A\00", align 1
@net_socksServer = common dso_local global %struct.TYPE_8__* null, align 8
@.str.2 = private unnamed_addr constant [43 x i8] c"WARNING: NET_OpenSocks: gethostbyname: %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [69 x i8] c"WARNING: NET_OpenSocks: gethostbyname: address type was not AF_INET\0A\00", align 1
@net_socksPort = common dso_local global %struct.TYPE_9__* null, align 8
@SOCKET_ERROR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [28 x i8] c"NET_OpenSocks: connect: %s\0A\00", align 1
@net_socksUsername = common dso_local global %struct.TYPE_7__* null, align 8
@net_socksPassword = common dso_local global %struct.TYPE_10__* null, align 8
@qtrue = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [25 x i8] c"NET_OpenSocks: send: %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"NET_OpenSocks: recv: %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"NET_OpenSocks: bad response\0A\00", align 1
@.str.8 = private unnamed_addr constant [31 x i8] c"NET_OpenSocks: request denied\0A\00", align 1
@.str.9 = private unnamed_addr constant [38 x i8] c"NET_OpenSocks: authentication failed\0A\00", align 1
@INADDR_ANY = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [35 x i8] c"NET_OpenSocks: request denied: %i\0A\00", align 1
@.str.11 = private unnamed_addr constant [46 x i8] c"NET_OpenSocks: relay address is not IPV4: %i\0A\00", align 1
@socksRelayAddr = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @NET_OpenSocks(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sockaddr_in, align 8
  %4 = alloca %struct.hostent*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca [64 x i8], align 16
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %10 = load i8*, i8** @qfalse, align 8
  store i8* %10, i8** @usingSocks, align 8
  %11 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %12 = load i64, i64* @AF_INET, align 8
  %13 = load i32, i32* @SOCK_STREAM, align 4
  %14 = load i32, i32* @IPPROTO_TCP, align 4
  %15 = call i32 @socket(i64 %12, i32 %13, i32 %14)
  store i32 %15, i32* @socks_socket, align 4
  %16 = load i32, i32* @INVALID_SOCKET, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %1
  %19 = call zeroext i8 (...) @NET_ErrorString()
  %20 = zext i8 %19 to i32
  %21 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %20)
  br label %303

22:                                               ; preds = %1
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** @net_socksServer, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call %struct.hostent* @gethostbyname(i32 %25)
  store %struct.hostent* %26, %struct.hostent** %4, align 8
  %27 = load %struct.hostent*, %struct.hostent** %4, align 8
  %28 = icmp eq %struct.hostent* %27, null
  br i1 %28, label %29, label %33

29:                                               ; preds = %22
  %30 = call zeroext i8 (...) @NET_ErrorString()
  %31 = zext i8 %30 to i32
  %32 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i32 %31)
  br label %303

33:                                               ; preds = %22
  %34 = load %struct.hostent*, %struct.hostent** %4, align 8
  %35 = getelementptr inbounds %struct.hostent, %struct.hostent* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @AF_INET, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %33
  %40 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.3, i64 0, i64 0))
  br label %303

41:                                               ; preds = %33
  %42 = load i64, i64* @AF_INET, align 8
  %43 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %3, i32 0, i32 3
  store i64 %42, i64* %43, align 8
  %44 = load %struct.hostent*, %struct.hostent** %4, align 8
  %45 = getelementptr inbounds %struct.hostent, %struct.hostent* %44, i32 0, i32 1
  %46 = load i64*, i64** %45, align 8
  %47 = getelementptr inbounds i64, i64* %46, i64 0
  %48 = load i64, i64* %47, align 8
  %49 = inttoptr i64 %48 to i32*
  %50 = load i32, i32* %49, align 4
  %51 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %3, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 8
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** @net_socksPort, align 8
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = trunc i64 %55 to i16
  %57 = call i8* @htons(i16 signext %56)
  %58 = ptrtoint i8* %57 to i16
  %59 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %3, i32 0, i32 0
  store i16 %58, i16* %59, align 8
  %60 = load i32, i32* @socks_socket, align 4
  %61 = bitcast %struct.sockaddr_in* %3 to %struct.sockaddr*
  %62 = call i32 @connect(i32 %60, %struct.sockaddr* %61, i32 24)
  %63 = load i32, i32* @SOCKET_ERROR, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %65, label %69

65:                                               ; preds = %41
  %66 = call zeroext i8 (...) @NET_ErrorString()
  %67 = zext i8 %66 to i32
  %68 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i32 %67)
  br label %303

69:                                               ; preds = %41
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** @net_socksUsername, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 0
  %72 = load i64*, i64** %71, align 8
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %81, label %75

75:                                               ; preds = %69
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** @net_socksPassword, align 8
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 0
  %78 = load i64*, i64** %77, align 8
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %75, %69
  %82 = load i8*, i8** @qtrue, align 8
  store i8* %82, i8** %6, align 8
  br label %85

83:                                               ; preds = %75
  %84 = load i8*, i8** @qfalse, align 8
  store i8* %84, i8** %6, align 8
  br label %85

85:                                               ; preds = %83, %81
  %86 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 0
  store i8 5, i8* %86, align 16
  %87 = load i8*, i8** %6, align 8
  %88 = icmp ne i8* %87, null
  br i1 %88, label %89, label %91

89:                                               ; preds = %85
  %90 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 1
  store i8 2, i8* %90, align 1
  store i32 4, i32* %5, align 4
  br label %93

91:                                               ; preds = %85
  %92 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 1
  store i8 1, i8* %92, align 1
  store i32 3, i32* %5, align 4
  br label %93

93:                                               ; preds = %91, %89
  %94 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 2
  store i8 0, i8* %94, align 2
  %95 = load i8*, i8** %6, align 8
  %96 = icmp ne i8* %95, null
  br i1 %96, label %97, label %99

97:                                               ; preds = %93
  %98 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 2
  store i8 2, i8* %98, align 2
  br label %99

99:                                               ; preds = %97, %93
  %100 = load i32, i32* @socks_socket, align 4
  %101 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 0
  %102 = load i32, i32* %5, align 4
  %103 = call i32 @send(i32 %100, i8* %101, i32 %102, i32 0)
  %104 = load i32, i32* @SOCKET_ERROR, align 4
  %105 = icmp eq i32 %103, %104
  br i1 %105, label %106, label %110

106:                                              ; preds = %99
  %107 = call zeroext i8 (...) @NET_ErrorString()
  %108 = zext i8 %107 to i32
  %109 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0), i32 %108)
  br label %303

110:                                              ; preds = %99
  %111 = load i32, i32* @socks_socket, align 4
  %112 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 0
  %113 = call i32 @recv(i32 %111, i8* %112, i32 64, i32 0)
  store i32 %113, i32* %5, align 4
  %114 = load i32, i32* %5, align 4
  %115 = load i32, i32* @SOCKET_ERROR, align 4
  %116 = icmp eq i32 %114, %115
  br i1 %116, label %117, label %121

117:                                              ; preds = %110
  %118 = call zeroext i8 (...) @NET_ErrorString()
  %119 = zext i8 %118 to i32
  %120 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0), i32 %119)
  br label %303

121:                                              ; preds = %110
  %122 = load i32, i32* %5, align 4
  %123 = icmp ne i32 %122, 2
  br i1 %123, label %129, label %124

124:                                              ; preds = %121
  %125 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 0
  %126 = load i8, i8* %125, align 16
  %127 = zext i8 %126 to i32
  %128 = icmp ne i32 %127, 5
  br i1 %128, label %129, label %131

129:                                              ; preds = %124, %121
  %130 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0))
  br label %303

131:                                              ; preds = %124
  %132 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 1
  %133 = load i8, i8* %132, align 1
  %134 = zext i8 %133 to i32
  switch i32 %134, label %137 [
    i32 0, label %135
    i32 2, label %136
  ]

135:                                              ; preds = %131
  br label %139

136:                                              ; preds = %131
  br label %139

137:                                              ; preds = %131
  %138 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i64 0, i64 0))
  br label %303

139:                                              ; preds = %136, %135
  %140 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 1
  %141 = load i8, i8* %140, align 1
  %142 = zext i8 %141 to i32
  %143 = icmp eq i32 %142, 2
  br i1 %143, label %144, label %228

144:                                              ; preds = %139
  %145 = load %struct.TYPE_7__*, %struct.TYPE_7__** @net_socksUsername, align 8
  %146 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %145, i32 0, i32 0
  %147 = load i64*, i64** %146, align 8
  %148 = call i32 @strlen(i64* %147)
  store i32 %148, i32* %8, align 4
  %149 = load %struct.TYPE_10__*, %struct.TYPE_10__** @net_socksPassword, align 8
  %150 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %149, i32 0, i32 0
  %151 = load i64*, i64** %150, align 8
  %152 = call i32 @strlen(i64* %151)
  store i32 %152, i32* %9, align 4
  %153 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 0
  store i8 1, i8* %153, align 16
  %154 = load i32, i32* %8, align 4
  %155 = trunc i32 %154 to i8
  %156 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 1
  store i8 %155, i8* %156, align 1
  %157 = load i32, i32* %8, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %166

159:                                              ; preds = %144
  %160 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 2
  %161 = load %struct.TYPE_7__*, %struct.TYPE_7__** @net_socksUsername, align 8
  %162 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %161, i32 0, i32 0
  %163 = load i64*, i64** %162, align 8
  %164 = load i32, i32* %8, align 4
  %165 = call i32 @memcpy(i8* %160, i64* %163, i32 %164)
  br label %166

166:                                              ; preds = %159, %144
  %167 = load i32, i32* %9, align 4
  %168 = trunc i32 %167 to i8
  %169 = load i32, i32* %8, align 4
  %170 = add nsw i32 2, %169
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 %171
  store i8 %168, i8* %172, align 1
  %173 = load i32, i32* %9, align 4
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %185

175:                                              ; preds = %166
  %176 = load i32, i32* %8, align 4
  %177 = add nsw i32 3, %176
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 %178
  %180 = load %struct.TYPE_10__*, %struct.TYPE_10__** @net_socksPassword, align 8
  %181 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %180, i32 0, i32 0
  %182 = load i64*, i64** %181, align 8
  %183 = load i32, i32* %9, align 4
  %184 = call i32 @memcpy(i8* %179, i64* %182, i32 %183)
  br label %185

185:                                              ; preds = %175, %166
  %186 = load i32, i32* @socks_socket, align 4
  %187 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 0
  %188 = load i32, i32* %8, align 4
  %189 = add nsw i32 3, %188
  %190 = load i32, i32* %9, align 4
  %191 = add nsw i32 %189, %190
  %192 = call i32 @send(i32 %186, i8* %187, i32 %191, i32 0)
  %193 = load i32, i32* @SOCKET_ERROR, align 4
  %194 = icmp eq i32 %192, %193
  br i1 %194, label %195, label %199

195:                                              ; preds = %185
  %196 = call zeroext i8 (...) @NET_ErrorString()
  %197 = zext i8 %196 to i32
  %198 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0), i32 %197)
  br label %303

199:                                              ; preds = %185
  %200 = load i32, i32* @socks_socket, align 4
  %201 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 0
  %202 = call i32 @recv(i32 %200, i8* %201, i32 64, i32 0)
  store i32 %202, i32* %5, align 4
  %203 = load i32, i32* %5, align 4
  %204 = load i32, i32* @SOCKET_ERROR, align 4
  %205 = icmp eq i32 %203, %204
  br i1 %205, label %206, label %210

206:                                              ; preds = %199
  %207 = call zeroext i8 (...) @NET_ErrorString()
  %208 = zext i8 %207 to i32
  %209 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0), i32 %208)
  br label %303

210:                                              ; preds = %199
  %211 = load i32, i32* %5, align 4
  %212 = icmp ne i32 %211, 2
  br i1 %212, label %218, label %213

213:                                              ; preds = %210
  %214 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 0
  %215 = load i8, i8* %214, align 16
  %216 = zext i8 %215 to i32
  %217 = icmp ne i32 %216, 1
  br i1 %217, label %218, label %220

218:                                              ; preds = %213, %210
  %219 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0))
  br label %303

220:                                              ; preds = %213
  %221 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 1
  %222 = load i8, i8* %221, align 1
  %223 = zext i8 %222 to i32
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %225, label %227

225:                                              ; preds = %220
  %226 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.9, i64 0, i64 0))
  br label %303

227:                                              ; preds = %220
  br label %228

228:                                              ; preds = %227, %139
  %229 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 0
  store i8 5, i8* %229, align 16
  %230 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 1
  store i8 3, i8* %230, align 1
  %231 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 2
  store i8 0, i8* %231, align 2
  %232 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 3
  store i8 1, i8* %232, align 1
  %233 = load i32, i32* @INADDR_ANY, align 4
  %234 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 4
  %235 = bitcast i8* %234 to i32*
  store i32 %233, i32* %235, align 4
  %236 = load i32, i32* %2, align 4
  %237 = trunc i32 %236 to i16
  %238 = call i8* @htons(i16 signext %237)
  %239 = ptrtoint i8* %238 to i16
  %240 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 8
  %241 = bitcast i8* %240 to i16*
  store i16 %239, i16* %241, align 8
  %242 = load i32, i32* @socks_socket, align 4
  %243 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 0
  %244 = call i32 @send(i32 %242, i8* %243, i32 10, i32 0)
  %245 = load i32, i32* @SOCKET_ERROR, align 4
  %246 = icmp eq i32 %244, %245
  br i1 %246, label %247, label %251

247:                                              ; preds = %228
  %248 = call zeroext i8 (...) @NET_ErrorString()
  %249 = zext i8 %248 to i32
  %250 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0), i32 %249)
  br label %303

251:                                              ; preds = %228
  %252 = load i32, i32* @socks_socket, align 4
  %253 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 0
  %254 = call i32 @recv(i32 %252, i8* %253, i32 64, i32 0)
  store i32 %254, i32* %5, align 4
  %255 = load i32, i32* %5, align 4
  %256 = load i32, i32* @SOCKET_ERROR, align 4
  %257 = icmp eq i32 %255, %256
  br i1 %257, label %258, label %262

258:                                              ; preds = %251
  %259 = call zeroext i8 (...) @NET_ErrorString()
  %260 = zext i8 %259 to i32
  %261 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0), i32 %260)
  br label %303

262:                                              ; preds = %251
  %263 = load i32, i32* %5, align 4
  %264 = icmp slt i32 %263, 2
  br i1 %264, label %270, label %265

265:                                              ; preds = %262
  %266 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 0
  %267 = load i8, i8* %266, align 16
  %268 = zext i8 %267 to i32
  %269 = icmp ne i32 %268, 5
  br i1 %269, label %270, label %272

270:                                              ; preds = %265, %262
  %271 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0))
  br label %303

272:                                              ; preds = %265
  %273 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 1
  %274 = load i8, i8* %273, align 1
  %275 = zext i8 %274 to i32
  %276 = icmp ne i32 %275, 0
  br i1 %276, label %277, label %282

277:                                              ; preds = %272
  %278 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 1
  %279 = load i8, i8* %278, align 1
  %280 = zext i8 %279 to i32
  %281 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.10, i64 0, i64 0), i32 %280)
  br label %303

282:                                              ; preds = %272
  %283 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 3
  %284 = load i8, i8* %283, align 1
  %285 = zext i8 %284 to i32
  %286 = icmp ne i32 %285, 1
  br i1 %286, label %287, label %292

287:                                              ; preds = %282
  %288 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 3
  %289 = load i8, i8* %288, align 1
  %290 = zext i8 %289 to i32
  %291 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.11, i64 0, i64 0), i32 %290)
  br label %303

292:                                              ; preds = %282
  %293 = load i64, i64* @AF_INET, align 8
  store i64 %293, i64* getelementptr inbounds (%struct.sockaddr_in, %struct.sockaddr_in* bitcast (i32* @socksRelayAddr to %struct.sockaddr_in*), i32 0, i32 3), align 4
  %294 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 4
  %295 = bitcast i8* %294 to i32*
  %296 = load i32, i32* %295, align 4
  store i32 %296, i32* getelementptr inbounds (%struct.sockaddr_in, %struct.sockaddr_in* bitcast (i32* @socksRelayAddr to %struct.sockaddr_in*), i32 0, i32 2, i32 0), align 4
  %297 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 8
  %298 = bitcast i8* %297 to i16*
  %299 = load i16, i16* %298, align 8
  store i16 %299, i16* getelementptr inbounds (%struct.sockaddr_in, %struct.sockaddr_in* bitcast (i32* @socksRelayAddr to %struct.sockaddr_in*), i32 0, i32 0), align 4
  %300 = load i32, i32* getelementptr inbounds (%struct.sockaddr_in, %struct.sockaddr_in* bitcast (i32* @socksRelayAddr to %struct.sockaddr_in*), i32 0, i32 1), align 4
  %301 = call i32 @memset(i32 %300, i32 0, i32 8)
  %302 = load i8*, i8** @qtrue, align 8
  store i8* %302, i8** @usingSocks, align 8
  br label %303

303:                                              ; preds = %292, %287, %277, %270, %258, %247, %225, %218, %206, %195, %137, %129, %117, %106, %65, %39, %29, %18
  ret void
}

declare dso_local i32 @Com_Printf(i8*, ...) #1

declare dso_local i32 @socket(i64, i32, i32) #1

declare dso_local zeroext i8 @NET_ErrorString(...) #1

declare dso_local %struct.hostent* @gethostbyname(i32) #1

declare dso_local i8* @htons(i16 signext) #1

declare dso_local i32 @connect(i32, %struct.sockaddr*, i32) #1

declare dso_local i32 @send(i32, i8*, i32, i32) #1

declare dso_local i32 @recv(i32, i8*, i32, i32) #1

declare dso_local i32 @strlen(i64*) #1

declare dso_local i32 @memcpy(i8*, i64*, i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
