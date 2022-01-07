; ModuleID = '/home/carl/AnghaBench/h2o/lib/handler/extr_fastcgi.c_fill_headers.c'
source_filename = "/home/carl/AnghaBench/h2o/lib/handler/extr_fastcgi.c_fill_headers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i64 }
%struct.TYPE_19__ = type { %struct.TYPE_17__, i32 }
%struct.TYPE_17__ = type { i32, i8*, i32, i32 }
%struct.phr_header = type { i32*, i32, i8*, i32 }
%struct.TYPE_20__ = type { i8*, i32 }

@.str = private unnamed_addr constant [3 x i8] c"OK\00", align 1
@SIZE_MAX = common dso_local global i32 0, align 4
@H2O_TOKEN_CONTENT_LENGTH = common dso_local global %struct.TYPE_18__* null, align 8
@MODULE_NAME = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [51 x i8] c"received multiple content-length headers from fcgi\00", align 1
@.str.2 = private unnamed_addr constant [59 x i8] c"failed to parse content-length header sent from fcgi: %.*s\00", align 1
@H2O_TOKEN_LINK = common dso_local global %struct.TYPE_18__* null, align 8
@.str.3 = private unnamed_addr constant [7 x i8] c"status\00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"failed to parse Status header, got: %.*s\00", align 1
@H2O_TOKEN_DATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_19__*, %struct.phr_header*, i64)* @fill_headers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fill_headers(%struct.TYPE_19__* %0, %struct.phr_header* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_19__*, align 8
  %6 = alloca %struct.phr_header*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_18__*, align 8
  %10 = alloca %struct.TYPE_20__, align 8
  %11 = alloca %struct.TYPE_20__, align 8
  %12 = alloca %struct.TYPE_20__, align 8
  %13 = alloca %struct.TYPE_20__, align 8
  %14 = alloca %struct.TYPE_20__, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %5, align 8
  store %struct.phr_header* %1, %struct.phr_header** %6, align 8
  store i64 %2, i64* %7, align 8
  %15 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %16, i32 0, i32 0
  store i32 200, i32* %17, align 8
  %18 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %19, i32 0, i32 1
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8** %20, align 8
  %21 = load i32, i32* @SIZE_MAX, align 4
  %22 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %23, i32 0, i32 3
  store i32 %21, i32* %24, align 4
  store i64 0, i64* %8, align 8
  br label %25

25:                                               ; preds = %344, %3
  %26 = load i64, i64* %8, align 8
  %27 = load i64, i64* %7, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %347

29:                                               ; preds = %25
  %30 = load %struct.phr_header*, %struct.phr_header** %6, align 8
  %31 = load i64, i64* %8, align 8
  %32 = getelementptr inbounds %struct.phr_header, %struct.phr_header* %30, i64 %31
  %33 = getelementptr inbounds %struct.phr_header, %struct.phr_header* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = bitcast i32* %34 to i8*
  %36 = load %struct.phr_header*, %struct.phr_header** %6, align 8
  %37 = load i64, i64* %8, align 8
  %38 = getelementptr inbounds %struct.phr_header, %struct.phr_header* %36, i64 %37
  %39 = getelementptr inbounds %struct.phr_header, %struct.phr_header* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @h2o_strtolower(i8* %35, i32 %40)
  %42 = load %struct.phr_header*, %struct.phr_header** %6, align 8
  %43 = load i64, i64* %8, align 8
  %44 = getelementptr inbounds %struct.phr_header, %struct.phr_header* %42, i64 %43
  %45 = getelementptr inbounds %struct.phr_header, %struct.phr_header* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = load %struct.phr_header*, %struct.phr_header** %6, align 8
  %48 = load i64, i64* %8, align 8
  %49 = getelementptr inbounds %struct.phr_header, %struct.phr_header* %47, i64 %48
  %50 = getelementptr inbounds %struct.phr_header, %struct.phr_header* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = call %struct.TYPE_18__* @h2o_lookup_token(i32* %46, i32 %51)
  store %struct.TYPE_18__* %52, %struct.TYPE_18__** %9, align 8
  %53 = icmp ne %struct.TYPE_18__* %52, null
  br i1 %53, label %54, label %162

54:                                               ; preds = %29
  %55 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %56 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %54
  br label %161

61:                                               ; preds = %54
  %62 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %63 = load %struct.TYPE_18__*, %struct.TYPE_18__** @H2O_TOKEN_CONTENT_LENGTH, align 8
  %64 = icmp eq %struct.TYPE_18__* %62, %63
  br i1 %64, label %65, label %108

65:                                               ; preds = %61
  %66 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @SIZE_MAX, align 4
  %71 = icmp ne i32 %69, %70
  br i1 %71, label %72, label %76

72:                                               ; preds = %65
  %73 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %74 = load i32, i32* @MODULE_NAME, align 4
  %75 = call i32 (%struct.TYPE_19__*, i32, i8*, ...) @h2o_req_log_error(%struct.TYPE_19__* %73, i32 %74, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %358

76:                                               ; preds = %65
  %77 = load %struct.phr_header*, %struct.phr_header** %6, align 8
  %78 = load i64, i64* %8, align 8
  %79 = getelementptr inbounds %struct.phr_header, %struct.phr_header* %77, i64 %78
  %80 = getelementptr inbounds %struct.phr_header, %struct.phr_header* %79, i32 0, i32 2
  %81 = load i8*, i8** %80, align 8
  %82 = load %struct.phr_header*, %struct.phr_header** %6, align 8
  %83 = load i64, i64* %8, align 8
  %84 = getelementptr inbounds %struct.phr_header, %struct.phr_header* %82, i64 %83
  %85 = getelementptr inbounds %struct.phr_header, %struct.phr_header* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @h2o_strtosize(i8* %81, i32 %86)
  %88 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %89, i32 0, i32 3
  store i32 %87, i32* %90, align 4
  %91 = load i32, i32* @SIZE_MAX, align 4
  %92 = icmp eq i32 %87, %91
  br i1 %92, label %93, label %107

93:                                               ; preds = %76
  %94 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %95 = load i32, i32* @MODULE_NAME, align 4
  %96 = load %struct.phr_header*, %struct.phr_header** %6, align 8
  %97 = load i64, i64* %8, align 8
  %98 = getelementptr inbounds %struct.phr_header, %struct.phr_header* %96, i64 %97
  %99 = getelementptr inbounds %struct.phr_header, %struct.phr_header* %98, i32 0, i32 3
  %100 = load i32, i32* %99, align 8
  %101 = load %struct.phr_header*, %struct.phr_header** %6, align 8
  %102 = load i64, i64* %8, align 8
  %103 = getelementptr inbounds %struct.phr_header, %struct.phr_header* %101, i64 %102
  %104 = getelementptr inbounds %struct.phr_header, %struct.phr_header* %103, i32 0, i32 2
  %105 = load i8*, i8** %104, align 8
  %106 = call i32 (%struct.TYPE_19__*, i32, i8*, ...) @h2o_req_log_error(%struct.TYPE_19__* %94, i32 %95, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.2, i64 0, i64 0), i32 %100, i8* %105)
  store i32 -1, i32* %4, align 4
  br label %358

107:                                              ; preds = %76
  br label %160

108:                                              ; preds = %61
  %109 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %110 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %109, i32 0, i32 1
  %111 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %112 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %112, i32 0, i32 2
  %114 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %115 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %116 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %115, i32 0, i32 1
  %117 = load %struct.phr_header*, %struct.phr_header** %6, align 8
  %118 = load i64, i64* %8, align 8
  %119 = getelementptr inbounds %struct.phr_header, %struct.phr_header* %117, i64 %118
  %120 = getelementptr inbounds %struct.phr_header, %struct.phr_header* %119, i32 0, i32 2
  %121 = load i8*, i8** %120, align 8
  %122 = bitcast i8* %121 to i32*
  %123 = load %struct.phr_header*, %struct.phr_header** %6, align 8
  %124 = load i64, i64* %8, align 8
  %125 = getelementptr inbounds %struct.phr_header, %struct.phr_header* %123, i64 %124
  %126 = getelementptr inbounds %struct.phr_header, %struct.phr_header* %125, i32 0, i32 3
  %127 = load i32, i32* %126, align 8
  %128 = call { i8*, i32 } @h2o_strdup(i32* %116, i32* %122, i32 %127)
  %129 = bitcast %struct.TYPE_20__* %10 to { i8*, i32 }*
  %130 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %129, i32 0, i32 0
  %131 = extractvalue { i8*, i32 } %128, 0
  store i8* %131, i8** %130, align 8
  %132 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %129, i32 0, i32 1
  %133 = extractvalue { i8*, i32 } %128, 1
  store i32 %133, i32* %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %10, i32 0, i32 0
  %135 = load i8*, i8** %134, align 8
  %136 = load %struct.phr_header*, %struct.phr_header** %6, align 8
  %137 = load i64, i64* %8, align 8
  %138 = getelementptr inbounds %struct.phr_header, %struct.phr_header* %136, i64 %137
  %139 = getelementptr inbounds %struct.phr_header, %struct.phr_header* %138, i32 0, i32 3
  %140 = load i32, i32* %139, align 8
  %141 = call i32 @h2o_add_header(i32* %110, i32* %113, %struct.TYPE_18__* %114, i32* null, i8* %135, i32 %140)
  %142 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %143 = load %struct.TYPE_18__*, %struct.TYPE_18__** @H2O_TOKEN_LINK, align 8
  %144 = icmp eq %struct.TYPE_18__* %142, %143
  br i1 %144, label %145, label %159

145:                                              ; preds = %108
  %146 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %147 = load %struct.phr_header*, %struct.phr_header** %6, align 8
  %148 = load i64, i64* %8, align 8
  %149 = getelementptr inbounds %struct.phr_header, %struct.phr_header* %147, i64 %148
  %150 = getelementptr inbounds %struct.phr_header, %struct.phr_header* %149, i32 0, i32 2
  %151 = load i8*, i8** %150, align 8
  %152 = bitcast i8* %151 to i32*
  %153 = load %struct.phr_header*, %struct.phr_header** %6, align 8
  %154 = load i64, i64* %8, align 8
  %155 = getelementptr inbounds %struct.phr_header, %struct.phr_header* %153, i64 %154
  %156 = getelementptr inbounds %struct.phr_header, %struct.phr_header* %155, i32 0, i32 3
  %157 = load i32, i32* %156, align 8
  %158 = call i32 @h2o_push_path_in_link_header(%struct.TYPE_19__* %146, i32* %152, i32 %157)
  br label %159

159:                                              ; preds = %145, %108
  br label %160

160:                                              ; preds = %159, %107
  br label %161

161:                                              ; preds = %160, %60
  br label %343

162:                                              ; preds = %29
  %163 = load %struct.phr_header*, %struct.phr_header** %6, align 8
  %164 = load i64, i64* %8, align 8
  %165 = getelementptr inbounds %struct.phr_header, %struct.phr_header* %163, i64 %164
  %166 = getelementptr inbounds %struct.phr_header, %struct.phr_header* %165, i32 0, i32 0
  %167 = load i32*, i32** %166, align 8
  %168 = load %struct.phr_header*, %struct.phr_header** %6, align 8
  %169 = load i64, i64* %8, align 8
  %170 = getelementptr inbounds %struct.phr_header, %struct.phr_header* %168, i64 %169
  %171 = getelementptr inbounds %struct.phr_header, %struct.phr_header* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 8
  %173 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %174 = call i64 @h2o_memis(i32* %167, i32 %172, i32 %173)
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %176, label %290

176:                                              ; preds = %162
  %177 = load %struct.phr_header*, %struct.phr_header** %6, align 8
  %178 = load i64, i64* %8, align 8
  %179 = getelementptr inbounds %struct.phr_header, %struct.phr_header* %177, i64 %178
  %180 = getelementptr inbounds %struct.phr_header, %struct.phr_header* %179, i32 0, i32 2
  %181 = load i8*, i8** %180, align 8
  %182 = bitcast i8* %181 to i32*
  %183 = load %struct.phr_header*, %struct.phr_header** %6, align 8
  %184 = load i64, i64* %8, align 8
  %185 = getelementptr inbounds %struct.phr_header, %struct.phr_header* %183, i64 %184
  %186 = getelementptr inbounds %struct.phr_header, %struct.phr_header* %185, i32 0, i32 3
  %187 = load i32, i32* %186, align 8
  %188 = call { i8*, i32 } @h2o_iovec_init(i32* %182, i32 %187)
  %189 = bitcast %struct.TYPE_20__* %11 to { i8*, i32 }*
  %190 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %189, i32 0, i32 0
  %191 = extractvalue { i8*, i32 } %188, 0
  store i8* %191, i8** %190, align 8
  %192 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %189, i32 0, i32 1
  %193 = extractvalue { i8*, i32 } %188, 1
  store i32 %193, i32* %192, align 8
  %194 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %11, i32 0, i32 1
  %195 = load i32, i32* %194, align 8
  %196 = icmp slt i32 %195, 3
  br i1 %196, label %229, label %197

197:                                              ; preds = %176
  %198 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %11, i32 0, i32 0
  %199 = load i8*, i8** %198, align 8
  %200 = getelementptr inbounds i8, i8* %199, i64 0
  %201 = load i8, i8* %200, align 1
  %202 = call i64 @_isdigit(i8 signext %201)
  %203 = icmp ne i64 %202, 0
  br i1 %203, label %204, label %229

204:                                              ; preds = %197
  %205 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %11, i32 0, i32 0
  %206 = load i8*, i8** %205, align 8
  %207 = getelementptr inbounds i8, i8* %206, i64 1
  %208 = load i8, i8* %207, align 1
  %209 = call i64 @_isdigit(i8 signext %208)
  %210 = icmp ne i64 %209, 0
  br i1 %210, label %211, label %229

211:                                              ; preds = %204
  %212 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %11, i32 0, i32 0
  %213 = load i8*, i8** %212, align 8
  %214 = getelementptr inbounds i8, i8* %213, i64 2
  %215 = load i8, i8* %214, align 1
  %216 = call i64 @_isdigit(i8 signext %215)
  %217 = icmp ne i64 %216, 0
  br i1 %217, label %218, label %229

218:                                              ; preds = %211
  %219 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %11, i32 0, i32 1
  %220 = load i32, i32* %219, align 8
  %221 = icmp sge i32 %220, 4
  br i1 %221, label %222, label %237

222:                                              ; preds = %218
  %223 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %11, i32 0, i32 0
  %224 = load i8*, i8** %223, align 8
  %225 = getelementptr inbounds i8, i8* %224, i64 3
  %226 = load i8, i8* %225, align 1
  %227 = sext i8 %226 to i32
  %228 = icmp ne i32 %227, 32
  br i1 %228, label %229, label %237

229:                                              ; preds = %222, %211, %204, %197, %176
  %230 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %231 = load i32, i32* @MODULE_NAME, align 4
  %232 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %11, i32 0, i32 1
  %233 = load i32, i32* %232, align 8
  %234 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %11, i32 0, i32 0
  %235 = load i8*, i8** %234, align 8
  %236 = call i32 (%struct.TYPE_19__*, i32, i8*, ...) @h2o_req_log_error(%struct.TYPE_19__* %230, i32 %231, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0), i32 %233, i8* %235)
  store i32 -1, i32* %4, align 4
  br label %358

