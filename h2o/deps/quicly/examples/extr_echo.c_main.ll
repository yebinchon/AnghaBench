; ModuleID = '/home/carl/AnghaBench/h2o/deps/quicly/examples/extr_echo.c_main.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/quicly/examples/extr_echo.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_12__*, %struct.TYPE_14__* }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_14__ = type { i32*, %struct.TYPE_11__, i32, i32, i32*, i32 }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_13__ = type { i32 }
%struct.sockaddr_storage = type { i32 }
%struct.sockaddr_in = type { i32 }
%struct.sockaddr = type { i32 }

@ptls_openssl_cipher_suites = common dso_local global i32 0, align 4
@ptls_openssl_key_exchanges = common dso_local global i32 0, align 4
@ptls_get_time = common dso_local global i32 0, align 4
@ptls_openssl_random_bytes = common dso_local global i32 0, align 4
@on_stream_open = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"127.0.0.1\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"4433\00", align 1
@ctx = common dso_local global %struct.TYPE_15__ zeroinitializer, align 8
@quicly_spec_context = common dso_local global %struct.TYPE_15__ zeroinitializer, align 8
@.str.2 = private unnamed_addr constant [8 x i8] c"c:k:p:h\00", align 1
@optarg = common dso_local global i8* null, align 8
@stderr = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [45 x i8] c"failed to load certificates from file %s:%d\0A\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"failed to open file:%s:%s\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [41 x i8] c"failed to load private key from file:%s\0A\00", align 1
@.str.7 = private unnamed_addr constant [41 x i8] c"-c and -k options must be used together\0A\00", align 1
@optind = common dso_local global i64 0, align 8
@AF_INET = common dso_local global i32 0, align 4
@SOCK_DGRAM = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [17 x i8] c"socket(2) failed\00", align 1
@SOL_SOCKET = common dso_local global i32 0, align 4
@SO_REUSEADDR = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [15 x i8] c"bind(2) failed\00", align 1
@next_cid = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [26 x i8] c"quicly_connect failed:%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.TYPE_13__, align 4
  %7 = alloca %struct.TYPE_14__, align 8
  %8 = alloca %struct.TYPE_12__, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.sockaddr_storage, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.sockaddr_in, align 4
  %20 = alloca i32*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %7, i32 0, i32 0
  store i32* null, i32** %23, align 8
  %24 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %7, i32 0, i32 1
  %25 = bitcast %struct.TYPE_11__* %24 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %25, i8 0, i64 8, i1 false)
  %26 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %7, i32 0, i32 2
  %27 = load i32, i32* @ptls_openssl_cipher_suites, align 4
  store i32 %27, i32* %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %7, i32 0, i32 3
  %29 = load i32, i32* @ptls_openssl_key_exchanges, align 4
  store i32 %29, i32* %28, align 4
  %30 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %7, i32 0, i32 4
  store i32* @ptls_get_time, i32** %30, align 8
  %31 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %7, i32 0, i32 5
  %32 = load i32, i32* @ptls_openssl_random_bytes, align 4
  store i32 %32, i32* %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 0
  %34 = load i32, i32* @on_stream_open, align 4
  store i32 %34, i32* %33, align 4
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8** %9, align 8
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8** %10, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 bitcast (%struct.TYPE_15__* @ctx to i8*), i8* align 8 bitcast (%struct.TYPE_15__* @quicly_spec_context to i8*), i64 16, i1 false)
  store %struct.TYPE_14__* %7, %struct.TYPE_14__** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @ctx, i32 0, i32 1), align 8
  %35 = load %struct.TYPE_14__*, %struct.TYPE_14__** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @ctx, i32 0, i32 1), align 8
  %36 = call i32 @quicly_amend_ptls_context(%struct.TYPE_14__* %35)
  store %struct.TYPE_12__* %8, %struct.TYPE_12__** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @ctx, i32 0, i32 0), align 8
  br label %37

