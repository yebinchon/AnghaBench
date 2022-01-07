; ModuleID = '/home/carl/AnghaBench/git/extr_imap-send.c_imap_open_store.c'
source_filename = "/home/carl/AnghaBench/git/extr_imap-send.c_imap_open_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.credential = type { i64 }
%struct.child_process = type { i32, i32, i32, i32 }
%struct.imap_store = type { i8*, i8*, %struct.imap* }
%struct.imap = type { %struct.TYPE_6__, i32, i32, i32* }
%struct.TYPE_6__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32*, i32 }
%struct.imap_server_conf = type { i8*, i8*, i8*, i32, i32, i64, i32, i64 }
%struct.addrinfo = type { i32, i32, i32, %struct.TYPE_5__, i32, %struct.sockaddr*, i32, i32, i32, %struct.addrinfo* }
%struct.TYPE_5__ = type { i32 }
%struct.sockaddr = type { i32 }
%struct.imap_cmd_cb = type { i32, i32, i32, %struct.TYPE_5__, i32, %struct.sockaddr*, i32, i32, i32, %struct.imap_cmd_cb* }
%struct.sockaddr_in = type { i32, i32, i32, %struct.TYPE_5__, i32, %struct.sockaddr*, i32, i32, i32, %struct.sockaddr_in* }

@CREDENTIAL_INIT = common dso_local global %struct.credential zeroinitializer, align 8
@CHILD_PROCESS_INIT = common dso_local global %struct.child_process zeroinitializer, align 4
@.str = private unnamed_addr constant [25 x i8] c"Starting tunnel '%s'... \00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"cannot start proxy %s\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"ok\0A\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@SOCK_STREAM = common dso_local global i32 0, align 4
@IPPROTO_TCP = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [17 x i8] c"Resolving %s... \00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [17 x i8] c"getaddrinfo: %s\0A\00", align 1
@NI_MAXHOST = common dso_local global i32 0, align 4
@NI_NUMERICHOST = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [26 x i8] c"Connecting to [%s]:%s... \00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"connect\00", align 1
@.str.8 = private unnamed_addr constant [37 x i8] c"Error: unable to connect to server.\0A\00", align 1
@.str.9 = private unnamed_addr constant [34 x i8] c"IMAP error: no greeting response\0A\00", align 1
@.str.10 = private unnamed_addr constant [39 x i8] c"IMAP error: invalid greeting response\0A\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"PREAUTH\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"OK\00", align 1
@.str.13 = private unnamed_addr constant [39 x i8] c"IMAP error: unknown greeting response\0A\00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c"CAPABILITY\00", align 1
@STARTTLS = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [9 x i8] c"STARTTLS\00", align 1
@.str.16 = private unnamed_addr constant [15 x i8] c"Logging in...\0A\00", align 1
@.str.17 = private unnamed_addr constant [9 x i8] c"CRAM-MD5\00", align 1
@AUTH_CRAM_MD5 = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [77 x i8] c"You specified CRAM-MD5 as authentication method, but %s doesn't support it.\0A\00", align 1
@auth_cram_md5 = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [22 x i8] c"AUTHENTICATE CRAM-MD5\00", align 1
@.str.20 = private unnamed_addr constant [42 x i8] c"IMAP error: AUTHENTICATE CRAM-MD5 failed\0A\00", align 1
@.str.21 = private unnamed_addr constant [34 x i8] c"Unknown authentication method:%s\0A\00", align 1
@NOLOGIN = common dso_local global i32 0, align 4
@.str.22 = private unnamed_addr constant [46 x i8] c"Skipping account %s@%s, server forbids LOGIN\0A\00", align 1
@.str.23 = private unnamed_addr constant [58 x i8] c"*** IMAP Warning *** Password is being sent in the clear\0A\00", align 1
@.str.24 = private unnamed_addr constant [16 x i8] c"LOGIN \22%s\22 \22%s\22\00", align 1
@.str.25 = private unnamed_addr constant [26 x i8] c"IMAP error: LOGIN failed\0A\00", align 1
@.str.26 = private unnamed_addr constant [13 x i8] c"EXAMINE \22%s\22\00", align 1
@.str.27 = private unnamed_addr constant [37 x i8] c"IMAP error: could not check mailbox\0A\00", align 1
@.str.28 = private unnamed_addr constant [12 x i8] c"CREATE \22%s\22\00", align 1
@.str.29 = private unnamed_addr constant [25 x i8] c"Created missing mailbox\0A\00", align 1
@.str.30 = private unnamed_addr constant [46 x i8] c"IMAP error: could not create missing mailbox\0A\00", align 1
@.str.31 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@AF_INET = common dso_local global i32 0, align 4
@PF_INET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.imap_store* (%struct.imap_server_conf*, i8*)* @imap_open_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.imap_store* @imap_open_store(%struct.imap_server_conf* %0, i8* %1) #0 {
  %3 = alloca %struct.imap_store*, align 8
  %4 = alloca %struct.imap_server_conf*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.credential, align 8
  %7 = alloca %struct.imap_store*, align 8
  %8 = alloca %struct.imap*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.child_process, align 4
  %14 = alloca %struct.addrinfo, align 8
  %15 = alloca %struct.addrinfo*, align 8
  %16 = alloca %struct.addrinfo*, align 8
  %17 = alloca i32, align 4
  %18 = alloca [6 x i8], align 1
  %19 = alloca i8*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  %22 = alloca %struct.imap_cmd_cb, align 8
  store %struct.imap_server_conf* %0, %struct.imap_server_conf** %4, align 8
  store i8* %1, i8** %5, align 8
  %23 = bitcast %struct.credential* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %23, i8* align 8 bitcast (%struct.credential* @CREDENTIAL_INIT to i8*), i64 8, i1 false)
  store i32 -1, i32* %11, align 4
  %24 = call i8* @xcalloc(i32 1, i32 24)
  %25 = bitcast i8* %24 to %struct.imap_store*
  store %struct.imap_store* %25, %struct.imap_store** %7, align 8
  %26 = call i8* @xcalloc(i32 1, i32 32)
  %27 = bitcast i8* %26 to %struct.imap*
  store %struct.imap* %27, %struct.imap** %8, align 8
  %28 = load %struct.imap_store*, %struct.imap_store** %7, align 8
  %29 = getelementptr inbounds %struct.imap_store, %struct.imap_store* %28, i32 0, i32 2
  store %struct.imap* %27, %struct.imap** %29, align 8
  %30 = load %struct.imap*, %struct.imap** %8, align 8
  %31 = getelementptr inbounds %struct.imap, %struct.imap* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 1
  store i32 -1, i32* %35, align 4
  %36 = load %struct.imap*, %struct.imap** %8, align 8
  %37 = getelementptr inbounds %struct.imap, %struct.imap* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 0
  store i32 -1, i32* %41, align 4
  %42 = load %struct.imap*, %struct.imap** %8, align 8
  %43 = getelementptr inbounds %struct.imap, %struct.imap* %42, i32 0, i32 2
  %44 = load %struct.imap*, %struct.imap** %8, align 8
  %45 = getelementptr inbounds %struct.imap, %struct.imap* %44, i32 0, i32 3
  store i32* %43, i32** %45, align 8
  %46 = load %struct.imap_server_conf*, %struct.imap_server_conf** %4, align 8
  %47 = getelementptr inbounds %struct.imap_server_conf, %struct.imap_server_conf* %46, i32 0, i32 7
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %89

