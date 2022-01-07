; ModuleID = '/home/carl/AnghaBench/h2o/t/00unit/lib/http2/extr_hpack.c_test_request.c'
source_filename = "/home/carl/AnghaBench/h2o/t/00unit/lib/http2/extr_hpack.c_test_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_27__ = type { i32, i64 }
%struct.TYPE_26__ = type { i32, i32, %struct.TYPE_21__, %struct.TYPE_25__ }
%struct.TYPE_21__ = type { i32, %struct.TYPE_24__* }
%struct.TYPE_24__ = type { %struct.TYPE_23__, %struct.TYPE_22__* }
%struct.TYPE_23__ = type { i32, i32 }
%struct.TYPE_22__ = type { i32, i32 }
%struct.TYPE_25__ = type { i32*, %struct.TYPE_20__, %struct.TYPE_18__, %struct.TYPE_19__ }
%struct.TYPE_20__ = type { i32, i32 }
%struct.TYPE_18__ = type { i32, i32 }
%struct.TYPE_19__ = type { i32, i32 }

@h2o_hpack_decode_header = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"www.example.com\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"GET\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@H2O_URL_SCHEME_HTTP = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [14 x i8] c"cache-control\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"no-cache\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"/index.html\00", align 1
@H2O_URL_SCHEME_HTTPS = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [11 x i8] c"custom-key\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"custom-value\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i64, i32, i64, i32, i64)* @test_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_request(i32 %0, i64 %1, i32 %2, i64 %3, i32 %4, i64 %5) #0 {
  %7 = alloca %struct.TYPE_27__, align 8
  %8 = alloca %struct.TYPE_27__, align 8
  %9 = alloca %struct.TYPE_27__, align 8
  %10 = alloca %struct.TYPE_26__, align 8
  %11 = alloca %struct.TYPE_26__, align 8
  %12 = alloca %struct.TYPE_27__, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  %17 = bitcast %struct.TYPE_27__* %7 to { i32, i64 }*
  %18 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %17, i32 0, i32 0
  store i32 %0, i32* %18, align 8
  %19 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %17, i32 0, i32 1
  store i64 %1, i64* %19, align 8
  %20 = bitcast %struct.TYPE_27__* %8 to { i32, i64 }*
  %21 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %20, i32 0, i32 0
  store i32 %2, i32* %21, align 8
  %22 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %20, i32 0, i32 1
  store i64 %3, i64* %22, align 8
  %23 = bitcast %struct.TYPE_27__* %9 to { i32, i64 }*
  %24 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %23, i32 0, i32 0
  store i32 %4, i32* %24, align 8
  %25 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %23, i32 0, i32 1
  store i64 %5, i64* %25, align 8
  store i8* null, i8** %16, align 8
  %26 = call i32 @memset(%struct.TYPE_26__* %10, i32 0, i32 56)
  %27 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %10, i32 0, i32 0
  store i32 4096, i32* %27, align 8
  %28 = call i32 @memset(%struct.TYPE_26__* %11, i32 0, i32 56)
  %29 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %11, i32 0, i32 1
  %30 = call i32 @h2o_mem_init_pool(i32* %29)
  %31 = bitcast %struct.TYPE_27__* %12 to i8*
  %32 = bitcast %struct.TYPE_27__* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %31, i8* align 8 %32, i64 16, i1 false)
  %33 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %11, i32 0, i32 1
  %34 = load i32, i32* @h2o_hpack_decode_header, align 4
  %35 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %11, i32 0, i32 3
  %36 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %11, i32 0, i32 3
  %38 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %11, i32 0, i32 3
  %40 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %39, i32 0, i32 3
  %41 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %11, i32 0, i32 3
  %42 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %11, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %12, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = inttoptr i64 %45 to i32*
  %47 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %12, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @h2o_hpack_parse_request(i32* %33, i32 %34, %struct.TYPE_26__* %10, %struct.TYPE_18__* %36, i32** %38, %struct.TYPE_19__* %40, %struct.TYPE_20__* %42, %struct.TYPE_21__* %43, i32* %14, i64* %15, i32* null, i32* %46, i32 %48, i8** %16)
  store i32 %49, i32* %13, align 4
  %50 = load i32, i32* %13, align 4
  %51 = icmp eq i32 %50, 0
  %52 = zext i1 %51 to i32
  %53 = call i32 @ok(i32 %52)
  %54 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %11, i32 0, i32 3
  %55 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %54, i32 0, i32 3
  %56 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = icmp eq i32 %57, 15
  %59 = zext i1 %58 to i32
  %60 = call i32 @ok(i32 %59)
  %61 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %11, i32 0, i32 3
  %62 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %61, i32 0, i32 3
  %63 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %66 = call i64 @memcmp(i32 %64, i32 %65)
  %67 = icmp eq i64 %66, 0
  %68 = zext i1 %67 to i32
  %69 = call i32 @ok(i32 %68)
  %70 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %11, i32 0, i32 3
  %71 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = icmp eq i32 %73, 3
  %75 = zext i1 %74 to i32
  %76 = call i32 @ok(i32 %75)
  %77 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %11, i32 0, i32 3
  %78 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %77, i32 0, i32 2
  %79 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %82 = call i64 @memcmp(i32 %80, i32 %81)
  %83 = icmp eq i64 %82, 0
  %84 = zext i1 %83 to i32
  %85 = call i32 @ok(i32 %84)
  %86 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %11, i32 0, i32 3
  %87 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = icmp eq i32 %89, 1
  %91 = zext i1 %90 to i32
  %92 = call i32 @ok(i32 %91)
  %93 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %11, i32 0, i32 3
  %94 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %98 = call i64 @memcmp(i32 %96, i32 %97)
  %99 = icmp eq i64 %98, 0
  %100 = zext i1 %99 to i32
  %101 = call i32 @ok(i32 %100)
  %102 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %11, i32 0, i32 3
  %103 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %102, i32 0, i32 0
  %104 = load i32*, i32** %103, align 8
  %105 = icmp eq i32* %104, @H2O_URL_SCHEME_HTTP
  %106 = zext i1 %105 to i32
  %107 = call i32 @ok(i32 %106)
  %108 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %11, i32 0, i32 2
  %109 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = icmp eq i32 %110, 0
  %112 = zext i1 %111 to i32
  %113 = call i32 @ok(i32 %112)
  %114 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %11, i32 0, i32 1
  %115 = call i32 @h2o_mem_clear_pool(i32* %114)
  %116 = call i32 @memset(%struct.TYPE_26__* %11, i32 0, i32 56)
  %117 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %11, i32 0, i32 1
  %118 = call i32 @h2o_mem_init_pool(i32* %117)
  %119 = bitcast %struct.TYPE_27__* %12 to i8*
  %120 = bitcast %struct.TYPE_27__* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %119, i8* align 8 %120, i64 16, i1 false)
  %121 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %11, i32 0, i32 1
  %122 = load i32, i32* @h2o_hpack_decode_header, align 4
  %123 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %11, i32 0, i32 3
  %124 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %123, i32 0, i32 2
  %125 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %11, i32 0, i32 3
  %126 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %11, i32 0, i32 3
  %128 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %127, i32 0, i32 3
  %129 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %11, i32 0, i32 3
  %130 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %129, i32 0, i32 1
  %131 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %11, i32 0, i32 2
  %132 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %12, i32 0, i32 1
  %133 = load i64, i64* %132, align 8
  %134 = inttoptr i64 %133 to i32*
  %135 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %12, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = call i32 @h2o_hpack_parse_request(i32* %121, i32 %122, %struct.TYPE_26__* %10, %struct.TYPE_18__* %124, i32** %126, %struct.TYPE_19__* %128, %struct.TYPE_20__* %130, %struct.TYPE_21__* %131, i32* %14, i64* %15, i32* null, i32* %134, i32 %136, i8** %16)
  store i32 %137, i32* %13, align 4
  %138 = load i32, i32* %13, align 4
  %139 = icmp eq i32 %138, 0
  %140 = zext i1 %139 to i32
  %141 = call i32 @ok(i32 %140)
  %142 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %11, i32 0, i32 3
  %143 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %142, i32 0, i32 3
  %144 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = icmp eq i32 %145, 15
  %147 = zext i1 %146 to i32
  %148 = call i32 @ok(i32 %147)
  %149 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %11, i32 0, i32 3
  %150 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %149, i32 0, i32 3
  %151 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %154 = call i64 @memcmp(i32 %152, i32 %153)
  %155 = icmp eq i64 %154, 0
  %156 = zext i1 %155 to i32
  %157 = call i32 @ok(i32 %156)
  %158 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %11, i32 0, i32 3
  %159 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %158, i32 0, i32 2
  %160 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = icmp eq i32 %161, 3
  %163 = zext i1 %162 to i32
  %164 = call i32 @ok(i32 %163)
  %165 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %11, i32 0, i32 3
  %166 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %165, i32 0, i32 2
  %167 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 4
  %169 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %170 = call i64 @memcmp(i32 %168, i32 %169)
  %171 = icmp eq i64 %170, 0
  %172 = zext i1 %171 to i32
  %173 = call i32 @ok(i32 %172)
  %174 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %11, i32 0, i32 3
  %175 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %174, i32 0, i32 1
  %176 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 8
  %178 = icmp eq i32 %177, 1
  %179 = zext i1 %178 to i32
  %180 = call i32 @ok(i32 %179)
  %181 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %11, i32 0, i32 3
  %182 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %181, i32 0, i32 1
  %183 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 4
  %185 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %186 = call i64 @memcmp(i32 %184, i32 %185)
  %187 = icmp eq i64 %186, 0
  %188 = zext i1 %187 to i32
  %189 = call i32 @ok(i32 %188)
  %190 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %11, i32 0, i32 3
  %191 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %190, i32 0, i32 0
  %192 = load i32*, i32** %191, align 8
  %193 = icmp eq i32* %192, @H2O_URL_SCHEME_HTTP
  %194 = zext i1 %193 to i32
  %195 = call i32 @ok(i32 %194)
  %196 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %11, i32 0, i32 2
  %197 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 8
  %199 = icmp eq i32 %198, 1
  %200 = zext i1 %199 to i32
  %201 = call i32 @ok(i32 %200)
  %202 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %11, i32 0, i32 2
  %203 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %202, i32 0, i32 1
  %204 = load %struct.TYPE_24__*, %struct.TYPE_24__** %203, align 8
  %205 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %204, i64 0
  %206 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %205, i32 0, i32 1
  %207 = load %struct.TYPE_22__*, %struct.TYPE_22__** %206, align 8
  %208 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %207, i32 0, i32 1
  %209 = load i32, i32* %208, align 4
  %210 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %11, i32 0, i32 2
  %211 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %210, i32 0, i32 1
  %212 = load %struct.TYPE_24__*, %struct.TYPE_24__** %211, align 8
  %213 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %212, i64 0
  %214 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %213, i32 0, i32 1
  %215 = load %struct.TYPE_22__*, %struct.TYPE_22__** %214, align 8
  %216 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 4
  %218 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  %219 = call i32 @h2o_memis(i32 %209, i32 %217, i32 %218)
  %220 = call i32 @ok(i32 %219)
  %221 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %11, i32 0, i32 2
  %222 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %221, i32 0, i32 1
  %223 = load %struct.TYPE_24__*, %struct.TYPE_24__** %222, align 8
  %224 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %223, i64 0
  %225 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %224, i32 0, i32 0
  %226 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %225, i32 0, i32 1
  %227 = load i32, i32* %226, align 4
  %228 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %11, i32 0, i32 2
  %229 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %228, i32 0, i32 1
  %230 = load %struct.TYPE_24__*, %struct.TYPE_24__** %229, align 8
  %231 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %230, i64 0
  %232 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %231, i32 0, i32 0
  %233 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %232, i32 0, i32 0
  %234 = load i32, i32* %233, align 8
  %235 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  %236 = call i32 @h2o_lcstris(i32 %227, i32 %234, i32 %235)
  %237 = call i32 @ok(i32 %236)
  %238 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %11, i32 0, i32 1
  %239 = call i32 @h2o_mem_clear_pool(i32* %238)
  %240 = call i32 @memset(%struct.TYPE_26__* %11, i32 0, i32 56)
  %241 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %11, i32 0, i32 1
  %242 = call i32 @h2o_mem_init_pool(i32* %241)
  %243 = bitcast %struct.TYPE_27__* %12 to i8*
  %244 = bitcast %struct.TYPE_27__* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %243, i8* align 8 %244, i64 16, i1 false)
  %245 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %11, i32 0, i32 1
  %246 = load i32, i32* @h2o_hpack_decode_header, align 4
  %247 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %11, i32 0, i32 3
  %248 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %247, i32 0, i32 2
  %249 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %11, i32 0, i32 3
  %250 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %249, i32 0, i32 0
  %251 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %11, i32 0, i32 3
  %252 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %251, i32 0, i32 3
  %253 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %11, i32 0, i32 3
  %254 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %253, i32 0, i32 1
  %255 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %11, i32 0, i32 2
  %256 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %12, i32 0, i32 1
  %257 = load i64, i64* %256, align 8
  %258 = inttoptr i64 %257 to i32*
  %259 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %12, i32 0, i32 0
  %260 = load i32, i32* %259, align 8
  %261 = call i32 @h2o_hpack_parse_request(i32* %245, i32 %246, %struct.TYPE_26__* %10, %struct.TYPE_18__* %248, i32** %250, %struct.TYPE_19__* %252, %struct.TYPE_20__* %254, %struct.TYPE_21__* %255, i32* %14, i64* %15, i32* null, i32* %258, i32 %260, i8** %16)
  store i32 %261, i32* %13, align 4
  %262 = load i32, i32* %13, align 4
  %263 = icmp eq i32 %262, 0
  %264 = zext i1 %263 to i32
  %265 = call i32 @ok(i32 %264)
  %266 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %11, i32 0, i32 3
  %267 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %266, i32 0, i32 3
  %268 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %267, i32 0, i32 0
  %269 = load i32, i32* %268, align 8
  %270 = icmp eq i32 %269, 15
  %271 = zext i1 %270 to i32
  %272 = call i32 @ok(i32 %271)
  %273 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %11, i32 0, i32 3
  %274 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %273, i32 0, i32 3
  %275 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %274, i32 0, i32 1
  %276 = load i32, i32* %275, align 4
  %277 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %278 = call i64 @memcmp(i32 %276, i32 %277)
  %279 = icmp eq i64 %278, 0
  %280 = zext i1 %279 to i32
  %281 = call i32 @ok(i32 %280)
  %282 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %11, i32 0, i32 3
  %283 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %282, i32 0, i32 2
  %284 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %283, i32 0, i32 0
  %285 = load i32, i32* %284, align 8
  %286 = icmp eq i32 %285, 3
  %287 = zext i1 %286 to i32
  %288 = call i32 @ok(i32 %287)
  %289 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %11, i32 0, i32 3
  %290 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %289, i32 0, i32 2
  %291 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %290, i32 0, i32 1
  %292 = load i32, i32* %291, align 4
  %293 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %294 = call i64 @memcmp(i32 %292, i32 %293)
  %295 = icmp eq i64 %294, 0
  %296 = zext i1 %295 to i32
  %297 = call i32 @ok(i32 %296)
  %298 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %11, i32 0, i32 3
  %299 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %298, i32 0, i32 1
  %300 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %299, i32 0, i32 0
  %301 = load i32, i32* %300, align 8
  %302 = icmp eq i32 %301, 11
  %303 = zext i1 %302 to i32
  %304 = call i32 @ok(i32 %303)
  %305 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %11, i32 0, i32 3
  %306 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %305, i32 0, i32 1
  %307 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %306, i32 0, i32 1
  %308 = load i32, i32* %307, align 4
  %309 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0))
  %310 = call i64 @memcmp(i32 %308, i32 %309)
  %311 = icmp eq i64 %310, 0
  %312 = zext i1 %311 to i32
  %313 = call i32 @ok(i32 %312)
  %314 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %11, i32 0, i32 3
  %315 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %314, i32 0, i32 0
  %316 = load i32*, i32** %315, align 8
  %317 = icmp eq i32* %316, @H2O_URL_SCHEME_HTTPS
  %318 = zext i1 %317 to i32
  %319 = call i32 @ok(i32 %318)
  %320 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %11, i32 0, i32 2
  %321 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %320, i32 0, i32 0
  %322 = load i32, i32* %321, align 8
  %323 = icmp eq i32 %322, 1
  %324 = zext i1 %323 to i32
  %325 = call i32 @ok(i32 %324)
  %326 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %11, i32 0, i32 2
  %327 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %326, i32 0, i32 1
  %328 = load %struct.TYPE_24__*, %struct.TYPE_24__** %327, align 8
  %329 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %328, i64 0
  %330 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %329, i32 0, i32 1
  %331 = load %struct.TYPE_22__*, %struct.TYPE_22__** %330, align 8
  %332 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %331, i32 0, i32 1
  %333 = load i32, i32* %332, align 4
  %334 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %11, i32 0, i32 2
  %335 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %334, i32 0, i32 1
  %336 = load %struct.TYPE_24__*, %struct.TYPE_24__** %335, align 8
  %337 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %336, i64 0
  %338 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %337, i32 0, i32 1
  %339 = load %struct.TYPE_22__*, %struct.TYPE_22__** %338, align 8
  %340 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %339, i32 0, i32 0
  %341 = load i32, i32* %340, align 4
  %342 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0))
  %343 = call i32 @h2o_memis(i32 %333, i32 %341, i32 %342)
  %344 = call i32 @ok(i32 %343)
  %345 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %11, i32 0, i32 2
  %346 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %345, i32 0, i32 1
  %347 = load %struct.TYPE_24__*, %struct.TYPE_24__** %346, align 8
  %348 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %347, i64 0
  %349 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %348, i32 0, i32 0
  %350 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %349, i32 0, i32 1
  %351 = load i32, i32* %350, align 4
  %352 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %11, i32 0, i32 2
  %353 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %352, i32 0, i32 1
  %354 = load %struct.TYPE_24__*, %struct.TYPE_24__** %353, align 8
  %355 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %354, i64 0
  %356 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %355, i32 0, i32 0
  %357 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %356, i32 0, i32 0
  %358 = load i32, i32* %357, align 8
  %359 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0))
  %360 = call i32 @h2o_lcstris(i32 %351, i32 %358, i32 %359)
  %361 = call i32 @ok(i32 %360)
  %362 = call i32 @h2o_hpack_dispose_header_table(%struct.TYPE_26__* %10)
  %363 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %11, i32 0, i32 1
  %364 = call i32 @h2o_mem_clear_pool(i32* %363)
  ret void
}

declare dso_local i32 @memset(%struct.TYPE_26__*, i32, i32) #1

declare dso_local i32 @h2o_mem_init_pool(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @h2o_hpack_parse_request(i32*, i32, %struct.TYPE_26__*, %struct.TYPE_18__*, i32**, %struct.TYPE_19__*, %struct.TYPE_20__*, %struct.TYPE_21__*, i32*, i64*, i32*, i32*, i32, i8**) #1

declare dso_local i32 @ok(i32) #1

declare dso_local i64 @memcmp(i32, i32) #1

declare dso_local i32 @H2O_STRLIT(i8*) #1

declare dso_local i32 @h2o_mem_clear_pool(i32*) #1

declare dso_local i32 @h2o_memis(i32, i32, i32) #1

declare dso_local i32 @h2o_lcstris(i32, i32, i32) #1

declare dso_local i32 @h2o_hpack_dispose_header_table(%struct.TYPE_26__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
