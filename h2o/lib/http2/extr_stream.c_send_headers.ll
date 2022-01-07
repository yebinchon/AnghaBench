; ModuleID = '/home/carl/AnghaBench/h2o/lib/http2/extr_stream.c_send_headers.c'
source_filename = "/home/carl/AnghaBench/h2o/lib/http2/extr_stream.c_send_headers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_52__ = type { %struct.TYPE_58__, %struct.TYPE_61__, %struct.TYPE_54__, i32, i32, %struct.TYPE_46__, i32* }
%struct.TYPE_58__ = type { i32, i32 }
%struct.TYPE_61__ = type { %struct.TYPE_60__* }
%struct.TYPE_60__ = type { %struct.TYPE_57__*, i32 }
%struct.TYPE_57__ = type { i32 }
%struct.TYPE_54__ = type { i32 }
%struct.TYPE_46__ = type { %struct.TYPE_49__, %struct.TYPE_45__, %struct.TYPE_44__ }
%struct.TYPE_49__ = type { i64 }
%struct.TYPE_45__ = type { i32, i32 }
%struct.TYPE_44__ = type { i64 }
%struct.TYPE_51__ = type { i32, %struct.TYPE_48__, i32, %struct.TYPE_53__, i32, i32* }
%struct.TYPE_48__ = type { i64 }
%struct.TYPE_53__ = type { %struct.TYPE_47__, i32, i64, %struct.TYPE_42__*, %struct.TYPE_43__, %struct.TYPE_55__, %struct.TYPE_63__, %struct.TYPE_59__, i64 }
%struct.TYPE_47__ = type { i32, %struct.TYPE_56__, i32 }
%struct.TYPE_56__ = type { i32, i32 }
%struct.TYPE_42__ = type { %struct.TYPE_41__ }
%struct.TYPE_41__ = type { i64, %struct.TYPE_40__ }
%struct.TYPE_40__ = type { i64, i64 }
%struct.TYPE_43__ = type { i32, i32 }
%struct.TYPE_55__ = type { %struct.TYPE_39__* }
%struct.TYPE_39__ = type { %struct.TYPE_50__ }
%struct.TYPE_50__ = type { i32, i32 }
%struct.TYPE_63__ = type { i32, i32, %struct.TYPE_62__* }
%struct.TYPE_62__ = type { i32 }
%struct.TYPE_59__ = type { i32 }

