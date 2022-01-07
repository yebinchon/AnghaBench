; ModuleID = '/home/carl/AnghaBench/h2o/lib/handler/extr_status.c_on_req.c'
source_filename = "/home/carl/AnghaBench/h2o/lib/handler/extr_status.c_on_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i32, %struct.TYPE_21__, %struct.TYPE_20__, i32, %struct.TYPE_19__, %struct.TYPE_18__* }
%struct.TYPE_21__ = type { i32, i8* }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_19__ = type { i8*, i32 }
%struct.TYPE_18__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32, i8* }
%struct.st_h2o_root_status_handler_t = type { i32 }
%struct.TYPE_23__ = type { i64, i32, i32*, i32 }

@.str = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"H2O_ROOT\00", align 1
@H2O_ROOT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"/share/h2o/status/index.html\00", align 1
@H2O_TOKEN_CACHE_CONTROL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [9 x i8] c"no-cache\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"OK\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"text/html; charset=utf-8\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"/json\00", align 1
@SIZE_MAX = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [7 x i8] c"?show=\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_22__*)* @on_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @on_req(i32* %0, %struct.TYPE_22__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_22__*, align 8
  %6 = alloca %struct.st_h2o_root_status_handler_t*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_23__, align 8
  %9 = alloca %struct.TYPE_23__, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.TYPE_23__, align 8
  %12 = alloca %struct.TYPE_23__, align 8
  %13 = alloca %struct.TYPE_23__, align 8
  %14 = alloca %struct.TYPE_23__, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_23__, align 8
  %17 = alloca %struct.TYPE_23__, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_22__* %1, %struct.TYPE_22__** %5, align 8
  %18 = load i32*, i32** %4, align 8
  %19 = bitcast i32* %18 to i8*
  %20 = bitcast i8* %19 to %struct.st_h2o_root_status_handler_t*
  store %struct.st_h2o_root_status_handler_t* %20, %struct.st_h2o_root_status_handler_t** %6, align 8
  %21 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %21, i32 0, i32 5
  %23 = load %struct.TYPE_18__*, %struct.TYPE_18__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %27, i32 0, i32 5
  %29 = load %struct.TYPE_18__*, %struct.TYPE_18__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %30, i32 0, i32 1
  %32 = load i8*, i8** %31, align 8
  %33 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %33, i32 0, i32 5
  %35 = load %struct.TYPE_18__*, %struct.TYPE_18__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = sub nsw i32 %38, 1
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i8, i8* %32, i64 %40
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp eq i32 %43, 47
  %45 = zext i1 %44 to i32
  %46 = sub nsw i32 %26, %45
  %47 = sext i32 %46 to i64
  store i64 %47, i64* %7, align 8
  %48 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %48, i32 0, i32 4
  %50 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %49, i32 0, i32 0
  %51 = load i8*, i8** %50, align 8
  %52 = load i64, i64* %7, align 8
  %53 = getelementptr inbounds i8, i8* %51, i64 %52
  %54 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %54, i32 0, i32 4
  %56 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = sext i32 %57 to i64
  %59 = load i64, i64* %7, align 8
  %60 = sub i64 %58, %59
  call void (%struct.TYPE_23__*, i8*, ...) @h2o_iovec_init(%struct.TYPE_23__* sret %8, i8* %53, i64 %60)
  %61 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %8, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp eq i64 %62, 0
  br i1 %63, label %77, label %64

64:                                               ; preds = %2
  %65 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %8, i32 0, i32 3
  %66 = load i32, i32* %65, align 8
  %67 = sext i32 %66 to i64
  %68 = inttoptr i64 %67 to i8*
  %69 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %8, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = trunc i64 %70 to i32
  %72 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %73 = sext i32 %72 to i64
  %74 = inttoptr i64 %73 to i8*
  %75 = call i64 (i8*, i32, i8*, ...) @h2o_memis(i8* %68, i32 %71, i8* %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %110

77:                                               ; preds = %64, %2
  %78 = call i8* @getenv(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  store i8* %78, i8** %10, align 8
  %79 = load i8*, i8** %10, align 8
  %80 = icmp eq i8* %79, null
  br i1 %80, label %81, label %84

81:                                               ; preds = %77
  %82 = load i32, i32* @H2O_ROOT, align 4
  %83 = call i8* @H2O_TO_STR(i32 %82)
  store i8* %83, i8** %10, align 8
  br label %84

84:                                               ; preds = %81, %77
  %85 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %85, i32 0, i32 3
  %87 = load i8*, i8** %10, align 8
  %88 = load i8*, i8** %10, align 8
  %89 = call i32 @strlen(i8* %88)
  call void (%struct.TYPE_23__*, i8*, ...) @h2o_iovec_init(%struct.TYPE_23__* sret %12, i8* %87, i32 %89)
  %90 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %91 = sext i32 %90 to i64
  %92 = inttoptr i64 %91 to i8*
  call void (%struct.TYPE_23__*, i8*, ...) @h2o_iovec_init(%struct.TYPE_23__* sret %13, i8* %92)
  call void @h2o_concat(%struct.TYPE_23__* sret %11, i32* %86, %struct.TYPE_23__* byval(%struct.TYPE_23__) align 8 %12, %struct.TYPE_23__* byval(%struct.TYPE_23__) align 8 %13)
  %93 = bitcast %struct.TYPE_23__* %9 to i8*
  %94 = bitcast %struct.TYPE_23__* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %93, i8* align 8 %94, i64 32, i1 false)
  %95 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %95, i32 0, i32 3
  %97 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %97, i32 0, i32 2
  %99 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %98, i32 0, i32 0
  %100 = load i32, i32* @H2O_TOKEN_CACHE_CONTROL, align 4
  %101 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %102 = call i32 @h2o_add_header(i32* %96, i32* %99, i32 %100, i32* null, i32 %101)
  %103 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %104 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %9, i32 0, i32 3
  %105 = load i32, i32* %104, align 8
  %106 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0))
  %107 = sext i32 %106 to i64
  %108 = inttoptr i64 %107 to i8*
  call void (%struct.TYPE_23__*, i8*, ...) @h2o_iovec_init(%struct.TYPE_23__* sret %14, i8* %108)
  %109 = call i32 @h2o_file_send(%struct.TYPE_22__* %103, i32 200, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32 %105, %struct.TYPE_23__* byval(%struct.TYPE_23__) align 8 %14, i32 0)
  store i32 %109, i32* %3, align 4
  br label %182