50:                                               ; preds = %2
  %51 = bitcast %struct.child_process* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %51, i8* align 4 bitcast (%struct.child_process* @CHILD_PROCESS_INIT to i8*), i64 16, i1 false)
  %52 = load %struct.imap_server_conf*, %struct.imap_server_conf** %4, align 8
  %53 = getelementptr inbounds %struct.imap_server_conf, %struct.imap_server_conf* %52, i32 0, i32 7
  %54 = load i64, i64* %53, align 8
  %55 = call i32 (i8*, ...) @imap_info(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i64 %54)
  %56 = getelementptr inbounds %struct.child_process, %struct.child_process* %13, i32 0, i32 3
  %57 = load %struct.imap_server_conf*, %struct.imap_server_conf** %4, align 8
  %58 = getelementptr inbounds %struct.imap_server_conf, %struct.imap_server_conf* %57, i32 0, i32 7
  %59 = load i64, i64* %58, align 8
  %60 = call i32 @argv_array_push(i32* %56, i64 %59)
  %61 = getelementptr inbounds %struct.child_process, %struct.child_process* %13, i32 0, i32 0
  store i32 1, i32* %61, align 4
  %62 = getelementptr inbounds %struct.child_process, %struct.child_process* %13, i32 0, i32 1
  store i32 -1, i32* %62, align 4
  %63 = getelementptr inbounds %struct.child_process, %struct.child_process* %13, i32 0, i32 2
  store i32 -1, i32* %63, align 4
  %64 = call i64 @start_command(%struct.child_process* %13)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %50
  %67 = load %struct.imap_server_conf*, %struct.imap_server_conf** %4, align 8
  %68 = getelementptr inbounds %struct.imap_server_conf, %struct.imap_server_conf* %67, i32 0, i32 7
  %69 = load i64, i64* %68, align 8
  %70 = call i32 @die(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i64 %69)
  br label %71

