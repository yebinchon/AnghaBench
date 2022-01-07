; ModuleID = '/home/carl/AnghaBench/hashcat/src/extr_wordlist.c_count_words.c'
source_filename = "/home/carl/AnghaBench/hashcat/src/extr_wordlist.c_count_words.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_32__ = type { %struct.TYPE_26__*, %struct.TYPE_27__*, %struct.TYPE_28__*, %struct.TYPE_30__*, %struct.TYPE_29__*, %struct.TYPE_31__*, %struct.TYPE_22__* }
%struct.TYPE_26__ = type { i64, i8*, i32, i8*, i32, i32 (i8*, i64, i64*, i64*)* }
%struct.TYPE_27__ = type { i64, i32, i32, i32 }
%struct.TYPE_28__ = type { i64, i32 }
%struct.TYPE_30__ = type { i64 }
%struct.TYPE_29__ = type { i64 }
%struct.TYPE_31__ = type { i32 }
%struct.TYPE_22__ = type { i64 }
%struct.TYPE_33__ = type { i8*, i8*, %struct.TYPE_24__, i64 }
%struct.TYPE_24__ = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.TYPE_23__ = type { i8*, i64, double, i64, i64, i64, i64, i64, %struct.TYPE_25__ }
%struct.TYPE_25__ = type { i64 }

