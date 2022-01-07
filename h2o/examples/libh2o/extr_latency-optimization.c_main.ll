; ModuleID = '/home/carl/AnghaBench/h2o/examples/libh2o/extr_latency-optimization.c_main.c'
source_filename = "/home/carl/AnghaBench/h2o/examples/libh2o/extr_latency-optimization.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.option = type { i8*, i8, i32*, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.addrinfo = type { i32, i32, i32, i32, i32 }

@main.longopts = internal constant [7 x %struct.option] [%struct.option { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8 -127, i32* null, i32 108 }, %struct.option { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0), i8 -127, i32* null, i32 114 }, %struct.option { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), i8 -127, i32* null, i32 116 }, %struct.option { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i32 0, i32 0), i8 -127, i32* null, i32 98 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i32 0, i32 0), i8 -128, i32* null, i32 82 }, %struct.option { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i8 -128, i32* null, i32 99 }, %struct.option zeroinitializer], align 16
@.str = private unnamed_addr constant [7 x i8] c"listen\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"reverse-role\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"tls\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"block-size\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"min-rtt\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"max-cwnd\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"lrtb:R:c:\00", align 1
@optarg = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [4 x i8] c"%zu\00", align 1
@write_block_size = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [63 x i8] c"write block size (-b) must be a non-negative number of octets\0A\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@latopt_cond = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@.str.10 = private unnamed_addr constant [60 x i8] c"min RTT (-m) must be a non-negative number in milliseconds\0A\00", align 1
@.str.11 = private unnamed_addr constant [55 x i8] c"max CWND size must be a non-negative number of octets\0A\00", align 1
@mode_server = common dso_local global i32 0, align 4
@optind = common dso_local global i32 0, align 4
@host = common dso_local global i8* null, align 8
@port = common dso_local global i8* null, align 8
@.str.12 = private unnamed_addr constant [8 x i8] c"0.0.0.0\00", align 1
@ssl_ctx = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [24 x i8] c"examples/h2o/server.crt\00", align 1
@.str.14 = private unnamed_addr constant [24 x i8] c"examples/h2o/server.key\00", align 1
@SSL_FILETYPE_PEM = common dso_local global i32 0, align 4
@NID_X9_62_prime256v1 = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [29 x i8] c"Failed to create curve \22%s\22\0A\00", align 1
@SSL_OP_ALL = common dso_local global i32 0, align 4
@SSL_OP_NO_SSLv2 = common dso_local global i32 0, align 4
@SSL_OP_NO_SSLv3 = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [28 x i8] c"ECDHE-RSA-AES128-GCM-SHA256\00", align 1
@loop = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@IPPROTO_TCP = common dso_local global i32 0, align 4
@AI_ADDRCONFIG = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [28 x i8] c"failed to resolve %s:%s:%s\0A\00", align 1
@AF_INET = common dso_local global i32 0, align 4
@SOL_SOCKET = common dso_local global i32 0, align 4
@SO_REUSEADDR = common dso_local global i32 0, align 4
@SOMAXCONN = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [30 x i8] c"failed to listen to %s:%s:%s\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@H2O_SOCKET_FLAG_DONT_READ = common dso_local global i32 0, align 4
@on_accept = common dso_local global i32 0, align 4
@on_connect = common dso_local global i32 0, align 4
@sock = common dso_local global i32* null, align 8
@.str.19 = private unnamed_addr constant [28 x i8] c"failed to create socket:%s\0A\00", align 1
@INT32_MAX = common dso_local global i32 0, align 4
@UV_RUN_DEFAULT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.addrinfo, align 4
  %11 = alloca %struct.addrinfo*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store %struct.addrinfo* null, %struct.addrinfo** %11, align 8
  br label %20

20:                                               ; preds = %62, %2
  %21 = load i32, i32* %4, align 4
  %22 = load i8**, i8*** %5, align 8
  %23 = call i32 @getopt_long(i32 %21, i8** %22, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), %struct.option* getelementptr inbounds ([7 x %struct.option], [7 x %struct.option]* @main.longopts, i64 0, i64 0), i32* null)
  store i32 %23, i32* %6, align 4
  %24 = icmp ne i32 %23, -1
  br i1 %24, label %25, label %63