@H2O_TOKEN_ETAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"://\00", align 1
@H2O_CACHE_DIGESTS_STATE_FRESH = common dso_local global i64 0, align 8
@H2O_TOKEN_SET_COOKIE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [59 x i8] c"h2o_casper=; Path=/; Expires=Sat, 01 Jan 2000 00:00:00 GMT\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"x-http2-push\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"pushed\00", align 1
@H2O_HTTP2_STREAM_STATE_SEND_BODY = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [10 x i8] c"cancelled\00", align 1
@H2O_HTTP2_STREAM_STATE_END_STREAM = common dso_local global i32 0, align 4
@H2O_HTTP2_ERROR_INTERNAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_52__*, %struct.TYPE_51__*)* @send_headers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @send_headers(%struct.TYPE_52__* %0, %struct.TYPE_51__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_52__*, align 8
  %5 = alloca %struct.TYPE_51__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_50__, align 4
  %8 = alloca %struct.TYPE_50__*, align 8
  %9 = alloca %struct.TYPE_50__, align 4
  store %struct.TYPE_52__* %0, %struct.TYPE_52__** %4, align 8
  store %struct.TYPE_51__* %1, %struct.TYPE_51__** %5, align 8
  %10 = load %struct.TYPE_51__*, %struct.TYPE_51__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %10, i32 0, i32 3
  %12 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp eq i32 %14, 425
  br i1 %15, label %16, label %26

16:                                               ; preds = %2
  %17 = load %struct.TYPE_51__*, %struct.TYPE_51__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %17, i32 0, i32 3
  %19 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %18, i32 0, i32 8
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %16
  %23 = load %struct.TYPE_52__*, %struct.TYPE_52__** %4, align 8
  %24 = load %struct.TYPE_51__*, %struct.TYPE_51__** %5, align 8
  %25 = call i32 @h2o_http2_conn_register_for_replay(%struct.TYPE_52__* %23, %struct.TYPE_51__* %24)
  store i32 -1, i32* %3, align 4
  br label %436

26:                                               ; preds = %16, %2
  %27 = load %struct.TYPE_52__*, %struct.TYPE_52__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_60__*, %struct.TYPE_60__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @h2o_gettimeofday(i32 %32)
  %34 = load %struct.TYPE_51__*, %struct.TYPE_51__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %34, i32 0, i32 3
  %36 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %35, i32 0, i32 7
  %37 = getelementptr inbounds %struct.TYPE_59__, %struct.TYPE_59__* %36, i32 0, i32 0
  store i32 %33, i32* %37, align 8
  %38 = load %struct.TYPE_51__*, %struct.TYPE_51__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i64 @h2o_http2_stream_is_push(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %118

43:                                               ; preds = %26
  %44 = load %struct.TYPE_51__*, %struct.TYPE_51__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %44, i32 0, i32 3
  %46 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp sle i32 400, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %43
  br label %397

51:                                               ; preds = %43
  %52 = load %struct.TYPE_51__*, %struct.TYPE_51__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %52, i32 0, i32 5
  %54 = load i32*, i32** %53, align 8
  %55 = icmp ne i32* %54, null
  br i1 %55, label %56, label %117

56:                                               ; preds = %51
  %57 = load %struct.TYPE_51__*, %struct.TYPE_51__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %57, i32 0, i32 3
  %59 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %58, i32 0, i32 5
  %60 = load i32, i32* @H2O_TOKEN_ETAG, align 4
  %61 = call i32 @h2o_find_header(%struct.TYPE_55__* %59, i32 %60, i32 -1)
  store i32 %61, i32* %6, align 4
  %62 = load i32, i32* %6, align 4
  %63 = icmp ne i32 %62, -1
  br i1 %63, label %64, label %116

64:                                               ; preds = %56
  %65 = load %struct.TYPE_51__*, %struct.TYPE_51__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %65, i32 0, i32 3
  %67 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %66, i32 0, i32 1
  %68 = load %struct.TYPE_51__*, %struct.TYPE_51__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %68, i32 0, i32 3
  %70 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %69, i32 0, i32 6
  %71 = getelementptr inbounds %struct.TYPE_63__, %struct.TYPE_63__* %70, i32 0, i32 2
  %72 = load %struct.TYPE_62__*, %struct.TYPE_62__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_62__, %struct.TYPE_62__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %76 = call i32 @h2o_iovec_init(i32 %75)
  %77 = load %struct.TYPE_51__*, %struct.TYPE_51__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %77, i32 0, i32 3
  %79 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %78, i32 0, i32 6
  %80 = getelementptr inbounds %struct.TYPE_63__, %struct.TYPE_63__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.TYPE_51__*, %struct.TYPE_51__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %82, i32 0, i32 3
  %84 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %83, i32 0, i32 6
  %85 = getelementptr inbounds %struct.TYPE_63__, %struct.TYPE_63__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = call i64 @h2o_concat(i32* %67, i32 %74, i32 %76, i32 %81, i32 %86)
  %88 = bitcast %struct.TYPE_50__* %7 to i64*
  store i64 %87, i64* %88, align 4
  %89 = load %struct.TYPE_51__*, %struct.TYPE_51__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %89, i32 0, i32 3
  %91 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %90, i32 0, i32 5
  %92 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %91, i32 0, i32 0
  %93 = load %struct.TYPE_39__*, %struct.TYPE_39__** %92, align 8
  %94 = load i32, i32* %6, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %93, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %96, i32 0, i32 0
  store %struct.TYPE_50__* %97, %struct.TYPE_50__** %8, align 8
  %98 = load %struct.TYPE_51__*, %struct.TYPE_51__** %5, align 8
  %99 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %98, i32 0, i32 5
  %100 = load i32*, i32** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %7, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %7, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.TYPE_50__*, %struct.TYPE_50__** %8, align 8
  %106 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.TYPE_50__*, %struct.TYPE_50__** %8, align 8
  %109 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = call i64 @h2o_cache_digests_lookup_by_url_and_etag(i32* %100, i32 %102, i32 %104, i32 %107, i32 %110)
  %112 = load i64, i64* @H2O_CACHE_DIGESTS_STATE_FRESH, align 8
  %113 = icmp eq i64 %111, %112
  br i1 %113, label %114, label %115

114:                                              ; preds = %64
  br label %397

115:                                              ; preds = %64
  br label %116

116:                                              ; preds = %115, %56
  br label %117

117:                                              ; preds = %116, %51
  br label %118

118:                                              ; preds = %117, %26
  %119 = load %struct.TYPE_51__*, %struct.TYPE_51__** %5, align 8
  %120 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %119, i32 0, i32 5
  %121 = load i32*, i32** %120, align 8
  %122 = icmp ne i32* %121, null
  br i1 %122, label %123, label %144

123:                                              ; preds = %118
  %124 = load %struct.TYPE_51__*, %struct.TYPE_51__** %5, align 8
  %125 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %124, i32 0, i32 3
  %126 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %125, i32 0, i32 3
  %127 = load %struct.TYPE_42__*, %struct.TYPE_42__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %128, i32 0, i32 1
  %130 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %144

133:                                              ; preds = %123
  %134 = load %struct.TYPE_51__*, %struct.TYPE_51__** %5, align 8
  %135 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %134, i32 0, i32 3
  %136 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %135, i32 0, i32 1
  %137 = load %struct.TYPE_51__*, %struct.TYPE_51__** %5, align 8
  %138 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %137, i32 0, i32 3
  %139 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %139, i32 0, i32 1
  %141 = load i32, i32* @H2O_TOKEN_SET_COOKIE, align 4
  %142 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i64 0, i64 0))
  %143 = call i32 (i32*, %struct.TYPE_56__*, i32, i32*, i32, ...) @h2o_add_header(i32* %136, %struct.TYPE_56__* %140, i32 %141, i32* null, i32 %142)
  br label %144

