; ModuleID = '/home/carl/AnghaBench/h2o/t/00unit/lib/common/extr_url.c_test_resolve.c'
source_filename = "/home/carl/AnghaBench/h2o/t/00unit/lib/common/extr_url.c_test_resolve.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32, %struct.TYPE_17__, %struct.TYPE_16__, %struct.TYPE_15__, i32* }
%struct.TYPE_17__ = type { i32, i32 }
%struct.TYPE_16__ = type { i32, i32 }
%struct.TYPE_15__ = type { i32, i32 }
%struct.TYPE_19__ = type { i32, i32 }

@.str = private unnamed_addr constant [34 x i8] c"http://example.com/dir/index.html\00", align 1
@SIZE_MAX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"../assets/jquery.js\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"http://example.com/assets/jquery.js\00", align 1
@H2O_URL_SCHEME_HTTP = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [12 x i8] c"example.com\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"/assets/jquery.js\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"foo.html\00", align 1
@.str.6 = private unnamed_addr constant [32 x i8] c"http://example.com/dir/foo.html\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"/dir/foo.html\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"./bar.txt\00", align 1
@.str.9 = private unnamed_addr constant [31 x i8] c"http://example.com/dir/bar.txt\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"/dir/bar.txt\00", align 1
@.str.11 = private unnamed_addr constant [18 x i8] c"../../../traverse\00", align 1
@.str.12 = private unnamed_addr constant [28 x i8] c"http://example.com/traverse\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"/traverse\00", align 1
@.str.14 = private unnamed_addr constant [14 x i8] c"http:foo.html\00", align 1
@.str.15 = private unnamed_addr constant [15 x i8] c"http:/icon.ico\00", align 1
@.str.16 = private unnamed_addr constant [28 x i8] c"http://example.com/icon.ico\00", align 1
@.str.17 = private unnamed_addr constant [10 x i8] c"/icon.ico\00", align 1
@.str.18 = private unnamed_addr constant [16 x i8] c"https:/icon.ico\00", align 1
@.str.19 = private unnamed_addr constant [29 x i8] c"https://example.com/icon.ico\00", align 1
@H2O_URL_SCHEME_HTTPS = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [25 x i8] c"//example.jp:81/icon.ico\00", align 1
@.str.21 = private unnamed_addr constant [30 x i8] c"http://example.jp:81/icon.ico\00", align 1
@.str.22 = private unnamed_addr constant [14 x i8] c"example.jp:81\00", align 1
@.str.23 = private unnamed_addr constant [11 x i8] c"example.jp\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_resolve to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_resolve() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TYPE_18__, align 8
  %3 = alloca %struct.TYPE_18__, align 8
  %4 = alloca %struct.TYPE_18__, align 8
  %5 = alloca %struct.TYPE_19__, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_19__, align 4
  %8 = alloca %struct.TYPE_19__, align 4
  %9 = alloca %struct.TYPE_19__, align 4
  %10 = alloca %struct.TYPE_19__, align 4
  %11 = alloca %struct.TYPE_19__, align 4
  %12 = alloca %struct.TYPE_19__, align 4
  %13 = alloca %struct.TYPE_19__, align 4
  %14 = alloca %struct.TYPE_19__, align 4
  %15 = alloca %struct.TYPE_19__, align 4
  %16 = call i32 @h2o_mem_init_pool(i32* %1)
  %17 = load i32, i32* @SIZE_MAX, align 4
  %18 = call i32 @h2o_url_parse(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %17, %struct.TYPE_18__* %2)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp eq i32 %19, 0
  %21 = zext i1 %20 to i32
  %22 = call i32 @ok(i32 %21)
  %23 = load i32, i32* @SIZE_MAX, align 4
  %24 = call i32 @h2o_url_parse_relative(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %23, %struct.TYPE_18__* %3)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp eq i32 %25, 0
  %27 = zext i1 %26 to i32
  %28 = call i32 @ok(i32 %27)
  %29 = call i64 @h2o_url_resolve(i32* %1, %struct.TYPE_18__* %2, %struct.TYPE_18__* %3, %struct.TYPE_18__* %4)
  %30 = bitcast %struct.TYPE_19__* %7 to i64*
  store i64 %29, i64* %30, align 4
  %31 = bitcast %struct.TYPE_19__* %5 to i8*
  %32 = bitcast %struct.TYPE_19__* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %31, i8* align 4 %32, i64 8, i1 false)
  %33 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %5, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %5, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  %38 = call i32 @h2o_memis(i32 %34, i32 %36, i32 %37)
  %39 = call i32 @ok(i32 %38)
  %40 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %4, i32 0, i32 4
  %41 = load i32*, i32** %40, align 8
  %42 = icmp eq i32* %41, @H2O_URL_SCHEME_HTTP
  %43 = zext i1 %42 to i32
  %44 = call i32 @ok(i32 %43)
  %45 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %4, i32 0, i32 3
  %46 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %4, i32 0, i32 3
  %49 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  %52 = call i32 @h2o_memis(i32 %47, i32 %50, i32 %51)
  %53 = call i32 @ok(i32 %52)
  %54 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %4, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %4, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  %61 = call i32 @h2o_memis(i32 %56, i32 %59, i32 %60)
  %62 = call i32 @ok(i32 %61)
  %63 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %4, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = icmp eq i32 %64, 65535
  %66 = zext i1 %65 to i32
  %67 = call i32 @ok(i32 %66)
  %68 = call i32 @h2o_url_get_port(%struct.TYPE_18__* %4)
  %69 = icmp eq i32 %68, 80
  %70 = zext i1 %69 to i32
  %71 = call i32 @ok(i32 %70)
  %72 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %4, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %4, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0))
  %79 = call i32 @h2o_memis(i32 %74, i32 %77, i32 %78)
  %80 = call i32 @ok(i32 %79)
  %81 = load i32, i32* @SIZE_MAX, align 4
  %82 = call i32 @h2o_url_parse_relative(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i32 %81, %struct.TYPE_18__* %3)
  store i32 %82, i32* %6, align 4
  %83 = load i32, i32* %6, align 4
  %84 = icmp eq i32 %83, 0
  %85 = zext i1 %84 to i32
  %86 = call i32 @ok(i32 %85)
  %87 = call i64 @h2o_url_resolve(i32* %1, %struct.TYPE_18__* %2, %struct.TYPE_18__* %3, %struct.TYPE_18__* %4)
  %88 = bitcast %struct.TYPE_19__* %8 to i64*
  store i64 %87, i64* %88, align 4
  %89 = bitcast %struct.TYPE_19__* %5 to i8*
  %90 = bitcast %struct.TYPE_19__* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %89, i8* align 4 %90, i64 8, i1 false)
  %91 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %5, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %5, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0))
  %96 = call i32 @h2o_memis(i32 %92, i32 %94, i32 %95)
  %97 = call i32 @ok(i32 %96)
  %98 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %4, i32 0, i32 4
  %99 = load i32*, i32** %98, align 8
  %100 = icmp eq i32* %99, @H2O_URL_SCHEME_HTTP
  %101 = zext i1 %100 to i32
  %102 = call i32 @ok(i32 %101)
  %103 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %4, i32 0, i32 3
  %104 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %4, i32 0, i32 3
  %107 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  %110 = call i32 @h2o_memis(i32 %105, i32 %108, i32 %109)
  %111 = call i32 @ok(i32 %110)
  %112 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %4, i32 0, i32 2
  %113 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %4, i32 0, i32 2
  %116 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  %119 = call i32 @h2o_memis(i32 %114, i32 %117, i32 %118)
  %120 = call i32 @ok(i32 %119)
  %121 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %4, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = icmp eq i32 %122, 65535
  %124 = zext i1 %123 to i32
  %125 = call i32 @ok(i32 %124)
  %126 = call i32 @h2o_url_get_port(%struct.TYPE_18__* %4)
  %127 = icmp eq i32 %126, 80
  %128 = zext i1 %127 to i32
  %129 = call i32 @ok(i32 %128)
  %130 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %4, i32 0, i32 1
  %131 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %4, i32 0, i32 1
  %134 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0))
  %137 = call i32 @h2o_memis(i32 %132, i32 %135, i32 %136)
  %138 = call i32 @ok(i32 %137)
  %139 = load i32, i32* @SIZE_MAX, align 4
  %140 = call i32 @h2o_url_parse_relative(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i32 %139, %struct.TYPE_18__* %3)
  store i32 %140, i32* %6, align 4
  %141 = load i32, i32* %6, align 4
  %142 = icmp eq i32 %141, 0
  %143 = zext i1 %142 to i32
  %144 = call i32 @ok(i32 %143)
  %145 = call i64 @h2o_url_resolve(i32* %1, %struct.TYPE_18__* %2, %struct.TYPE_18__* %3, %struct.TYPE_18__* %4)
  %146 = bitcast %struct.TYPE_19__* %9 to i64*
  store i64 %145, i64* %146, align 4
  %147 = bitcast %struct.TYPE_19__* %5 to i8*
  %148 = bitcast %struct.TYPE_19__* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %147, i8* align 4 %148, i64 8, i1 false)
  %149 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %5, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %5, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.9, i64 0, i64 0))
  %154 = call i32 @h2o_memis(i32 %150, i32 %152, i32 %153)
  %155 = call i32 @ok(i32 %154)
  %156 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %4, i32 0, i32 4
  %157 = load i32*, i32** %156, align 8
  %158 = icmp eq i32* %157, @H2O_URL_SCHEME_HTTP
  %159 = zext i1 %158 to i32
  %160 = call i32 @ok(i32 %159)
  %161 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %4, i32 0, i32 3
  %162 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 4
  %164 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %4, i32 0, i32 3
  %165 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  %168 = call i32 @h2o_memis(i32 %163, i32 %166, i32 %167)
  %169 = call i32 @ok(i32 %168)
  %170 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %4, i32 0, i32 2
  %171 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 4
  %173 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %4, i32 0, i32 2
  %174 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 4
  %176 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  %177 = call i32 @h2o_memis(i32 %172, i32 %175, i32 %176)
  %178 = call i32 @ok(i32 %177)
  %179 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %4, i32 0, i32 0
  %180 = load i32, i32* %179, align 8
  %181 = icmp eq i32 %180, 65535
  %182 = zext i1 %181 to i32
  %183 = call i32 @ok(i32 %182)
  %184 = call i32 @h2o_url_get_port(%struct.TYPE_18__* %4)
  %185 = icmp eq i32 %184, 80
  %186 = zext i1 %185 to i32
  %187 = call i32 @ok(i32 %186)
  %188 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %4, i32 0, i32 1
  %189 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %188, i32 0, i32 1
  %190 = load i32, i32* %189, align 4
  %191 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %4, i32 0, i32 1
  %192 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 4
  %194 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i64 0, i64 0))
  %195 = call i32 @h2o_memis(i32 %190, i32 %193, i32 %194)
  %196 = call i32 @ok(i32 %195)
  %197 = load i32, i32* @SIZE_MAX, align 4
  %198 = call i32 @h2o_url_parse_relative(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.11, i64 0, i64 0), i32 %197, %struct.TYPE_18__* %3)
  store i32 %198, i32* %6, align 4
  %199 = load i32, i32* %6, align 4
  %200 = icmp eq i32 %199, 0
  %201 = zext i1 %200 to i32
  %202 = call i32 @ok(i32 %201)
  %203 = call i64 @h2o_url_resolve(i32* %1, %struct.TYPE_18__* %2, %struct.TYPE_18__* %3, %struct.TYPE_18__* %4)
  %204 = bitcast %struct.TYPE_19__* %10 to i64*
  store i64 %203, i64* %204, align 4
  %205 = bitcast %struct.TYPE_19__* %5 to i8*
  %206 = bitcast %struct.TYPE_19__* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %205, i8* align 4 %206, i64 8, i1 false)
  %207 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %5, i32 0, i32 1
  %208 = load i32, i32* %207, align 4
  %209 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %5, i32 0, i32 0
  %210 = load i32, i32* %209, align 4
  %211 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.12, i64 0, i64 0))
  %212 = call i32 @h2o_memis(i32 %208, i32 %210, i32 %211)
  %213 = call i32 @ok(i32 %212)
  %214 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %4, i32 0, i32 4
  %215 = load i32*, i32** %214, align 8
  %216 = icmp eq i32* %215, @H2O_URL_SCHEME_HTTP
  %217 = zext i1 %216 to i32
  %218 = call i32 @ok(i32 %217)
  %219 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %4, i32 0, i32 3
  %220 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %219, i32 0, i32 1
  %221 = load i32, i32* %220, align 4
  %222 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %4, i32 0, i32 3
  %223 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 4
  %225 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  %226 = call i32 @h2o_memis(i32 %221, i32 %224, i32 %225)
  %227 = call i32 @ok(i32 %226)
  %228 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %4, i32 0, i32 2
  %229 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %228, i32 0, i32 1
  %230 = load i32, i32* %229, align 4
  %231 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %4, i32 0, i32 2
  %232 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %231, i32 0, i32 0
  %233 = load i32, i32* %232, align 4
  %234 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  %235 = call i32 @h2o_memis(i32 %230, i32 %233, i32 %234)
  %236 = call i32 @ok(i32 %235)
  %237 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %4, i32 0, i32 0
  %238 = load i32, i32* %237, align 8
  %239 = icmp eq i32 %238, 65535
  %240 = zext i1 %239 to i32
  %241 = call i32 @ok(i32 %240)
  %242 = call i32 @h2o_url_get_port(%struct.TYPE_18__* %4)
  %243 = icmp eq i32 %242, 80
  %244 = zext i1 %243 to i32
  %245 = call i32 @ok(i32 %244)
  %246 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %4, i32 0, i32 1
  %247 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %246, i32 0, i32 1
  %248 = load i32, i32* %247, align 4
  %249 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %4, i32 0, i32 1
  %250 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %249, i32 0, i32 0
  %251 = load i32, i32* %250, align 4
  %252 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0))
  %253 = call i32 @h2o_memis(i32 %248, i32 %251, i32 %252)
  %254 = call i32 @ok(i32 %253)
  %255 = load i32, i32* @SIZE_MAX, align 4
  %256 = call i32 @h2o_url_parse_relative(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.14, i64 0, i64 0), i32 %255, %struct.TYPE_18__* %3)
  store i32 %256, i32* %6, align 4
  %257 = load i32, i32* %6, align 4
  %258 = icmp eq i32 %257, 0
  %259 = zext i1 %258 to i32
  %260 = call i32 @ok(i32 %259)
  %261 = call i64 @h2o_url_resolve(i32* %1, %struct.TYPE_18__* %2, %struct.TYPE_18__* %3, %struct.TYPE_18__* %4)
  %262 = bitcast %struct.TYPE_19__* %11 to i64*
  store i64 %261, i64* %262, align 4
  %263 = bitcast %struct.TYPE_19__* %5 to i8*
  %264 = bitcast %struct.TYPE_19__* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %263, i8* align 4 %264, i64 8, i1 false)
  %265 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %5, i32 0, i32 1
  %266 = load i32, i32* %265, align 4
  %267 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %5, i32 0, i32 0
  %268 = load i32, i32* %267, align 4
  %269 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0))
  %270 = call i32 @h2o_memis(i32 %266, i32 %268, i32 %269)
  %271 = call i32 @ok(i32 %270)
  %272 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %4, i32 0, i32 4
  %273 = load i32*, i32** %272, align 8
  %274 = icmp eq i32* %273, @H2O_URL_SCHEME_HTTP
  %275 = zext i1 %274 to i32
  %276 = call i32 @ok(i32 %275)
  %277 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %4, i32 0, i32 3
  %278 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %277, i32 0, i32 1
  %279 = load i32, i32* %278, align 4
  %280 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %4, i32 0, i32 3
  %281 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %280, i32 0, i32 0
  %282 = load i32, i32* %281, align 4
  %283 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  %284 = call i32 @h2o_memis(i32 %279, i32 %282, i32 %283)
  %285 = call i32 @ok(i32 %284)
  %286 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %4, i32 0, i32 2
  %287 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %286, i32 0, i32 1
  %288 = load i32, i32* %287, align 4
  %289 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %4, i32 0, i32 2
  %290 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %289, i32 0, i32 0
  %291 = load i32, i32* %290, align 4
  %292 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  %293 = call i32 @h2o_memis(i32 %288, i32 %291, i32 %292)
  %294 = call i32 @ok(i32 %293)
  %295 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %4, i32 0, i32 0
  %296 = load i32, i32* %295, align 8
  %297 = icmp eq i32 %296, 65535
  %298 = zext i1 %297 to i32
  %299 = call i32 @ok(i32 %298)
  %300 = call i32 @h2o_url_get_port(%struct.TYPE_18__* %4)
  %301 = icmp eq i32 %300, 80
  %302 = zext i1 %301 to i32
  %303 = call i32 @ok(i32 %302)
  %304 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %4, i32 0, i32 1
  %305 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %304, i32 0, i32 1
  %306 = load i32, i32* %305, align 4
  %307 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %4, i32 0, i32 1
  %308 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %307, i32 0, i32 0
  %309 = load i32, i32* %308, align 4
  %310 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0))
  %311 = call i32 @h2o_memis(i32 %306, i32 %309, i32 %310)
  %312 = call i32 @ok(i32 %311)
  %313 = load i32, i32* @SIZE_MAX, align 4
  %314 = call i32 @h2o_url_parse_relative(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i64 0, i64 0), i32 %313, %struct.TYPE_18__* %3)
  store i32 %314, i32* %6, align 4
  %315 = load i32, i32* %6, align 4
  %316 = icmp eq i32 %315, 0
  %317 = zext i1 %316 to i32
  %318 = call i32 @ok(i32 %317)
  %319 = call i64 @h2o_url_resolve(i32* %1, %struct.TYPE_18__* %2, %struct.TYPE_18__* %3, %struct.TYPE_18__* %4)
  %320 = bitcast %struct.TYPE_19__* %12 to i64*
  store i64 %319, i64* %320, align 4
  %321 = bitcast %struct.TYPE_19__* %5 to i8*
  %322 = bitcast %struct.TYPE_19__* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %321, i8* align 4 %322, i64 8, i1 false)
  %323 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %5, i32 0, i32 1
  %324 = load i32, i32* %323, align 4
  %325 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %5, i32 0, i32 0
  %326 = load i32, i32* %325, align 4
  %327 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.16, i64 0, i64 0))
  %328 = call i32 @h2o_memis(i32 %324, i32 %326, i32 %327)
  %329 = call i32 @ok(i32 %328)
  %330 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %4, i32 0, i32 4
  %331 = load i32*, i32** %330, align 8
  %332 = icmp eq i32* %331, @H2O_URL_SCHEME_HTTP
  %333 = zext i1 %332 to i32
  %334 = call i32 @ok(i32 %333)
  %335 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %4, i32 0, i32 3
  %336 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %335, i32 0, i32 1
  %337 = load i32, i32* %336, align 4
  %338 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %4, i32 0, i32 3
  %339 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %338, i32 0, i32 0
  %340 = load i32, i32* %339, align 4
  %341 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  %342 = call i32 @h2o_memis(i32 %337, i32 %340, i32 %341)
  %343 = call i32 @ok(i32 %342)
  %344 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %4, i32 0, i32 2
  %345 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %344, i32 0, i32 1
  %346 = load i32, i32* %345, align 4
  %347 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %4, i32 0, i32 2
  %348 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %347, i32 0, i32 0
  %349 = load i32, i32* %348, align 4
  %350 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  %351 = call i32 @h2o_memis(i32 %346, i32 %349, i32 %350)
  %352 = call i32 @ok(i32 %351)
  %353 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %4, i32 0, i32 0
  %354 = load i32, i32* %353, align 8
  %355 = icmp eq i32 %354, 65535
  %356 = zext i1 %355 to i32
  %357 = call i32 @ok(i32 %356)
  %358 = call i32 @h2o_url_get_port(%struct.TYPE_18__* %4)
  %359 = icmp eq i32 %358, 80
  %360 = zext i1 %359 to i32
  %361 = call i32 @ok(i32 %360)
  %362 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %4, i32 0, i32 1
  %363 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %362, i32 0, i32 1
  %364 = load i32, i32* %363, align 4
  %365 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %4, i32 0, i32 1
  %366 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %365, i32 0, i32 0
  %367 = load i32, i32* %366, align 4
  %368 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.17, i64 0, i64 0))
  %369 = call i32 @h2o_memis(i32 %364, i32 %367, i32 %368)
  %370 = call i32 @ok(i32 %369)
  %371 = load i32, i32* @SIZE_MAX, align 4
  %372 = call i32 @h2o_url_parse_relative(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i32 %371, %struct.TYPE_18__* %3)
  store i32 %372, i32* %6, align 4
  %373 = load i32, i32* %6, align 4
  %374 = icmp eq i32 %373, 0
  %375 = zext i1 %374 to i32
  %376 = call i32 @ok(i32 %375)
  %377 = call i64 @h2o_url_resolve(i32* %1, %struct.TYPE_18__* %2, %struct.TYPE_18__* %3, %struct.TYPE_18__* %4)
  %378 = bitcast %struct.TYPE_19__* %13 to i64*
  store i64 %377, i64* %378, align 4
  %379 = bitcast %struct.TYPE_19__* %5 to i8*
  %380 = bitcast %struct.TYPE_19__* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %379, i8* align 4 %380, i64 8, i1 false)
  %381 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %5, i32 0, i32 1
  %382 = load i32, i32* %381, align 4
  %383 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %5, i32 0, i32 0
  %384 = load i32, i32* %383, align 4
  %385 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.19, i64 0, i64 0))
  %386 = call i32 @h2o_memis(i32 %382, i32 %384, i32 %385)
  %387 = call i32 @ok(i32 %386)
  %388 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %4, i32 0, i32 4
  %389 = load i32*, i32** %388, align 8
  %390 = icmp eq i32* %389, @H2O_URL_SCHEME_HTTPS
  %391 = zext i1 %390 to i32
  %392 = call i32 @ok(i32 %391)
  %393 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %4, i32 0, i32 3
  %394 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %393, i32 0, i32 1
  %395 = load i32, i32* %394, align 4
  %396 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %4, i32 0, i32 3
  %397 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %396, i32 0, i32 0
  %398 = load i32, i32* %397, align 4
  %399 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  %400 = call i32 @h2o_memis(i32 %395, i32 %398, i32 %399)
  %401 = call i32 @ok(i32 %400)
  %402 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %4, i32 0, i32 2
  %403 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %402, i32 0, i32 1
  %404 = load i32, i32* %403, align 4
  %405 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %4, i32 0, i32 2
  %406 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %405, i32 0, i32 0
  %407 = load i32, i32* %406, align 4
  %408 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  %409 = call i32 @h2o_memis(i32 %404, i32 %407, i32 %408)
  %410 = call i32 @ok(i32 %409)
  %411 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %4, i32 0, i32 0
  %412 = load i32, i32* %411, align 8
  %413 = icmp eq i32 %412, 65535
  %414 = zext i1 %413 to i32
  %415 = call i32 @ok(i32 %414)
  %416 = call i32 @h2o_url_get_port(%struct.TYPE_18__* %4)
  %417 = icmp eq i32 %416, 443
  %418 = zext i1 %417 to i32
  %419 = call i32 @ok(i32 %418)
  %420 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %4, i32 0, i32 1
  %421 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %420, i32 0, i32 1
  %422 = load i32, i32* %421, align 4
  %423 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %4, i32 0, i32 1
  %424 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %423, i32 0, i32 0
  %425 = load i32, i32* %424, align 4
  %426 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.17, i64 0, i64 0))
  %427 = call i32 @h2o_memis(i32 %422, i32 %425, i32 %426)
  %428 = call i32 @ok(i32 %427)
  %429 = load i32, i32* @SIZE_MAX, align 4
  %430 = call i32 @h2o_url_parse_relative(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.20, i64 0, i64 0), i32 %429, %struct.TYPE_18__* %3)
  store i32 %430, i32* %6, align 4
  %431 = load i32, i32* %6, align 4
  %432 = icmp eq i32 %431, 0
  %433 = zext i1 %432 to i32
  %434 = call i32 @ok(i32 %433)
  %435 = call i64 @h2o_url_resolve(i32* %1, %struct.TYPE_18__* %2, %struct.TYPE_18__* %3, %struct.TYPE_18__* %4)
  %436 = bitcast %struct.TYPE_19__* %14 to i64*
  store i64 %435, i64* %436, align 4
  %437 = bitcast %struct.TYPE_19__* %5 to i8*
  %438 = bitcast %struct.TYPE_19__* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %437, i8* align 4 %438, i64 8, i1 false)
  %439 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %5, i32 0, i32 1
  %440 = load i32, i32* %439, align 4
  %441 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %5, i32 0, i32 0
  %442 = load i32, i32* %441, align 4
  %443 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.21, i64 0, i64 0))
  %444 = call i32 @h2o_memis(i32 %440, i32 %442, i32 %443)
  %445 = call i32 @ok(i32 %444)
  %446 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %4, i32 0, i32 4
  %447 = load i32*, i32** %446, align 8
  %448 = icmp eq i32* %447, @H2O_URL_SCHEME_HTTP
  %449 = zext i1 %448 to i32
  %450 = call i32 @ok(i32 %449)
  %451 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %4, i32 0, i32 3
  %452 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %451, i32 0, i32 1
  %453 = load i32, i32* %452, align 4
  %454 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %4, i32 0, i32 3
  %455 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %454, i32 0, i32 0
  %456 = load i32, i32* %455, align 4
  %457 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.22, i64 0, i64 0))
  %458 = call i32 @h2o_memis(i32 %453, i32 %456, i32 %457)
  %459 = call i32 @ok(i32 %458)
  %460 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %4, i32 0, i32 2
  %461 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %460, i32 0, i32 1
  %462 = load i32, i32* %461, align 4
  %463 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %4, i32 0, i32 2
  %464 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %463, i32 0, i32 0
  %465 = load i32, i32* %464, align 4
  %466 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.23, i64 0, i64 0))
  %467 = call i32 @h2o_memis(i32 %462, i32 %465, i32 %466)
  %468 = call i32 @ok(i32 %467)
  %469 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %4, i32 0, i32 0
  %470 = load i32, i32* %469, align 8
  %471 = icmp eq i32 %470, 81
  %472 = zext i1 %471 to i32
  %473 = call i32 @ok(i32 %472)
  %474 = call i32 @h2o_url_get_port(%struct.TYPE_18__* %4)
  %475 = icmp eq i32 %474, 81
  %476 = zext i1 %475 to i32
  %477 = call i32 @ok(i32 %476)
  %478 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %4, i32 0, i32 1
  %479 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %478, i32 0, i32 1
  %480 = load i32, i32* %479, align 4
  %481 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %4, i32 0, i32 1
  %482 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %481, i32 0, i32 0
  %483 = load i32, i32* %482, align 4
  %484 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.17, i64 0, i64 0))
  %485 = call i32 @h2o_memis(i32 %480, i32 %483, i32 %484)
  %486 = call i32 @ok(i32 %485)
  %487 = call i64 @h2o_url_stringify(i32* %1, %struct.TYPE_18__* %2)
  %488 = bitcast %struct.TYPE_19__* %15 to i64*
  store i64 %487, i64* %488, align 4
  %489 = bitcast %struct.TYPE_19__* %5 to i8*
  %490 = bitcast %struct.TYPE_19__* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %489, i8* align 4 %490, i64 8, i1 false)
  %491 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %5, i32 0, i32 1
  %492 = load i32, i32* %491, align 4
  %493 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %5, i32 0, i32 0
  %494 = load i32, i32* %493, align 4
  %495 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %496 = call i32 @h2o_memis(i32 %492, i32 %494, i32 %495)
  %497 = call i32 @ok(i32 %496)
  %498 = call i32 @h2o_mem_clear_pool(i32* %1)
  ret void
}

declare dso_local i32 @h2o_mem_init_pool(i32*) #1

declare dso_local i32 @h2o_url_parse(i8*, i32, %struct.TYPE_18__*) #1

declare dso_local i32 @ok(i32) #1

declare dso_local i32 @h2o_url_parse_relative(i8*, i32, %struct.TYPE_18__*) #1

declare dso_local i64 @h2o_url_resolve(i32*, %struct.TYPE_18__*, %struct.TYPE_18__*, %struct.TYPE_18__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @h2o_memis(i32, i32, i32) #1

declare dso_local i32 @H2O_STRLIT(i8*) #1

declare dso_local i32 @h2o_url_get_port(%struct.TYPE_18__*) #1

declare dso_local i64 @h2o_url_stringify(i32*, %struct.TYPE_18__*) #1

declare dso_local i32 @h2o_mem_clear_pool(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
