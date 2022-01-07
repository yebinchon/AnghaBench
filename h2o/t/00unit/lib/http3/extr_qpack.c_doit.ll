; ModuleID = '/home/carl/AnghaBench/h2o/t/00unit/lib/http3/extr_qpack.c_doit.c'
source_filename = "/home/carl/AnghaBench/h2o/t/00unit/lib/http3/extr_qpack.c_doit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i64, i32*, i32* }
%struct.TYPE_20__ = type { i32, %struct.TYPE_16__*, i32* }
%struct.TYPE_16__ = type { %struct.TYPE_18__, %struct.TYPE_17__* }
%struct.TYPE_18__ = type { i32, i32 }
%struct.TYPE_17__ = type { i32, i32 }
%struct.TYPE_19__ = type { i32, i32, i32* }

@H2O_HPACK_ENCODE_INT_MAX_LENGTH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"x-hoge\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"\01\02\03\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"GET\00", align 1
@H2O_URL_SCHEME_HTTPS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [12 x i8] c"example.com\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"/foobar\00", align 1
@SIZE_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @doit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @doit(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_21__*, align 8
  %7 = alloca %struct.TYPE_21__, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_20__, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32*, align 8
  %17 = alloca %struct.TYPE_19__, align 8
  %18 = alloca %struct.TYPE_19__, align 8
  %19 = alloca %struct.TYPE_19__, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32, align 4
  %22 = alloca %struct.TYPE_20__, align 8
  %23 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  %24 = call i32* @h2o_qpack_create_decoder(i32 4096, i32 10)
  store i32* %24, i32** %3, align 8
  %25 = call i32* @h2o_qpack_create_encoder(i32 4096, i32 10)
  store i32* %25, i32** %4, align 8
  store %struct.TYPE_21__* null, %struct.TYPE_21__** %6, align 8
  %26 = bitcast %struct.TYPE_21__* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %26, i8 0, i64 24, i1 false)
  %27 = load i32, i32* @H2O_HPACK_ENCODE_INT_MAX_LENGTH, align 4
  %28 = zext i32 %27 to i64
  %29 = call i8* @llvm.stacksave()
  store i8* %29, i8** %8, align 8
  %30 = alloca i32, i64 %28, align 16
  store i64 %28, i64* %9, align 8
  store i8* null, i8** %11, align 8
  %31 = call i32 @h2o_mem_init_pool(i32* %5)
  %32 = load i32, i32* %2, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %1
  %35 = call %struct.TYPE_21__* @alloca(i32 24)
  store %struct.TYPE_21__* %35, %struct.TYPE_21__** %6, align 8
  %36 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %37 = call i32 @memset(%struct.TYPE_21__* %36, i32 0, i32 24)
  br label %38

38:                                               ; preds = %34, %1
  %39 = bitcast %struct.TYPE_20__* %13 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %39, i8 0, i64 24, i1 false)
  %40 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %41 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %42 = call i32 @h2o_add_header_by_str(i32* %5, %struct.TYPE_20__* %13, i32 %40, i32 0, i32* null, i32 %41)
  %43 = load i32*, i32** %4, align 8
  %44 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %45 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %46 = call i32 @h2o_iovec_init(i32 %45)
  %47 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  %48 = call i32 @h2o_iovec_init(i32 %47)
  %49 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  %50 = call i32 @h2o_iovec_init(i32 %49)
  %51 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %13, i32 0, i32 1
  %52 = load %struct.TYPE_16__*, %struct.TYPE_16__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %13, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @h2o_qpack_flatten_request(i32* %43, i32* %5, i32 123, %struct.TYPE_21__* %44, %struct.TYPE_21__* %7, i32 %46, i32* @H2O_URL_SCHEME_HTTPS, i32 %48, i32 %50, %struct.TYPE_16__* %52, i32 %54)
  %56 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %57 = icmp ne %struct.TYPE_21__* %56, null
  br i1 %57, label %58, label %90

58:                                               ; preds = %38
  %59 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  %63 = zext i1 %62 to i32
  %64 = call i32 @assert(i32 %63)
  %65 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %65, i32 0, i32 1
  %67 = load i32*, i32** %66, align 8
  store i32* %67, i32** %16, align 8
  %68 = load i32*, i32** %3, align 8
  %69 = load i32*, i32** %16, align 8
  %70 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = getelementptr inbounds i32, i32* %69, i64 %72
  %74 = call i32 @h2o_qpack_decoder_handle_input(i32* %68, i32** %14, i64* %15, i32** %16, i32* %73, i8** %11)
  store i32 %74, i32* %12, align 4
  %75 = load i32, i32* %12, align 4
  %76 = icmp eq i32 %75, 0
  %77 = zext i1 %76 to i32
  %78 = call i32 @assert(i32 %77)
  %79 = load i32*, i32** %16, align 8
  %80 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %80, i32 0, i32 1
  %82 = load i32*, i32** %81, align 8
  %83 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = getelementptr inbounds i32, i32* %82, i64 %85
  %87 = icmp eq i32* %79, %86
  %88 = zext i1 %87 to i32
  %89 = call i32 @assert(i32 %88)
  br label %90