144:                                              ; preds = %133, %123, %118
  %145 = load %struct.TYPE_52__*, %struct.TYPE_52__** %4, align 8
  %146 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %145, i32 0, i32 6
  %147 = load i32*, i32** %146, align 8
  %148 = icmp ne i32* %147, null
  br i1 %148, label %149, label %258

149:                                              ; preds = %144
  %150 = load %struct.TYPE_51__*, %struct.TYPE_51__** %5, align 8
  %151 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %150, i32 0, i32 3
  %152 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %151, i32 0, i32 3
  %153 = load %struct.TYPE_42__*, %struct.TYPE_42__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %154, i32 0, i32 1
  %156 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %155, i32 0, i32 1
  %157 = load i64, i64* %156, align 8
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %164, label %159

159:                                              ; preds = %149
  %160 = load %struct.TYPE_51__*, %struct.TYPE_51__** %5, align 8
  %161 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %160, i32 0, i32 3
  %162 = call i64 @is_blocking_asset(%struct.TYPE_53__* %161)
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %189

164:                                              ; preds = %159, %149
  %165 = load %struct.TYPE_52__*, %struct.TYPE_52__** %4, align 8
  %166 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %165, i32 0, i32 6
  %167 = load i32*, i32** %166, align 8
  %168 = load %struct.TYPE_51__*, %struct.TYPE_51__** %5, align 8
  %169 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %168, i32 0, i32 3
  %170 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %169, i32 0, i32 4
  %171 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 4
  %173 = load %struct.TYPE_51__*, %struct.TYPE_51__** %5, align 8
  %174 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %173, i32 0, i32 3
  %175 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %174, i32 0, i32 4
  %176 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 8
  %178 = call i64 @h2o_http2_casper_lookup(i32* %167, i32 %172, i32 %177, i32 1)
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %180, label %188

