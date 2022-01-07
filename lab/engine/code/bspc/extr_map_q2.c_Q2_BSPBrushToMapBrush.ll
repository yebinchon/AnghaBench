; ModuleID = '/home/carl/AnghaBench/lab/engine/code/bspc/extr_map_q2.c_Q2_BSPBrushToMapBrush.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/bspc/extr_map_q2.c_Q2_BSPBrushToMapBrush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { i32, i32, %struct.TYPE_22__*, i64, %struct.TYPE_24__*, i32 }
%struct.TYPE_22__ = type { i32, i32, i32, i64, i32 }
%struct.TYPE_24__ = type { i32, i64 }
%struct.TYPE_27__ = type { i32, i32, i32 }
%struct.TYPE_26__ = type { i64, i64 }
%struct.TYPE_28__ = type { i32 }
%struct.TYPE_25__ = type { i32, i32 }

@nummapbrushes = common dso_local global i64 0, align 8
@MAX_MAPFILE_BRUSHES = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [37 x i8] c"nummapbrushes >= MAX_MAPFILE_BRUSHES\00", align 1
@mapbrushes = common dso_local global %struct.TYPE_23__* null, align 8
@brushsides = common dso_local global %struct.TYPE_22__* null, align 8
@nummapbrushsides = common dso_local global i64 0, align 8
@entities = common dso_local global i32 0, align 4
@dbrushleafnums = common dso_local global i32* null, align 8
@dbrushes = common dso_local global %struct.TYPE_27__* null, align 8
@dbrushsides = common dso_local global %struct.TYPE_26__* null, align 8
@MAX_MAPFILE_BRUSHSIDES = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [23 x i8] c"MAX_MAPFILE_BRUSHSIDES\00", align 1
@brushsidetextured = common dso_local global i64* null, align 8
@SFL_TEXTURED = common dso_local global i32 0, align 4
@texinfo = common dso_local global %struct.TYPE_28__* null, align 8
@SURF_TRANS33 = common dso_local global i32 0, align 4
@SURF_TRANS66 = common dso_local global i32 0, align 4
@CONTENTS_DETAIL = common dso_local global i32 0, align 4
@CONTENTS_PLAYERCLIP = common dso_local global i32 0, align 4
@CONTENTS_MONSTERCLIP = common dso_local global i32 0, align 4
@fulldetail = common dso_local global i64 0, align 8
@LAST_VISIBLE_CONTENTS = common dso_local global i32 0, align 4
@CONTENTS_MIST = common dso_local global i32 0, align 4
@CONTENTS_SOLID = common dso_local global i32 0, align 4
@SURF_HINT = common dso_local global i32 0, align 4
@SURF_SKIP = common dso_local global i32 0, align 4
@dplanes = common dso_local global %struct.TYPE_25__* null, align 8
@.str.2 = private unnamed_addr constant [38 x i8] c"Entity %i, Brush %i: duplicate plane\0A\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"Entity %i, Brush %i: mirrored plane\0A\00", align 1
@c_squattbrushes = common dso_local global i32 0, align 4
@create_aas = common dso_local global i64 0, align 8
@nodetail = common dso_local global i64 0, align 8
@nowater = common dso_local global i64 0, align 8
@CONTENTS_LAVA = common dso_local global i32 0, align 4
@CONTENTS_SLIME = common dso_local global i32 0, align 4
@CONTENTS_WATER = common dso_local global i32 0, align 4
@c_clipbrushes = common dso_local global i32 0, align 4
@TEXINFO_NODE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Q2_BSPBrushToMapBrush(%struct.TYPE_27__* %0, %struct.TYPE_24__* %1) #0 {
  %3 = alloca %struct.TYPE_27__*, align 8
  %4 = alloca %struct.TYPE_24__*, align 8
  %5 = alloca %struct.TYPE_23__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_22__*, align 8
  %10 = alloca %struct.TYPE_22__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_26__*, align 8
  %13 = alloca %struct.TYPE_25__*, align 8
  store %struct.TYPE_27__* %0, %struct.TYPE_27__** %3, align 8
  store %struct.TYPE_24__* %1, %struct.TYPE_24__** %4, align 8
  %14 = load i64, i64* @nummapbrushes, align 8
  %15 = load i64, i64* @MAX_MAPFILE_BRUSHES, align 8
  %16 = icmp uge i64 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = call i32 @Error(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  br label %19

19:                                               ; preds = %17, %2
  %20 = load %struct.TYPE_23__*, %struct.TYPE_23__** @mapbrushes, align 8
  %21 = load i64, i64* @nummapbrushes, align 8
  %22 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %20, i64 %21
  store %struct.TYPE_23__* %22, %struct.TYPE_23__** %5, align 8
  %23 = load %struct.TYPE_22__*, %struct.TYPE_22__** @brushsides, align 8
  %24 = load i64, i64* @nummapbrushsides, align 8
  %25 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %23, i64 %24
  %26 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %26, i32 0, i32 2
  store %struct.TYPE_22__* %25, %struct.TYPE_22__** %27, align 8
  %28 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %29 = load i32, i32* @entities, align 4
  %30 = sext i32 %29 to i64
  %31 = sub i64 0, %30
  %32 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %28, i64 %31
  %33 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %33, i32 0, i32 4
  store %struct.TYPE_24__* %32, %struct.TYPE_24__** %34, align 8
  %35 = load i64, i64* @nummapbrushes, align 8
  %36 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = sub i64 %35, %38
  %40 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %40, i32 0, i32 3
  store i64 %39, i64* %41, align 8
  %42 = load i32*, i32** @dbrushleafnums, align 8
  %43 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %44 = load %struct.TYPE_27__*, %struct.TYPE_27__** @dbrushes, align 8
  %45 = ptrtoint %struct.TYPE_27__* %43 to i64
  %46 = ptrtoint %struct.TYPE_27__* %44 to i64
  %47 = sub i64 %45, %46
  %48 = sdiv exact i64 %47, 12
  %49 = getelementptr inbounds i32, i32* %42, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %51, i32 0, i32 5
  store i32 %50, i32* %52, align 8
  store i32 0, i32* %8, align 4
  br label %53

53:                                               ; preds = %298, %19
  %54 = load i32, i32* %8, align 4
  %55 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = icmp slt i32 %54, %57
  br i1 %58, label %59, label %301

59:                                               ; preds = %53
  %60 = load %struct.TYPE_26__*, %struct.TYPE_26__** @dbrushsides, align 8
  %61 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* %8, align 4
  %65 = add nsw i32 %63, %64
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %60, i64 %66
  store %struct.TYPE_26__* %67, %struct.TYPE_26__** %12, align 8
  %68 = load i64, i64* @nummapbrushsides, align 8
  %69 = load i64, i64* @MAX_MAPFILE_BRUSHSIDES, align 8
  %70 = icmp uge i64 %68, %69
  br i1 %70, label %71, label %73

71:                                               ; preds = %59
  %72 = call i32 @Error(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  br label %73

73:                                               ; preds = %71, %59
  %74 = load %struct.TYPE_22__*, %struct.TYPE_22__** @brushsides, align 8
  %75 = load i64, i64* @nummapbrushsides, align 8
  %76 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %74, i64 %75
  store %struct.TYPE_22__* %76, %struct.TYPE_22__** %9, align 8
  %77 = load i64*, i64** @brushsidetextured, align 8
  %78 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %79 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* %8, align 4
  %82 = add nsw i32 %80, %81
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i64, i64* %77, i64 %83
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %93

87:                                               ; preds = %73
  %88 = load i32, i32* @SFL_TEXTURED, align 4
  %89 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %90 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %89, i32 0, i32 4
  %91 = load i32, i32* %90, align 8
  %92 = or i32 %91, %88
  store i32 %92, i32* %90, align 8
  br label %100

93:                                               ; preds = %73
  %94 = load i32, i32* @SFL_TEXTURED, align 4
  %95 = xor i32 %94, -1
  %96 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %97 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %96, i32 0, i32 4
  %98 = load i32, i32* %97, align 8
  %99 = and i32 %98, %95
  store i32 %99, i32* %97, align 8
  br label %100

100:                                              ; preds = %93, %87
  %101 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %102 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %105 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %104, i32 0, i32 0
  store i32 %103, i32* %105, align 8
  %106 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %107 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = icmp ult i64 %108, 0
  br i1 %109, label %110, label %113

110:                                              ; preds = %100
  %111 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %112 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %111, i32 0, i32 1
  store i32 0, i32* %112, align 4
  br label %123

113:                                              ; preds = %100
  %114 = load %struct.TYPE_28__*, %struct.TYPE_28__** @texinfo, align 8
  %115 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %116 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %114, i64 %117
  %119 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %122 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %121, i32 0, i32 1
  store i32 %120, i32* %122, align 4
  br label %123

123:                                              ; preds = %113, %110
  %124 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %125 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* @SURF_TRANS33, align 4
  %128 = load i32, i32* @SURF_TRANS66, align 4
  %129 = or i32 %127, %128
  %130 = and i32 %126, %129
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %138

132:                                              ; preds = %123
  %133 = load i32, i32* @CONTENTS_DETAIL, align 4
  %134 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %135 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = or i32 %136, %133
  store i32 %137, i32* %135, align 8
  br label %138

138:                                              ; preds = %132, %123
  %139 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %140 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = load i32, i32* @CONTENTS_PLAYERCLIP, align 4
  %143 = load i32, i32* @CONTENTS_MONSTERCLIP, align 4
  %144 = or i32 %142, %143
  %145 = and i32 %141, %144
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %153

147:                                              ; preds = %138
  %148 = load i32, i32* @CONTENTS_DETAIL, align 4
  %149 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %150 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = or i32 %151, %148
  store i32 %152, i32* %150, align 8
  br label %153

153:                                              ; preds = %147, %138
  %154 = load i64, i64* @fulldetail, align 8
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %163

156:                                              ; preds = %153
  %157 = load i32, i32* @CONTENTS_DETAIL, align 4
  %158 = xor i32 %157, -1
  %159 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %160 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = and i32 %161, %158
  store i32 %162, i32* %160, align 8
  br label %163

163:                                              ; preds = %156, %153
  %164 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %165 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = load i32, i32* @LAST_VISIBLE_CONTENTS, align 4
  %168 = sub nsw i32 %167, 1
  %169 = load i32, i32* @CONTENTS_PLAYERCLIP, align 4
  %170 = or i32 %168, %169
  %171 = load i32, i32* @CONTENTS_MONSTERCLIP, align 4
  %172 = or i32 %170, %171
  %173 = load i32, i32* @CONTENTS_MIST, align 4
  %174 = or i32 %172, %173
  %175 = and i32 %166, %174
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %183, label %177

177:                                              ; preds = %163
  %178 = load i32, i32* @CONTENTS_SOLID, align 4
  %179 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %180 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  %182 = or i32 %181, %178
  store i32 %182, i32* %180, align 8
  br label %183

183:                                              ; preds = %177, %163
  %184 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %185 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %184, i32 0, i32 1
  %186 = load i32, i32* %185, align 4
  %187 = load i32, i32* @SURF_HINT, align 4
  %188 = load i32, i32* @SURF_SKIP, align 4
  %189 = or i32 %187, %188
  %190 = and i32 %186, %189
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %201

192:                                              ; preds = %183
  %193 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %194 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %193, i32 0, i32 0
  store i32 0, i32* %194, align 8
  %195 = load i32, i32* @CONTENTS_DETAIL, align 4
  %196 = xor i32 %195, -1
  %197 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %198 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %197, i32 0, i32 1
  %199 = load i32, i32* %198, align 4
  %200 = and i32 %199, %196
  store i32 %200, i32* %198, align 4
  br label %201

201:                                              ; preds = %192, %183
  %202 = load %struct.TYPE_25__*, %struct.TYPE_25__** @dplanes, align 8
  %203 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %204 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %203, i32 0, i32 1
  %205 = load i64, i64* %204, align 8
  %206 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %202, i64 %205
  store %struct.TYPE_25__* %206, %struct.TYPE_25__** %13, align 8
  %207 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %208 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %207, i32 0, i32 1
  %209 = load i32, i32* %208, align 4
  %210 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %211 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 4
  %213 = call i32 @FindFloatPlane(i32 %209, i32 %212)
  store i32 %213, i32* %11, align 4
  store i32 0, i32* %7, align 4
  br label %214

214:                                              ; preds = %256, %201
  %215 = load i32, i32* %7, align 4
  %216 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %217 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 8
  %219 = icmp slt i32 %215, %218
  br i1 %219, label %220, label %259

220:                                              ; preds = %214
  %221 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %222 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %221, i32 0, i32 2
  %223 = load %struct.TYPE_22__*, %struct.TYPE_22__** %222, align 8
  %224 = load i32, i32* %7, align 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %223, i64 %225
  store %struct.TYPE_22__* %226, %struct.TYPE_22__** %10, align 8
  %227 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %228 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %227, i32 0, i32 2
  %229 = load i32, i32* %228, align 8
  %230 = load i32, i32* %11, align 4
  %231 = icmp eq i32 %229, %230
  br i1 %231, label %232, label %240

232:                                              ; preds = %220
  %233 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %234 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %233, i32 0, i32 4
  %235 = load %struct.TYPE_24__*, %struct.TYPE_24__** %234, align 8
  %236 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %237 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %236, i32 0, i32 3
  %238 = load i64, i64* %237, align 8
  %239 = call i32 @Log_Print(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), %struct.TYPE_24__* %235, i64 %238)
  br label %259

240:                                              ; preds = %220
  %241 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %242 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %241, i32 0, i32 2
  %243 = load i32, i32* %242, align 8
  %244 = load i32, i32* %11, align 4
  %245 = xor i32 %244, 1
  %246 = icmp eq i32 %243, %245
  br i1 %246, label %247, label %255

247:                                              ; preds = %240
  %248 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %249 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %248, i32 0, i32 4
  %250 = load %struct.TYPE_24__*, %struct.TYPE_24__** %249, align 8
  %251 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %252 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %251, i32 0, i32 3
  %253 = load i64, i64* %252, align 8
  %254 = call i32 @Log_Print(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), %struct.TYPE_24__* %250, i64 %253)
  br label %259