71:                                               ; preds = %66, %50
  %72 = getelementptr inbounds %struct.child_process, %struct.child_process* %13, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.imap*, %struct.imap** %8, align 8
  %75 = getelementptr inbounds %struct.imap, %struct.imap* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = load i32*, i32** %77, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 0
  store i32 %73, i32* %79, align 4
  %80 = getelementptr inbounds %struct.child_process, %struct.child_process* %13, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.imap*, %struct.imap** %8, align 8
  %83 = getelementptr inbounds %struct.imap, %struct.imap* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  %86 = load i32*, i32** %85, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 1
  store i32 %81, i32* %87, align 4
  %88 = call i32 (i8*, ...) @imap_info(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  br label %219

89:                                               ; preds = %2
  %90 = getelementptr inbounds [6 x i8], [6 x i8]* %18, i64 0, i64 0
  %91 = load %struct.imap_server_conf*, %struct.imap_server_conf** %4, align 8
  %92 = getelementptr inbounds %struct.imap_server_conf, %struct.imap_server_conf* %91, i32 0, i32 6
  %93 = load i32, i32* %92, align 8
  %94 = call i32 @xsnprintf(i8* %90, i32 6, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 %93)
  %95 = bitcast %struct.addrinfo* %14 to %struct.sockaddr_in*
  %96 = call i32 @memset(%struct.sockaddr_in* %95, i32 0, i32 56)
  %97 = load i32, i32* @SOCK_STREAM, align 4
  %98 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %14, i32 0, i32 7
  store i32 %97, i32* %98, align 4
  %99 = load i32, i32* @IPPROTO_TCP, align 4
  %100 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %14, i32 0, i32 6
  store i32 %99, i32* %100, align 8
  %101 = load %struct.imap_server_conf*, %struct.imap_server_conf** %4, align 8
  %102 = getelementptr inbounds %struct.imap_server_conf, %struct.imap_server_conf* %101, i32 0, i32 0
  %103 = load i8*, i8** %102, align 8
  %104 = call i32 (i8*, ...) @imap_info(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i8* %103)
  %105 = load %struct.imap_server_conf*, %struct.imap_server_conf** %4, align 8
  %106 = getelementptr inbounds %struct.imap_server_conf, %struct.imap_server_conf* %105, i32 0, i32 0
  %107 = load i8*, i8** %106, align 8
  %108 = getelementptr inbounds [6 x i8], [6 x i8]* %18, i64 0, i64 0
  %109 = bitcast %struct.addrinfo* %14 to %struct.sockaddr_in*
  %110 = bitcast %struct.addrinfo** %16 to %struct.sockaddr_in**
  %111 = call i32 @getaddrinfo(i8* %107, i8* %108, %struct.sockaddr_in* %109, %struct.sockaddr_in** %110)
  store i32 %111, i32* %17, align 4
  %112 = load i32, i32* %17, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %119

114:                                              ; preds = %89
  %115 = load i32, i32* @stderr, align 4
  %116 = load i32, i32* %17, align 4
  %117 = call i8* @gai_strerror(i32 %116)
  %118 = call i32 (i32, i8*, ...) @fprintf(i32 %115, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i8* %117)
  br label %419

119:                                              ; preds = %89
  %120 = call i32 (i8*, ...) @imap_info(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %121 = load %struct.addrinfo*, %struct.addrinfo** %16, align 8
  store %struct.addrinfo* %121, %struct.addrinfo** %15, align 8
  br label %122

122:                                              ; preds = %172, %119
  %123 = load %struct.addrinfo*, %struct.addrinfo** %16, align 8
  %124 = icmp ne %struct.addrinfo* %123, null
  br i1 %124, label %125, label %176

125:                                              ; preds = %122
  %126 = load i32, i32* @NI_MAXHOST, align 4
  %127 = zext i32 %126 to i64
  %128 = call i8* @llvm.stacksave()
  store i8* %128, i8** %19, align 8
  %129 = alloca i8, i64 %127, align 16
  store i64 %127, i64* %20, align 8
  %130 = load %struct.addrinfo*, %struct.addrinfo** %16, align 8
  %131 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %130, i32 0, i32 8
  %132 = load i32, i32* %131, align 8
  %133 = load %struct.addrinfo*, %struct.addrinfo** %16, align 8
  %134 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %133, i32 0, i32 7
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.addrinfo*, %struct.addrinfo** %16, align 8
  %137 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %136, i32 0, i32 6
  %138 = load i32, i32* %137, align 8
  %139 = call i32 @socket(i32 %132, i32 %135, i32 %138)
  store i32 %139, i32* %11, align 4
  %140 = load i32, i32* %11, align 4
  %141 = icmp slt i32 %140, 0
  br i1 %141, label %142, label %143

142:                                              ; preds = %125
  store i32 5, i32* %21, align 4
  br label %169

143:                                              ; preds = %125
  %144 = load %struct.addrinfo*, %struct.addrinfo** %16, align 8
  %145 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %144, i32 0, i32 5
  %146 = load %struct.sockaddr*, %struct.sockaddr** %145, align 8
  %147 = load %struct.addrinfo*, %struct.addrinfo** %16, align 8
  %148 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = trunc i64 %127 to i32
  %151 = load i32, i32* @NI_NUMERICHOST, align 4
  %152 = call i32 @getnameinfo(%struct.sockaddr* %146, i32 %149, i8* %129, i32 %150, i32* null, i32 0, i32 %151)
  %153 = getelementptr inbounds [6 x i8], [6 x i8]* %18, i64 0, i64 0
  %154 = call i32 (i8*, ...) @imap_info(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0), i8* %129, i8* %153)
  %155 = load i32, i32* %11, align 4
  %156 = load %struct.addrinfo*, %struct.addrinfo** %16, align 8
  %157 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %156, i32 0, i32 5
  %158 = load %struct.sockaddr*, %struct.sockaddr** %157, align 8
  %159 = load %struct.addrinfo*, %struct.addrinfo** %16, align 8
  %160 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = call i64 @connect(i32 %155, %struct.sockaddr* %158, i32 %161)
  %163 = icmp slt i64 %162, 0
  br i1 %163, label %164, label %168

164:                                              ; preds = %143
  %165 = load i32, i32* %11, align 4
  %166 = call i32 @close(i32 %165)
  store i32 -1, i32* %11, align 4
  %167 = call i32 @perror(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0))
  store i32 5, i32* %21, align 4
  br label %169