37:                                               ; preds = %94, %2
  %38 = load i32, i32* %4, align 4
  %39 = load i8**, i8*** %5, align 8
  %40 = call i32 @getopt(i32 %38, i8** %39, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  store i32 %40, i32* %13, align 4
  %41 = icmp ne i32 %40, -1
  br i1 %41, label %42, label %95

42:                                               ; preds = %37
  %43 = load i32, i32* %13, align 4
  switch i32 %43, label %92 [
    i32 99, label %44
    i32 107, label %55
    i32 112, label %85
    i32 104, label %87
  ]

44:                                               ; preds = %42
  %45 = load i8*, i8** @optarg, align 8
  %46 = call i32 @ptls_load_certificates(%struct.TYPE_14__* %7, i8* %45)
  store i32 %46, i32* %15, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %44
  %49 = load i32, i32* @stderr, align 4
  %50 = load i8*, i8** @optarg, align 8
  %51 = load i32, i32* %15, align 4
  %52 = call i32 (i32, i8*, ...) @fprintf(i32 %49, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i8* %50, i32 %51)
  %53 = call i32 @exit(i32 1) #4
  unreachable

54:                                               ; preds = %44
  br label %94

55:                                               ; preds = %42
  %56 = load i8*, i8** @optarg, align 8
  %57 = call i32* @fopen(i8* %56, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  store i32* %57, i32** %16, align 8
  %58 = icmp eq i32* %57, null
  br i1 %58, label %59, label %66

59:                                               ; preds = %55
  %60 = load i32, i32* @stderr, align 4
  %61 = load i8*, i8** @optarg, align 8
  %62 = load i32, i32* @errno, align 4
  %63 = call i8* @strerror(i32 %62)
  %64 = call i32 (i32, i8*, ...) @fprintf(i32 %60, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0), i8* %61, i8* %63)
  %65 = call i32 @exit(i32 1) #4
  unreachable

66:                                               ; preds = %55
  %67 = load i32*, i32** %16, align 8
  %68 = call i32* @PEM_read_PrivateKey(i32* %67, i32* null, i32* null, i32* null)
  store i32* %68, i32** %17, align 8
  %69 = load i32*, i32** %16, align 8
  %70 = call i32 @fclose(i32* %69)
  %71 = load i32*, i32** %17, align 8
  %72 = icmp eq i32* %71, null
  br i1 %72, label %73, label %78

73:                                               ; preds = %66
  %74 = load i32, i32* @stderr, align 4
  %75 = load i8*, i8** @optarg, align 8
  %76 = call i32 (i32, i8*, ...) @fprintf(i32 %74, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.6, i64 0, i64 0), i8* %75)
  %77 = call i32 @exit(i32 1) #4
  unreachable

78:                                               ; preds = %66
  %79 = load i32*, i32** %17, align 8
  %80 = call i32 @ptls_openssl_init_sign_certificate(%struct.TYPE_13__* %6, i32* %79)
  %81 = load i32*, i32** %17, align 8
  %82 = call i32 @EVP_PKEY_free(i32* %81)
  %83 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %6, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %7, i32 0, i32 0
  store i32* %83, i32** %84, align 8
  br label %94

85:                                               ; preds = %42
  %86 = load i8*, i8** @optarg, align 8
  store i8* %86, i8** %10, align 8
  br label %94

87:                                               ; preds = %42
  %88 = load i8**, i8*** %5, align 8
  %89 = getelementptr inbounds i8*, i8** %88, i64 0
  %90 = load i8*, i8** %89, align 8
  %91 = call i32 @usage(i8* %90)
  br label %94

92:                                               ; preds = %42
  %93 = call i32 @exit(i32 1) #4
  unreachable

94:                                               ; preds = %87, %85, %78, %54
  br label %37

95:                                               ; preds = %37
  %96 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %7, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %98, 0
  %100 = zext i1 %99 to i32
  %101 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %7, i32 0, i32 0
  %102 = load i32*, i32** %101, align 8
  %103 = icmp ne i32* %102, null
  %104 = zext i1 %103 to i32
  %105 = icmp ne i32 %100, %104
  br i1 %105, label %106, label %110

106:                                              ; preds = %95
  %107 = load i32, i32* @stderr, align 4
  %108 = call i32 (i32, i8*, ...) @fprintf(i32 %107, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.7, i64 0, i64 0))
  %109 = call i32 @exit(i32 1) #4
  unreachable

110:                                              ; preds = %95
  %111 = load i64, i64* @optind, align 8
  %112 = load i32, i32* %4, align 4
  %113 = sext i32 %112 to i64
  %114 = sub nsw i64 %113, %111
  %115 = trunc i64 %114 to i32
  store i32 %115, i32* %4, align 4
  %116 = load i64, i64* @optind, align 8
  %117 = load i8**, i8*** %5, align 8
  %118 = getelementptr inbounds i8*, i8** %117, i64 %116
  store i8** %118, i8*** %5, align 8
  %119 = load i32, i32* %4, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %125

121:                                              ; preds = %110
  %122 = load i8**, i8*** %5, align 8
  %123 = getelementptr inbounds i8*, i8** %122, i32 1
  store i8** %123, i8*** %5, align 8
  %124 = load i8*, i8** %122, align 8
  store i8* %124, i8** %9, align 8
  br label %125

125:                                              ; preds = %121, %110
  %126 = bitcast %struct.sockaddr_storage* %11 to %struct.sockaddr*
  %127 = load i8*, i8** %9, align 8
  %128 = load i8*, i8** %10, align 8
  %129 = load i32, i32* @AF_INET, align 4
  %130 = load i32, i32* @SOCK_DGRAM, align 4
  %131 = call i64 @resolve_address(%struct.sockaddr* %126, i32* %12, i8* %127, i8* %128, i32 %129, i32 %130, i32 0)
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %135

133:                                              ; preds = %125
  %134 = call i32 @exit(i32 1) #4
  unreachable

135:                                              ; preds = %125
  %136 = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %11, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = load i32, i32* @SOCK_DGRAM, align 4
  %139 = call i32 @socket(i32 %137, i32 %138, i32 0)
  store i32 %139, i32* %14, align 4
  %140 = icmp eq i32 %139, -1
  br i1 %140, label %141, label %144

