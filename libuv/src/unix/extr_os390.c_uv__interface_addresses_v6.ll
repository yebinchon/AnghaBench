; ModuleID = '/home/carl/AnghaBench/libuv/src/unix/extr_os390.c_uv__interface_addresses_v6.c'
source_filename = "/home/carl/AnghaBench/libuv/src/unix/extr_os390.c_uv__interface_addresses_v6.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32, %struct.TYPE_9__, i32 }
%struct.TYPE_9__ = type { %struct.sockaddr_in, %struct.sockaddr_in6 }
%struct.sockaddr_in = type { i32 }
%struct.sockaddr_in6 = type { i32 }
%struct.TYPE_12__ = type { i32, i32, i32, i64 }
%struct.TYPE_13__ = type { i32, %struct.TYPE_10__, i32 }
%struct.TYPE_10__ = type { i64 }

@AF_INET = common dso_local global i64 0, align 8
@SOCK_DGRAM = common dso_local global i32 0, align 4
@IPPROTO_IP = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@SIOCGIFCONF6 = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i64 0, align 8
@_NIF6E_FLAGS_ON_LINK_ACTIVE = common dso_local global i32 0, align 4
@UV_ENOMEM = common dso_local global i32 0, align 4
@_NIF6E_FLAGS_LOOPBACK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__**, i32*)* @uv__interface_addresses_v6 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uv__interface_addresses_v6(%struct.TYPE_11__** %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_11__**, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_12__, align 8
  %10 = alloca %struct.TYPE_13__*, align 8
  %11 = alloca %struct.TYPE_13__*, align 8
  %12 = alloca %struct.TYPE_13__, align 8
  store %struct.TYPE_11__** %0, %struct.TYPE_11__*** %4, align 8
  store i32* %1, i32** %5, align 8
  %13 = load i32*, i32** %5, align 8
  store i32 0, i32* %13, align 4
  store i32 16384, i32* %8, align 4
  %14 = load i64, i64* @AF_INET, align 8
  %15 = load i32, i32* @SOCK_DGRAM, align 4
  %16 = load i32, i32* @IPPROTO_IP, align 4
  %17 = call i32 @socket(i64 %14, i32 %15, i32 %16)
  store i32 %17, i32* %7, align 4
  %18 = icmp sgt i32 0, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %2
  %20 = load i32, i32* @errno, align 4
  %21 = call i32 @UV__ERR(i32 %20)
  store i32 %21, i32* %3, align 4
  br label %202

22:                                               ; preds = %2
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %9, i32 0, i32 0
  store i32 1, i32* %23, align 8
  %24 = load i32, i32* %8, align 4
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %9, i32 0, i32 1
  store i32 %24, i32* %25, align 4
  %26 = load i32, i32* %8, align 4
  %27 = call i64 @uv__calloc(i32 1, i32 %26)
  %28 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %9, i32 0, i32 3
  store i64 %27, i64* %28, align 8
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* @SIOCGIFCONF6, align 4
  %31 = call i32 @ioctl(i32 %29, i32 %30, %struct.TYPE_12__* %9)
  %32 = icmp eq i32 %31, -1
  br i1 %32, label %33, label %38

33:                                               ; preds = %22
  %34 = load i32, i32* %7, align 4
  %35 = call i32 @uv__close(i32 %34)
  %36 = load i32, i32* @errno, align 4
  %37 = call i32 @UV__ERR(i32 %36)
  store i32 %37, i32* %3, align 4
  br label %202

38:                                               ; preds = %22
  %39 = load i32*, i32** %5, align 8
  store i32 0, i32* %39, align 4
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %9, i32 0, i32 3
  %41 = load i64, i64* %40, align 8
  %42 = inttoptr i64 %41 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %42, %struct.TYPE_13__** %10, align 8
  br label %43

43:                                               ; preds = %85, %84, %76, %38
  %44 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %45 = bitcast %struct.TYPE_13__* %44 to i8*
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %9, i32 0, i32 3
  %47 = load i64, i64* %46, align 8
  %48 = inttoptr i64 %47 to i8*
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %9, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i8, i8* %48, i64 %51
  %53 = icmp ult i8* %45, %52
  br i1 %53, label %54, label %89

54:                                               ; preds = %43
  %55 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  store %struct.TYPE_13__* %55, %struct.TYPE_13__** %11, align 8
  %56 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %57 = bitcast %struct.TYPE_13__* %56 to i8*
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %9, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i8, i8* %57, i64 %60
  %62 = bitcast i8* %61 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %62, %struct.TYPE_13__** %10, align 8
  %63 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %64 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @AF_INET6, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %77, label %69

69:                                               ; preds = %54
  %70 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %71 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @AF_INET, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %77, label %76

76:                                               ; preds = %69
  br label %43

77:                                               ; preds = %69, %54
  %78 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %79 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* @_NIF6E_FLAGS_ON_LINK_ACTIVE, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %85, label %84

84:                                               ; preds = %77
  br label %43

85:                                               ; preds = %77
  %86 = load i32*, i32** %5, align 8
  %87 = load i32, i32* %86, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %86, align 4
  br label %43

89:                                               ; preds = %43
  %90 = load i32*, i32** %5, align 8
  %91 = load i32, i32* %90, align 4
  %92 = sext i32 %91 to i64
  %93 = mul i64 %92, 20
  %94 = trunc i64 %93 to i32
  %95 = call %struct.TYPE_11__* @uv__malloc(i32 %94)
  %96 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %4, align 8
  store %struct.TYPE_11__* %95, %struct.TYPE_11__** %96, align 8
  %97 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %4, align 8
  %98 = load %struct.TYPE_11__*, %struct.TYPE_11__** %97, align 8
  %99 = icmp ne %struct.TYPE_11__* %98, null
  br i1 %99, label %104, label %100

100:                                              ; preds = %89
  %101 = load i32, i32* %7, align 4
  %102 = call i32 @uv__close(i32 %101)
  %103 = load i32, i32* @UV_ENOMEM, align 4
  store i32 %103, i32* %3, align 4
  br label %202

104:                                              ; preds = %89
  %105 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %4, align 8
  %106 = load %struct.TYPE_11__*, %struct.TYPE_11__** %105, align 8
  store %struct.TYPE_11__* %106, %struct.TYPE_11__** %6, align 8
  %107 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %9, i32 0, i32 3
  %108 = load i64, i64* %107, align 8
  %109 = inttoptr i64 %108 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %109, %struct.TYPE_13__** %10, align 8
  br label %110

110:                                              ; preds = %183, %151, %143, %104
  %111 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %112 = bitcast %struct.TYPE_13__* %111 to i8*
  %113 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %9, i32 0, i32 3
  %114 = load i64, i64* %113, align 8
  %115 = inttoptr i64 %114 to i8*
  %116 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %9, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i8, i8* %115, i64 %118
  %120 = icmp ult i8* %112, %119
  br i1 %120, label %121, label %199

121:                                              ; preds = %110
  %122 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  store %struct.TYPE_13__* %122, %struct.TYPE_13__** %11, align 8
  %123 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %124 = bitcast %struct.TYPE_13__* %123 to i8*
  %125 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %9, i32 0, i32 2
  %126 = load i32, i32* %125, align 8
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i8, i8* %124, i64 %127
  %129 = bitcast i8* %128 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %129, %struct.TYPE_13__** %10, align 8
  %130 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %131 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %130, i32 0, i32 1
  %132 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = load i64, i64* @AF_INET6, align 8
  %135 = icmp eq i64 %133, %134
  br i1 %135, label %144, label %136

136:                                              ; preds = %121
  %137 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %138 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %137, i32 0, i32 1
  %139 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = load i64, i64* @AF_INET, align 8
  %142 = icmp eq i64 %140, %141
  br i1 %142, label %144, label %143

143:                                              ; preds = %136
  br label %110

144:                                              ; preds = %136, %121
  %145 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %146 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = load i32, i32* @_NIF6E_FLAGS_ON_LINK_ACTIVE, align 4
  %149 = and i32 %147, %148
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %152, label %151

151:                                              ; preds = %144
  br label %110

152:                                              ; preds = %144
  %153 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %154 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %153, i32 0, i32 2
  %155 = load i32, i32* %154, align 8
  %156 = call i32 @uv__strdup(i32 %155)
  %157 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %158 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %157, i32 0, i32 3
  store i32 %156, i32* %158, align 4
  %159 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %160 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %159, i32 0, i32 1
  %161 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %160, i32 0, i32 0
  %162 = load i64, i64* %161, align 8
  %163 = load i64, i64* @AF_INET6, align 8
  %164 = icmp eq i64 %162, %163
  br i1 %164, label %165, label %174

165:                                              ; preds = %152
  %166 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %167 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %166, i32 0, i32 2
  %168 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %167, i32 0, i32 1
  %169 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %170 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %169, i32 0, i32 1
  %171 = bitcast %struct.TYPE_10__* %170 to %struct.sockaddr_in6*
  %172 = bitcast %struct.sockaddr_in6* %168 to i8*
  %173 = bitcast %struct.sockaddr_in6* %171 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %172, i8* align 8 %173, i64 4, i1 false)
  br label %183