168:                                              ; preds = %143
  store i32 3, i32* %21, align 4
  br label %169

169:                                              ; preds = %168, %164, %142
  %170 = load i8*, i8** %19, align 8
  call void @llvm.stackrestore(i8* %170)
  %171 = load i32, i32* %21, align 4
  switch i32 %171, label %432 [
    i32 5, label %172
    i32 3, label %176
  ]

172:                                              ; preds = %169
  %173 = load %struct.addrinfo*, %struct.addrinfo** %16, align 8
  %174 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %173, i32 0, i32 9
  %175 = load %struct.addrinfo*, %struct.addrinfo** %174, align 8
  store %struct.addrinfo* %175, %struct.addrinfo** %16, align 8
  br label %122

176:                                              ; preds = %169, %122
  %177 = load %struct.addrinfo*, %struct.addrinfo** %15, align 8
  %178 = bitcast %struct.addrinfo* %177 to %struct.sockaddr_in*
  %179 = call i32 @freeaddrinfo(%struct.sockaddr_in* %178)
  %180 = load i32, i32* %11, align 4
  %181 = icmp slt i32 %180, 0
  br i1 %181, label %182, label %185

182:                                              ; preds = %176
  %183 = load i32, i32* @stderr, align 4
  %184 = call i32 @fputs(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.8, i64 0, i64 0), i32 %183)
  br label %419

185:                                              ; preds = %176
  %186 = load i32, i32* %11, align 4
  %187 = load %struct.imap*, %struct.imap** %8, align 8
  %188 = getelementptr inbounds %struct.imap, %struct.imap* %187, i32 0, i32 0
  %189 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %188, i32 0, i32 0
  %190 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %189, i32 0, i32 0
  %191 = load i32*, i32** %190, align 8
  %192 = getelementptr inbounds i32, i32* %191, i64 0
  store i32 %186, i32* %192, align 4
  %193 = load i32, i32* %11, align 4
  %194 = call i32 @dup(i32 %193)
  %195 = load %struct.imap*, %struct.imap** %8, align 8
  %196 = getelementptr inbounds %struct.imap, %struct.imap* %195, i32 0, i32 0
  %197 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %196, i32 0, i32 0
  %198 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %197, i32 0, i32 0
  %199 = load i32*, i32** %198, align 8
  %200 = getelementptr inbounds i32, i32* %199, i64 1
  store i32 %194, i32* %200, align 4
  %201 = load %struct.imap_server_conf*, %struct.imap_server_conf** %4, align 8
  %202 = getelementptr inbounds %struct.imap_server_conf, %struct.imap_server_conf* %201, i32 0, i32 5
  %203 = load i64, i64* %202, align 8
  %204 = icmp ne i64 %203, 0
  br i1 %204, label %205, label %217

205:                                              ; preds = %185
  %206 = load %struct.imap*, %struct.imap** %8, align 8
  %207 = getelementptr inbounds %struct.imap, %struct.imap* %206, i32 0, i32 0
  %208 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %207, i32 0, i32 0
  %209 = load %struct.imap_server_conf*, %struct.imap_server_conf** %4, align 8
  %210 = getelementptr inbounds %struct.imap_server_conf, %struct.imap_server_conf* %209, i32 0, i32 4
  %211 = load i32, i32* %210, align 4
  %212 = call i64 @ssl_socket_connect(%struct.TYPE_4__* %208, i32 0, i32 %211)
  %213 = icmp ne i64 %212, 0
  br i1 %213, label %214, label %217

214:                                              ; preds = %205
  %215 = load i32, i32* %11, align 4
  %216 = call i32 @close(i32 %215)
  br label %419