237:                                              ; preds = %222, %218
  %238 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %11, i32 0, i32 0
  %239 = load i8*, i8** %238, align 8
  %240 = getelementptr inbounds i8, i8* %239, i64 0
  %241 = load i8, i8* %240, align 1
  %242 = sext i8 %241 to i32
  %243 = sub nsw i32 %242, 48
  %244 = mul nsw i32 %243, 100
  %245 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %11, i32 0, i32 0
  %246 = load i8*, i8** %245, align 8
  %247 = getelementptr inbounds i8, i8* %246, i64 1
  %248 = load i8, i8* %247, align 1
  %249 = sext i8 %248 to i32
  %250 = sub nsw i32 %249, 48
  %251 = mul nsw i32 %250, 10
  %252 = add nsw i32 %244, %251
  %253 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %11, i32 0, i32 0
  %254 = load i8*, i8** %253, align 8
  %255 = getelementptr inbounds i8, i8* %254, i64 2
  %256 = load i8, i8* %255, align 1
  %257 = sext i8 %256 to i32
  %258 = sub nsw i32 %257, 48
  %259 = add nsw i32 %252, %258
  %260 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %261 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %260, i32 0, i32 0
  %262 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %261, i32 0, i32 0
  store i32 %259, i32* %262, align 8
  %263 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %11, i32 0, i32 1
  %264 = load i32, i32* %263, align 8
  %265 = icmp sge i32 %264, 5
  br i1 %265, label %266, label %284