180:                                              ; preds = %164
  %181 = load %struct.TYPE_51__*, %struct.TYPE_51__** %5, align 8
  %182 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 8
  %184 = call i64 @h2o_http2_stream_is_push(i32 %183)
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %186, label %187

186:                                              ; preds = %180
  br label %397

187:                                              ; preds = %180
  br label %188

188:                                              ; preds = %187, %164
  br label %189

189:                                              ; preds = %188, %159
  %190 = load %struct.TYPE_51__*, %struct.TYPE_51__** %5, align 8
  %191 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %190, i32 0, i32 5
  %192 = load i32*, i32** %191, align 8
  %193 = icmp ne i32* %192, null
  br i1 %193, label %194, label %195

194:                                              ; preds = %189
  br label %257

195:                                              ; preds = %189
  %196 = load %struct.TYPE_51__*, %struct.TYPE_51__** %5, align 8
  %197 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 8
  %199 = call i64 @h2o_http2_stream_is_push(i32 %198)
  %200 = icmp ne i64 %199, 0
  br i1 %200, label %201, label %223

201:                                              ; preds = %195
  %202 = load %struct.TYPE_52__*, %struct.TYPE_52__** %4, align 8
  %203 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %202, i32 0, i32 5
  %204 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %203, i32 0, i32 2
  %205 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %204, i32 0, i32 0
  %206 = load i64, i64* %205, align 8
  %207 = icmp eq i64 %206, 0
  br i1 %207, label %208, label %221

208:                                              ; preds = %201
  %209 = load %struct.TYPE_52__*, %struct.TYPE_52__** %4, align 8
  %210 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %209, i32 0, i32 5
  %211 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %210, i32 0, i32 1
  %212 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 8
  %214 = load %struct.TYPE_52__*, %struct.TYPE_52__** %4, align 8
  %215 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %214, i32 0, i32 5
  %216 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %215, i32 0, i32 1
  %217 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %216, i32 0, i32 1
  %218 = load i32, i32* %217, align 4
  %219 = sub nsw i32 %213, %218
  %220 = icmp eq i32 %219, 1
  br i1 %220, label %222, label %221

221:                                              ; preds = %208, %201
  br label %257

222:                                              ; preds = %208
  br label %238

223:                                              ; preds = %195
  %224 = load %struct.TYPE_52__*, %struct.TYPE_52__** %4, align 8
  %225 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %224, i32 0, i32 5
  %226 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %225, i32 0, i32 1
  %227 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %226, i32 0, i32 0
  %228 = load i32, i32* %227, align 8
  %229 = load %struct.TYPE_52__*, %struct.TYPE_52__** %4, align 8
  %230 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %229, i32 0, i32 5
  %231 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %230, i32 0, i32 1
  %232 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %231, i32 0, i32 1
  %233 = load i32, i32* %232, align 4
  %234 = sub nsw i32 %228, %233
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %236, label %237

236:                                              ; preds = %223
  br label %257

237:                                              ; preds = %223
  br label %238