110:                                              ; preds = %64
  %111 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %8, i32 0, i32 3
  %112 = load i32, i32* %111, align 8
  %113 = sext i32 %112 to i64
  %114 = inttoptr i64 %113 to i8*
  %115 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %8, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = trunc i64 %116 to i32
  %118 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %119 = sext i32 %118 to i64
  %120 = inttoptr i64 %119 to i8*
  %121 = call i64 (i8*, i32, i8*, ...) @h2o_memis(i8* %114, i32 %117, i8* %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %180

123:                                              ; preds = %110
  %124 = bitcast %struct.TYPE_23__* %16 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %124, i8 0, i64 32, i1 false)
  %125 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %126 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = load i32, i32* @SIZE_MAX, align 4
  %129 = icmp ne i32 %127, %128
  br i1 %129, label %130, label %175

130:                                              ; preds = %123
  %131 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %132 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %131, i32 0, i32 1
  %133 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %136 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = sub nsw i32 %134, %137
  %139 = icmp sgt i32 %138, 6
  br i1 %139, label %140, label %175

140:                                              ; preds = %130
  %141 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %142 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %141, i32 0, i32 1
  %143 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %142, i32 0, i32 1
  %144 = load i8*, i8** %143, align 8
  %145 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %146 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i8, i8* %144, i64 %148
  %150 = call i64 (i8*, i32, i8*, ...) @h2o_memis(i8* %149, i32 6, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i32 6)
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %174

152:                                              ; preds = %140
  %153 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %154 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %153, i32 0, i32 1
  %155 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %154, i32 0, i32 1
  %156 = load i8*, i8** %155, align 8
  %157 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %158 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = add nsw i32 %159, 6
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i8, i8* %156, i64 %161
  %163 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %164 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %163, i32 0, i32 1
  %165 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %168 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = sub nsw i32 %166, %169
  %171 = sub nsw i32 %170, 6
  call void (%struct.TYPE_23__*, i8*, ...) @h2o_iovec_init(%struct.TYPE_23__* sret %17, i8* %162, i32 %171)
  %172 = bitcast %struct.TYPE_23__* %16 to i8*
  %173 = bitcast %struct.TYPE_23__* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %172, i8* align 8 %173, i64 32, i1 false)
  br label %174

174:                                              ; preds = %152, %140
  br label %175

175:                                              ; preds = %174, %130, %123
  %176 = load %struct.st_h2o_root_status_handler_t*, %struct.st_h2o_root_status_handler_t** %6, align 8
  %177 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %178 = call i32 @on_req_json(%struct.st_h2o_root_status_handler_t* %176, %struct.TYPE_22__* %177, %struct.TYPE_23__* byval(%struct.TYPE_23__) align 8 %16)
  store i32 %178, i32* %15, align 4
  %179 = load i32, i32* %15, align 4
  store i32 %179, i32* %3, align 4
  br label %182

180:                                              ; preds = %110
  br label %181

181:                                              ; preds = %180
  store i32 -1, i32* %3, align 4
  br label %182

182:                                              ; preds = %181, %175, %84
  %183 = load i32, i32* %3, align 4
  ret i32 %183
}

declare dso_local void @h2o_iovec_init(%struct.TYPE_23__* sret, i8*, ...) #1

declare dso_local i64 @h2o_memis(i8*, i32, i8*, ...) #1

declare dso_local i32 @H2O_STRLIT(i8*) #1

declare dso_local i8* @getenv(i8*) #1

declare dso_local i8* @H2O_TO_STR(i32) #1

declare dso_local void @h2o_concat(%struct.TYPE_23__* sret, i32*, %struct.TYPE_23__* byval(%struct.TYPE_23__) align 8, %struct.TYPE_23__* byval(%struct.TYPE_23__) align 8) #1

declare dso_local i32 @strlen(i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @h2o_add_header(i32*, i32*, i32, i32*, i32) #1

declare dso_local i32 @h2o_file_send(%struct.TYPE_22__*, i32, i8*, i32, %struct.TYPE_23__* byval(%struct.TYPE_23__) align 8, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @on_req_json(%struct.st_h2o_root_status_handler_t*, %struct.TYPE_22__*, %struct.TYPE_23__* byval(%struct.TYPE_23__) align 8) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