255:                                              ; preds = %240
  br label %256

256:                                              ; preds = %255
  %257 = load i32, i32* %7, align 4
  %258 = add nsw i32 %257, 1
  store i32 %258, i32* %7, align 4
  br label %214

259:                                              ; preds = %247, %232, %214
  %260 = load i32, i32* %7, align 4
  %261 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %262 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %261, i32 0, i32 0
  %263 = load i32, i32* %262, align 8
  %264 = icmp ne i32 %260, %263
  br i1 %264, label %265, label %266

265:                                              ; preds = %259
  br label %298

266:                                              ; preds = %259
  %267 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %268 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %267, i32 0, i32 2
  %269 = load %struct.TYPE_22__*, %struct.TYPE_22__** %268, align 8
  %270 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %271 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %270, i32 0, i32 0
  %272 = load i32, i32* %271, align 8
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %269, i64 %273
  store %struct.TYPE_22__* %274, %struct.TYPE_22__** %9, align 8
  %275 = load i32, i32* %11, align 4
  %276 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %277 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %276, i32 0, i32 2
  store i32 %275, i32* %277, align 8
  %278 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %279 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %278, i32 0, i32 0
  %280 = load i64, i64* %279, align 8
  %281 = icmp ult i64 %280, 0
  br i1 %281, label %282, label %285