238:                                              ; preds = %237, %222
  %239 = load %struct.TYPE_52__*, %struct.TYPE_52__** %4, align 8
  %240 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %239, i32 0, i32 6
  %241 = load i32*, i32** %240, align 8
  %242 = call i64 @h2o_http2_casper_get_cookie(i32* %241)
  %243 = bitcast %struct.TYPE_50__* %9 to i64*
  store i64 %242, i64* %243, align 4
  %244 = load %struct.TYPE_51__*, %struct.TYPE_51__** %5, align 8
  %245 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %244, i32 0, i32 3
  %246 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %245, i32 0, i32 1
  %247 = load %struct.TYPE_51__*, %struct.TYPE_51__** %5, align 8
  %248 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %247, i32 0, i32 3
  %249 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %248, i32 0, i32 0
  %250 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %249, i32 0, i32 1
  %251 = load i32, i32* @H2O_TOKEN_SET_COOKIE, align 4
  %252 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %9, i32 0, i32 1
  %253 = load i32, i32* %252, align 4
  %254 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %9, i32 0, i32 0
  %255 = load i32, i32* %254, align 4
  %256 = call i32 (i32*, %struct.TYPE_56__*, i32, i32*, i32, ...) @h2o_add_header(i32* %246, %struct.TYPE_56__* %250, i32 %251, i32* null, i32 %253, i32 %255)
  br label %257

257:                                              ; preds = %238, %236, %221, %194
  br label %258

258:                                              ; preds = %257, %144
  %259 = load %struct.TYPE_51__*, %struct.TYPE_51__** %5, align 8
  %260 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %259, i32 0, i32 0
  %261 = load i32, i32* %260, align 8
  %262 = call i64 @h2o_http2_stream_is_push(i32 %261)
  %263 = icmp ne i64 %262, 0
  br i1 %263, label %264, label %286

264:                                              ; preds = %258
  %265 = load %struct.TYPE_51__*, %struct.TYPE_51__** %5, align 8
  %266 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %265, i32 0, i32 1
  %267 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %266, i32 0, i32 0
  %268 = load i64, i64* %267, align 8
  %269 = icmp ne i64 %268, 0
  br i1 %269, label %274, label %270

270:                                              ; preds = %264
  %271 = load %struct.TYPE_52__*, %struct.TYPE_52__** %4, align 8
  %272 = load %struct.TYPE_51__*, %struct.TYPE_51__** %5, align 8
  %273 = call i32 @h2o_http2_stream_send_push_promise(%struct.TYPE_52__* %271, %struct.TYPE_51__* %272)
  br label %274

274:                                              ; preds = %270, %264
  %275 = load %struct.TYPE_51__*, %struct.TYPE_51__** %5, align 8
  %276 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %275, i32 0, i32 3
  %277 = call i64 @is_blocking_asset(%struct.TYPE_53__* %276)
  %278 = icmp ne i64 %277, 0
  br i1 %278, label %279, label %285

279:                                              ; preds = %274
  %280 = load %struct.TYPE_51__*, %struct.TYPE_51__** %5, align 8
  %281 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %280, i32 0, i32 4
  %282 = load %struct.TYPE_52__*, %struct.TYPE_52__** %4, align 8
  %283 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %282, i32 0, i32 4
  %284 = call i32 @h2o_http2_scheduler_rebind(i32* %281, i32* %283, i32 257, i32 0)
  br label %285

285:                                              ; preds = %279, %274
  br label %321

286:                                              ; preds = %258
  %287 = load %struct.TYPE_52__*, %struct.TYPE_52__** %4, align 8
  %288 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %287, i32 0, i32 5
  %289 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %288, i32 0, i32 0
  %290 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %289, i32 0, i32 0
  %291 = load i64, i64* %290, align 8
  %292 = icmp eq i64 %291, 0
  br i1 %292, label %293, label %320

293:                                              ; preds = %286
  %294 = load %struct.TYPE_51__*, %struct.TYPE_51__** %5, align 8
  %295 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %294, i32 0, i32 3
  %296 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %295, i32 0, i32 3
  %297 = load %struct.TYPE_42__*, %struct.TYPE_42__** %296, align 8
  %298 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %297, i32 0, i32 0
  %299 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %298, i32 0, i32 0
  %300 = load i64, i64* %299, align 8
  %301 = icmp ne i64 %300, 0
  br i1 %301, label %302, label %320