25:                                               ; preds = %20
  %26 = load i32, i32* %6, align 4
  switch i32 %26, label %57 [
    i32 108, label %27
    i32 114, label %28
    i32 116, label %29
    i32 98, label %30
    i32 82, label %39
    i32 99, label %48
  ]

27:                                               ; preds = %25
  store i32 1, i32* %7, align 4
  br label %62

28:                                               ; preds = %25
  store i32 1, i32* %8, align 4
  br label %62

29:                                               ; preds = %25
  store i32 1, i32* %9, align 4
  br label %62

30:                                               ; preds = %25
  %31 = load i32, i32* @optarg, align 4
  %32 = call i32 @sscanf(i32 %31, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i32* @write_block_size)
  %33 = icmp ne i32 %32, 1
  br i1 %33, label %34, label %38

34:                                               ; preds = %30
  %35 = load i32, i32* @stderr, align 4
  %36 = call i32 (i32, i8*, ...) @fprintf(i32 %35, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.8, i64 0, i64 0))
  %37 = call i32 @exit(i32 1) #3
  unreachable

38:                                               ; preds = %30
  br label %62

39:                                               ; preds = %25
  %40 = load i32, i32* @optarg, align 4
  %41 = call i32 @sscanf(i32 %40, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0), i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @latopt_cond, i32 0, i32 1))
  %42 = icmp ne i32 %41, 1
  br i1 %42, label %43, label %47

43:                                               ; preds = %39
  %44 = load i32, i32* @stderr, align 4
  %45 = call i32 (i32, i8*, ...) @fprintf(i32 %44, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.10, i64 0, i64 0))
  %46 = call i32 @exit(i32 1) #3
  unreachable

47:                                               ; preds = %39
  br label %62

48:                                               ; preds = %25
  %49 = load i32, i32* @optarg, align 4
  %50 = call i32 @sscanf(i32 %49, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0), i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @latopt_cond, i32 0, i32 0))
  %51 = icmp ne i32 %50, 1
  br i1 %51, label %52, label %56

52:                                               ; preds = %48
  %53 = load i32, i32* @stderr, align 4
  %54 = call i32 (i32, i8*, ...) @fprintf(i32 %53, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.11, i64 0, i64 0))
  %55 = call i32 @exit(i32 1) #3
  unreachable

56:                                               ; preds = %48
  br label %62

57:                                               ; preds = %25
  %58 = load i8**, i8*** %5, align 8
  %59 = getelementptr inbounds i8*, i8** %58, i64 0
  %60 = load i8*, i8** %59, align 8
  %61 = call i32 @usage(i8* %60)
  br label %62

62:                                               ; preds = %57, %56, %47, %38, %29, %28, %27
  br label %20

63:                                               ; preds = %20
  %64 = load i32, i32* %7, align 4
  store i32 %64, i32* @mode_server, align 4
  %65 = load i32, i32* %8, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %63
  %68 = load i32, i32* @mode_server, align 4
  %69 = icmp ne i32 %68, 0
  %70 = xor i1 %69, true
  %71 = zext i1 %70 to i32
  store i32 %71, i32* @mode_server, align 4
  br label %72

72:                                               ; preds = %67, %63
  %73 = load i32, i32* %4, align 4
  %74 = load i32, i32* @optind, align 4
  %75 = icmp eq i32 %73, %74
  br i1 %75, label %76, label %81

76:                                               ; preds = %72
  %77 = load i8**, i8*** %5, align 8
  %78 = getelementptr inbounds i8*, i8** %77, i64 0
  %79 = load i8*, i8** %78, align 8
  %80 = call i32 @usage(i8* %79)
  br label %114

81:                                               ; preds = %72
  %82 = load i8**, i8*** %5, align 8
  %83 = load i32, i32* @optind, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i8*, i8** %82, i64 %84
  %86 = load i8*, i8** %85, align 8
  store i8* %86, i8** %13, align 8
  %87 = load i8*, i8** %13, align 8
  %88 = call i8* @strchr(i8* %87, i8 signext 58)
  store i8* %88, i8** %14, align 8
  %89 = icmp ne i8* %88, null
  br i1 %89, label %90, label %107