266:                                              ; preds = %237
  %267 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %268 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %267, i32 0, i32 1
  %269 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %11, i32 0, i32 0
  %270 = load i8*, i8** %269, align 8
  %271 = getelementptr inbounds i8, i8* %270, i64 4
  %272 = bitcast i8* %271 to i32*
  %273 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %11, i32 0, i32 1
  %274 = load i32, i32* %273, align 8
  %275 = sub nsw i32 %274, 4
  %276 = call { i8*, i32 } @h2o_strdup(i32* %268, i32* %272, i32 %275)
  %277 = bitcast %struct.TYPE_20__* %12 to { i8*, i32 }*
  %278 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %277, i32 0, i32 0
  %279 = extractvalue { i8*, i32 } %276, 0
  store i8* %279, i8** %278, align 8
  %280 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %277, i32 0, i32 1
  %281 = extractvalue { i8*, i32 } %276, 1
  store i32 %281, i32* %280, align 8
  %282 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %12, i32 0, i32 0
  %283 = load i8*, i8** %282, align 8
  br label %285

284:                                              ; preds = %237
  br label %285

285:                                              ; preds = %284, %266
  %286 = phi i8* [ %283, %266 ], [ getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), %284 ]
  %287 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %288 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %287, i32 0, i32 0
  %289 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %288, i32 0, i32 1
  store i8* %286, i8** %289, align 8
  br label %342

