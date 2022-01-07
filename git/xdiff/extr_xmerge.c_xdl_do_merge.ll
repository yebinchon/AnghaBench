; ModuleID = '/home/carl/AnghaBench/git/xdiff/extr_xmerge.c_xdl_do_merge.c'
source_filename = "/home/carl/AnghaBench/git/xdiff/extr_xmerge.c_xdl_do_merge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_26__ = type { %struct.TYPE_23__, %struct.TYPE_22__ }
%struct.TYPE_23__ = type { i32 }
%struct.TYPE_22__ = type { i32 }
%struct.TYPE_27__ = type { i32, i32, i32, i32, %struct.TYPE_27__* }
%struct.TYPE_25__ = type { i8*, i8*, i8*, i32, i32, i32, i32, %struct.TYPE_24__ }
%struct.TYPE_24__ = type { i32 }
%struct.TYPE_28__ = type { i32, i32* }

@XDL_MERGE_DIFF3 = common dso_local global i32 0, align 4
@XDL_MERGE_EAGER = common dso_local global i32 0, align 4
@XDL_MERGE_MINIMAL = common dso_local global i32 0, align 4
@XDL_MERGE_ZEALOUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_26__*, %struct.TYPE_27__*, %struct.TYPE_26__*, %struct.TYPE_27__*, %struct.TYPE_25__*, %struct.TYPE_28__*)* @xdl_do_merge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xdl_do_merge(%struct.TYPE_26__* %0, %struct.TYPE_27__* %1, %struct.TYPE_26__* %2, %struct.TYPE_27__* %3, %struct.TYPE_25__* %4, %struct.TYPE_28__* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_26__*, align 8
  %9 = alloca %struct.TYPE_27__*, align 8
  %10 = alloca %struct.TYPE_26__*, align 8
  %11 = alloca %struct.TYPE_27__*, align 8
  %12 = alloca %struct.TYPE_25__*, align 8
  %13 = alloca %struct.TYPE_28__*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.TYPE_24__*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  store %struct.TYPE_26__* %0, %struct.TYPE_26__** %8, align 8
  store %struct.TYPE_27__* %1, %struct.TYPE_27__** %9, align 8
  store %struct.TYPE_26__* %2, %struct.TYPE_26__** %10, align 8
  store %struct.TYPE_27__* %3, %struct.TYPE_27__** %11, align 8
  store %struct.TYPE_25__* %4, %struct.TYPE_25__** %12, align 8
  store %struct.TYPE_28__* %5, %struct.TYPE_28__** %13, align 8
  %33 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %34 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %33, i32 0, i32 7
  store %struct.TYPE_24__* %34, %struct.TYPE_24__** %16, align 8
  %35 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %36 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %35, i32 0, i32 0
  %37 = load i8*, i8** %36, align 8
  store i8* %37, i8** %17, align 8
  %38 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %39 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %38, i32 0, i32 1
  %40 = load i8*, i8** %39, align 8
  store i8* %40, i8** %18, align 8
  %41 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %42 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %41, i32 0, i32 2
  %43 = load i8*, i8** %42, align 8
  store i8* %43, i8** %19, align 8
  %44 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %45 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 8
  store i32 %46, i32* %26, align 4
  %47 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %48 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %47, i32 0, i32 4
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* %27, align 4
  %50 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %51 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %50, i32 0, i32 5
  %52 = load i32, i32* %51, align 8
  store i32 %52, i32* %28, align 4
  %53 = load i32, i32* %27, align 4
  %54 = load i32, i32* @XDL_MERGE_DIFF3, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %63

56:                                               ; preds = %6
  %57 = load i32, i32* @XDL_MERGE_EAGER, align 4
  %58 = load i32, i32* %26, align 4
  %59 = icmp slt i32 %57, %58
  br i1 %59, label %60, label %62

60:                                               ; preds = %56
  %61 = load i32, i32* @XDL_MERGE_EAGER, align 4
  store i32 %61, i32* %26, align 4
  br label %62

62:                                               ; preds = %60, %56
  br label %63

63:                                               ; preds = %62, %6
  store i32* null, i32** %14, align 8
  store i32* null, i32** %15, align 8
  br label %64

64:                                               ; preds = %353, %181, %127, %63
  %65 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %66 = icmp ne %struct.TYPE_27__* %65, null
  br i1 %66, label %67, label %70

67:                                               ; preds = %64
  %68 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  %69 = icmp ne %struct.TYPE_27__* %68, null
  br label %70

70:                                               ; preds = %67, %64
  %71 = phi i1 [ false, %64 ], [ %69, %67 ]
  br i1 %71, label %72, label %354

72:                                               ; preds = %70
  %73 = load i32*, i32** %14, align 8
  %74 = icmp ne i32* %73, null
  br i1 %74, label %77, label %75

75:                                               ; preds = %72
  %76 = load i32*, i32** %15, align 8
  store i32* %76, i32** %14, align 8
  br label %77

77:                                               ; preds = %75, %72
  %78 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %79 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %82 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = add nsw i32 %80, %83
  %85 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  %86 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = icmp slt i32 %84, %87
  br i1 %88, label %89, label %131

89:                                               ; preds = %77
  %90 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %91 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  store i32 %92, i32* %20, align 4
  %93 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %94 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 8
  store i32 %95, i32* %21, align 4
  %96 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  %97 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 8
  %99 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  %100 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = sub nsw i32 %98, %101
  %103 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %104 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = add nsw i32 %102, %105
  store i32 %106, i32* %22, align 4
  %107 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %108 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  store i32 %109, i32* %23, align 4
  %110 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %111 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %110, i32 0, i32 3
  %112 = load i32, i32* %111, align 4
  store i32 %112, i32* %24, align 4
  %113 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %114 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  store i32 %115, i32* %25, align 4
  %116 = load i32, i32* %20, align 4
  %117 = load i32, i32* %23, align 4
  %118 = load i32, i32* %21, align 4
  %119 = load i32, i32* %24, align 4
  %120 = load i32, i32* %22, align 4
  %121 = load i32, i32* %25, align 4
  %122 = call i64 @xdl_append_merge(i32** %15, i32 1, i32 %116, i32 %117, i32 %118, i32 %119, i32 %120, i32 %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %127

124:                                              ; preds = %89
  %125 = load i32*, i32** %14, align 8
  %126 = call i32 @xdl_cleanup_merge(i32* %125)
  store i32 -1, i32* %7, align 4
  br label %536

127:                                              ; preds = %89
  %128 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %129 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %128, i32 0, i32 4
  %130 = load %struct.TYPE_27__*, %struct.TYPE_27__** %129, align 8
  store %struct.TYPE_27__* %130, %struct.TYPE_27__** %9, align 8
  br label %64

131:                                              ; preds = %77
  %132 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  %133 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  %136 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = add nsw i32 %134, %137
  %139 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %140 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = icmp slt i32 %138, %141
  br i1 %142, label %143, label %185

143:                                              ; preds = %131
  %144 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  %145 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  store i32 %146, i32* %20, align 4
  %147 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %148 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 8
  %150 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %151 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = sub nsw i32 %149, %152
  %154 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  %155 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = add nsw i32 %153, %156
  store i32 %157, i32* %21, align 4
  %158 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  %159 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %158, i32 0, i32 2
  %160 = load i32, i32* %159, align 8
  store i32 %160, i32* %22, align 4
  %161 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  %162 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 4
  store i32 %163, i32* %23, align 4
  %164 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  %165 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 4
  store i32 %166, i32* %24, align 4
  %167 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  %168 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %167, i32 0, i32 3
  %169 = load i32, i32* %168, align 4
  store i32 %169, i32* %25, align 4
  %170 = load i32, i32* %20, align 4
  %171 = load i32, i32* %23, align 4
  %172 = load i32, i32* %21, align 4
  %173 = load i32, i32* %24, align 4
  %174 = load i32, i32* %22, align 4
  %175 = load i32, i32* %25, align 4
  %176 = call i64 @xdl_append_merge(i32** %15, i32 2, i32 %170, i32 %171, i32 %172, i32 %173, i32 %174, i32 %175)
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %178, label %181

178:                                              ; preds = %143
  %179 = load i32*, i32** %14, align 8
  %180 = call i32 @xdl_cleanup_merge(i32* %179)
  store i32 -1, i32* %7, align 4
  br label %536

181:                                              ; preds = %143
  %182 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  %183 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %182, i32 0, i32 4
  %184 = load %struct.TYPE_27__*, %struct.TYPE_27__** %183, align 8
  store %struct.TYPE_27__* %184, %struct.TYPE_27__** %11, align 8
  br label %64

185:                                              ; preds = %131
  %186 = load i32, i32* %26, align 4
  %187 = load i32, i32* @XDL_MERGE_MINIMAL, align 4
  %188 = icmp eq i32 %186, %187
  br i1 %188, label %230, label %189

189:                                              ; preds = %185
  %190 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %191 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 8
  %193 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  %194 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 8
  %196 = icmp ne i32 %192, %195
  br i1 %196, label %230, label %197

197:                                              ; preds = %189
  %198 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %199 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %198, i32 0, i32 1
  %200 = load i32, i32* %199, align 4
  %201 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  %202 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %201, i32 0, i32 1
  %203 = load i32, i32* %202, align 4
  %204 = icmp ne i32 %200, %203
  br i1 %204, label %230, label %205

205:                                              ; preds = %197
  %206 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %207 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %206, i32 0, i32 3
  %208 = load i32, i32* %207, align 4
  %209 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  %210 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %209, i32 0, i32 3
  %211 = load i32, i32* %210, align 4
  %212 = icmp ne i32 %208, %211
  br i1 %212, label %230, label %213

213:                                              ; preds = %205
  %214 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %215 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %216 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %215, i32 0, i32 2
  %217 = load i32, i32* %216, align 8
  %218 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %219 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  %220 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %219, i32 0, i32 2
  %221 = load i32, i32* %220, align 8
  %222 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %223 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %222, i32 0, i32 3
  %224 = load i32, i32* %223, align 4
  %225 = load %struct.TYPE_24__*, %struct.TYPE_24__** %16, align 8
  %226 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %225, i32 0, i32 0
  %227 = load i32, i32* %226, align 4
  %228 = call i64 @xdl_merge_cmp_lines(%struct.TYPE_26__* %214, i32 %217, %struct.TYPE_26__* %218, i32 %221, i32 %224, i32 %227)
  %229 = icmp ne i64 %228, 0
  br i1 %229, label %230, label %323

230:                                              ; preds = %213, %205, %197, %189, %185
  %231 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %232 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %231, i32 0, i32 0
  %233 = load i32, i32* %232, align 8
  %234 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  %235 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %234, i32 0, i32 0
  %236 = load i32, i32* %235, align 8
  %237 = sub nsw i32 %233, %236
  store i32 %237, i32* %29, align 4
  %238 = load i32, i32* %29, align 4
  %239 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %240 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %239, i32 0, i32 1
  %241 = load i32, i32* %240, align 4
  %242 = add nsw i32 %238, %241
  %243 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  %244 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %243, i32 0, i32 1
  %245 = load i32, i32* %244, align 4
  %246 = sub nsw i32 %242, %245
  store i32 %246, i32* %30, align 4
  %247 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %248 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %247, i32 0, i32 0
  %249 = load i32, i32* %248, align 8
  store i32 %249, i32* %20, align 4
  %250 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %251 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %250, i32 0, i32 2
  %252 = load i32, i32* %251, align 8
  store i32 %252, i32* %21, align 4
  %253 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  %254 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %253, i32 0, i32 2
  %255 = load i32, i32* %254, align 8
  store i32 %255, i32* %22, align 4
  %256 = load i32, i32* %29, align 4
  %257 = icmp sgt i32 %256, 0
  br i1 %257, label %258, label %265

258:                                              ; preds = %230
  %259 = load i32, i32* %29, align 4
  %260 = load i32, i32* %20, align 4
  %261 = sub nsw i32 %260, %259
  store i32 %261, i32* %20, align 4
  %262 = load i32, i32* %29, align 4
  %263 = load i32, i32* %21, align 4
  %264 = sub nsw i32 %263, %262
  store i32 %264, i32* %21, align 4
  br label %269

265:                                              ; preds = %230
  %266 = load i32, i32* %29, align 4
  %267 = load i32, i32* %22, align 4
  %268 = add nsw i32 %267, %266
  store i32 %268, i32* %22, align 4
  br label %269

269:                                              ; preds = %265, %258
  %270 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %271 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %270, i32 0, i32 0
  %272 = load i32, i32* %271, align 8
  %273 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %274 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %273, i32 0, i32 1
  %275 = load i32, i32* %274, align 4
  %276 = add nsw i32 %272, %275
  %277 = load i32, i32* %20, align 4
  %278 = sub nsw i32 %276, %277
  store i32 %278, i32* %23, align 4
  %279 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %280 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %279, i32 0, i32 2
  %281 = load i32, i32* %280, align 8
  %282 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %283 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %282, i32 0, i32 3
  %284 = load i32, i32* %283, align 4
  %285 = add nsw i32 %281, %284
  %286 = load i32, i32* %21, align 4
  %287 = sub nsw i32 %285, %286
  store i32 %287, i32* %24, align 4
  %288 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  %289 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %288, i32 0, i32 2
  %290 = load i32, i32* %289, align 8
  %291 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  %292 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %291, i32 0, i32 3
  %293 = load i32, i32* %292, align 4
  %294 = add nsw i32 %290, %293
  %295 = load i32, i32* %22, align 4
  %296 = sub nsw i32 %294, %295
  store i32 %296, i32* %25, align 4
  %297 = load i32, i32* %30, align 4
  %298 = icmp slt i32 %297, 0
  br i1 %298, label %299, label %306

299:                                              ; preds = %269
  %300 = load i32, i32* %30, align 4
  %301 = load i32, i32* %23, align 4
  %302 = sub nsw i32 %301, %300
  store i32 %302, i32* %23, align 4
  %303 = load i32, i32* %30, align 4
  %304 = load i32, i32* %24, align 4
  %305 = sub nsw i32 %304, %303
  store i32 %305, i32* %24, align 4
  br label %310

306:                                              ; preds = %269
  %307 = load i32, i32* %30, align 4
  %308 = load i32, i32* %25, align 4
  %309 = add nsw i32 %308, %307
  store i32 %309, i32* %25, align 4
  br label %310

310:                                              ; preds = %306, %299
  %311 = load i32, i32* %20, align 4
  %312 = load i32, i32* %23, align 4
  %313 = load i32, i32* %21, align 4
  %314 = load i32, i32* %24, align 4
  %315 = load i32, i32* %22, align 4
  %316 = load i32, i32* %25, align 4
  %317 = call i64 @xdl_append_merge(i32** %15, i32 0, i32 %311, i32 %312, i32 %313, i32 %314, i32 %315, i32 %316)
  %318 = icmp ne i64 %317, 0
  br i1 %318, label %319, label %322

319:                                              ; preds = %310
  %320 = load i32*, i32** %14, align 8
  %321 = call i32 @xdl_cleanup_merge(i32* %320)
  store i32 -1, i32* %7, align 4
  br label %536

322:                                              ; preds = %310
  br label %323

323:                                              ; preds = %322, %213
  %324 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %325 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %324, i32 0, i32 0
  %326 = load i32, i32* %325, align 8
  %327 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %328 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %327, i32 0, i32 1
  %329 = load i32, i32* %328, align 4
  %330 = add nsw i32 %326, %329
  store i32 %330, i32* %21, align 4
  %331 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  %332 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %331, i32 0, i32 0
  %333 = load i32, i32* %332, align 8
  %334 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  %335 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %334, i32 0, i32 1
  %336 = load i32, i32* %335, align 4
  %337 = add nsw i32 %333, %336
  store i32 %337, i32* %22, align 4
  %338 = load i32, i32* %21, align 4
  %339 = load i32, i32* %22, align 4
  %340 = icmp sge i32 %338, %339
  br i1 %340, label %341, label %345

341:                                              ; preds = %323
  %342 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  %343 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %342, i32 0, i32 4
  %344 = load %struct.TYPE_27__*, %struct.TYPE_27__** %343, align 8
  store %struct.TYPE_27__* %344, %struct.TYPE_27__** %11, align 8
  br label %345

345:                                              ; preds = %341, %323
  %346 = load i32, i32* %22, align 4
  %347 = load i32, i32* %21, align 4
  %348 = icmp sge i32 %346, %347
  br i1 %348, label %349, label %353

349:                                              ; preds = %345
  %350 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %351 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %350, i32 0, i32 4
  %352 = load %struct.TYPE_27__*, %struct.TYPE_27__** %351, align 8
  store %struct.TYPE_27__* %352, %struct.TYPE_27__** %9, align 8
  br label %353

353:                                              ; preds = %349, %345
  br label %64

354:                                              ; preds = %70
  br label %355

355:                                              ; preds = %403, %354
  %356 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %357 = icmp ne %struct.TYPE_27__* %356, null
  br i1 %357, label %358, label %407

358:                                              ; preds = %355
  %359 = load i32*, i32** %14, align 8
  %360 = icmp ne i32* %359, null
  br i1 %360, label %363, label %361

361:                                              ; preds = %358
  %362 = load i32*, i32** %15, align 8
  store i32* %362, i32** %14, align 8
  br label %363

363:                                              ; preds = %361, %358
  %364 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %365 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %364, i32 0, i32 0
  %366 = load i32, i32* %365, align 8
  store i32 %366, i32* %20, align 4
  %367 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %368 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %367, i32 0, i32 2
  %369 = load i32, i32* %368, align 8
  store i32 %369, i32* %21, align 4
  %370 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %371 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %370, i32 0, i32 0
  %372 = load i32, i32* %371, align 8
  %373 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %374 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %373, i32 0, i32 1
  %375 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %374, i32 0, i32 0
  %376 = load i32, i32* %375, align 4
  %377 = add nsw i32 %372, %376
  %378 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %379 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %378, i32 0, i32 0
  %380 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %379, i32 0, i32 0
  %381 = load i32, i32* %380, align 4
  %382 = sub nsw i32 %377, %381
  store i32 %382, i32* %22, align 4
  %383 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %384 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %383, i32 0, i32 1
  %385 = load i32, i32* %384, align 4
  store i32 %385, i32* %23, align 4
  %386 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %387 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %386, i32 0, i32 3
  %388 = load i32, i32* %387, align 4
  store i32 %388, i32* %24, align 4
  %389 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %390 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %389, i32 0, i32 1
  %391 = load i32, i32* %390, align 4
  store i32 %391, i32* %25, align 4
  %392 = load i32, i32* %20, align 4
  %393 = load i32, i32* %23, align 4
  %394 = load i32, i32* %21, align 4
  %395 = load i32, i32* %24, align 4
  %396 = load i32, i32* %22, align 4
  %397 = load i32, i32* %25, align 4
  %398 = call i64 @xdl_append_merge(i32** %15, i32 1, i32 %392, i32 %393, i32 %394, i32 %395, i32 %396, i32 %397)
  %399 = icmp ne i64 %398, 0
  br i1 %399, label %400, label %403

400:                                              ; preds = %363
  %401 = load i32*, i32** %14, align 8
  %402 = call i32 @xdl_cleanup_merge(i32* %401)
  store i32 -1, i32* %7, align 4
  br label %536

403:                                              ; preds = %363
  %404 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %405 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %404, i32 0, i32 4
  %406 = load %struct.TYPE_27__*, %struct.TYPE_27__** %405, align 8
  store %struct.TYPE_27__* %406, %struct.TYPE_27__** %9, align 8
  br label %355

407:                                              ; preds = %355
  br label %408

408:                                              ; preds = %456, %407
  %409 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  %410 = icmp ne %struct.TYPE_27__* %409, null
  br i1 %410, label %411, label %460

411:                                              ; preds = %408
  %412 = load i32*, i32** %14, align 8
  %413 = icmp ne i32* %412, null
  br i1 %413, label %416, label %414

414:                                              ; preds = %411
  %415 = load i32*, i32** %15, align 8
  store i32* %415, i32** %14, align 8
  br label %416

416:                                              ; preds = %414, %411
  %417 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  %418 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %417, i32 0, i32 0
  %419 = load i32, i32* %418, align 8
  store i32 %419, i32* %20, align 4
  %420 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  %421 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %420, i32 0, i32 0
  %422 = load i32, i32* %421, align 8
  %423 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %424 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %423, i32 0, i32 1
  %425 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %424, i32 0, i32 0
  %426 = load i32, i32* %425, align 4
  %427 = add nsw i32 %422, %426
  %428 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %429 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %428, i32 0, i32 0
  %430 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %429, i32 0, i32 0
  %431 = load i32, i32* %430, align 4
  %432 = sub nsw i32 %427, %431
  store i32 %432, i32* %21, align 4
  %433 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  %434 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %433, i32 0, i32 2
  %435 = load i32, i32* %434, align 8
  store i32 %435, i32* %22, align 4
  %436 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  %437 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %436, i32 0, i32 1
  %438 = load i32, i32* %437, align 4
  store i32 %438, i32* %23, align 4
  %439 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  %440 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %439, i32 0, i32 1
  %441 = load i32, i32* %440, align 4
  store i32 %441, i32* %24, align 4
  %442 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  %443 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %442, i32 0, i32 3
  %444 = load i32, i32* %443, align 4
  store i32 %444, i32* %25, align 4
  %445 = load i32, i32* %20, align 4
  %446 = load i32, i32* %23, align 4
  %447 = load i32, i32* %21, align 4
  %448 = load i32, i32* %24, align 4
  %449 = load i32, i32* %22, align 4
  %450 = load i32, i32* %25, align 4
  %451 = call i64 @xdl_append_merge(i32** %15, i32 2, i32 %445, i32 %446, i32 %447, i32 %448, i32 %449, i32 %450)
  %452 = icmp ne i64 %451, 0
  br i1 %452, label %453, label %456

453:                                              ; preds = %416
  %454 = load i32*, i32** %14, align 8
  %455 = call i32 @xdl_cleanup_merge(i32* %454)
  store i32 -1, i32* %7, align 4
  br label %536

456:                                              ; preds = %416
  %457 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  %458 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %457, i32 0, i32 4
  %459 = load %struct.TYPE_27__*, %struct.TYPE_27__** %458, align 8
  store %struct.TYPE_27__* %459, %struct.TYPE_27__** %11, align 8
  br label %408

460:                                              ; preds = %408
  %461 = load i32*, i32** %14, align 8
  %462 = icmp ne i32* %461, null
  br i1 %462, label %465, label %463

463:                                              ; preds = %460
  %464 = load i32*, i32** %15, align 8
  store i32* %464, i32** %14, align 8
  br label %465

465:                                              ; preds = %463, %460
  %466 = load i32, i32* @XDL_MERGE_ZEALOUS, align 4
  %467 = load i32, i32* %26, align 4
  %468 = icmp sle i32 %466, %467
  br i1 %468, label %469, label %488

469:                                              ; preds = %465
  %470 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %471 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %472 = load i32*, i32** %14, align 8
  %473 = load %struct.TYPE_24__*, %struct.TYPE_24__** %16, align 8
  %474 = call i64 @xdl_refine_conflicts(%struct.TYPE_26__* %470, %struct.TYPE_26__* %471, i32* %472, %struct.TYPE_24__* %473)
  %475 = icmp slt i64 %474, 0
  br i1 %475, label %485, label %476

476:                                              ; preds = %469
  %477 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %478 = load i32*, i32** %14, align 8
  %479 = load i32, i32* @XDL_MERGE_ZEALOUS, align 4
  %480 = load i32, i32* %26, align 4
  %481 = icmp slt i32 %479, %480
  %482 = zext i1 %481 to i32
  %483 = call i64 @xdl_simplify_non_conflicts(%struct.TYPE_26__* %477, i32* %478, i32 %482)
  %484 = icmp slt i64 %483, 0
  br i1 %484, label %485, label %488

485:                                              ; preds = %476, %469
  %486 = load i32*, i32** %14, align 8
  %487 = call i32 @xdl_cleanup_merge(i32* %486)
  store i32 -1, i32* %7, align 4
  br label %536

488:                                              ; preds = %476, %465
  %489 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %490 = icmp ne %struct.TYPE_28__* %489, null
  br i1 %490, label %491, label %533

491:                                              ; preds = %488
  %492 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %493 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %492, i32 0, i32 6
  %494 = load i32, i32* %493, align 4
  store i32 %494, i32* %31, align 4
  %495 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %496 = load i8*, i8** %18, align 8
  %497 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %498 = load i8*, i8** %19, align 8
  %499 = load i8*, i8** %17, align 8
  %500 = load i32, i32* %28, align 4
  %501 = load i32*, i32** %14, align 8
  %502 = load i32, i32* %27, align 4
  %503 = load i32, i32* %31, align 4
  %504 = call i32 @xdl_fill_merge_buffer(%struct.TYPE_26__* %495, i8* %496, %struct.TYPE_26__* %497, i8* %498, i8* %499, i32 %500, i32* %501, i32* null, i32 %502, i32 %503)
  store i32 %504, i32* %32, align 4
  %505 = load i32, i32* %32, align 4
  %506 = call i32* @xdl_malloc(i32 %505)
  %507 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %508 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %507, i32 0, i32 1
  store i32* %506, i32** %508, align 8
  %509 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %510 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %509, i32 0, i32 1
  %511 = load i32*, i32** %510, align 8
  %512 = icmp ne i32* %511, null
  br i1 %512, label %516, label %513

513:                                              ; preds = %491
  %514 = load i32*, i32** %14, align 8
  %515 = call i32 @xdl_cleanup_merge(i32* %514)
  store i32 -1, i32* %7, align 4
  br label %536

516:                                              ; preds = %491
  %517 = load i32, i32* %32, align 4
  %518 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %519 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %518, i32 0, i32 0
  store i32 %517, i32* %519, align 8
  %520 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %521 = load i8*, i8** %18, align 8
  %522 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %523 = load i8*, i8** %19, align 8
  %524 = load i8*, i8** %17, align 8
  %525 = load i32, i32* %28, align 4
  %526 = load i32*, i32** %14, align 8
  %527 = load %struct.TYPE_28__*, %struct.TYPE_28__** %13, align 8
  %528 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %527, i32 0, i32 1
  %529 = load i32*, i32** %528, align 8
  %530 = load i32, i32* %27, align 4
  %531 = load i32, i32* %31, align 4
  %532 = call i32 @xdl_fill_merge_buffer(%struct.TYPE_26__* %520, i8* %521, %struct.TYPE_26__* %522, i8* %523, i8* %524, i32 %525, i32* %526, i32* %529, i32 %530, i32 %531)
  br label %533

533:                                              ; preds = %516, %488
  %534 = load i32*, i32** %14, align 8
  %535 = call i32 @xdl_cleanup_merge(i32* %534)
  store i32 %535, i32* %7, align 4
  br label %536

536:                                              ; preds = %533, %513, %485, %453, %400, %319, %178, %124
  %537 = load i32, i32* %7, align 4
  ret i32 %537
}

declare dso_local i64 @xdl_append_merge(i32**, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @xdl_cleanup_merge(i32*) #1

declare dso_local i64 @xdl_merge_cmp_lines(%struct.TYPE_26__*, i32, %struct.TYPE_26__*, i32, i32, i32) #1

declare dso_local i64 @xdl_refine_conflicts(%struct.TYPE_26__*, %struct.TYPE_26__*, i32*, %struct.TYPE_24__*) #1

declare dso_local i64 @xdl_simplify_non_conflicts(%struct.TYPE_26__*, i32*, i32) #1

declare dso_local i32 @xdl_fill_merge_buffer(%struct.TYPE_26__*, i8*, %struct.TYPE_26__*, i8*, i8*, i32, i32*, i32*, i32, i32) #1

declare dso_local i32* @xdl_malloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