90:                                               ; preds = %81
  %91 = load i8**, i8*** %5, align 8
  %92 = load i32, i32* @optind, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i8*, i8** %91, i64 %93
  %95 = load i8*, i8** %94, align 8
  store i8* %95, i8** %13, align 8
  %96 = load i8*, i8** %13, align 8
  %97 = call i8* @strdup(i8* %96)
  store i8* %97, i8** @host, align 8
  %98 = load i8*, i8** @host, align 8
  %99 = load i8*, i8** %14, align 8
  %100 = load i8*, i8** %13, align 8
  %101 = ptrtoint i8* %99 to i64
  %102 = ptrtoint i8* %100 to i64
  %103 = sub i64 %101, %102
  %104 = getelementptr inbounds i8, i8* %98, i64 %103
  store i8 0, i8* %104, align 1
  %105 = load i8*, i8** %14, align 8
  %106 = getelementptr inbounds i8, i8* %105, i64 1
  store i8* %106, i8** @port, align 8
  br label %113

107:                                              ; preds = %81
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0), i8** @host, align 8
  %108 = load i8**, i8*** %5, align 8
  %109 = load i32, i32* @optind, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i8*, i8** %108, i64 %110
  %112 = load i8*, i8** %111, align 8
  store i8* %112, i8** @port, align 8
  br label %113

113:                                              ; preds = %107, %90
  br label %114

114:                                              ; preds = %113, %76
  %115 = load i32, i32* %9, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %161

117:                                              ; preds = %114
  %118 = call i32 (...) @SSL_load_error_strings()
  %119 = call i32 (...) @SSL_library_init()
  %120 = call i32 (...) @OpenSSL_add_all_algorithms()
  %121 = load i32, i32* @mode_server, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %131

123:                                              ; preds = %117
  %124 = call i32 (...) @SSLv23_server_method()
  %125 = call i32 @SSL_CTX_new(i32 %124)
  store i32 %125, i32* @ssl_ctx, align 4
  %126 = load i32, i32* @ssl_ctx, align 4
  %127 = call i32 @SSL_CTX_use_certificate_chain_file(i32 %126, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.13, i64 0, i64 0))
  %128 = load i32, i32* @ssl_ctx, align 4
  %129 = load i32, i32* @SSL_FILETYPE_PEM, align 4
  %130 = call i32 @SSL_CTX_use_PrivateKey_file(i32 %128, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.14, i64 0, i64 0), i32 %129)
  br label %134

131:                                              ; preds = %117
  %132 = call i32 (...) @SSLv23_client_method()
  %133 = call i32 @SSL_CTX_new(i32 %132)
  store i32 %133, i32* @ssl_ctx, align 4
  br label %134

134:                                              ; preds = %131, %123
  %135 = load i32, i32* @NID_X9_62_prime256v1, align 4
  store i32 %135, i32* %15, align 4
  %136 = load i32, i32* %15, align 4
  %137 = call i32* @EC_KEY_new_by_curve_name(i32 %136)
  store i32* %137, i32** %16, align 8
  %138 = load i32*, i32** %16, align 8
  %139 = icmp eq i32* %138, null
  br i1 %139, label %140, label %146

140:                                              ; preds = %134
  %141 = load i32, i32* @stderr, align 4
  %142 = load i32, i32* %15, align 4
  %143 = call i8* @OBJ_nid2sn(i32 %142)
  %144 = call i32 (i32, i8*, ...) @fprintf(i32 %141, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.15, i64 0, i64 0), i8* %143)
  %145 = call i32 @exit(i32 1) #3
  unreachable

146:                                              ; preds = %134
  %147 = load i32, i32* @ssl_ctx, align 4
  %148 = load i32*, i32** %16, align 8
  %149 = call i32 @SSL_CTX_set_tmp_ecdh(i32 %147, i32* %148)
  %150 = load i32*, i32** %16, align 8
  %151 = call i32 @EC_KEY_free(i32* %150)
  %152 = load i32, i32* @ssl_ctx, align 4
  %153 = load i32, i32* @SSL_OP_ALL, align 4
  %154 = load i32, i32* @SSL_OP_NO_SSLv2, align 4
  %155 = or i32 %153, %154
  %156 = load i32, i32* @SSL_OP_NO_SSLv3, align 4
  %157 = or i32 %155, %156
  %158 = call i32 @SSL_CTX_set_options(i32 %152, i32 %157)
  %159 = load i32, i32* @ssl_ctx, align 4
  %160 = call i32 @SSL_CTX_set_cipher_list(i32 %159, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.16, i64 0, i64 0))
  br label %161

