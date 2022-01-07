; ModuleID = '/home/carl/AnghaBench/kphp-kdb/TL/extr_tl-parser-new.c_uniformize.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/TL/extr_tl-parser-new.c_uniformize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tl_combinator_tree = type { i64, i64, i64, i64, i8*, %struct.tl_combinator_tree*, %struct.tl_combinator_tree* }

@act_var = common dso_local global i64 0, align 8
@type_type = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"Type mistmatch. Error\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"Circular reference. Error\0A\00", align 1
@type_num = common dso_local global i64 0, align 8
@type_num_value = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uniformize(%struct.tl_combinator_tree* %0, %struct.tl_combinator_tree* %1, i32** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.tl_combinator_tree*, align 8
  %6 = alloca %struct.tl_combinator_tree*, align 8
  %7 = alloca i32**, align 8
  %8 = alloca %struct.tl_combinator_tree*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.tl_combinator_tree*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.tl_combinator_tree*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca %struct.tl_combinator_tree*, align 8
  %16 = alloca i32, align 4
  store %struct.tl_combinator_tree* %0, %struct.tl_combinator_tree** %5, align 8
  store %struct.tl_combinator_tree* %1, %struct.tl_combinator_tree** %6, align 8
  store i32** %2, i32*** %7, align 8
  %17 = load %struct.tl_combinator_tree*, %struct.tl_combinator_tree** %5, align 8
  %18 = icmp ne %struct.tl_combinator_tree* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %3
  %20 = load %struct.tl_combinator_tree*, %struct.tl_combinator_tree** %6, align 8
  %21 = icmp ne %struct.tl_combinator_tree* %20, null
  br i1 %21, label %33, label %22

22:                                               ; preds = %19, %3
  %23 = load %struct.tl_combinator_tree*, %struct.tl_combinator_tree** %5, align 8
  %24 = icmp ne %struct.tl_combinator_tree* %23, null
  br i1 %24, label %29, label %25

25:                                               ; preds = %22
  %26 = load %struct.tl_combinator_tree*, %struct.tl_combinator_tree** %6, align 8
  %27 = icmp ne %struct.tl_combinator_tree* %26, null
  %28 = xor i1 %27, true
  br label %29

29:                                               ; preds = %25, %22
  %30 = phi i1 [ false, %22 ], [ %28, %25 ]
  %31 = zext i1 %30 to i32
  %32 = call i32 @assert(i32 %31)
  store i32 1, i32* %4, align 4
  br label %421

33:                                               ; preds = %19
  %34 = load %struct.tl_combinator_tree*, %struct.tl_combinator_tree** %6, align 8
  %35 = getelementptr inbounds %struct.tl_combinator_tree, %struct.tl_combinator_tree* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @act_var, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %43

39:                                               ; preds = %33
  %40 = load %struct.tl_combinator_tree*, %struct.tl_combinator_tree** %6, align 8
  store %struct.tl_combinator_tree* %40, %struct.tl_combinator_tree** %8, align 8
  %41 = load %struct.tl_combinator_tree*, %struct.tl_combinator_tree** %5, align 8
  store %struct.tl_combinator_tree* %41, %struct.tl_combinator_tree** %6, align 8
  %42 = load %struct.tl_combinator_tree*, %struct.tl_combinator_tree** %8, align 8
  store %struct.tl_combinator_tree* %42, %struct.tl_combinator_tree** %5, align 8
  br label %43

43:                                               ; preds = %39, %33
  %44 = load %struct.tl_combinator_tree*, %struct.tl_combinator_tree** %5, align 8
  %45 = getelementptr inbounds %struct.tl_combinator_tree, %struct.tl_combinator_tree* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @type_type, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %166

49:                                               ; preds = %43
  %50 = load %struct.tl_combinator_tree*, %struct.tl_combinator_tree** %6, align 8
  %51 = getelementptr inbounds %struct.tl_combinator_tree, %struct.tl_combinator_tree* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @type_type, align 8
  %54 = icmp ne i64 %52, %53
  br i1 %54, label %71, label %55

55:                                               ; preds = %49
  %56 = load %struct.tl_combinator_tree*, %struct.tl_combinator_tree** %5, align 8
  %57 = getelementptr inbounds %struct.tl_combinator_tree, %struct.tl_combinator_tree* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.tl_combinator_tree*, %struct.tl_combinator_tree** %6, align 8
  %60 = getelementptr inbounds %struct.tl_combinator_tree, %struct.tl_combinator_tree* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %58, %61
  br i1 %62, label %71, label %63

63:                                               ; preds = %55
  %64 = load %struct.tl_combinator_tree*, %struct.tl_combinator_tree** %5, align 8
  %65 = getelementptr inbounds %struct.tl_combinator_tree, %struct.tl_combinator_tree* %64, i32 0, i32 3
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.tl_combinator_tree*, %struct.tl_combinator_tree** %6, align 8
  %68 = getelementptr inbounds %struct.tl_combinator_tree, %struct.tl_combinator_tree* %67, i32 0, i32 3
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %66, %69
  br i1 %70, label %71, label %73

71:                                               ; preds = %63, %55, %49
  %72 = call i32 @vkprintf(i32 3, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %421

73:                                               ; preds = %63
  %74 = load %struct.tl_combinator_tree*, %struct.tl_combinator_tree** %6, align 8
  %75 = getelementptr inbounds %struct.tl_combinator_tree, %struct.tl_combinator_tree* %74, i32 0, i32 4
  %76 = load i8*, i8** %75, align 8
  %77 = icmp eq i8* %76, inttoptr (i64 -1 to i8*)
  br i1 %77, label %83, label %78

78:                                               ; preds = %73
  %79 = load %struct.tl_combinator_tree*, %struct.tl_combinator_tree** %5, align 8
  %80 = getelementptr inbounds %struct.tl_combinator_tree, %struct.tl_combinator_tree* %79, i32 0, i32 4
  %81 = load i8*, i8** %80, align 8
  %82 = icmp eq i8* %81, inttoptr (i64 -1 to i8*)
  br i1 %82, label %83, label %84

83:                                               ; preds = %78, %73
  store i32 1, i32* %4, align 4
  br label %421

84:                                               ; preds = %78
  %85 = load %struct.tl_combinator_tree*, %struct.tl_combinator_tree** %5, align 8
  %86 = getelementptr inbounds %struct.tl_combinator_tree, %struct.tl_combinator_tree* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @act_var, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %90, label %125

90:                                               ; preds = %84
  %91 = load %struct.tl_combinator_tree*, %struct.tl_combinator_tree** %6, align 8
  %92 = load %struct.tl_combinator_tree*, %struct.tl_combinator_tree** %5, align 8
  %93 = getelementptr inbounds %struct.tl_combinator_tree, %struct.tl_combinator_tree* %92, i32 0, i32 4
  %94 = load i8*, i8** %93, align 8
  %95 = load i32**, i32*** %7, align 8
  %96 = call i32 @tl_tree_lookup_value(%struct.tl_combinator_tree* %91, i8* %94, i32** %95)
  store i32 %96, i32* %9, align 4
  %97 = load i32, i32* %9, align 4
  %98 = icmp sgt i32 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %90
  %100 = call i32 @vkprintf(i32 3, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %421

101:                                              ; preds = %90
  %102 = load i32, i32* %9, align 4
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %101
  store i32 1, i32* %4, align 4
  br label %421

105:                                              ; preds = %101
  %106 = load i32**, i32*** %7, align 8
  %107 = load %struct.tl_combinator_tree*, %struct.tl_combinator_tree** %5, align 8
  %108 = getelementptr inbounds %struct.tl_combinator_tree, %struct.tl_combinator_tree* %107, i32 0, i32 4
  %109 = load i8*, i8** %108, align 8
  %110 = call %struct.tl_combinator_tree* @tl_get_var_value(i32** %106, i8* %109)
  store %struct.tl_combinator_tree* %110, %struct.tl_combinator_tree** %10, align 8
  %111 = load %struct.tl_combinator_tree*, %struct.tl_combinator_tree** %10, align 8
  %112 = icmp ne %struct.tl_combinator_tree* %111, null
  br i1 %112, label %120, label %113

113:                                              ; preds = %105
  %114 = load i32**, i32*** %7, align 8
  %115 = load %struct.tl_combinator_tree*, %struct.tl_combinator_tree** %5, align 8
  %116 = getelementptr inbounds %struct.tl_combinator_tree, %struct.tl_combinator_tree* %115, i32 0, i32 4
  %117 = load i8*, i8** %116, align 8
  %118 = load %struct.tl_combinator_tree*, %struct.tl_combinator_tree** %6, align 8
  %119 = call i32 @tl_set_var_value(i32** %114, i8* %117, %struct.tl_combinator_tree* %118)
  store i32 1, i32* %4, align 4
  br label %421

120:                                              ; preds = %105
  %121 = load %struct.tl_combinator_tree*, %struct.tl_combinator_tree** %10, align 8
  %122 = load %struct.tl_combinator_tree*, %struct.tl_combinator_tree** %6, align 8
  %123 = load i32**, i32*** %7, align 8
  %124 = call i32 @uniformize(%struct.tl_combinator_tree* %121, %struct.tl_combinator_tree* %122, i32** %123)
  store i32 %124, i32* %4, align 4
  br label %421

125:                                              ; preds = %84
  %126 = load %struct.tl_combinator_tree*, %struct.tl_combinator_tree** %5, align 8
  %127 = getelementptr inbounds %struct.tl_combinator_tree, %struct.tl_combinator_tree* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = load %struct.tl_combinator_tree*, %struct.tl_combinator_tree** %6, align 8
  %130 = getelementptr inbounds %struct.tl_combinator_tree, %struct.tl_combinator_tree* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = icmp ne i64 %128, %131
  br i1 %132, label %141, label %133

133:                                              ; preds = %125
  %134 = load %struct.tl_combinator_tree*, %struct.tl_combinator_tree** %5, align 8
  %135 = getelementptr inbounds %struct.tl_combinator_tree, %struct.tl_combinator_tree* %134, i32 0, i32 4
  %136 = load i8*, i8** %135, align 8
  %137 = load %struct.tl_combinator_tree*, %struct.tl_combinator_tree** %6, align 8
  %138 = getelementptr inbounds %struct.tl_combinator_tree, %struct.tl_combinator_tree* %137, i32 0, i32 4
  %139 = load i8*, i8** %138, align 8
  %140 = icmp ne i8* %136, %139
  br i1 %140, label %141, label %143

141:                                              ; preds = %133, %125
  %142 = call i32 @vkprintf(i32 3, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %421

143:                                              ; preds = %133
  %144 = load %struct.tl_combinator_tree*, %struct.tl_combinator_tree** %5, align 8
  %145 = getelementptr inbounds %struct.tl_combinator_tree, %struct.tl_combinator_tree* %144, i32 0, i32 6
  %146 = load %struct.tl_combinator_tree*, %struct.tl_combinator_tree** %145, align 8
  %147 = load %struct.tl_combinator_tree*, %struct.tl_combinator_tree** %6, align 8
  %148 = getelementptr inbounds %struct.tl_combinator_tree, %struct.tl_combinator_tree* %147, i32 0, i32 6
  %149 = load %struct.tl_combinator_tree*, %struct.tl_combinator_tree** %148, align 8
  %150 = load i32**, i32*** %7, align 8
  %151 = call i32 @uniformize(%struct.tl_combinator_tree* %146, %struct.tl_combinator_tree* %149, i32** %150)
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %163

153:                                              ; preds = %143
  %154 = load %struct.tl_combinator_tree*, %struct.tl_combinator_tree** %5, align 8
  %155 = getelementptr inbounds %struct.tl_combinator_tree, %struct.tl_combinator_tree* %154, i32 0, i32 5
  %156 = load %struct.tl_combinator_tree*, %struct.tl_combinator_tree** %155, align 8
  %157 = load %struct.tl_combinator_tree*, %struct.tl_combinator_tree** %6, align 8
  %158 = getelementptr inbounds %struct.tl_combinator_tree, %struct.tl_combinator_tree* %157, i32 0, i32 5
  %159 = load %struct.tl_combinator_tree*, %struct.tl_combinator_tree** %158, align 8
  %160 = load i32**, i32*** %7, align 8
  %161 = call i32 @uniformize(%struct.tl_combinator_tree* %156, %struct.tl_combinator_tree* %159, i32** %160)
  %162 = icmp ne i32 %161, 0
  br label %163

163:                                              ; preds = %153, %143
  %164 = phi i1 [ false, %143 ], [ %162, %153 ]
  %165 = zext i1 %164 to i32
  store i32 %165, i32* %4, align 4
  br label %421

166:                                              ; preds = %43
  %167 = load %struct.tl_combinator_tree*, %struct.tl_combinator_tree** %5, align 8
  %168 = getelementptr inbounds %struct.tl_combinator_tree, %struct.tl_combinator_tree* %167, i32 0, i32 1
  %169 = load i64, i64* %168, align 8
  %170 = load i64, i64* @type_num, align 8
  %171 = icmp eq i64 %169, %170
  br i1 %171, label %178, label %172

172:                                              ; preds = %166
  %173 = load %struct.tl_combinator_tree*, %struct.tl_combinator_tree** %5, align 8
  %174 = getelementptr inbounds %struct.tl_combinator_tree, %struct.tl_combinator_tree* %173, i32 0, i32 1
  %175 = load i64, i64* %174, align 8
  %176 = load i64, i64* @type_num_value, align 8
  %177 = icmp eq i64 %175, %176
  br label %178

178:                                              ; preds = %172, %166
  %179 = phi i1 [ true, %166 ], [ %177, %172 ]
  %180 = zext i1 %179 to i32
  %181 = call i32 @assert(i32 %180)
  %182 = load %struct.tl_combinator_tree*, %struct.tl_combinator_tree** %6, align 8
  %183 = getelementptr inbounds %struct.tl_combinator_tree, %struct.tl_combinator_tree* %182, i32 0, i32 1
  %184 = load i64, i64* %183, align 8
  %185 = load i64, i64* @type_num, align 8
  %186 = icmp ne i64 %184, %185
  br i1 %186, label %187, label %195

187:                                              ; preds = %178
  %188 = load %struct.tl_combinator_tree*, %struct.tl_combinator_tree** %6, align 8
  %189 = getelementptr inbounds %struct.tl_combinator_tree, %struct.tl_combinator_tree* %188, i32 0, i32 1
  %190 = load i64, i64* %189, align 8
  %191 = load i64, i64* @type_num_value, align 8
  %192 = icmp ne i64 %190, %191
  br i1 %192, label %193, label %195

193:                                              ; preds = %187
  %194 = call i32 @vkprintf(i32 3, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %421

195:                                              ; preds = %187, %178
  %196 = load %struct.tl_combinator_tree*, %struct.tl_combinator_tree** %6, align 8
  %197 = getelementptr inbounds %struct.tl_combinator_tree, %struct.tl_combinator_tree* %196, i32 0, i32 1
  %198 = load i64, i64* %197, align 8
  %199 = load i64, i64* @type_num, align 8
  %200 = icmp eq i64 %198, %199
  br i1 %200, label %207, label %201

201:                                              ; preds = %195
  %202 = load %struct.tl_combinator_tree*, %struct.tl_combinator_tree** %6, align 8
  %203 = getelementptr inbounds %struct.tl_combinator_tree, %struct.tl_combinator_tree* %202, i32 0, i32 1
  %204 = load i64, i64* %203, align 8
  %205 = load i64, i64* @type_num_value, align 8
  %206 = icmp eq i64 %204, %205
  br label %207

207:                                              ; preds = %201, %195
  %208 = phi i1 [ true, %195 ], [ %206, %201 ]
  %209 = zext i1 %208 to i32
  %210 = call i32 @assert(i32 %209)
  %211 = load %struct.tl_combinator_tree*, %struct.tl_combinator_tree** %6, align 8
  %212 = getelementptr inbounds %struct.tl_combinator_tree, %struct.tl_combinator_tree* %211, i32 0, i32 4
  %213 = load i8*, i8** %212, align 8
  %214 = icmp eq i8* %213, inttoptr (i64 -1 to i8*)
  br i1 %214, label %220, label %215

215:                                              ; preds = %207
  %216 = load %struct.tl_combinator_tree*, %struct.tl_combinator_tree** %5, align 8
  %217 = getelementptr inbounds %struct.tl_combinator_tree, %struct.tl_combinator_tree* %216, i32 0, i32 4
  %218 = load i8*, i8** %217, align 8
  %219 = icmp eq i8* %218, inttoptr (i64 -1 to i8*)
  br i1 %219, label %220, label %221

220:                                              ; preds = %215, %207
  store i32 1, i32* %4, align 4
  br label %421

221:                                              ; preds = %215
  store i64 0, i64* %11, align 8
  %222 = load %struct.tl_combinator_tree*, %struct.tl_combinator_tree** %5, align 8
  store %struct.tl_combinator_tree* %222, %struct.tl_combinator_tree** %12, align 8
  br label %223

223:                                              ; preds = %221, %261
  %224 = load %struct.tl_combinator_tree*, %struct.tl_combinator_tree** %12, align 8
  %225 = getelementptr inbounds %struct.tl_combinator_tree, %struct.tl_combinator_tree* %224, i32 0, i32 3
  %226 = load i64, i64* %225, align 8
  %227 = load i64, i64* %11, align 8
  %228 = add nsw i64 %227, %226
  store i64 %228, i64* %11, align 8
  %229 = load %struct.tl_combinator_tree*, %struct.tl_combinator_tree** %12, align 8
  %230 = getelementptr inbounds %struct.tl_combinator_tree, %struct.tl_combinator_tree* %229, i32 0, i32 1
  %231 = load i64, i64* %230, align 8
  %232 = load i64, i64* @type_num_value, align 8
  %233 = icmp eq i64 %231, %232
  br i1 %233, label %234, label %235

234:                                              ; preds = %223
  br label %274

235:                                              ; preds = %223
  %236 = load i32**, i32*** %7, align 8
  %237 = load %struct.tl_combinator_tree*, %struct.tl_combinator_tree** %12, align 8
  %238 = getelementptr inbounds %struct.tl_combinator_tree, %struct.tl_combinator_tree* %237, i32 0, i32 4
  %239 = load i8*, i8** %238, align 8
  %240 = call %struct.tl_combinator_tree* @tl_get_var_value(i32** %236, i8* %239)
  %241 = icmp ne %struct.tl_combinator_tree* %240, null
  br i1 %241, label %261, label %242

242:                                              ; preds = %235
  %243 = load %struct.tl_combinator_tree*, %struct.tl_combinator_tree** %6, align 8
  %244 = load %struct.tl_combinator_tree*, %struct.tl_combinator_tree** %12, align 8
  %245 = getelementptr inbounds %struct.tl_combinator_tree, %struct.tl_combinator_tree* %244, i32 0, i32 4
  %246 = load i8*, i8** %245, align 8
  %247 = load %struct.tl_combinator_tree*, %struct.tl_combinator_tree** %12, align 8
  %248 = getelementptr inbounds %struct.tl_combinator_tree, %struct.tl_combinator_tree* %247, i32 0, i32 3
  %249 = load i64, i64* %248, align 8
  %250 = load i32**, i32*** %7, align 8
  %251 = call i32 @tl_tree_lookup_value_nat(%struct.tl_combinator_tree* %243, i8* %246, i64 %249, i32** %250)
  store i32 %251, i32* %13, align 4
  %252 = load i32, i32* %13, align 4
  %253 = icmp sgt i32 %252, 0
  br i1 %253, label %254, label %256

254:                                              ; preds = %242
  %255 = call i32 @vkprintf(i32 3, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %421

256:                                              ; preds = %242
  %257 = load i32, i32* %13, align 4
  %258 = icmp eq i32 %257, 0
  br i1 %258, label %259, label %260

259:                                              ; preds = %256
  store i32 1, i32* %4, align 4
  br label %421

260:                                              ; preds = %256
  br label %274

261:                                              ; preds = %235
  %262 = load i32**, i32*** %7, align 8
  %263 = load %struct.tl_combinator_tree*, %struct.tl_combinator_tree** %12, align 8
  %264 = getelementptr inbounds %struct.tl_combinator_tree, %struct.tl_combinator_tree* %263, i32 0, i32 4
  %265 = load i8*, i8** %264, align 8
  %266 = call i64 @tl_get_var_value_num(i32** %262, i8* %265)
  %267 = load i64, i64* %11, align 8
  %268 = add nsw i64 %267, %266
  store i64 %268, i64* %11, align 8
  %269 = load i32**, i32*** %7, align 8
  %270 = load %struct.tl_combinator_tree*, %struct.tl_combinator_tree** %12, align 8
  %271 = getelementptr inbounds %struct.tl_combinator_tree, %struct.tl_combinator_tree* %270, i32 0, i32 4
  %272 = load i8*, i8** %271, align 8
  %273 = call %struct.tl_combinator_tree* @tl_get_var_value(i32** %269, i8* %272)
  store %struct.tl_combinator_tree* %273, %struct.tl_combinator_tree** %12, align 8
  br label %223

274:                                              ; preds = %260, %234
  store i64 0, i64* %14, align 8
  %275 = load %struct.tl_combinator_tree*, %struct.tl_combinator_tree** %6, align 8
  store %struct.tl_combinator_tree* %275, %struct.tl_combinator_tree** %15, align 8
  br label %276

276:                                              ; preds = %274, %314
  %277 = load %struct.tl_combinator_tree*, %struct.tl_combinator_tree** %15, align 8
  %278 = getelementptr inbounds %struct.tl_combinator_tree, %struct.tl_combinator_tree* %277, i32 0, i32 3
  %279 = load i64, i64* %278, align 8
  %280 = load i64, i64* %14, align 8
  %281 = add nsw i64 %280, %279
  store i64 %281, i64* %14, align 8
  %282 = load %struct.tl_combinator_tree*, %struct.tl_combinator_tree** %15, align 8
  %283 = getelementptr inbounds %struct.tl_combinator_tree, %struct.tl_combinator_tree* %282, i32 0, i32 1
  %284 = load i64, i64* %283, align 8
  %285 = load i64, i64* @type_num_value, align 8
  %286 = icmp eq i64 %284, %285
  br i1 %286, label %287, label %288

287:                                              ; preds = %276
  br label %327

288:                                              ; preds = %276
  %289 = load i32**, i32*** %7, align 8
  %290 = load %struct.tl_combinator_tree*, %struct.tl_combinator_tree** %15, align 8
  %291 = getelementptr inbounds %struct.tl_combinator_tree, %struct.tl_combinator_tree* %290, i32 0, i32 4
  %292 = load i8*, i8** %291, align 8
  %293 = call %struct.tl_combinator_tree* @tl_get_var_value(i32** %289, i8* %292)
  %294 = icmp ne %struct.tl_combinator_tree* %293, null
  br i1 %294, label %314, label %295

295:                                              ; preds = %288
  %296 = load %struct.tl_combinator_tree*, %struct.tl_combinator_tree** %5, align 8
  %297 = load %struct.tl_combinator_tree*, %struct.tl_combinator_tree** %15, align 8
  %298 = getelementptr inbounds %struct.tl_combinator_tree, %struct.tl_combinator_tree* %297, i32 0, i32 4
  %299 = load i8*, i8** %298, align 8
  %300 = load %struct.tl_combinator_tree*, %struct.tl_combinator_tree** %15, align 8
  %301 = getelementptr inbounds %struct.tl_combinator_tree, %struct.tl_combinator_tree* %300, i32 0, i32 3
  %302 = load i64, i64* %301, align 8
  %303 = load i32**, i32*** %7, align 8
  %304 = call i32 @tl_tree_lookup_value_nat(%struct.tl_combinator_tree* %296, i8* %299, i64 %302, i32** %303)
  store i32 %304, i32* %16, align 4
  %305 = load i32, i32* %16, align 4
  %306 = icmp sgt i32 %305, 0
  br i1 %306, label %307, label %309

307:                                              ; preds = %295
  %308 = call i32 @vkprintf(i32 3, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %421

309:                                              ; preds = %295
  %310 = load i32, i32* %16, align 4
  %311 = icmp eq i32 %310, 0
  br i1 %311, label %312, label %313

312:                                              ; preds = %309
  store i32 1, i32* %4, align 4
  br label %421

313:                                              ; preds = %309
  br label %327

314:                                              ; preds = %288
  %315 = load i32**, i32*** %7, align 8
  %316 = load %struct.tl_combinator_tree*, %struct.tl_combinator_tree** %15, align 8
  %317 = getelementptr inbounds %struct.tl_combinator_tree, %struct.tl_combinator_tree* %316, i32 0, i32 4
  %318 = load i8*, i8** %317, align 8
  %319 = call i64 @tl_get_var_value_num(i32** %315, i8* %318)
  %320 = load i64, i64* %14, align 8
  %321 = add nsw i64 %320, %319
  store i64 %321, i64* %14, align 8
  %322 = load i32**, i32*** %7, align 8
  %323 = load %struct.tl_combinator_tree*, %struct.tl_combinator_tree** %15, align 8
  %324 = getelementptr inbounds %struct.tl_combinator_tree, %struct.tl_combinator_tree* %323, i32 0, i32 4
  %325 = load i8*, i8** %324, align 8
  %326 = call %struct.tl_combinator_tree* @tl_get_var_value(i32** %322, i8* %325)
  store %struct.tl_combinator_tree* %326, %struct.tl_combinator_tree** %15, align 8
  br label %276

327:                                              ; preds = %313, %287
  %328 = load %struct.tl_combinator_tree*, %struct.tl_combinator_tree** %12, align 8
  %329 = getelementptr inbounds %struct.tl_combinator_tree, %struct.tl_combinator_tree* %328, i32 0, i32 1
  %330 = load i64, i64* %329, align 8
  %331 = load i64, i64* @type_num_value, align 8
  %332 = icmp eq i64 %330, %331
  br i1 %332, label %333, label %344

333:                                              ; preds = %327
  %334 = load %struct.tl_combinator_tree*, %struct.tl_combinator_tree** %15, align 8
  %335 = getelementptr inbounds %struct.tl_combinator_tree, %struct.tl_combinator_tree* %334, i32 0, i32 1
  %336 = load i64, i64* %335, align 8
  %337 = load i64, i64* @type_num_value, align 8
  %338 = icmp eq i64 %336, %337
  br i1 %338, label %339, label %344

339:                                              ; preds = %333
  %340 = load i64, i64* %11, align 8
  %341 = load i64, i64* %14, align 8
  %342 = icmp eq i64 %340, %341
  %343 = zext i1 %342 to i32
  store i32 %343, i32* %4, align 4
  br label %421

344:                                              ; preds = %333, %327
  %345 = load %struct.tl_combinator_tree*, %struct.tl_combinator_tree** %15, align 8
  %346 = getelementptr inbounds %struct.tl_combinator_tree, %struct.tl_combinator_tree* %345, i32 0, i32 1
  %347 = load i64, i64* %346, align 8
  %348 = load i64, i64* @type_num_value, align 8
  %349 = icmp eq i64 %347, %348
  br i1 %349, label %350, label %365

350:                                              ; preds = %344
  %351 = load i32**, i32*** %7, align 8
  %352 = load %struct.tl_combinator_tree*, %struct.tl_combinator_tree** %12, align 8
  %353 = getelementptr inbounds %struct.tl_combinator_tree, %struct.tl_combinator_tree* %352, i32 0, i32 4
  %354 = load i8*, i8** %353, align 8
  %355 = load %struct.tl_combinator_tree*, %struct.tl_combinator_tree** %15, align 8
  %356 = load i64, i64* %11, align 8
  %357 = load i64, i64* %14, align 8
  %358 = sub nsw i64 %356, %357
  %359 = load %struct.tl_combinator_tree*, %struct.tl_combinator_tree** %15, align 8
  %360 = getelementptr inbounds %struct.tl_combinator_tree, %struct.tl_combinator_tree* %359, i32 0, i32 3
  %361 = load i64, i64* %360, align 8
  %362 = add nsw i64 %358, %361
  %363 = sub nsw i64 0, %362
  %364 = call i32 @tl_set_var_value_num(i32** %351, i8* %354, %struct.tl_combinator_tree* %355, i64 %363)
  store i32 1, i32* %4, align 4
  br label %421

365:                                              ; preds = %344
  %366 = load %struct.tl_combinator_tree*, %struct.tl_combinator_tree** %12, align 8
  %367 = getelementptr inbounds %struct.tl_combinator_tree, %struct.tl_combinator_tree* %366, i32 0, i32 1
  %368 = load i64, i64* %367, align 8
  %369 = load i64, i64* @type_num_value, align 8
  %370 = icmp eq i64 %368, %369
  br i1 %370, label %371, label %386

371:                                              ; preds = %365
  %372 = load i32**, i32*** %7, align 8
  %373 = load %struct.tl_combinator_tree*, %struct.tl_combinator_tree** %15, align 8
  %374 = getelementptr inbounds %struct.tl_combinator_tree, %struct.tl_combinator_tree* %373, i32 0, i32 4
  %375 = load i8*, i8** %374, align 8
  %376 = load %struct.tl_combinator_tree*, %struct.tl_combinator_tree** %12, align 8
  %377 = load i64, i64* %14, align 8
  %378 = load i64, i64* %11, align 8
  %379 = sub nsw i64 %377, %378
  %380 = load %struct.tl_combinator_tree*, %struct.tl_combinator_tree** %12, align 8
  %381 = getelementptr inbounds %struct.tl_combinator_tree, %struct.tl_combinator_tree* %380, i32 0, i32 3
  %382 = load i64, i64* %381, align 8
  %383 = add nsw i64 %379, %382
  %384 = sub nsw i64 0, %383
  %385 = call i32 @tl_set_var_value_num(i32** %372, i8* %375, %struct.tl_combinator_tree* %376, i64 %384)
  store i32 1, i32* %4, align 4
  br label %421

386:                                              ; preds = %365
  %387 = load i64, i64* %11, align 8
  %388 = load i64, i64* %14, align 8
  %389 = icmp sge i64 %387, %388
  br i1 %389, label %390, label %405

390:                                              ; preds = %386
  %391 = load i32**, i32*** %7, align 8
  %392 = load %struct.tl_combinator_tree*, %struct.tl_combinator_tree** %12, align 8
  %393 = getelementptr inbounds %struct.tl_combinator_tree, %struct.tl_combinator_tree* %392, i32 0, i32 4
  %394 = load i8*, i8** %393, align 8
  %395 = load %struct.tl_combinator_tree*, %struct.tl_combinator_tree** %15, align 8
  %396 = load i64, i64* %11, align 8
  %397 = load i64, i64* %14, align 8
  %398 = sub nsw i64 %396, %397
  %399 = load %struct.tl_combinator_tree*, %struct.tl_combinator_tree** %15, align 8
  %400 = getelementptr inbounds %struct.tl_combinator_tree, %struct.tl_combinator_tree* %399, i32 0, i32 3
  %401 = load i64, i64* %400, align 8
  %402 = add nsw i64 %398, %401
  %403 = sub nsw i64 0, %402
  %404 = call i32 @tl_set_var_value_num(i32** %391, i8* %394, %struct.tl_combinator_tree* %395, i64 %403)
  br label %420

405:                                              ; preds = %386
  %406 = load i32**, i32*** %7, align 8
  %407 = load %struct.tl_combinator_tree*, %struct.tl_combinator_tree** %15, align 8
  %408 = getelementptr inbounds %struct.tl_combinator_tree, %struct.tl_combinator_tree* %407, i32 0, i32 4
  %409 = load i8*, i8** %408, align 8
  %410 = load %struct.tl_combinator_tree*, %struct.tl_combinator_tree** %12, align 8
  %411 = load i64, i64* %14, align 8
  %412 = load i64, i64* %11, align 8
  %413 = sub nsw i64 %411, %412
  %414 = load %struct.tl_combinator_tree*, %struct.tl_combinator_tree** %12, align 8
  %415 = getelementptr inbounds %struct.tl_combinator_tree, %struct.tl_combinator_tree* %414, i32 0, i32 3
  %416 = load i64, i64* %415, align 8
  %417 = add nsw i64 %413, %416
  %418 = sub nsw i64 0, %417
  %419 = call i32 @tl_set_var_value_num(i32** %406, i8* %409, %struct.tl_combinator_tree* %410, i64 %418)
  br label %420

420:                                              ; preds = %405, %390
  store i32 1, i32* %4, align 4
  br label %421

421:                                              ; preds = %420, %371, %350, %339, %312, %307, %259, %254, %220, %193, %163, %141, %120, %113, %104, %99, %83, %71, %29
  %422 = load i32, i32* %4, align 4
  ret i32 %422
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @vkprintf(i32, i8*) #1

declare dso_local i32 @tl_tree_lookup_value(%struct.tl_combinator_tree*, i8*, i32**) #1

declare dso_local %struct.tl_combinator_tree* @tl_get_var_value(i32**, i8*) #1

declare dso_local i32 @tl_set_var_value(i32**, i8*, %struct.tl_combinator_tree*) #1

declare dso_local i32 @tl_tree_lookup_value_nat(%struct.tl_combinator_tree*, i8*, i64, i32**) #1

declare dso_local i64 @tl_get_var_value_num(i32**, i8*) #1

declare dso_local i32 @tl_set_var_value_num(i32**, i8*, %struct.tl_combinator_tree*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
