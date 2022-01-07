; ModuleID = '/home/carl/AnghaBench/libuv/src/unix/extr_udp.c_uv__udp_recvmsg.c'
source_filename = "/home/carl/AnghaBench/libuv/src/unix/extr_udp.c_uv__udp_recvmsg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32 (%struct.TYPE_16__*, i32, %struct.TYPE_17__*, %struct.sockaddr*, i32)*, %struct.TYPE_15__, i32 (i32*, i32, %struct.TYPE_17__*)* }
%struct.TYPE_17__ = type { i64, i32* }
%struct.sockaddr = type opaque
%struct.TYPE_15__ = type { i32 }
%struct.sockaddr_storage = type { i32, i32, i32, i8*, %struct.sockaddr_storage* }
%struct.msghdr = type { i32, i32, i32, i8*, %struct.msghdr* }
%struct.sockaddr.0 = type { i32 }

@UV_ENOBUFS = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EINTR = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i64 0, align 8
@EWOULDBLOCK = common dso_local global i64 0, align 8
@MSG_TRUNC = common dso_local global i32 0, align 4
@UV_UDP_PARTIAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_16__*)* @uv__udp_recvmsg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uv__udp_recvmsg(%struct.TYPE_16__* %0) #0 {
  %2 = alloca %struct.TYPE_16__*, align 8
  %3 = alloca %struct.sockaddr_storage, align 8
  %4 = alloca %struct.msghdr, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_17__, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_17__, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %2, align 8
  %10 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %10, i32 0, i32 0
  %12 = load i32 (%struct.TYPE_16__*, i32, %struct.TYPE_17__*, %struct.sockaddr*, i32)*, i32 (%struct.TYPE_16__*, i32, %struct.TYPE_17__*, %struct.sockaddr*, i32)** %11, align 8
  %13 = icmp ne i32 (%struct.TYPE_16__*, i32, %struct.TYPE_17__*, %struct.sockaddr*, i32)* %12, null
  %14 = zext i1 %13 to i32
  %15 = call i32 @assert(i32 %14)
  %16 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %16, i32 0, i32 2
  %18 = load i32 (i32*, i32, %struct.TYPE_17__*)*, i32 (i32*, i32, %struct.TYPE_17__*)** %17, align 8
  %19 = icmp ne i32 (i32*, i32, %struct.TYPE_17__*)* %18, null
  %20 = zext i1 %19 to i32
  %21 = call i32 @assert(i32 %20)
  store i32 32, i32* %8, align 4
  br label %22

22:                                               ; preds = %147, %1
  %23 = call { i64, i32* } @uv_buf_init(i32* null, i32 0)
  %24 = bitcast %struct.TYPE_17__* %9 to { i64, i32* }*
  %25 = getelementptr inbounds { i64, i32* }, { i64, i32* }* %24, i32 0, i32 0
  %26 = extractvalue { i64, i32* } %23, 0
  store i64 %26, i64* %25, align 8
  %27 = getelementptr inbounds { i64, i32* }, { i64, i32* }* %24, i32 0, i32 1
  %28 = extractvalue { i64, i32* } %23, 1
  store i32* %28, i32** %27, align 8
  %29 = bitcast %struct.TYPE_17__* %6 to i8*
  %30 = bitcast %struct.TYPE_17__* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %29, i8* align 8 %30, i64 16, i1 false)
  %31 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %32 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %31, i32 0, i32 2
  %33 = load i32 (i32*, i32, %struct.TYPE_17__*)*, i32 (i32*, i32, %struct.TYPE_17__*)** %32, align 8
  %34 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %35 = bitcast %struct.TYPE_16__* %34 to i32*
  %36 = call i32 %33(i32* %35, i32 65536, %struct.TYPE_17__* %6)
  %37 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %6, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = icmp eq i32* %38, null
  br i1 %39, label %44, label %40

40:                                               ; preds = %22
  %41 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %6, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %51

44:                                               ; preds = %40, %22
  %45 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %46 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %45, i32 0, i32 0
  %47 = load i32 (%struct.TYPE_16__*, i32, %struct.TYPE_17__*, %struct.sockaddr*, i32)*, i32 (%struct.TYPE_16__*, i32, %struct.TYPE_17__*, %struct.sockaddr*, i32)** %46, align 8
  %48 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %49 = load i32, i32* @UV_ENOBUFS, align 4
  %50 = call i32 %47(%struct.TYPE_16__* %48, i32 %49, %struct.TYPE_17__* %6, %struct.sockaddr* null, i32 0)
  br label %149

51:                                               ; preds = %40
  %52 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %6, i32 0, i32 1
  %53 = load i32*, i32** %52, align 8
  %54 = icmp ne i32* %53, null
  %55 = zext i1 %54 to i32
  %56 = call i32 @assert(i32 %55)
  %57 = bitcast %struct.msghdr* %4 to %struct.sockaddr_storage*
  %58 = call i32 @memset(%struct.sockaddr_storage* %57, i32 0, i32 32)
  %59 = call i32 @memset(%struct.sockaddr_storage* %3, i32 0, i32 32)
  %60 = bitcast %struct.sockaddr_storage* %3 to %struct.msghdr*
  %61 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %4, i32 0, i32 4
  store %struct.msghdr* %60, %struct.msghdr** %61, align 8
  %62 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %4, i32 0, i32 0
  store i32 32, i32* %62, align 8
  %63 = bitcast %struct.TYPE_17__* %6 to i8*
  %64 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %4, i32 0, i32 3
  store i8* %63, i8** %64, align 8
  %65 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %4, i32 0, i32 1
  store i32 1, i32* %65, align 4
  br label %66