217:                                              ; preds = %205, %185
  %218 = call i32 (i8*, ...) @imap_info(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  br label %219

219:                                              ; preds = %217, %71
  %220 = load %struct.imap*, %struct.imap** %8, align 8
  %221 = getelementptr inbounds %struct.imap, %struct.imap* %220, i32 0, i32 0
  %222 = call i64 @buffer_gets(%struct.TYPE_6__* %221, i8** %10)
  %223 = icmp ne i64 %222, 0
  br i1 %223, label %224, label %227

224:                                              ; preds = %219
  %225 = load i32, i32* @stderr, align 4
  %226 = call i32 (i32, i8*, ...) @fprintf(i32 %225, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.9, i64 0, i64 0))
  br label %419

227:                                              ; preds = %219
  %228 = call i8* @next_arg(i8** %10)
  store i8* %228, i8** %9, align 8
  %229 = load i8*, i8** %9, align 8
  %230 = icmp ne i8* %229, null
  br i1 %230, label %231, label %239

231:                                              ; preds = %227
  %232 = load i8*, i8** %9, align 8
  %233 = load i8, i8* %232, align 1
  %234 = sext i8 %233 to i32
  %235 = icmp ne i32 %234, 42
  br i1 %235, label %239, label %236

236:                                              ; preds = %231
  %237 = call i8* @next_arg(i8** %10)
  store i8* %237, i8** %9, align 8
  %238 = icmp eq i8* %237, null
  br i1 %238, label %239, label %242

239:                                              ; preds = %236, %231, %227
  %240 = load i32, i32* @stderr, align 4
  %241 = call i32 (i32, i8*, ...) @fprintf(i32 %240, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.10, i64 0, i64 0))
  br label %419

242:                                              ; preds = %236
  store i32 0, i32* %12, align 4
  %243 = load i8*, i8** %9, align 8
  %244 = call i64 @strcmp(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0), i8* %243)
  %245 = icmp ne i64 %244, 0
  br i1 %245, label %247, label %246

246:                                              ; preds = %242
  store i32 1, i32* %12, align 4
  br label %255

247:                                              ; preds = %242
  %248 = load i8*, i8** %9, align 8
  %249 = call i64 @strcmp(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i64 0, i64 0), i8* %248)
  %250 = icmp ne i64 %249, 0
  br i1 %250, label %251, label %254

251:                                              ; preds = %247
  %252 = load i32, i32* @stderr, align 4
  %253 = call i32 (i32, i8*, ...) @fprintf(i32 %252, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.13, i64 0, i64 0))
  br label %419

254:                                              ; preds = %247
  br label %255

255:                                              ; preds = %254, %246
  %256 = load %struct.imap_store*, %struct.imap_store** %7, align 8
  %257 = load i8*, i8** %10, align 8
  %258 = call i32 @parse_response_code(%struct.imap_store* %256, i32* null, i8* %257)
  %259 = load %struct.imap*, %struct.imap** %8, align 8
  %260 = getelementptr inbounds %struct.imap, %struct.imap* %259, i32 0, i32 1
  %261 = load i32, i32* %260, align 8
  %262 = icmp ne i32 %261, 0
  br i1 %262, label %268, label %263

263:                                              ; preds = %255
  %264 = load %struct.imap_store*, %struct.imap_store** %7, align 8
  %265 = call i64 (%struct.imap_store*, %struct.sockaddr_in*, i8*, ...) @imap_exec(%struct.imap_store* %264, %struct.sockaddr_in* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14, i64 0, i64 0))
  %266 = icmp ne i64 %265, 128
  br i1 %266, label %267, label %268

267:                                              ; preds = %263
  br label %419

268:                                              ; preds = %263, %255
  %269 = load i32, i32* %12, align 4
  %270 = icmp ne i32 %269, 0
  br i1 %270, label %382, label %271

271:                                              ; preds = %268
  %272 = load %struct.imap_server_conf*, %struct.imap_server_conf** %4, align 8
  %273 = getelementptr inbounds %struct.imap_server_conf, %struct.imap_server_conf* %272, i32 0, i32 5
  %274 = load i64, i64* %273, align 8
  %275 = icmp ne i64 %274, 0
  br i1 %275, label %301, label %276

276:                                              ; preds = %271
  %277 = load i32, i32* @STARTTLS, align 4
  %278 = call i64 @CAP(i32 %277)
  %279 = icmp ne i64 %278, 0
  br i1 %279, label %280, label %301

280:                                              ; preds = %276
  %281 = load %struct.imap_store*, %struct.imap_store** %7, align 8
  %282 = call i64 (%struct.imap_store*, %struct.sockaddr_in*, i8*, ...) @imap_exec(%struct.imap_store* %281, %struct.sockaddr_in* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i64 0, i64 0))
  %283 = icmp ne i64 %282, 128
  br i1 %283, label %284, label %285

284:                                              ; preds = %280
  br label %419