282:                                              ; preds = %266
  %283 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %284 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %283, i32 0, i32 3
  store i64 0, i64* %284, align 8
  br label %291

285:                                              ; preds = %266
  %286 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %287 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %286, i32 0, i32 0
  %288 = load i64, i64* %287, align 8
  %289 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %290 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %289, i32 0, i32 3
  store i64 %288, i64* %290, align 8
  br label %291

291:                                              ; preds = %285, %282
  %292 = load i64, i64* @nummapbrushsides, align 8
  %293 = add i64 %292, 1
  store i64 %293, i64* @nummapbrushsides, align 8
  %294 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %295 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %294, i32 0, i32 0
  %296 = load i32, i32* %295, align 8
  %297 = add nsw i32 %296, 1
  store i32 %297, i32* %295, align 8
  br label %298

298:                                              ; preds = %291, %265
  %299 = load i32, i32* %8, align 4
  %300 = add nsw i32 %299, 1
  store i32 %300, i32* %8, align 4
  br label %53

301:                                              ; preds = %53
  %302 = load %struct.TYPE_27__*, %struct.TYPE_27__** %3, align 8
  %303 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %302, i32 0, i32 2
  %304 = load i32, i32* %303, align 4
  %305 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %306 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %305, i32 0, i32 1
  store i32 %304, i32* %306, align 4
  %307 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %308 = call i32 @Q2_BrushContents(%struct.TYPE_23__* %307)
  %309 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %310 = call i64 @BrushExists(%struct.TYPE_23__* %309)
  %311 = icmp ne i64 %310, 0
  br i1 %311, label %312, label %317