66:                                               ; preds = %80, %51
  %67 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %68 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = bitcast %struct.msghdr* %4 to %struct.sockaddr_storage*
  %72 = call i32 @recvmsg(i32 %70, %struct.sockaddr_storage* %71, i32 0)
  store i32 %72, i32* %5, align 4
  br label %73

73:                                               ; preds = %66
  %74 = load i32, i32* %5, align 4
  %75 = icmp eq i32 %74, -1
  br i1 %75, label %76, label %80

76:                                               ; preds = %73
  %77 = load i64, i64* @errno, align 8
  %78 = load i64, i64* @EINTR, align 8
  %79 = icmp eq i64 %77, %78
  br label %80

80:                                               ; preds = %76, %73
  %81 = phi i1 [ false, %73 ], [ %79, %76 ]
  br i1 %81, label %66, label %82

82:                                               ; preds = %80
  %83 = load i32, i32* %5, align 4
  %84 = icmp eq i32 %83, -1
  br i1 %84, label %85, label %108

85:                                               ; preds = %82
  %86 = load i64, i64* @errno, align 8
  %87 = load i64, i64* @EAGAIN, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %93, label %89

89:                                               ; preds = %85
  %90 = load i64, i64* @errno, align 8
  %91 = load i64, i64* @EWOULDBLOCK, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %93, label %99

93:                                               ; preds = %89, %85
  %94 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %95 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %94, i32 0, i32 0
  %96 = load i32 (%struct.TYPE_16__*, i32, %struct.TYPE_17__*, %struct.sockaddr*, i32)*, i32 (%struct.TYPE_16__*, i32, %struct.TYPE_17__*, %struct.sockaddr*, i32)** %95, align 8
  %97 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %98 = call i32 %96(%struct.TYPE_16__* %97, i32 0, %struct.TYPE_17__* %6, %struct.sockaddr* null, i32 0)
  br label %107

99:                                               ; preds = %89
  %100 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %101 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %100, i32 0, i32 0
  %102 = load i32 (%struct.TYPE_16__*, i32, %struct.TYPE_17__*, %struct.sockaddr*, i32)*, i32 (%struct.TYPE_16__*, i32, %struct.TYPE_17__*, %struct.sockaddr*, i32)** %101, align 8
  %103 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %104 = load i64, i64* @errno, align 8
  %105 = call i32 @UV__ERR(i64 %104)
  %106 = call i32 %102(%struct.TYPE_16__* %103, i32 %105, %struct.TYPE_17__* %6, %struct.sockaddr* null, i32 0)
  br label %107

107:                                              ; preds = %99, %93
  br label %128

108:                                              ; preds = %82
  store i32 0, i32* %7, align 4
  %109 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %4, i32 0, i32 2
  %110 = load i32, i32* %109, align 8
  %111 = load i32, i32* @MSG_TRUNC, align 4
  %112 = and i32 %110, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %118

114:                                              ; preds = %108
  %115 = load i32, i32* @UV_UDP_PARTIAL, align 4
  %116 = load i32, i32* %7, align 4
  %117 = or i32 %116, %115
  store i32 %117, i32* %7, align 4
  br label %118

118:                                              ; preds = %114, %108
  %119 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %120 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %119, i32 0, i32 0
  %121 = load i32 (%struct.TYPE_16__*, i32, %struct.TYPE_17__*, %struct.sockaddr*, i32)*, i32 (%struct.TYPE_16__*, i32, %struct.TYPE_17__*, %struct.sockaddr*, i32)** %120, align 8
  %122 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %123 = load i32, i32* %5, align 4
  %124 = bitcast %struct.sockaddr_storage* %3 to %struct.sockaddr.0*
  %125 = bitcast %struct.sockaddr.0* %124 to %struct.sockaddr*
  %126 = load i32, i32* %7, align 4
  %127 = call i32 %121(%struct.TYPE_16__* %122, i32 %123, %struct.TYPE_17__* %6, %struct.sockaddr* %125, i32 %126)
  br label %128

128:                                              ; preds = %118, %107
  br label %129

129:                                              ; preds = %128
  %130 = load i32, i32* %5, align 4
  %131 = icmp ne i32 %130, -1
  br i1 %131, label %132, label %147

132:                                              ; preds = %129
  %133 = load i32, i32* %8, align 4
  %134 = add nsw i32 %133, -1
  store i32 %134, i32* %8, align 4
  %135 = icmp sgt i32 %133, 0
  br i1 %135, label %136, label %147

136:                                              ; preds = %132
  %137 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %138 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %137, i32 0, i32 1
  %139 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = icmp ne i32 %140, -1
  br i1 %141, label %142, label %147

142:                                              ; preds = %136
  %143 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %144 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %143, i32 0, i32 0
  %145 = load i32 (%struct.TYPE_16__*, i32, %struct.TYPE_17__*, %struct.sockaddr*, i32)*, i32 (%struct.TYPE_16__*, i32, %struct.TYPE_17__*, %struct.sockaddr*, i32)** %144, align 8
  %146 = icmp ne i32 (%struct.TYPE_16__*, i32, %struct.TYPE_17__*, %struct.sockaddr*, i32)* %145, null
  br label %147

147:                                              ; preds = %142, %136, %132, %129
  %148 = phi i1 [ false, %136 ], [ false, %132 ], [ false, %129 ], [ %146, %142 ]
  br i1 %148, label %22, label %149

149:                                              ; preds = %44, %147
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local { i64, i32* } @uv_buf_init(i32*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @memset(%struct.sockaddr_storage*, i32, i32) #1

declare dso_local i32 @recvmsg(i32, %struct.sockaddr_storage*, i32) #1

declare dso_local i32 @UV__ERR(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