285:                                              ; preds = %280
  %286 = load %struct.imap*, %struct.imap** %8, align 8
  %287 = getelementptr inbounds %struct.imap, %struct.imap* %286, i32 0, i32 0
  %288 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %287, i32 0, i32 0
  %289 = load %struct.imap_server_conf*, %struct.imap_server_conf** %4, align 8
  %290 = getelementptr inbounds %struct.imap_server_conf, %struct.imap_server_conf* %289, i32 0, i32 4
  %291 = load i32, i32* %290, align 4
  %292 = call i64 @ssl_socket_connect(%struct.TYPE_4__* %288, i32 1, i32 %291)
  %293 = icmp ne i64 %292, 0
  br i1 %293, label %294, label %295

294:                                              ; preds = %285
  br label %419

295:                                              ; preds = %285
  %296 = load %struct.imap_store*, %struct.imap_store** %7, align 8
  %297 = call i64 (%struct.imap_store*, %struct.sockaddr_in*, i8*, ...) @imap_exec(%struct.imap_store* %296, %struct.sockaddr_in* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14, i64 0, i64 0))
  %298 = icmp ne i64 %297, 128
  br i1 %298, label %299, label %300

299:                                              ; preds = %295
  br label %419

300:                                              ; preds = %295
  br label %301

301:                                              ; preds = %300, %276, %271
  %302 = call i32 (i8*, ...) @imap_info(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.16, i64 0, i64 0))
  %303 = load %struct.imap_server_conf*, %struct.imap_server_conf** %4, align 8
  %304 = call i32 @server_fill_credential(%struct.imap_server_conf* %303, %struct.credential* %6)
  %305 = load %struct.imap_server_conf*, %struct.imap_server_conf** %4, align 8
  %306 = getelementptr inbounds %struct.imap_server_conf, %struct.imap_server_conf* %305, i32 0, i32 1
  %307 = load i8*, i8** %306, align 8
  %308 = icmp ne i8* %307, null
  br i1 %308, label %309, label %345

309:                                              ; preds = %301
  %310 = load %struct.imap_server_conf*, %struct.imap_server_conf** %4, align 8
  %311 = getelementptr inbounds %struct.imap_server_conf, %struct.imap_server_conf* %310, i32 0, i32 1
  %312 = load i8*, i8** %311, align 8
  %313 = call i64 @strcmp(i8* %312, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i64 0, i64 0))
  %314 = icmp ne i64 %313, 0
  br i1 %314, label %338, label %315

315:                                              ; preds = %309
  %316 = load i32, i32* @AUTH_CRAM_MD5, align 4
  %317 = call i64 @CAP(i32 %316)
  %318 = icmp ne i64 %317, 0
  br i1 %318, label %325, label %319

319:                                              ; preds = %315
  %320 = load i32, i32* @stderr, align 4
  %321 = load %struct.imap_server_conf*, %struct.imap_server_conf** %4, align 8
  %322 = getelementptr inbounds %struct.imap_server_conf, %struct.imap_server_conf* %321, i32 0, i32 0
  %323 = load i8*, i8** %322, align 8
  %324 = call i32 (i32, i8*, ...) @fprintf(i32 %320, i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.18, i64 0, i64 0), i8* %323)
  br label %419

325:                                              ; preds = %315
  %326 = bitcast %struct.imap_cmd_cb* %22 to %struct.sockaddr_in*
  %327 = call i32 @memset(%struct.sockaddr_in* %326, i32 0, i32 56)
  %328 = load i32, i32* @auth_cram_md5, align 4
  %329 = getelementptr inbounds %struct.imap_cmd_cb, %struct.imap_cmd_cb* %22, i32 0, i32 1
  store i32 %328, i32* %329, align 4
  %330 = load %struct.imap_store*, %struct.imap_store** %7, align 8
  %331 = bitcast %struct.imap_cmd_cb* %22 to %struct.sockaddr_in*
  %332 = call i64 (%struct.imap_store*, %struct.sockaddr_in*, i8*, ...) @imap_exec(%struct.imap_store* %330, %struct.sockaddr_in* %331, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.19, i64 0, i64 0))
  %333 = icmp ne i64 %332, 128
  br i1 %333, label %334, label %337

334:                                              ; preds = %325
  %335 = load i32, i32* @stderr, align 4
  %336 = call i32 (i32, i8*, ...) @fprintf(i32 %335, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.20, i64 0, i64 0))
  br label %419

337:                                              ; preds = %325
  br label %344

338:                                              ; preds = %309
  %339 = load i32, i32* @stderr, align 4
  %340 = load %struct.imap_server_conf*, %struct.imap_server_conf** %4, align 8
  %341 = getelementptr inbounds %struct.imap_server_conf, %struct.imap_server_conf* %340, i32 0, i32 0
  %342 = load i8*, i8** %341, align 8
  %343 = call i32 (i32, i8*, ...) @fprintf(i32 %339, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.21, i64 0, i64 0), i8* %342)
  br label %419