290:                                              ; preds = %162
  %291 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %292 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %291, i32 0, i32 1
  %293 = load %struct.phr_header*, %struct.phr_header** %6, align 8
  %294 = load i64, i64* %8, align 8
  %295 = getelementptr inbounds %struct.phr_header, %struct.phr_header* %293, i64 %294
  %296 = getelementptr inbounds %struct.phr_header, %struct.phr_header* %295, i32 0, i32 0
  %297 = load i32*, i32** %296, align 8
  %298 = load %struct.phr_header*, %struct.phr_header** %6, align 8
  %299 = load i64, i64* %8, align 8
  %300 = getelementptr inbounds %struct.phr_header, %struct.phr_header* %298, i64 %299
  %301 = getelementptr inbounds %struct.phr_header, %struct.phr_header* %300, i32 0, i32 1
  %302 = load i32, i32* %301, align 8
  %303 = call { i8*, i32 } @h2o_strdup(i32* %292, i32* %297, i32 %302)
  %304 = bitcast %struct.TYPE_20__* %13 to { i8*, i32 }*
  %305 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %304, i32 0, i32 0
  %306 = extractvalue { i8*, i32 } %303, 0
  store i8* %306, i8** %305, align 8
  %307 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %304, i32 0, i32 1
  %308 = extractvalue { i8*, i32 } %303, 1
  store i32 %308, i32* %307, align 8
  %309 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %310 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %309, i32 0, i32 1
  %311 = load %struct.phr_header*, %struct.phr_header** %6, align 8
  %312 = load i64, i64* %8, align 8
  %313 = getelementptr inbounds %struct.phr_header, %struct.phr_header* %311, i64 %312
  %314 = getelementptr inbounds %struct.phr_header, %struct.phr_header* %313, i32 0, i32 2
  %315 = load i8*, i8** %314, align 8
  %316 = bitcast i8* %315 to i32*
  %317 = load %struct.phr_header*, %struct.phr_header** %6, align 8
  %318 = load i64, i64* %8, align 8
  %319 = getelementptr inbounds %struct.phr_header, %struct.phr_header* %317, i64 %318
  %320 = getelementptr inbounds %struct.phr_header, %struct.phr_header* %319, i32 0, i32 3
  %321 = load i32, i32* %320, align 8
  %322 = call { i8*, i32 } @h2o_strdup(i32* %310, i32* %316, i32 %321)
  %323 = bitcast %struct.TYPE_20__* %14 to { i8*, i32 }*
  %324 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %323, i32 0, i32 0
  %325 = extractvalue { i8*, i32 } %322, 0
  store i8* %325, i8** %324, align 8
  %326 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %323, i32 0, i32 1
  %327 = extractvalue { i8*, i32 } %322, 1
  store i32 %327, i32* %326, align 8
  %328 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %329 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %328, i32 0, i32 1
  %330 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %331 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %330, i32 0, i32 0
  %332 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %331, i32 0, i32 2
  %333 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %13, i32 0, i32 0
  %334 = load i8*, i8** %333, align 8
  %335 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %13, i32 0, i32 1
  %336 = load i32, i32* %335, align 8
  %337 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %14, i32 0, i32 0
  %338 = load i8*, i8** %337, align 8
  %339 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %14, i32 0, i32 1
  %340 = load i32, i32* %339, align 8
  %341 = call i32 @h2o_add_header_by_str(i32* %329, i32* %332, i8* %334, i32 %336, i32 0, i32* null, i8* %338, i32 %340)
  br label %342