174:                                              ; preds = %152
  %175 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %176 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %175, i32 0, i32 2
  %177 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %176, i32 0, i32 0
  %178 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %179 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %178, i32 0, i32 1
  %180 = bitcast %struct.TYPE_10__* %179 to %struct.sockaddr_in*
  %181 = bitcast %struct.sockaddr_in* %177 to i8*
  %182 = bitcast %struct.sockaddr_in* %180 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %181, i8* align 8 %182, i64 4, i1 false)
  br label %183

183:                                              ; preds = %174, %165
  %184 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %12, i32 0, i32 0
  %185 = load i32, i32* %184, align 8
  %186 = load i32, i32* @_NIF6E_FLAGS_LOOPBACK, align 4
  %187 = and i32 %185, %186
  %188 = icmp ne i32 %187, 0
  %189 = zext i1 %188 to i64
  %190 = select i1 %188, i32 1, i32 0
  %191 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %192 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %191, i32 0, i32 0
  store i32 %190, i32* %192, align 4
  %193 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %194 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %193, i32 0, i32 1
  %195 = load i32, i32* %194, align 4
  %196 = call i32 @memset(i32 %195, i32 0, i32 4)
  %197 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %198 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %197, i32 1
  store %struct.TYPE_11__* %198, %struct.TYPE_11__** %6, align 8
  br label %110

199:                                              ; preds = %110
  %200 = load i32, i32* %7, align 4
  %201 = call i32 @uv__close(i32 %200)
  store i32 0, i32* %3, align 4
  br label %202

202:                                              ; preds = %199, %100, %33, %19
  %203 = load i32, i32* %3, align 4
  ret i32 %203
}

declare dso_local i32 @socket(i64, i32, i32) #1

declare dso_local i32 @UV__ERR(i32) #1

declare dso_local i64 @uv__calloc(i32, i32) #1

declare dso_local i32 @ioctl(i32, i32, %struct.TYPE_12__*) #1

declare dso_local i32 @uv__close(i32) #1

declare dso_local %struct.TYPE_11__* @uv__malloc(i32) #1

declare dso_local i32 @uv__strdup(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @memset(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