302:                                              ; preds = %293
  %303 = load %struct.TYPE_51__*, %struct.TYPE_51__** %5, align 8
  %304 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %303, i32 0, i32 4
  %305 = call i32* @h2o_http2_scheduler_get_parent(i32* %304)
  %306 = load %struct.TYPE_52__*, %struct.TYPE_52__** %4, align 8
  %307 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %306, i32 0, i32 4
  %308 = icmp eq i32* %305, %307
  br i1 %308, label %309, label %320

309:                                              ; preds = %302
  %310 = load %struct.TYPE_51__*, %struct.TYPE_51__** %5, align 8
  %311 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %310, i32 0, i32 3
  %312 = call i64 @is_blocking_asset(%struct.TYPE_53__* %311)
  %313 = icmp ne i64 %312, 0
  br i1 %313, label %314, label %320

314:                                              ; preds = %309
  %315 = load %struct.TYPE_51__*, %struct.TYPE_51__** %5, align 8
  %316 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %315, i32 0, i32 4
  %317 = load %struct.TYPE_52__*, %struct.TYPE_52__** %4, align 8
  %318 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %317, i32 0, i32 4
  %319 = call i32 @h2o_http2_scheduler_rebind(i32* %316, i32* %318, i32 257, i32 0)
  br label %320

320:                                              ; preds = %314, %309, %302, %293, %286
  br label %321

321:                                              ; preds = %320, %285
  %322 = load %struct.TYPE_51__*, %struct.TYPE_51__** %5, align 8
  %323 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %322, i32 0, i32 0
  %324 = load i32, i32* %323, align 8
  %325 = call i64 @h2o_http2_stream_is_push(i32 %324)
  %326 = icmp ne i64 %325, 0
  br i1 %326, label %327, label %338

327:                                              ; preds = %321
  %328 = load %struct.TYPE_51__*, %struct.TYPE_51__** %5, align 8
  %329 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %328, i32 0, i32 3
  %330 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %329, i32 0, i32 1
  %331 = load %struct.TYPE_51__*, %struct.TYPE_51__** %5, align 8
  %332 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %331, i32 0, i32 3
  %333 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %332, i32 0, i32 0
  %334 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %333, i32 0, i32 1
  %335 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  %336 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %337 = call i32 @h2o_add_header_by_str(i32* %330, %struct.TYPE_56__* %334, i32 %335, i32 0, i32* null, i32 %336)
  br label %338

338:                                              ; preds = %327, %321
  %339 = load %struct.TYPE_51__*, %struct.TYPE_51__** %5, align 8
  %340 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %339, i32 0, i32 3
  %341 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %340, i32 0, i32 2
  %342 = load i64, i64* %341, align 8
  %343 = icmp ne i64 %342, 0
  br i1 %343, label %344, label %348

344:                                              ; preds = %338
  %345 = load %struct.TYPE_51__*, %struct.TYPE_51__** %5, align 8
  %346 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %345, i32 0, i32 3
  %347 = call i32 @h2o_add_server_timing_header(%struct.TYPE_53__* %346, i32 1)
  br label %348