342:                                              ; preds = %290, %285
  br label %343

343:                                              ; preds = %342, %161
  br label %344

344:                                              ; preds = %343
  %345 = load i64, i64* %8, align 8
  %346 = add i64 %345, 1
  store i64 %346, i64* %8, align 8
  br label %25

347:                                              ; preds = %25
  %348 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %349 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %348, i32 0, i32 0
  %350 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %349, i32 0, i32 2
  %351 = load i32, i32* @H2O_TOKEN_DATE, align 4
  %352 = call i32 @h2o_find_header(i32* %350, i32 %351, i32 -1)
  %353 = icmp eq i32 %352, -1
  br i1 %353, label %354, label %357

354:                                              ; preds = %347
  %355 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %356 = call i32 @h2o_resp_add_date_header(%struct.TYPE_19__* %355)
  br label %357

357:                                              ; preds = %354, %347
  store i32 0, i32* %4, align 4
  br label %358

358:                                              ; preds = %357, %229, %93, %72
  %359 = load i32, i32* %4, align 4
  ret i32 %359
}

declare dso_local i32 @h2o_strtolower(i8*, i32) #1

declare dso_local %struct.TYPE_18__* @h2o_lookup_token(i32*, i32) #1

declare dso_local i32 @h2o_req_log_error(%struct.TYPE_19__*, i32, i8*, ...) #1

declare dso_local i32 @h2o_strtosize(i8*, i32) #1

declare dso_local i32 @h2o_add_header(i32*, i32*, %struct.TYPE_18__*, i32*, i8*, i32) #1

declare dso_local { i8*, i32 } @h2o_strdup(i32*, i32*, i32) #1

declare dso_local i32 @h2o_push_path_in_link_header(%struct.TYPE_19__*, i32*, i32) #1

declare dso_local i64 @h2o_memis(i32*, i32, i32) #1

declare dso_local i32 @H2O_STRLIT(i8*) #1

declare dso_local { i8*, i32 } @h2o_iovec_init(i32*, i32) #1

declare dso_local i64 @_isdigit(i8 signext) #1

declare dso_local i32 @h2o_add_header_by_str(i32*, i32*, i8*, i32, i32, i32*, i8*, i32) #1

declare dso_local i32 @h2o_find_header(i32*, i32, i32) #1

declare dso_local i32 @h2o_resp_add_date_header(%struct.TYPE_19__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