161:                                              ; preds = %146, %114
  %162 = call i32 (...) @h2o_evloop_create()
  store i32 %162, i32* @loop, align 4
  %163 = call i32 @memset(%struct.addrinfo* %10, i32 0, i32 20)
  %164 = load i32, i32* @SOCK_STREAM, align 4
  %165 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %10, i32 0, i32 4
  store i32 %164, i32* %165, align 4
  %166 = load i32, i32* @IPPROTO_TCP, align 4
  %167 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %10, i32 0, i32 3
  store i32 %166, i32* %167, align 4
  %168 = load i32, i32* @AI_ADDRCONFIG, align 4
  %169 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %10, i32 0, i32 2
  store i32 %168, i32* %169, align 4
  %170 = load i8*, i8** @host, align 8
  %171 = load i8*, i8** @port, align 8
  %172 = call i32 @getaddrinfo(i8* %170, i8* %171, %struct.addrinfo* %10, %struct.addrinfo** %11)
  store i32 %172, i32* %12, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %182

174:                                              ; preds = %161
  %175 = load i32, i32* @stderr, align 4
  %176 = load i8*, i8** @host, align 8
  %177 = load i8*, i8** @port, align 8
  %178 = load i32, i32* %12, align 4
  %179 = call i8* @gai_strerror(i32 %178)
  %180 = call i32 (i32, i8*, ...) @fprintf(i32 %175, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.17, i64 0, i64 0), i8* %176, i8* %177, i8* %179)
  %181 = call i32 @exit(i32 1) #3
  unreachable

182:                                              ; preds = %161
  %183 = load i32, i32* %7, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %227

185:                                              ; preds = %182
  store i32 1, i32* %18, align 4
  %186 = load i32, i32* @AF_INET, align 4
  %187 = load i32, i32* @SOCK_STREAM, align 4
  %188 = call i32 @socket(i32 %186, i32 %187, i32 0)
  store i32 %188, i32* %17, align 4
  %189 = icmp eq i32 %188, -1
  br i1 %189, label %211, label %190

190:                                              ; preds = %185
  %191 = load i32, i32* %17, align 4
  %192 = load i32, i32* @SOL_SOCKET, align 4
  %193 = load i32, i32* @SO_REUSEADDR, align 4
  %194 = call i64 @setsockopt(i32 %191, i32 %192, i32 %193, i32* %18, i32 4)
  %195 = icmp ne i64 %194, 0
  br i1 %195, label %211, label %196

196:                                              ; preds = %190
  %197 = load i32, i32* %17, align 4
  %198 = load %struct.addrinfo*, %struct.addrinfo** %11, align 8
  %199 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %198, i32 0, i32 1
  %200 = load i32, i32* %199, align 4
  %201 = load %struct.addrinfo*, %struct.addrinfo** %11, align 8
  %202 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 4
  %204 = call i64 @bind(i32 %197, i32 %200, i32 %203)
  %205 = icmp ne i64 %204, 0
  br i1 %205, label %211, label %206

206:                                              ; preds = %196
  %207 = load i32, i32* %17, align 4
  %208 = load i32, i32* @SOMAXCONN, align 4
  %209 = call i64 @listen(i32 %207, i32 %208)
  %210 = icmp ne i64 %209, 0
  br i1 %210, label %211, label %219

211:                                              ; preds = %206, %196, %190, %185
  %212 = load i32, i32* @stderr, align 4
  %213 = load i8*, i8** @host, align 8
  %214 = load i8*, i8** @port, align 8
  %215 = load i32, i32* @errno, align 4
  %216 = call i8* @strerror(i32 %215)
  %217 = call i32 (i32, i8*, ...) @fprintf(i32 %212, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.18, i64 0, i64 0), i8* %213, i8* %214, i8* %216)
  %218 = call i32 @exit(i32 1) #3
  unreachable