312:                                              ; preds = %301
  %313 = load i32, i32* @c_squattbrushes, align 4
  %314 = add nsw i32 %313, 1
  store i32 %314, i32* @c_squattbrushes, align 4
  %315 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %316 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %315, i32 0, i32 0
  store i32 0, i32* %316, align 8
  br label %396

317:                                              ; preds = %301
  %318 = load i64, i64* @create_aas, align 8
  %319 = icmp ne i64 %318, 0
  br i1 %319, label %320, label %324

320:                                              ; preds = %317
  %321 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %322 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %323 = call i32 @AAS_CreateMapBrushes(%struct.TYPE_23__* %321, %struct.TYPE_24__* %322, i32 0)
  br label %396

324:                                              ; preds = %317
  %325 = load i64, i64* @nodetail, align 8
  %326 = icmp ne i64 %325, 0
  br i1 %326, label %327, label %337

327:                                              ; preds = %324
  %328 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %329 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %328, i32 0, i32 1
  %330 = load i32, i32* %329, align 4
  %331 = load i32, i32* @CONTENTS_DETAIL, align 4
  %332 = and i32 %330, %331
  %333 = icmp ne i32 %332, 0
  br i1 %333, label %334, label %337

334:                                              ; preds = %327
  %335 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %336 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %335, i32 0, i32 0
  store i32 0, i32* %336, align 8
  br label %396