@ATTACK_KERN_STRAIGHT = common dso_local global i64 0, align 8
@ATTACK_KERN_COMBI = common dso_local global i64 0, align 8
@OPTI_TYPE_OPTIMIZED_KERNEL = common dso_local global i32 0, align 4
@ATTACK_MODE_HYBRID2 = common dso_local global i64 0, align 8
@EVENT_WORDLIST_CACHE_HIT = common dso_local global i32 0, align 4
@HCBUFSIZ_TINY = common dso_local global i64 0, align 8
@RP_PASSWORD_SIZE = common dso_local global i64 0, align 8
@PW_MAX = common dso_local global i64 0, align 8
@EVENT_WORDLIST_CACHE_GENERATE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @count_words(%struct.TYPE_32__* %0, i32* %1, i8* %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_32__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca %struct.TYPE_22__*, align 8
  %11 = alloca %struct.TYPE_31__*, align 8
  %12 = alloca %struct.TYPE_29__*, align 8
  %13 = alloca %struct.TYPE_30__*, align 8
  %14 = alloca %struct.TYPE_28__*, align 8
  %15 = alloca %struct.TYPE_27__*, align 8
  %16 = alloca %struct.TYPE_26__*, align 8
  %17 = alloca %struct.TYPE_33__, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca %struct.TYPE_23__, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  %28 = alloca i64, align 8
  %29 = alloca i64, align 8
  %30 = alloca i8*, align 8
  %31 = alloca i8*, align 8
  %32 = alloca i64, align 8
  %33 = alloca i64, align 8
  %34 = alloca i64, align 8
  %35 = alloca i8*, align 8
  %36 = alloca i64, align 8
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  %39 = alloca double, align 8
  %40 = alloca %struct.TYPE_23__, align 8
  %41 = alloca i64, align 8
  %42 = alloca %struct.TYPE_23__, align 8
  store %struct.TYPE_32__* %0, %struct.TYPE_32__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64* %3, i64** %9, align 8
  %43 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %43, i32 0, i32 6
  %45 = load %struct.TYPE_22__*, %struct.TYPE_22__** %44, align 8
  store %struct.TYPE_22__* %45, %struct.TYPE_22__** %10, align 8
  %46 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %46, i32 0, i32 5
  %48 = load %struct.TYPE_31__*, %struct.TYPE_31__** %47, align 8
  store %struct.TYPE_31__* %48, %struct.TYPE_31__** %11, align 8
  %49 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %49, i32 0, i32 4
  %51 = load %struct.TYPE_29__*, %struct.TYPE_29__** %50, align 8
  store %struct.TYPE_29__* %51, %struct.TYPE_29__** %12, align 8
  %52 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %52, i32 0, i32 3
  %54 = load %struct.TYPE_30__*, %struct.TYPE_30__** %53, align 8
  store %struct.TYPE_30__* %54, %struct.TYPE_30__** %13, align 8
  %55 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %55, i32 0, i32 2
  %57 = load %struct.TYPE_28__*, %struct.TYPE_28__** %56, align 8
  store %struct.TYPE_28__* %57, %struct.TYPE_28__** %14, align 8
  %58 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %58, i32 0, i32 1
  %60 = load %struct.TYPE_27__*, %struct.TYPE_27__** %59, align 8
  store %struct.TYPE_27__* %60, %struct.TYPE_27__** %15, align 8
  %61 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %61, i32 0, i32 0
  %63 = load %struct.TYPE_26__*, %struct.TYPE_26__** %62, align 8
  store %struct.TYPE_26__* %63, %struct.TYPE_26__** %16, align 8
  %64 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %17, i32 0, i32 3
  store i64 0, i64* %64, align 8
  %65 = load i32*, i32** %7, align 8
  %66 = call i32 @hc_fileno(i32* %65)
  %67 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %17, i32 0, i32 2
  %68 = call i64 @fstat(i32 %66, %struct.TYPE_24__* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %4
  %71 = load i64*, i64** %9, align 8
  store i64 0, i64* %71, align 8
  store i32 0, i32* %5, align 4
  br label %450

72:                                               ; preds = %4
  %73 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %17, i32 0, i32 2
  %74 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %73, i32 0, i32 9
  store i64 0, i64* %74, align 8
  %75 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %17, i32 0, i32 2
  %76 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %75, i32 0, i32 8
  store i64 0, i64* %76, align 8
  %77 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %17, i32 0, i32 2
  %78 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %77, i32 0, i32 7
  store i64 0, i64* %78, align 8
  %79 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %17, i32 0, i32 2
  %80 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %79, i32 0, i32 6
  store i64 0, i64* %80, align 8
  %81 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %17, i32 0, i32 2
  %82 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %81, i32 0, i32 5
  store i64 0, i64* %82, align 8
  %83 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %17, i32 0, i32 2
  %84 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %83, i32 0, i32 4
  store i64 0, i64* %84, align 8
  %85 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %17, i32 0, i32 0
  %86 = load i8*, i8** %85, align 8
  %87 = call i32 @memset(i8* %86, i32 0, i32 8)
  %88 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %17, i32 0, i32 1
  %89 = load i8*, i8** %88, align 8
  %90 = call i32 @memset(i8* %89, i32 0, i32 8)
  %91 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %17, i32 0, i32 0
  %92 = load i8*, i8** %91, align 8
  %93 = load %struct.TYPE_27__*, %struct.TYPE_27__** %15, align 8
  %94 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 8
  %96 = call i32 @strncpy(i8* %92, i32 %95, i32 7)
  %97 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %17, i32 0, i32 1
  %98 = load i8*, i8** %97, align 8
  %99 = load %struct.TYPE_27__*, %struct.TYPE_27__** %15, align 8
  %100 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @strncpy(i8* %98, i32 %101, i32 7)
  %103 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %17, i32 0, i32 2
  %104 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = icmp eq i64 %105, 0
  br i1 %106, label %107, label %109

107:                                              ; preds = %72
  %108 = load i64*, i64** %9, align 8
  store i64 0, i64* %108, align 8
  store i32 0, i32* %5, align 4
  br label %450

109:                                              ; preds = %72
  %110 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %111 = call i64 @dictstat_find(%struct.TYPE_32__* %110, %struct.TYPE_33__* %17)
  store i64 %111, i64* %18, align 8
  %112 = load %struct.TYPE_28__*, %struct.TYPE_28__** %14, align 8
  %113 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 8
  %115 = load %struct.TYPE_27__*, %struct.TYPE_27__** %15, align 8
  %116 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 8
  %118 = call i64 @run_rule_engine(i32 %114, i32 %117)
  %119 = icmp eq i64 %118, 0
  br i1 %119, label %120, label %210

120:                                              ; preds = %109
  %121 = load i64, i64* %18, align 8
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %209

123:                                              ; preds = %120
  %124 = load i64, i64* %18, align 8
  store i64 %124, i64* %19, align 8
  %125 = load %struct.TYPE_28__*, %struct.TYPE_28__** %14, align 8
  %126 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = load i64, i64* @ATTACK_KERN_STRAIGHT, align 8
  %129 = icmp eq i64 %127, %128
  br i1 %129, label %130, label %144

130:                                              ; preds = %123
  %131 = load i64, i64* %19, align 8
  %132 = load %struct.TYPE_29__*, %struct.TYPE_29__** %12, align 8
  %133 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = call i32 @overflow_check_u64_mul(i64 %131, i64 %134)
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %137, label %138

137:                                              ; preds = %130
  store i32 -1, i32* %5, align 4
  br label %450

138:                                              ; preds = %130
  %139 = load %struct.TYPE_29__*, %struct.TYPE_29__** %12, align 8
  %140 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = load i64, i64* %19, align 8
  %143 = mul nsw i64 %142, %141
  store i64 %143, i64* %19, align 8
  br label %193

144:                                              ; preds = %123
  %145 = load %struct.TYPE_28__*, %struct.TYPE_28__** %14, align 8
  %146 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = load i64, i64* @ATTACK_KERN_COMBI, align 8
  %149 = icmp eq i64 %147, %148
  br i1 %149, label %150, label %192

150:                                              ; preds = %144
  %151 = load %struct.TYPE_31__*, %struct.TYPE_31__** %11, align 8
  %152 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = load i32, i32* @OPTI_TYPE_OPTIMIZED_KERNEL, align 4
  %155 = and i32 %153, %154
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %157, label %177

157:                                              ; preds = %150
  %158 = load %struct.TYPE_27__*, %struct.TYPE_27__** %15, align 8
  %159 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %158, i32 0, i32 0
  %160 = load i64, i64* %159, align 8
  %161 = load i64, i64* @ATTACK_MODE_HYBRID2, align 8
  %162 = icmp eq i64 %160, %161
  br i1 %162, label %163, label %177

163:                                              ; preds = %157
  %164 = load i64, i64* %19, align 8
  %165 = load %struct.TYPE_30__*, %struct.TYPE_30__** %13, align 8
  %166 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %165, i32 0, i32 0
  %167 = load i64, i64* %166, align 8
  %168 = call i32 @overflow_check_u64_mul(i64 %164, i64 %167)
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %170, label %171

170:                                              ; preds = %163
  store i32 -1, i32* %5, align 4
  br label %450

171:                                              ; preds = %163
  %172 = load %struct.TYPE_30__*, %struct.TYPE_30__** %13, align 8
  %173 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %172, i32 0, i32 0
  %174 = load i64, i64* %173, align 8
  %175 = load i64, i64* %19, align 8
  %176 = mul nsw i64 %175, %174
  store i64 %176, i64* %19, align 8
  br label %191

177:                                              ; preds = %157, %150
  %178 = load i64, i64* %19, align 8
  %179 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %180 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %179, i32 0, i32 0
  %181 = load i64, i64* %180, align 8
  %182 = call i32 @overflow_check_u64_mul(i64 %178, i64 %181)
  %183 = icmp eq i32 %182, 0
  br i1 %183, label %184, label %185

184:                                              ; preds = %177
  store i32 -1, i32* %5, align 4
  br label %450

185:                                              ; preds = %177
  %186 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %187 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %186, i32 0, i32 0
  %188 = load i64, i64* %187, align 8
  %189 = load i64, i64* %19, align 8
  %190 = mul nsw i64 %189, %188
  store i64 %190, i64* %19, align 8
  br label %191

191:                                              ; preds = %185, %171
  br label %192

192:                                              ; preds = %191, %144
  br label %193

193:                                              ; preds = %192, %138
  %194 = load i8*, i8** %8, align 8
  %195 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %20, i32 0, i32 0
  store i8* %194, i8** %195, align 8
  %196 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %17, i32 0, i32 2
  %197 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %196, i32 0, i32 0
  %198 = load i64, i64* %197, align 8
  %199 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %20, i32 0, i32 8
  %200 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %199, i32 0, i32 0
  store i64 %198, i64* %200, align 8
  %201 = load i64, i64* %18, align 8
  %202 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %20, i32 0, i32 1
  store i64 %201, i64* %202, align 8
  %203 = load i64, i64* %19, align 8
  %204 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %20, i32 0, i32 7
  store i64 %203, i64* %204, align 8
  %205 = load i32, i32* @EVENT_WORDLIST_CACHE_HIT, align 4
  %206 = call i32 @EVENT_DATA(i32 %205, %struct.TYPE_23__* %20, i32 72)
  %207 = load i64, i64* %19, align 8
  %208 = load i64*, i64** %9, align 8
  store i64 %207, i64* %208, align 8
  store i32 0, i32* %5, align 4
  br label %450

209:                                              ; preds = %120
  br label %210

210:                                              ; preds = %209, %109
  %211 = call i32 @time(i64* %21)
  store i64 0, i64* %22, align 8
  store i64 0, i64* %23, align 8
  store i64 0, i64* %24, align 8
  store i64 0, i64* %25, align 8
  store i64 0, i64* %26, align 8
  br label %212

212:                                              ; preds = %428, %402, %210
  %213 = load i32*, i32** %7, align 8
  %214 = call i32 @hc_feof(i32* %213)
  %215 = icmp ne i32 %214, 0
  %216 = xor i1 %215, true
  br i1 %216, label %217, label %429

217:                                              ; preds = %212
  %218 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %219 = load i32*, i32** %7, align 8
  %220 = call i32 @load_segment(%struct.TYPE_32__* %218, i32* %219)
  %221 = load %struct.TYPE_26__*, %struct.TYPE_26__** %16, align 8
  %222 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %221, i32 0, i32 0
  %223 = load i64, i64* %222, align 8
  %224 = load i64, i64* %24, align 8
  %225 = add nsw i64 %224, %223
  store i64 %225, i64* %24, align 8
  store i64 0, i64* %27, align 8
  br label %226

226:                                              ; preds = %395, %322, %312, %292, %271, %217
  %227 = load i64, i64* %27, align 8
  %228 = load %struct.TYPE_26__*, %struct.TYPE_26__** %16, align 8
  %229 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %228, i32 0, i32 0
  %230 = load i64, i64* %229, align 8
  %231 = icmp slt i64 %227, %230
  br i1 %231, label %232, label %396

232:                                              ; preds = %226
  %233 = load %struct.TYPE_26__*, %struct.TYPE_26__** %16, align 8
  %234 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %233, i32 0, i32 1
  %235 = load i8*, i8** %234, align 8
  %236 = load i64, i64* %27, align 8
  %237 = getelementptr inbounds i8, i8* %235, i64 %236
  store i8* %237, i8** %30, align 8
  %238 = load %struct.TYPE_26__*, %struct.TYPE_26__** %16, align 8
  %239 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %238, i32 0, i32 5
  %240 = load i32 (i8*, i64, i64*, i64*)*, i32 (i8*, i64, i64*, i64*)** %239, align 8
  %241 = load i8*, i8** %30, align 8
  %242 = load %struct.TYPE_26__*, %struct.TYPE_26__** %16, align 8
  %243 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %242, i32 0, i32 0
  %244 = load i64, i64* %243, align 8
  %245 = load i64, i64* %27, align 8
  %246 = sub nsw i64 %244, %245
  %247 = call i32 %240(i8* %241, i64 %246, i64* %28, i64* %29)
  %248 = load i64, i64* %29, align 8
  %249 = load i64, i64* %27, align 8
  %250 = add nsw i64 %249, %248
  store i64 %250, i64* %27, align 8
  %251 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %252 = load i8*, i8** %30, align 8
  %253 = load i64, i64* %28, align 8
  %254 = call i64 @convert_from_hex(%struct.TYPE_32__* %251, i8* %252, i64 %253)
  store i64 %254, i64* %28, align 8
  %255 = load %struct.TYPE_26__*, %struct.TYPE_26__** %16, align 8
  %256 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %255, i32 0, i32 2
  %257 = load i32, i32* %256, align 8
  %258 = icmp eq i32 %257, 1
  br i1 %258, label %259, label %279

259:                                              ; preds = %232
  %260 = load %struct.TYPE_26__*, %struct.TYPE_26__** %16, align 8
  %261 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %260, i32 0, i32 3
  %262 = load i8*, i8** %261, align 8
  store i8* %262, i8** %31, align 8
  %263 = load i64, i64* @HCBUFSIZ_TINY, align 8
  store i64 %263, i64* %32, align 8
  %264 = load i64, i64* %28, align 8
  store i64 %264, i64* %33, align 8
  %265 = load %struct.TYPE_26__*, %struct.TYPE_26__** %16, align 8
  %266 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %265, i32 0, i32 4
  %267 = load i32, i32* %266, align 8
  %268 = call i64 @iconv(i32 %267, i8** %30, i64* %33, i8** %31, i64* %32)
  store i64 %268, i64* %34, align 8
  %269 = load i64, i64* %34, align 8
  %270 = icmp eq i64 %269, -1
  br i1 %270, label %271, label %272

271:                                              ; preds = %259
  br label %226

272:                                              ; preds = %259
  %273 = load %struct.TYPE_26__*, %struct.TYPE_26__** %16, align 8
  %274 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %273, i32 0, i32 3
  %275 = load i8*, i8** %274, align 8
  store i8* %275, i8** %30, align 8
  %276 = load i64, i64* @HCBUFSIZ_TINY, align 8
  %277 = load i64, i64* %32, align 8
  %278 = sub i64 %276, %277
  store i64 %278, i64* %28, align 8
  br label %279

279:                                              ; preds = %272, %232
  %280 = load %struct.TYPE_28__*, %struct.TYPE_28__** %14, align 8
  %281 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %280, i32 0, i32 1
  %282 = load i32, i32* %281, align 8
  %283 = load %struct.TYPE_27__*, %struct.TYPE_27__** %15, align 8
  %284 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %283, i32 0, i32 1
  %285 = load i32, i32* %284, align 8
  %286 = call i64 @run_rule_engine(i32 %282, i32 %285)
  %287 = icmp ne i64 %286, 0
  br i1 %287, label %288, label %316

288:                                              ; preds = %279
  %289 = load i64, i64* %28, align 8
  %290 = load i64, i64* @RP_PASSWORD_SIZE, align 8
  %291 = icmp sge i64 %289, %290
  br i1 %291, label %292, label %293

292:                                              ; preds = %288
  br label %226

293:                                              ; preds = %288
  %294 = load i64, i64* @RP_PASSWORD_SIZE, align 8
  %295 = call i8* @llvm.stacksave()
  store i8* %295, i8** %35, align 8
  %296 = alloca i8, i64 %294, align 16
  store i64 %294, i64* %36, align 8
  %297 = trunc i64 %294 to i32
  %298 = call i32 @memset(i8* %296, i32 0, i32 %297)
  %299 = load %struct.TYPE_27__*, %struct.TYPE_27__** %15, align 8
  %300 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %299, i32 0, i32 1
  %301 = load i32, i32* %300, align 8
  %302 = load %struct.TYPE_28__*, %struct.TYPE_28__** %14, align 8
  %303 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %302, i32 0, i32 1
  %304 = load i32, i32* %303, align 8
  %305 = load i8*, i8** %30, align 8
  %306 = load i64, i64* %28, align 8
  %307 = call i32 @_old_apply_rule(i32 %301, i32 %304, i8* %305, i64 %306, i8* %296)
  store i32 %307, i32* %37, align 4
  %308 = load i32, i32* %37, align 4
  %309 = icmp slt i32 %308, 0
  br i1 %309, label %310, label %311

310:                                              ; preds = %293
  store i32 4, i32* %38, align 4
  br label %312

311:                                              ; preds = %293
  store i32 0, i32* %38, align 4
  br label %312

312:                                              ; preds = %311, %310
  %313 = load i8*, i8** %35, align 8
  call void @llvm.stackrestore(i8* %313)
  %314 = load i32, i32* %38, align 4
  switch i32 %314, label %452 [
    i32 0, label %315
    i32 4, label %226
  ]

315:                                              ; preds = %312
  br label %316

316:                                              ; preds = %315, %279
  %317 = load i64, i64* %26, align 8
  %318 = add nsw i64 %317, 1
  store i64 %318, i64* %26, align 8
  %319 = load i64, i64* %28, align 8
  %320 = load i64, i64* @PW_MAX, align 8
  %321 = icmp sgt i64 %319, %320
  br i1 %321, label %322, label %323

322:                                              ; preds = %316
  br label %226

323:                                              ; preds = %316
  %324 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %17, i32 0, i32 3
  %325 = load i64, i64* %324, align 8
  %326 = add nsw i64 %325, 1
  store i64 %326, i64* %324, align 8
  %327 = load %struct.TYPE_28__*, %struct.TYPE_28__** %14, align 8
  %328 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %327, i32 0, i32 0
  %329 = load i64, i64* %328, align 8
  %330 = load i64, i64* @ATTACK_KERN_STRAIGHT, align 8
  %331 = icmp eq i64 %329, %330
  br i1 %331, label %332, label %346

332:                                              ; preds = %323
  %333 = load i64, i64* %25, align 8
  %334 = load %struct.TYPE_29__*, %struct.TYPE_29__** %12, align 8
  %335 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %334, i32 0, i32 0
  %336 = load i64, i64* %335, align 8
  %337 = call i32 @overflow_check_u64_add(i64 %333, i64 %336)
  %338 = icmp eq i32 %337, 0
  br i1 %338, label %339, label %340

339:                                              ; preds = %332
  store i32 -1, i32* %5, align 4
  br label %450

340:                                              ; preds = %332
  %341 = load %struct.TYPE_29__*, %struct.TYPE_29__** %12, align 8
  %342 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %341, i32 0, i32 0
  %343 = load i64, i64* %342, align 8
  %344 = load i64, i64* %25, align 8
  %345 = add nsw i64 %344, %343
  store i64 %345, i64* %25, align 8
  br label %395

346:                                              ; preds = %323
  %347 = load %struct.TYPE_28__*, %struct.TYPE_28__** %14, align 8
  %348 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %347, i32 0, i32 0
  %349 = load i64, i64* %348, align 8
  %350 = load i64, i64* @ATTACK_KERN_COMBI, align 8
  %351 = icmp eq i64 %349, %350
  br i1 %351, label %352, label %394

352:                                              ; preds = %346
  %353 = load %struct.TYPE_31__*, %struct.TYPE_31__** %11, align 8
  %354 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %353, i32 0, i32 0
  %355 = load i32, i32* %354, align 4
  %356 = load i32, i32* @OPTI_TYPE_OPTIMIZED_KERNEL, align 4
  %357 = and i32 %355, %356
  %358 = icmp eq i32 %357, 0
  br i1 %358, label %359, label %379

359:                                              ; preds = %352
  %360 = load %struct.TYPE_27__*, %struct.TYPE_27__** %15, align 8
  %361 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %360, i32 0, i32 0
  %362 = load i64, i64* %361, align 8
  %363 = load i64, i64* @ATTACK_MODE_HYBRID2, align 8
  %364 = icmp eq i64 %362, %363
  br i1 %364, label %365, label %379

365:                                              ; preds = %359
  %366 = load i64, i64* %25, align 8
  %367 = load %struct.TYPE_30__*, %struct.TYPE_30__** %13, align 8
  %368 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %367, i32 0, i32 0
  %369 = load i64, i64* %368, align 8
  %370 = call i32 @overflow_check_u64_add(i64 %366, i64 %369)
  %371 = icmp eq i32 %370, 0
  br i1 %371, label %372, label %373

372:                                              ; preds = %365
  store i32 -1, i32* %5, align 4
  br label %450

373:                                              ; preds = %365
  %374 = load %struct.TYPE_30__*, %struct.TYPE_30__** %13, align 8
  %375 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %374, i32 0, i32 0
  %376 = load i64, i64* %375, align 8
  %377 = load i64, i64* %25, align 8
  %378 = add nsw i64 %377, %376
  store i64 %378, i64* %25, align 8
  br label %393

379:                                              ; preds = %359, %352
  %380 = load i64, i64* %25, align 8
  %381 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %382 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %381, i32 0, i32 0
  %383 = load i64, i64* %382, align 8
  %384 = call i32 @overflow_check_u64_add(i64 %380, i64 %383)
  %385 = icmp eq i32 %384, 0
  br i1 %385, label %386, label %387

386:                                              ; preds = %379
  store i32 -1, i32* %5, align 4
  br label %450

387:                                              ; preds = %379
  %388 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %389 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %388, i32 0, i32 0
  %390 = load i64, i64* %389, align 8
  %391 = load i64, i64* %25, align 8
  %392 = add nsw i64 %391, %390
  store i64 %392, i64* %25, align 8
  br label %393

393:                                              ; preds = %387, %373
  br label %394

394:                                              ; preds = %393, %346
  br label %395

395:                                              ; preds = %394, %340
  br label %226

396:                                              ; preds = %226
  %397 = call i32 @time(i64* %22)
  %398 = load i64, i64* %22, align 8
  %399 = load i64, i64* %23, align 8
  %400 = sub nsw i64 %398, %399
  %401 = icmp eq i64 %400, 0
  br i1 %401, label %402, label %403

402:                                              ; preds = %396
  br label %212

403:                                              ; preds = %396
  %404 = call i32 @time(i64* %23)
  %405 = load i64, i64* %24, align 8
  %406 = sitofp i64 %405 to double
  %407 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %17, i32 0, i32 2
  %408 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %407, i32 0, i32 0
  %409 = load i64, i64* %408, align 8
  %410 = sitofp i64 %409 to double
  %411 = fdiv double %406, %410
  %412 = fmul double %411, 1.000000e+02
  store double %412, double* %39, align 8
  %413 = load double, double* %39, align 8
  %414 = fcmp olt double %413, 1.000000e+02
  br i1 %414, label %415, label %428

415:                                              ; preds = %403
  %416 = load i8*, i8** %8, align 8
  %417 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %40, i32 0, i32 0
  store i8* %416, i8** %417, align 8
  %418 = load i64, i64* %24, align 8
  %419 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %40, i32 0, i32 6
  store i64 %418, i64* %419, align 8
  %420 = load double, double* %39, align 8
  %421 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %40, i32 0, i32 2
  store double %420, double* %421, align 8
  %422 = load i64, i64* %25, align 8
  %423 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %40, i32 0, i32 5
  store i64 %422, i64* %423, align 8
  %424 = load i64, i64* %26, align 8
  %425 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %40, i32 0, i32 4
  store i64 %424, i64* %425, align 8
  %426 = load i32, i32* @EVENT_WORDLIST_CACHE_GENERATE, align 4
  %427 = call i32 @EVENT_DATA(i32 %426, %struct.TYPE_23__* %40, i32 72)
  br label %428

428:                                              ; preds = %415, %403
  br label %212

429:                                              ; preds = %212
  %430 = call i32 @time(i64* %41)
  %431 = load i8*, i8** %8, align 8
  %432 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %42, i32 0, i32 0
  store i8* %431, i8** %432, align 8
  %433 = load i64, i64* %24, align 8
  %434 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %42, i32 0, i32 6
  store i64 %433, i64* %434, align 8
  %435 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %42, i32 0, i32 2
  store double 1.000000e+02, double* %435, align 8
  %436 = load i64, i64* %25, align 8
  %437 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %42, i32 0, i32 5
  store i64 %436, i64* %437, align 8
  %438 = load i64, i64* %26, align 8
  %439 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %42, i32 0, i32 4
  store i64 %438, i64* %439, align 8
  %440 = load i64, i64* %41, align 8
  %441 = load i64, i64* %21, align 8
  %442 = sub nsw i64 %440, %441
  %443 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %42, i32 0, i32 3
  store i64 %442, i64* %443, align 8
  %444 = load i32, i32* @EVENT_WORDLIST_CACHE_GENERATE, align 4
  %445 = call i32 @EVENT_DATA(i32 %444, %struct.TYPE_23__* %42, i32 72)
  %446 = load %struct.TYPE_32__*, %struct.TYPE_32__** %6, align 8
  %447 = call i32 @dictstat_append(%struct.TYPE_32__* %446, %struct.TYPE_33__* %17)
  %448 = load i64, i64* %25, align 8
  %449 = load i64*, i64** %9, align 8
  store i64 %448, i64* %449, align 8
  store i32 0, i32* %5, align 4
  br label %450

450:                                              ; preds = %429, %386, %372, %339, %193, %184, %170, %137, %107, %70
  %451 = load i32, i32* %5, align 4
  ret i32 %451

452:                                              ; preds = %312
  unreachable
}

declare dso_local i64 @fstat(i32, %struct.TYPE_24__*) #1

declare dso_local i32 @hc_fileno(i32*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @strncpy(i8*, i32, i32) #1

declare dso_local i64 @dictstat_find(%struct.TYPE_32__*, %struct.TYPE_33__*) #1

declare dso_local i64 @run_rule_engine(i32, i32) #1

declare dso_local i32 @overflow_check_u64_mul(i64, i64) #1

declare dso_local i32 @EVENT_DATA(i32, %struct.TYPE_23__*, i32) #1

declare dso_local i32 @time(i64*) #1

declare dso_local i32 @hc_feof(i32*) #1

declare dso_local i32 @load_segment(%struct.TYPE_32__*, i32*) #1

declare dso_local i64 @convert_from_hex(%struct.TYPE_32__*, i8*, i64) #1

declare dso_local i64 @iconv(i32, i8**, i64*, i8**, i64*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @_old_apply_rule(i32, i32, i8*, i64, i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @overflow_check_u64_add(i64, i64) #1

declare dso_local i32 @dictstat_append(%struct.TYPE_32__*, %struct.TYPE_33__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