344:                                              ; preds = %337
  br label %381

345:                                              ; preds = %301
  %346 = load i32, i32* @NOLOGIN, align 4
  %347 = call i64 @CAP(i32 %346)
  %348 = icmp ne i64 %347, 0
  br i1 %348, label %349, label %358

349:                                              ; preds = %345
  %350 = load i32, i32* @stderr, align 4
  %351 = load %struct.imap_server_conf*, %struct.imap_server_conf** %4, align 8
  %352 = getelementptr inbounds %struct.imap_server_conf, %struct.imap_server_conf* %351, i32 0, i32 2
  %353 = load i8*, i8** %352, align 8
  %354 = load %struct.imap_server_conf*, %struct.imap_server_conf** %4, align 8
  %355 = getelementptr inbounds %struct.imap_server_conf, %struct.imap_server_conf* %354, i32 0, i32 0
  %356 = load i8*, i8** %355, align 8
  %357 = call i32 (i32, i8*, ...) @fprintf(i32 %350, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.22, i64 0, i64 0), i8* %353, i8* %356)
  br label %419

358:                                              ; preds = %345
  %359 = load %struct.imap*, %struct.imap** %8, align 8
  %360 = getelementptr inbounds %struct.imap, %struct.imap* %359, i32 0, i32 0
  %361 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %360, i32 0, i32 0
  %362 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %361, i32 0, i32 1
  %363 = load i32, i32* %362, align 8
  %364 = icmp ne i32 %363, 0
  br i1 %364, label %367, label %365

365:                                              ; preds = %358
  %366 = call i32 @imap_warn(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.23, i64 0, i64 0))
  br label %367

367:                                              ; preds = %365, %358
  %368 = load %struct.imap_store*, %struct.imap_store** %7, align 8
  %369 = load %struct.imap_server_conf*, %struct.imap_server_conf** %4, align 8
  %370 = getelementptr inbounds %struct.imap_server_conf, %struct.imap_server_conf* %369, i32 0, i32 2
  %371 = load i8*, i8** %370, align 8
  %372 = load %struct.imap_server_conf*, %struct.imap_server_conf** %4, align 8
  %373 = getelementptr inbounds %struct.imap_server_conf, %struct.imap_server_conf* %372, i32 0, i32 3
  %374 = load i32, i32* %373, align 8
  %375 = call i64 (%struct.imap_store*, %struct.sockaddr_in*, i8*, ...) @imap_exec(%struct.imap_store* %368, %struct.sockaddr_in* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.24, i64 0, i64 0), i8* %371, i32 %374)
  %376 = icmp ne i64 %375, 128
  br i1 %376, label %377, label %380

377:                                              ; preds = %367
  %378 = load i32, i32* @stderr, align 4
  %379 = call i32 (i32, i8*, ...) @fprintf(i32 %378, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.25, i64 0, i64 0))
  br label %419

380:                                              ; preds = %367
  br label %381

381:                                              ; preds = %380, %344
  br label %382

382:                                              ; preds = %381, %268
  %383 = getelementptr inbounds %struct.credential, %struct.credential* %6, i32 0, i32 0
  %384 = load i64, i64* %383, align 8
  %385 = icmp ne i64 %384, 0
  br i1 %385, label %386, label %388

386:                                              ; preds = %382
  %387 = call i32 @credential_approve(%struct.credential* %6)
  br label %388

388:                                              ; preds = %386, %382
  %389 = call i32 @credential_clear(%struct.credential* %6)
  %390 = load i8*, i8** %5, align 8
  %391 = load %struct.imap_store*, %struct.imap_store** %7, align 8
  %392 = getelementptr inbounds %struct.imap_store, %struct.imap_store* %391, i32 0, i32 0
  store i8* %390, i8** %392, align 8
  %393 = load %struct.imap_store*, %struct.imap_store** %7, align 8
  %394 = load %struct.imap_store*, %struct.imap_store** %7, align 8
  %395 = getelementptr inbounds %struct.imap_store, %struct.imap_store* %394, i32 0, i32 0
  %396 = load i8*, i8** %395, align 8
  %397 = call i64 (%struct.imap_store*, %struct.sockaddr_in*, i8*, ...) @imap_exec(%struct.imap_store* %393, %struct.sockaddr_in* null, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.26, i64 0, i64 0), i8* %396)
  switch i64 %397, label %415 [
    i64 128, label %398
    i64 130, label %399
    i64 129, label %402
  ]

398:                                              ; preds = %388
  br label %415

399:                                              ; preds = %388
  %400 = load i32, i32* @stderr, align 4
  %401 = call i32 (i32, i8*, ...) @fprintf(i32 %400, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.27, i64 0, i64 0))
  br label %427