337:                                              ; preds = %327, %324
  %338 = load i64, i64* @nowater, align 8
  %339 = icmp ne i64 %338, 0
  br i1 %339, label %340, label %354

340:                                              ; preds = %337
  %341 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %342 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %341, i32 0, i32 1
  %343 = load i32, i32* %342, align 4
  %344 = load i32, i32* @CONTENTS_LAVA, align 4
  %345 = load i32, i32* @CONTENTS_SLIME, align 4
  %346 = or i32 %344, %345
  %347 = load i32, i32* @CONTENTS_WATER, align 4
  %348 = or i32 %346, %347
  %349 = and i32 %343, %348
  %350 = icmp ne i32 %349, 0
  br i1 %350, label %351, label %354

351:                                              ; preds = %340
  %352 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %353 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %352, i32 0, i32 0
  store i32 0, i32* %353, align 8
  br label %396

354:                                              ; preds = %340, %337
  %355 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %356 = call i32 @MakeBrushWindings(%struct.TYPE_23__* %355)
  %357 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %358 = call i32 @MarkBrushBevels(%struct.TYPE_23__* %357)
  %359 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %360 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %359, i32 0, i32 1
  %361 = load i32, i32* %360, align 4
  %362 = load i32, i32* @CONTENTS_PLAYERCLIP, align 4
  %363 = load i32, i32* @CONTENTS_MONSTERCLIP, align 4
  %364 = or i32 %362, %363
  %365 = and i32 %361, %364
  %366 = icmp ne i32 %365, 0
  br i1 %366, label %367, label %389

367:                                              ; preds = %354
  %368 = load i32, i32* @c_clipbrushes, align 4
  %369 = add nsw i32 %368, 1
  store i32 %369, i32* @c_clipbrushes, align 4
  store i32 0, i32* %6, align 4
  br label %370

370:                                              ; preds = %385, %367
  %371 = load i32, i32* %6, align 4
  %372 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %373 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %372, i32 0, i32 0
  %374 = load i32, i32* %373, align 8
  %375 = icmp slt i32 %371, %374
  br i1 %375, label %376, label %388

376:                                              ; preds = %370
  %377 = load i64, i64* @TEXINFO_NODE, align 8
  %378 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %379 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %378, i32 0, i32 2
  %380 = load %struct.TYPE_22__*, %struct.TYPE_22__** %379, align 8
  %381 = load i32, i32* %6, align 4
  %382 = sext i32 %381 to i64
  %383 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %380, i64 %382
  %384 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %383, i32 0, i32 3
  store i64 %377, i64* %384, align 8
  br label %385

385:                                              ; preds = %376
  %386 = load i32, i32* %6, align 4
  %387 = add nsw i32 %386, 1
  store i32 %387, i32* %6, align 4
  br label %370

388:                                              ; preds = %370
  br label %389

389:                                              ; preds = %388, %354
  %390 = load i64, i64* @nummapbrushes, align 8
  %391 = add i64 %390, 1
  store i64 %391, i64* @nummapbrushes, align 8
  %392 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %393 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %392, i32 0, i32 0
  %394 = load i32, i32* %393, align 8
  %395 = add nsw i32 %394, 1
  store i32 %395, i32* %393, align 8
  br label %396

396:                                              ; preds = %389, %351, %334, %320, %312
  ret void
}

declare dso_local i32 @Error(i8*) #1

declare dso_local i32 @FindFloatPlane(i32, i32) #1

declare dso_local i32 @Log_Print(i8*, %struct.TYPE_24__*, i64) #1

declare dso_local i32 @Q2_BrushContents(%struct.TYPE_23__*) #1

declare dso_local i64 @BrushExists(%struct.TYPE_23__*) #1

declare dso_local i32 @AAS_CreateMapBrushes(%struct.TYPE_23__*, %struct.TYPE_24__*, i32) #1

declare dso_local i32 @MakeBrushWindings(%struct.TYPE_23__*) #1

declare dso_local i32 @MarkBrushBevels(%struct.TYPE_23__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