348:                                              ; preds = %344, %338
  %349 = load %struct.TYPE_52__*, %struct.TYPE_52__** %4, align 8
  %350 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %349, i32 0, i32 0
  %351 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %350, i32 0, i32 0
  %352 = load %struct.TYPE_52__*, %struct.TYPE_52__** %4, align 8
  %353 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %352, i32 0, i32 3
  %354 = load %struct.TYPE_51__*, %struct.TYPE_51__** %5, align 8
  %355 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %354, i32 0, i32 0
  %356 = load i32, i32* %355, align 8
  %357 = load %struct.TYPE_52__*, %struct.TYPE_52__** %4, align 8
  %358 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %357, i32 0, i32 2
  %359 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %358, i32 0, i32 0
  %360 = load i32, i32* %359, align 8
  %361 = load %struct.TYPE_51__*, %struct.TYPE_51__** %5, align 8
  %362 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %361, i32 0, i32 3
  %363 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %362, i32 0, i32 0
  %364 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %363, i32 0, i32 0
  %365 = load i32, i32* %364, align 8
  %366 = load %struct.TYPE_51__*, %struct.TYPE_51__** %5, align 8
  %367 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %366, i32 0, i32 3
  %368 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %367, i32 0, i32 0
  %369 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %368, i32 0, i32 1
  %370 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %369, i32 0, i32 1
  %371 = load i32, i32* %370, align 4
  %372 = load %struct.TYPE_51__*, %struct.TYPE_51__** %5, align 8
  %373 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %372, i32 0, i32 3
  %374 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %373, i32 0, i32 0
  %375 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %374, i32 0, i32 1
  %376 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %375, i32 0, i32 0
  %377 = load i32, i32* %376, align 4
  %378 = load %struct.TYPE_52__*, %struct.TYPE_52__** %4, align 8
  %379 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %378, i32 0, i32 1
  %380 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %379, i32 0, i32 0
  %381 = load %struct.TYPE_60__*, %struct.TYPE_60__** %380, align 8
  %382 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %381, i32 0, i32 0
  %383 = load %struct.TYPE_57__*, %struct.TYPE_57__** %382, align 8
  %384 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %383, i32 0, i32 0
  %385 = load %struct.TYPE_51__*, %struct.TYPE_51__** %5, align 8
  %386 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %385, i32 0, i32 3
  %387 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %386, i32 0, i32 0
  %388 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %387, i32 0, i32 2
  %389 = load i32, i32* %388, align 4
  %390 = call i32 @h2o_hpack_flatten_response(i32* %351, i32* %353, i32 %356, i32 %360, i32 %365, i32 %371, i32 %377, i32* %384, i32 %389)
  %391 = load %struct.TYPE_52__*, %struct.TYPE_52__** %4, align 8
  %392 = call i32 @h2o_http2_conn_request_write(%struct.TYPE_52__* %391)
  %393 = load %struct.TYPE_52__*, %struct.TYPE_52__** %4, align 8
  %394 = load %struct.TYPE_51__*, %struct.TYPE_51__** %5, align 8
  %395 = load i32, i32* @H2O_HTTP2_STREAM_STATE_SEND_BODY, align 4
  %396 = call i32 @h2o_http2_stream_set_state(%struct.TYPE_52__* %393, %struct.TYPE_51__* %394, i32 %395)
  store i32 0, i32* %3, align 4
  br label %436