402:                                              ; preds = %388
  %403 = load %struct.imap_store*, %struct.imap_store** %7, align 8
  %404 = load %struct.imap_store*, %struct.imap_store** %7, align 8
  %405 = getelementptr inbounds %struct.imap_store, %struct.imap_store* %404, i32 0, i32 0
  %406 = load i8*, i8** %405, align 8
  %407 = call i64 (%struct.imap_store*, %struct.sockaddr_in*, i8*, ...) @imap_exec(%struct.imap_store* %403, %struct.sockaddr_in* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.28, i64 0, i64 0), i8* %406)
  %408 = icmp eq i64 %407, 128
  br i1 %408, label %409, label %411

409:                                              ; preds = %402
  %410 = call i32 (i8*, ...) @imap_info(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.29, i64 0, i64 0))
  br label %414

411:                                              ; preds = %402
  %412 = load i32, i32* @stderr, align 4
  %413 = call i32 (i32, i8*, ...) @fprintf(i32 %412, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.30, i64 0, i64 0))
  br label %427

414:                                              ; preds = %409
  br label %415

415:                                              ; preds = %388, %414, %398
  %416 = load %struct.imap_store*, %struct.imap_store** %7, align 8
  %417 = getelementptr inbounds %struct.imap_store, %struct.imap_store* %416, i32 0, i32 1
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.31, i64 0, i64 0), i8** %417, align 8
  %418 = load %struct.imap_store*, %struct.imap_store** %7, align 8
  store %struct.imap_store* %418, %struct.imap_store** %3, align 8
  br label %430

419:                                              ; preds = %377, %349, %338, %334, %319, %299, %294, %284, %267, %251, %239, %224, %214, %182, %114
  %420 = getelementptr inbounds %struct.credential, %struct.credential* %6, i32 0, i32 0
  %421 = load i64, i64* %420, align 8
  %422 = icmp ne i64 %421, 0
  br i1 %422, label %423, label %425

423:                                              ; preds = %419
  %424 = call i32 @credential_reject(%struct.credential* %6)
  br label %425

425:                                              ; preds = %423, %419
  %426 = call i32 @credential_clear(%struct.credential* %6)
  br label %427

427:                                              ; preds = %425, %411, %399
  %428 = load %struct.imap_store*, %struct.imap_store** %7, align 8
  %429 = call i32 @imap_close_store(%struct.imap_store* %428)
  store %struct.imap_store* null, %struct.imap_store** %3, align 8
  br label %430

430:                                              ; preds = %427, %415
  %431 = load %struct.imap_store*, %struct.imap_store** %3, align 8
  ret %struct.imap_store* %431

432:                                              ; preds = %169
  unreachable
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i8* @xcalloc(i32, i32) #2

declare dso_local i32 @imap_info(i8*, ...) #2

declare dso_local i32 @argv_array_push(i32*, i64) #2

declare dso_local i64 @start_command(%struct.child_process*) #2

declare dso_local i32 @die(i8*, i64) #2

declare dso_local i32 @xsnprintf(i8*, i32, i8*, i32) #2

declare dso_local i32 @memset(%struct.sockaddr_in*, i32, i32) #2

declare dso_local i32 @getaddrinfo(i8*, i8*, %struct.sockaddr_in*, %struct.sockaddr_in**) #2

declare dso_local i32 @fprintf(i32, i8*, ...) #2

declare dso_local i8* @gai_strerror(i32) #2

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #3

declare dso_local i32 @socket(i32, i32, i32) #2

declare dso_local i32 @getnameinfo(%struct.sockaddr*, i32, i8*, i32, i32*, i32, i32) #2

declare dso_local i64 @connect(i32, %struct.sockaddr*, i32) #2

declare dso_local i32 @close(i32) #2

declare dso_local i32 @perror(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #3

declare dso_local i32 @freeaddrinfo(%struct.sockaddr_in*) #2

declare dso_local i32 @fputs(i8*, i32) #2

declare dso_local i32 @dup(i32) #2

declare dso_local i64 @ssl_socket_connect(%struct.TYPE_4__*, i32, i32) #2

declare dso_local i64 @buffer_gets(%struct.TYPE_6__*, i8**) #2

declare dso_local i8* @next_arg(i8**) #2

declare dso_local i64 @strcmp(i8*, i8*) #2

declare dso_local i32 @parse_response_code(%struct.imap_store*, i32*, i8*) #2

declare dso_local i64 @imap_exec(%struct.imap_store*, %struct.sockaddr_in*, i8*, ...) #2

declare dso_local i64 @CAP(i32) #2

declare dso_local i32 @server_fill_credential(%struct.imap_server_conf*, %struct.credential*) #2

declare dso_local i32 @imap_warn(i8*) #2

declare dso_local i32 @credential_approve(%struct.credential*) #2

declare dso_local i32 @credential_clear(%struct.credential*) #2

declare dso_local i32 @credential_reject(%struct.credential*) #2

declare dso_local i32 @imap_close_store(%struct.imap_store*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