219:                                              ; preds = %206
  %220 = load i32, i32* @loop, align 4
  %221 = load i32, i32* %17, align 4
  %222 = load i32, i32* @H2O_SOCKET_FLAG_DONT_READ, align 4
  %223 = call i32* @h2o_evloop_socket_create(i32 %220, i32 %221, i32 %222)
  store i32* %223, i32** %19, align 8
  %224 = load i32*, i32** %19, align 8
  %225 = load i32, i32* @on_accept, align 4
  %226 = call i32 @h2o_socket_read_start(i32* %224, i32 %225)
  br label %245

227:                                              ; preds = %182
  %228 = load i32, i32* @loop, align 4
  %229 = load %struct.addrinfo*, %struct.addrinfo** %11, align 8
  %230 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %229, i32 0, i32 1
  %231 = load i32, i32* %230, align 4
  %232 = load %struct.addrinfo*, %struct.addrinfo** %11, align 8
  %233 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %232, i32 0, i32 0
  %234 = load i32, i32* %233, align 4
  %235 = load i32, i32* @on_connect, align 4
  %236 = call i32* @h2o_socket_connect(i32 %228, i32 %231, i32 %234, i32 %235)
  store i32* %236, i32** @sock, align 8
  %237 = icmp eq i32* %236, null
  br i1 %237, label %238, label %244

238:                                              ; preds = %227
  %239 = load i32, i32* @stderr, align 4
  %240 = load i32, i32* @errno, align 4
  %241 = call i8* @strerror(i32 %240)
  %242 = call i32 (i32, i8*, ...) @fprintf(i32 %239, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.19, i64 0, i64 0), i8* %241)
  %243 = call i32 @exit(i32 1) #3
  unreachable

244:                                              ; preds = %227
  br label %245

245:                                              ; preds = %244, %219
  br label %246

246:                                              ; preds = %245, %246
  %247 = load i32, i32* @loop, align 4
  %248 = load i32, i32* @INT32_MAX, align 4
  %249 = call i32 @h2o_evloop_run(i32 %247, i32 %248)
  br label %246
}

declare dso_local i32 @getopt_long(i32, i8**, i8*, %struct.option*, i32*) #1

declare dso_local i32 @sscanf(i32, i8*, i32*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @usage(i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @SSL_load_error_strings(...) #1

declare dso_local i32 @SSL_library_init(...) #1

declare dso_local i32 @OpenSSL_add_all_algorithms(...) #1

declare dso_local i32 @SSL_CTX_new(i32) #1

declare dso_local i32 @SSLv23_server_method(...) #1

declare dso_local i32 @SSL_CTX_use_certificate_chain_file(i32, i8*) #1

declare dso_local i32 @SSL_CTX_use_PrivateKey_file(i32, i8*, i32) #1

declare dso_local i32 @SSLv23_client_method(...) #1

declare dso_local i32* @EC_KEY_new_by_curve_name(i32) #1

declare dso_local i8* @OBJ_nid2sn(i32) #1

declare dso_local i32 @SSL_CTX_set_tmp_ecdh(i32, i32*) #1

declare dso_local i32 @EC_KEY_free(i32*) #1

declare dso_local i32 @SSL_CTX_set_options(i32, i32) #1

declare dso_local i32 @SSL_CTX_set_cipher_list(i32, i8*) #1

declare dso_local i32 @h2o_evloop_create(...) #1

declare dso_local i32 @memset(%struct.addrinfo*, i32, i32) #1

declare dso_local i32 @getaddrinfo(i8*, i8*, %struct.addrinfo*, %struct.addrinfo**) #1

declare dso_local i8* @gai_strerror(i32) #1

declare dso_local i32 @socket(i32, i32, i32) #1

declare dso_local i64 @setsockopt(i32, i32, i32, i32*, i32) #1

declare dso_local i64 @bind(i32, i32, i32) #1

declare dso_local i64 @listen(i32, i32) #1

declare dso_local i8* @strerror(i32) #1

declare dso_local i32* @h2o_evloop_socket_create(i32, i32, i32) #1

declare dso_local i32 @h2o_socket_read_start(i32*, i32) #1

declare dso_local i32* @h2o_socket_connect(i32, i32, i32, i32) #1

declare dso_local i32 @h2o_evloop_run(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