397:                                              ; preds = %186, %114, %50
  %398 = load %struct.TYPE_51__*, %struct.TYPE_51__** %5, align 8
  %399 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %398, i32 0, i32 3
  %400 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %399, i32 0, i32 1
  %401 = load %struct.TYPE_51__*, %struct.TYPE_51__** %5, align 8
  %402 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %401, i32 0, i32 3
  %403 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %402, i32 0, i32 0
  %404 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %403, i32 0, i32 1
  %405 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  %406 = call i32 @H2O_STRLIT(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  %407 = call i32 @h2o_add_header_by_str(i32* %400, %struct.TYPE_56__* %404, i32 %405, i32 0, i32* null, i32 %406)
  %408 = load %struct.TYPE_52__*, %struct.TYPE_52__** %4, align 8
  %409 = load %struct.TYPE_51__*, %struct.TYPE_51__** %5, align 8
  %410 = load i32, i32* @H2O_HTTP2_STREAM_STATE_END_STREAM, align 4
  %411 = call i32 @h2o_http2_stream_set_state(%struct.TYPE_52__* %408, %struct.TYPE_51__* %409, i32 %410)
  %412 = load %struct.TYPE_52__*, %struct.TYPE_52__** %4, align 8
  %413 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %412, i32 0, i32 0
  %414 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %413, i32 0, i32 1
  %415 = load %struct.TYPE_51__*, %struct.TYPE_51__** %5, align 8
  %416 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %415, i32 0, i32 2
  %417 = call i32 @h2o_linklist_insert(i32* %414, i32* %416)
  %418 = load %struct.TYPE_51__*, %struct.TYPE_51__** %5, align 8
  %419 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %418, i32 0, i32 1
  %420 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %419, i32 0, i32 0
  %421 = load i64, i64* %420, align 8
  %422 = icmp ne i64 %421, 0
  br i1 %422, label %423, label %435

423:                                              ; preds = %397
  %424 = load %struct.TYPE_52__*, %struct.TYPE_52__** %4, align 8
  %425 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %424, i32 0, i32 0
  %426 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %425, i32 0, i32 0
  %427 = load %struct.TYPE_51__*, %struct.TYPE_51__** %5, align 8
  %428 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %427, i32 0, i32 0
  %429 = load i32, i32* %428, align 8
  %430 = load i32, i32* @H2O_HTTP2_ERROR_INTERNAL, align 4
  %431 = sub nsw i32 0, %430
  %432 = call i32 @h2o_http2_encode_rst_stream_frame(i32* %426, i32 %429, i32 %431)
  %433 = load %struct.TYPE_52__*, %struct.TYPE_52__** %4, align 8
  %434 = call i32 @h2o_http2_conn_request_write(%struct.TYPE_52__* %433)
  br label %435

435:                                              ; preds = %423, %397
  store i32 -1, i32* %3, align 4
  br label %436

436:                                              ; preds = %435, %348, %22
  %437 = load i32, i32* %3, align 4
  ret i32 %437
}

declare dso_local i32 @h2o_http2_conn_register_for_replay(%struct.TYPE_52__*, %struct.TYPE_51__*) #1

declare dso_local i32 @h2o_gettimeofday(i32) #1

declare dso_local i64 @h2o_http2_stream_is_push(i32) #1

declare dso_local i32 @h2o_find_header(%struct.TYPE_55__*, i32, i32) #1

declare dso_local i64 @h2o_concat(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @h2o_iovec_init(i32) #1

declare dso_local i32 @H2O_STRLIT(i8*) #1

declare dso_local i64 @h2o_cache_digests_lookup_by_url_and_etag(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @h2o_add_header(i32*, %struct.TYPE_56__*, i32, i32*, i32, ...) #1

declare dso_local i64 @is_blocking_asset(%struct.TYPE_53__*) #1

declare dso_local i64 @h2o_http2_casper_lookup(i32*, i32, i32, i32) #1

declare dso_local i64 @h2o_http2_casper_get_cookie(i32*) #1

declare dso_local i32 @h2o_http2_stream_send_push_promise(%struct.TYPE_52__*, %struct.TYPE_51__*) #1

declare dso_local i32 @h2o_http2_scheduler_rebind(i32*, i32*, i32, i32) #1

declare dso_local i32* @h2o_http2_scheduler_get_parent(i32*) #1

declare dso_local i32 @h2o_add_header_by_str(i32*, %struct.TYPE_56__*, i32, i32, i32*, i32) #1

declare dso_local i32 @h2o_add_server_timing_header(%struct.TYPE_53__*, i32) #1

declare dso_local i32 @h2o_hpack_flatten_response(i32*, i32*, i32, i32, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @h2o_http2_conn_request_write(%struct.TYPE_52__*) #1

declare dso_local i32 @h2o_http2_stream_set_state(%struct.TYPE_52__*, %struct.TYPE_51__*, i32) #1

declare dso_local i32 @h2o_linklist_insert(i32*, i32*) #1

declare dso_local i32 @h2o_http2_encode_rst_stream_frame(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