90:                                               ; preds = %58, %38
  %91 = bitcast %struct.TYPE_19__* %17 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %91, i8 0, i64 16, i1 false)
  %92 = bitcast %struct.TYPE_19__* %18 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %92, i8 0, i64 16, i1 false)
  %93 = bitcast %struct.TYPE_19__* %19 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %93, i8 0, i64 16, i1 false)
  store i32* null, i32** %20, align 8
  store i32 0, i32* %21, align 4
  %94 = bitcast %struct.TYPE_20__* %22 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %94, i8 0, i64 24, i1 false)
  %95 = load i64, i64* @SIZE_MAX, align 8
  store i64 %95, i64* %23, align 8
  %96 = load i32*, i32** %3, align 8
  %97 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %7, i32 0, i32 1
  %98 = load i32*, i32** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %7, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = trunc i64 %100 to i32
  %102 = call i32 @h2o_qpack_parse_request(i32* %5, i32* %96, i32 0, %struct.TYPE_19__* %17, i32** %20, %struct.TYPE_19__* %18, %struct.TYPE_19__* %19, %struct.TYPE_20__* %22, i32* %21, i64* %23, i32* null, i32* %30, i64* %10, i32* %98, i32 %101, i8** %11)
  store i32 %102, i32* %12, align 4
  %103 = load i32, i32* %12, align 4
  %104 = icmp eq i32 %103, 0
  %105 = zext i1 %104 to i32
  %106 = call i32 @ok(i32 %105)
  %107 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %17, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %17, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %112 = call i32 @h2o_memis(i32 %108, i32 %110, i32 %111)
  %113 = call i32 @ok(i32 %112)
  %114 = load i32*, i32** %20, align 8
  %115 = icmp eq i32* %114, @H2O_URL_SCHEME_HTTPS
  %116 = zext i1 %115 to i32
  %117 = call i32 @ok(i32 %116)
  %118 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %18, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %18, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  %123 = call i32 @h2o_memis(i32 %119, i32 %121, i32 %122)
  %124 = call i32 @ok(i32 %123)
  %125 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %19, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %19, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  %130 = call i32 @h2o_memis(i32 %126, i32 %128, i32 %129)
  %131 = call i32 @ok(i32 %130)
  %132 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %22, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = icmp eq i32 %133, 1
  %135 = zext i1 %134 to i32
  %136 = call i32 @ok(i32 %135)
  %137 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %22, i32 0, i32 1
  %138 = load %struct.TYPE_16__*, %struct.TYPE_16__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %138, i64 0
  %140 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %139, i32 0, i32 1
  %141 = load %struct.TYPE_17__*, %struct.TYPE_17__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %22, i32 0, i32 1
  %145 = load %struct.TYPE_16__*, %struct.TYPE_16__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %145, i64 0
  %147 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %146, i32 0, i32 1
  %148 = load %struct.TYPE_17__*, %struct.TYPE_17__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %152 = call i32 @h2o_memis(i32 %143, i32 %150, i32 %151)
  %153 = call i32 @ok(i32 %152)
  %154 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %22, i32 0, i32 1
  %155 = load %struct.TYPE_16__*, %struct.TYPE_16__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %155, i64 0
  %157 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  %160 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %22, i32 0, i32 1
  %161 = load %struct.TYPE_16__*, %struct.TYPE_16__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %161, i64 0
  %163 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %167 = call i32 @h2o_memis(i32 %159, i32 %165, i32 %166)
  %168 = call i32 @ok(i32 %167)
  %169 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %170 = icmp ne %struct.TYPE_21__* %169, null
  br i1 %170, label %171, label %176

171:                                              ; preds = %90
  %172 = load i64, i64* %10, align 8
  %173 = icmp ne i64 %172, 0
  %174 = zext i1 %173 to i32
  %175 = call i32 @ok(i32 %174)
  br label %181

176:                                              ; preds = %90
  %177 = load i64, i64* %10, align 8
  %178 = icmp eq i64 %177, 0
  %179 = zext i1 %178 to i32
  %180 = call i32 @ok(i32 %179)
  br label %181

181:                                              ; preds = %176, %171
  %182 = call i32 @h2o_mem_clear_pool(i32* %5)
  %183 = load i32*, i32** %3, align 8
  %184 = call i32 @h2o_qpack_destroy_decoder(i32* %183)
  %185 = load i32*, i32** %4, align 8
  %186 = call i32 @h2o_qpack_destroy_encoder(i32* %185)
  %187 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %187)
  ret void
}

declare dso_local i32* @h2o_qpack_create_decoder(i32, i32) #1

declare dso_local i32* @h2o_qpack_create_encoder(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #3

declare dso_local i32 @h2o_mem_init_pool(i32*) #1

declare dso_local %struct.TYPE_21__* @alloca(i32) #1

declare dso_local i32 @memset(%struct.TYPE_21__*, i32, i32) #1

declare dso_local i32 @h2o_add_header_by_str(i32*, %struct.TYPE_20__*, i32, i32, i32*, i32) #1

declare dso_local i32 @H2O_STRLIT(i8*) #1

declare dso_local i32 @h2o_qpack_flatten_request(i32*, i32*, i32, %struct.TYPE_21__*, %struct.TYPE_21__*, i32, i32*, i32, i32, %struct.TYPE_16__*, i32) #1

declare dso_local i32 @h2o_iovec_init(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @h2o_qpack_decoder_handle_input(i32*, i32**, i64*, i32**, i32*, i8**) #1

declare dso_local i32 @h2o_qpack_parse_request(i32*, i32*, i32, %struct.TYPE_19__*, i32**, %struct.TYPE_19__*, %struct.TYPE_19__*, %struct.TYPE_20__*, i32*, i64*, i32*, i32*, i64*, i32*, i32, i8**) #1

declare dso_local i32 @ok(i32) #1

declare dso_local i32 @h2o_memis(i32, i32, i32) #1

declare dso_local i32 @h2o_mem_clear_pool(i32*) #1

declare dso_local i32 @h2o_qpack_destroy_decoder(i32*) #1

declare dso_local i32 @h2o_qpack_destroy_encoder(i32*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #3

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