141:                                              ; preds = %135
  %142 = call i32 @perror(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0))
  %143 = call i32 @exit(i32 1) #4
  unreachable

144:                                              ; preds = %135
  %145 = call i64 (...) @is_server()
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %161

147:                                              ; preds = %144
  store i32 1, i32* %18, align 4
  %148 = load i32, i32* %14, align 4
  %149 = load i32, i32* @SOL_SOCKET, align 4
  %150 = load i32, i32* @SO_REUSEADDR, align 4
  %151 = call i32 @setsockopt(i32 %148, i32 %149, i32 %150, i32* %18, i32 4)
  %152 = load i32, i32* %14, align 4
  %153 = bitcast %struct.sockaddr_storage* %11 to %struct.sockaddr*
  %154 = load i32, i32* %12, align 4
  %155 = call i64 @bind(i32 %152, %struct.sockaddr* %153, i32 %154)
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %160

157:                                              ; preds = %147
  %158 = call i32 @perror(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i64 0, i64 0))
  %159 = call i32 @exit(i32 1) #4
  unreachable

160:                                              ; preds = %147
  br label %171

161:                                              ; preds = %144
  %162 = call i32 @memset(%struct.sockaddr_in* %19, i32 0, i32 4)
  %163 = load i32, i32* %14, align 4
  %164 = bitcast %struct.sockaddr_in* %19 to %struct.sockaddr*
  %165 = call i64 @bind(i32 %163, %struct.sockaddr* %164, i32 4)
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %170

167:                                              ; preds = %161
  %168 = call i32 @perror(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i64 0, i64 0))
  %169 = call i32 @exit(i32 1) #4
  unreachable

170:                                              ; preds = %161
  br label %171

171:                                              ; preds = %170, %160
  store i32* null, i32** %20, align 8
  %172 = call i64 (...) @is_server()
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %188, label %174

174:                                              ; preds = %171
  %175 = load i8*, i8** %9, align 8
  %176 = bitcast %struct.sockaddr_storage* %11 to %struct.sockaddr*
  %177 = call i32 @ptls_iovec_init(i32* null, i32 0)
  %178 = call i32 @quicly_connect(i32** %20, %struct.TYPE_15__* @ctx, i8* %175, i32* null, %struct.sockaddr* %176, i32* @next_cid, i32 %177, i32* null, i32* null)
  store i32 %178, i32* %21, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %185

180:                                              ; preds = %174
  %181 = load i32, i32* @stderr, align 4
  %182 = load i32, i32* %21, align 4
  %183 = call i32 (i32, i8*, ...) @fprintf(i32 %181, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0), i32 %182)
  %184 = call i32 @exit(i32 1) #4
  unreachable

185:                                              ; preds = %174
  %186 = load i32*, i32** %20, align 8
  %187 = call i32 @quicly_open_stream(i32* %186, i32** %22, i32 0)
  br label %188

188:                                              ; preds = %185, %171
  %189 = load i32, i32* %14, align 4
  %190 = load i32*, i32** %20, align 8
  %191 = call i32 @run_loop(i32 %189, i32* %190)
  ret i32 %191
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @quicly_amend_ptls_context(%struct.TYPE_14__*) #2

declare dso_local i32 @getopt(i32, i8**, i8*) #2

declare dso_local i32 @ptls_load_certificates(%struct.TYPE_14__*, i8*) #2

declare dso_local i32 @fprintf(i32, i8*, ...) #2

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #3

declare dso_local i32* @fopen(i8*, i8*) #2

declare dso_local i8* @strerror(i32) #2

declare dso_local i32* @PEM_read_PrivateKey(i32*, i32*, i32*, i32*) #2

declare dso_local i32 @fclose(i32*) #2

declare dso_local i32 @ptls_openssl_init_sign_certificate(%struct.TYPE_13__*, i32*) #2

declare dso_local i32 @EVP_PKEY_free(i32*) #2

declare dso_local i32 @usage(i8*) #2

declare dso_local i64 @resolve_address(%struct.sockaddr*, i32*, i8*, i8*, i32, i32, i32) #2

declare dso_local i32 @socket(i32, i32, i32) #2

declare dso_local i32 @perror(i8*) #2

declare dso_local i64 @is_server(...) #2

declare dso_local i32 @setsockopt(i32, i32, i32, i32*, i32) #2

declare dso_local i64 @bind(i32, %struct.sockaddr*, i32) #2

declare dso_local i32 @memset(%struct.sockaddr_in*, i32, i32) #2

declare dso_local i32 @quicly_connect(i32**, %struct.TYPE_15__*, i8*, i32*, %struct.sockaddr*, i32*, i32, i32*, i32*) #2

declare dso_local i32 @ptls_iovec_init(i32*, i32) #2

declare dso_local i32 @quicly_open_stream(i32*, i32**, i32) #2

declare dso_local i32 @run_loop(i32, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
