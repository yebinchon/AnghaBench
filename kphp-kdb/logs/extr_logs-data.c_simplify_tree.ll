; ModuleID = '/home/carl/AnghaBench/kphp-kdb/logs/extr_logs-data.c_simplify_tree.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/logs/extr_logs-data.c_simplify_tree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_14__ = type { i32, i32, %struct.TYPE_13__, %struct.TYPE_14__** }
%struct.TYPE_13__ = type { i64, i64, i32, i64 }

@op_and = common dso_local global i64 0, align 8
@op_or = common dso_local global i64 0, align 8
@v_int = common dso_local global i64 0, align 8
@v_long = common dso_local global i64 0, align 8
@t_var = common dso_local global i64 0, align 8
@v_fid = common dso_local global i64 0, align 8
@t_fid = common dso_local global i64 0, align 8
@std_t = common dso_local global i64* null, align 8
@_cur_type = common dso_local global %struct.TYPE_11__* null, align 8
@FN = common dso_local global i64 0, align 8
@op_shr = common dso_local global i64 0, align 8
@op_shl = common dso_local global i64 0, align 8
@v_string = common dso_local global i64 0, align 8
@v_cstring = common dso_local global i64 0, align 8
@v_err = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @simplify_tree(%struct.TYPE_14__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %3, align 8
  %14 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @op_and, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %27, label %20

20:                                               ; preds = %1
  %21 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @op_or, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %148

27:                                               ; preds = %20, %1
  %28 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @op_and, align 8
  %33 = icmp eq i64 %31, %32
  %34 = zext i1 %33 to i64
  %35 = select i1 %33, i32 0, i32 1
  store i32 %35, i32* %4, align 4
  store i32 1, i32* %5, align 4
  %36 = load i64, i64* @v_int, align 8
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %38, i32 0, i32 1
  store i64 %36, i64* %39, align 8
  store i32 0, i32* %6, align 4
  br label %40

40:                                               ; preds = %130, %27
  %41 = load i32, i32* %6, align 4
  %42 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp slt i32 %41, %44
  br i1 %45, label %46, label %133

46:                                               ; preds = %40
  %47 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %47, i32 0, i32 3
  %49 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %48, align 8
  %50 = load i32, i32* %6, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %49, i64 %51
  %53 = load %struct.TYPE_14__*, %struct.TYPE_14__** %52, align 8
  %54 = call i32 @simplify_tree(%struct.TYPE_14__* %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %46
  store i32 0, i32* %2, align 4
  br label %415

57:                                               ; preds = %46
  %58 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %58, i32 0, i32 3
  %60 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %59, align 8
  %61 = load i32, i32* %6, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %60, i64 %62
  %64 = load %struct.TYPE_14__*, %struct.TYPE_14__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* %5, align 4
  %68 = and i32 %67, %66
  store i32 %68, i32* %5, align 4
  %69 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %69, i32 0, i32 3
  %71 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %70, align 8
  %72 = load i32, i32* %6, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %71, i64 %73
  %75 = load %struct.TYPE_14__*, %struct.TYPE_14__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %75, i32 0, i32 2
  %77 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @v_int, align 8
  %80 = icmp ne i64 %78, %79
  br i1 %80, label %81, label %95

81:                                               ; preds = %57
  %82 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %83 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %82, i32 0, i32 3
  %84 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %83, align 8
  %85 = load i32, i32* %6, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %84, i64 %86
  %88 = load %struct.TYPE_14__*, %struct.TYPE_14__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %88, i32 0, i32 2
  %90 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @v_long, align 8
  %93 = icmp ne i64 %91, %92
  br i1 %93, label %94, label %95

94:                                               ; preds = %81
  store i32 0, i32* %2, align 4
  br label %415

95:                                               ; preds = %81, %57
  %96 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %97 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %96, i32 0, i32 3
  %98 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %97, align 8
  %99 = load i32, i32* %6, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %98, i64 %100
  %102 = load %struct.TYPE_14__*, %struct.TYPE_14__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %129

106:                                              ; preds = %95
  %107 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %108 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %107, i32 0, i32 3
  %109 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %108, align 8
  %110 = load i32, i32* %6, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %109, i64 %111
  %113 = load %struct.TYPE_14__*, %struct.TYPE_14__** %112, align 8
  %114 = call i32 @to_bool(%struct.TYPE_14__* %113)
  store i32 %114, i32* %7, align 4
  %115 = load i32, i32* %7, align 4
  %116 = load i32, i32* %4, align 4
  %117 = icmp eq i32 %115, %116
  br i1 %117, label %118, label %128

118:                                              ; preds = %106
  %119 = load i32, i32* %4, align 4
  %120 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %121 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %120, i32 0, i32 2
  %122 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %121, i32 0, i32 2
  store i32 %119, i32* %122, align 8
  %123 = load i32, i32* %5, align 4
  %124 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %125 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %124, i32 0, i32 1
  store i32 %123, i32* %125, align 4
  %126 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %127 = call i32 @node_pfree(%struct.TYPE_14__* %126)
  store i32 1, i32* %2, align 4
  br label %415

128:                                              ; preds = %106
  br label %129

129:                                              ; preds = %128, %95
  br label %130

130:                                              ; preds = %129
  %131 = load i32, i32* %6, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %6, align 4
  br label %40

133:                                              ; preds = %40
  %134 = load i32, i32* %5, align 4
  %135 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %136 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %135, i32 0, i32 1
  store i32 %134, i32* %136, align 4
  %137 = load i32, i32* %5, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %145

139:                                              ; preds = %133
  %140 = load i32, i32* %4, align 4
  %141 = sub nsw i32 1, %140
  %142 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %143 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %142, i32 0, i32 2
  %144 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %143, i32 0, i32 2
  store i32 %141, i32* %144, align 8
  br label %145

145:                                              ; preds = %139, %133
  %146 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %147 = call i32 @node_pfree(%struct.TYPE_14__* %146)
  store i32 1, i32* %2, align 4
  br label %415

148:                                              ; preds = %20
  %149 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %150 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %153, label %208

153:                                              ; preds = %148
  %154 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %155 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %154, i32 0, i32 2
  %156 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %155, i32 0, i32 0
  %157 = load i64, i64* %156, align 8
  %158 = call i32 @IS_CONST(i64 %157)
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %208, label %160

160:                                              ; preds = %153
  %161 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %162 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %161, i32 0, i32 2
  %163 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %162, i32 0, i32 0
  %164 = load i64, i64* %163, align 8
  %165 = load i64, i64* @t_var, align 8
  %166 = icmp eq i64 %164, %165
  %167 = zext i1 %166 to i32
  %168 = call i32 @assert(i32 %167)
  %169 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %170 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %169, i32 0, i32 2
  %171 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %170, i32 0, i32 1
  %172 = load i64, i64* %171, align 8
  %173 = load i64, i64* @v_fid, align 8
  %174 = icmp ne i64 %172, %173
  %175 = zext i1 %174 to i32
  %176 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %177 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %176, i32 0, i32 1
  store i32 %175, i32* %177, align 4
  %178 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %179 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %178, i32 0, i32 2
  %180 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %179, i32 0, i32 1
  %181 = load i64, i64* %180, align 8
  %182 = load i64, i64* @v_fid, align 8
  %183 = icmp eq i64 %181, %182
  br i1 %183, label %184, label %207

184:                                              ; preds = %160
  %185 = load i64, i64* @t_fid, align 8
  %186 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %187 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %186, i32 0, i32 2
  %188 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %187, i32 0, i32 0
  store i64 %185, i64* %188, align 8
  %189 = load i64*, i64** @std_t, align 8
  %190 = load %struct.TYPE_11__*, %struct.TYPE_11__** @_cur_type, align 8
  %191 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %190, i32 0, i32 0
  %192 = load %struct.TYPE_12__*, %struct.TYPE_12__** %191, align 8
  %193 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %194 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %193, i32 0, i32 2
  %195 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %194, i32 0, i32 3
  %196 = load i64, i64* %195, align 8
  %197 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %192, i64 %196
  %198 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %197, i32 0, i32 0
  %199 = load i64, i64* %198, align 8
  %200 = load i64, i64* @FN, align 8
  %201 = add i64 %199, %200
  %202 = getelementptr inbounds i64, i64* %189, i64 %201
  %203 = load i64, i64* %202, align 8
  %204 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %205 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %204, i32 0, i32 2
  %206 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %205, i32 0, i32 1
  store i64 %203, i64* %206, align 8
  br label %207

207:                                              ; preds = %184, %160
  br label %413

208:                                              ; preds = %153, %148
  store i32 1, i32* %9, align 4
  %209 = load i64, i64* @v_int, align 8
  store i64 %209, i64* %10, align 8
  store i32 0, i32* %8, align 4
  br label %210

210:                                              ; preds = %251, %208
  %211 = load i32, i32* %8, align 4
  %212 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %213 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 8
  %215 = icmp slt i32 %211, %214
  br i1 %215, label %216, label %254

216:                                              ; preds = %210
  %217 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %218 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %217, i32 0, i32 3
  %219 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %218, align 8
  %220 = load i32, i32* %8, align 4
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %219, i64 %221
  %223 = load %struct.TYPE_14__*, %struct.TYPE_14__** %222, align 8
  %224 = call i32 @simplify_tree(%struct.TYPE_14__* %223)
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %227, label %226

226:                                              ; preds = %216
  store i32 0, i32* %2, align 4
  br label %415

227:                                              ; preds = %216
  %228 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %229 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %228, i32 0, i32 3
  %230 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %229, align 8
  %231 = load i32, i32* %8, align 4
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %230, i64 %232
  %234 = load %struct.TYPE_14__*, %struct.TYPE_14__** %233, align 8
  %235 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %234, i32 0, i32 1
  %236 = load i32, i32* %235, align 4
  %237 = load i32, i32* %9, align 4
  %238 = and i32 %237, %236
  store i32 %238, i32* %9, align 4
  %239 = load i64, i64* %10, align 8
  %240 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %241 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %240, i32 0, i32 3
  %242 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %241, align 8
  %243 = load i32, i32* %8, align 4
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %242, i64 %244
  %246 = load %struct.TYPE_14__*, %struct.TYPE_14__** %245, align 8
  %247 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %246, i32 0, i32 2
  %248 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %247, i32 0, i32 1
  %249 = load i64, i64* %248, align 8
  %250 = call i64 @max(i64 %239, i64 %249)
  store i64 %250, i64* %10, align 8
  br label %251

251:                                              ; preds = %227
  %252 = load i32, i32* %8, align 4
  %253 = add nsw i32 %252, 1
  store i32 %253, i32* %8, align 4
  br label %210

254:                                              ; preds = %210
  %255 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %256 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %255, i32 0, i32 2
  %257 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %256, i32 0, i32 0
  %258 = load i64, i64* %257, align 8
  %259 = load i64, i64* @op_shr, align 8
  %260 = icmp eq i64 %258, %259
  br i1 %260, label %261, label %291

261:                                              ; preds = %254
  %262 = load i64, i64* %10, align 8
  %263 = call i32 @IS_STR(i64 %262)
  %264 = icmp ne i32 %263, 0
  br i1 %264, label %265, label %291

265:                                              ; preds = %261
  %266 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %267 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %266, i32 0, i32 3
  %268 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %267, align 8
  %269 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %268, i64 0
  %270 = load %struct.TYPE_14__*, %struct.TYPE_14__** %269, align 8
  %271 = bitcast %struct.TYPE_14__* %270 to i8*
  store i8* %271, i8** %11, align 8
  %272 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %273 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %272, i32 0, i32 3
  %274 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %273, align 8
  %275 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %274, i64 1
  %276 = load %struct.TYPE_14__*, %struct.TYPE_14__** %275, align 8
  %277 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %278 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %277, i32 0, i32 3
  %279 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %278, align 8
  %280 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %279, i64 0
  store %struct.TYPE_14__* %276, %struct.TYPE_14__** %280, align 8
  %281 = load i8*, i8** %11, align 8
  %282 = bitcast i8* %281 to %struct.TYPE_14__*
  %283 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %284 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %283, i32 0, i32 3
  %285 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %284, align 8
  %286 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %285, i64 1
  store %struct.TYPE_14__* %282, %struct.TYPE_14__** %286, align 8
  %287 = load i64, i64* @op_shl, align 8
  %288 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %289 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %288, i32 0, i32 2
  %290 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %289, i32 0, i32 0
  store i64 %287, i64* %290, align 8
  br label %291

291:                                              ; preds = %265, %261, %254
  %292 = load i64, i64* %10, align 8
  %293 = load i64, i64* @v_string, align 8
  %294 = icmp eq i64 %292, %293
  br i1 %294, label %295, label %297

295:                                              ; preds = %291
  %296 = load i64, i64* @v_cstring, align 8
  store i64 %296, i64* %10, align 8
  br label %297

297:                                              ; preds = %295, %291
  store i32 0, i32* %8, align 4
  br label %298

298:                                              ; preds = %377, %297
  %299 = load i32, i32* %8, align 4
  %300 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %301 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %300, i32 0, i32 0
  %302 = load i32, i32* %301, align 8
  %303 = icmp slt i32 %299, %302
  br i1 %303, label %304, label %380

304:                                              ; preds = %298
  %305 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %306 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %305, i32 0, i32 3
  %307 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %306, align 8
  %308 = load i32, i32* %8, align 4
  %309 = sext i32 %308 to i64
  %310 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %307, i64 %309
  %311 = load %struct.TYPE_14__*, %struct.TYPE_14__** %310, align 8
  %312 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %311, i32 0, i32 2
  %313 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %312, i32 0, i32 1
  %314 = load i64, i64* %313, align 8
  %315 = load i64, i64* %10, align 8
  %316 = icmp ne i64 %314, %315
  br i1 %316, label %317, label %376

317:                                              ; preds = %304
  %318 = load i64, i64* %10, align 8
  %319 = call i32 @IS_STR(i64 %318)
  store i32 %319, i32* %12, align 4
  %320 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %321 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %320, i32 0, i32 3
  %322 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %321, align 8
  %323 = load i32, i32* %8, align 4
  %324 = sext i32 %323 to i64
  %325 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %322, i64 %324
  %326 = load %struct.TYPE_14__*, %struct.TYPE_14__** %325, align 8
  %327 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %326, i32 0, i32 2
  %328 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %327, i32 0, i32 1
  %329 = load i64, i64* %328, align 8
  %330 = call i32 @IS_STR(i64 %329)
  store i32 %330, i32* %13, align 4
  %331 = load i32, i32* %12, align 4
  %332 = icmp ne i32 %331, 0
  br i1 %332, label %333, label %337

333:                                              ; preds = %317
  %334 = load i32, i32* %13, align 4
  %335 = icmp ne i32 %334, 0
  br i1 %335, label %336, label %337

336:                                              ; preds = %333
  br label %377

337:                                              ; preds = %333, %317
  %338 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %339 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %338, i32 0, i32 3
  %340 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %339, align 8
  %341 = load i32, i32* %8, align 4
  %342 = sext i32 %341 to i64
  %343 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %340, i64 %342
  %344 = load %struct.TYPE_14__*, %struct.TYPE_14__** %343, align 8
  %345 = load i64, i64* %10, align 8
  %346 = call %struct.TYPE_14__* @tree_conv(%struct.TYPE_14__* %344, i64 %345)
  %347 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %348 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %347, i32 0, i32 3
  %349 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %348, align 8
  %350 = load i32, i32* %8, align 4
  %351 = sext i32 %350 to i64
  %352 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %349, i64 %351
  store %struct.TYPE_14__* %346, %struct.TYPE_14__** %352, align 8
  %353 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %354 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %353, i32 0, i32 3
  %355 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %354, align 8
  %356 = load i32, i32* %8, align 4
  %357 = sext i32 %356 to i64
  %358 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %355, i64 %357
  %359 = load %struct.TYPE_14__*, %struct.TYPE_14__** %358, align 8
  %360 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %359, i32 0, i32 1
  %361 = load i32, i32* %360, align 4
  %362 = icmp ne i32 %361, 0
  br i1 %362, label %363, label %375

363:                                              ; preds = %337
  %364 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %365 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %364, i32 0, i32 3
  %366 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %365, align 8
  %367 = load i32, i32* %8, align 4
  %368 = sext i32 %367 to i64
  %369 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %366, i64 %368
  %370 = load %struct.TYPE_14__*, %struct.TYPE_14__** %369, align 8
  %371 = call i32 @recalc_node(%struct.TYPE_14__* %370)
  %372 = icmp ne i32 %371, 0
  br i1 %372, label %374, label %373

373:                                              ; preds = %363
  store i32 0, i32* %2, align 4
  br label %415

374:                                              ; preds = %363
  br label %375

375:                                              ; preds = %374, %337
  br label %376

376:                                              ; preds = %375, %304
  br label %377

377:                                              ; preds = %376, %336
  %378 = load i32, i32* %8, align 4
  %379 = add nsw i32 %378, 1
  store i32 %379, i32* %8, align 4
  br label %298

380:                                              ; preds = %298
  %381 = load i64, i64* %10, align 8
  %382 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %383 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %382, i32 0, i32 2
  %384 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %383, i32 0, i32 0
  %385 = load i64, i64* %384, align 8
  %386 = call i64 @get_op_type(i64 %381, i64 %385)
  %387 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %388 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %387, i32 0, i32 2
  %389 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %388, i32 0, i32 1
  store i64 %386, i64* %389, align 8
  %390 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %391 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %390, i32 0, i32 2
  %392 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %391, i32 0, i32 1
  %393 = load i64, i64* %392, align 8
  %394 = load i64, i64* @v_err, align 8
  %395 = icmp eq i64 %393, %394
  br i1 %395, label %396, label %397

396:                                              ; preds = %380
  store i32 0, i32* %2, align 4
  br label %415

397:                                              ; preds = %380
  %398 = load i32, i32* %9, align 4
  %399 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %400 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %399, i32 0, i32 1
  store i32 %398, i32* %400, align 4
  %401 = load i32, i32* %9, align 4
  %402 = icmp ne i32 %401, 0
  br i1 %402, label %403, label %411

403:                                              ; preds = %397
  %404 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %405 = call i32 @recalc_node(%struct.TYPE_14__* %404)
  %406 = icmp ne i32 %405, 0
  br i1 %406, label %408, label %407

407:                                              ; preds = %403
  store i32 0, i32* %2, align 4
  br label %415

408:                                              ; preds = %403
  %409 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %410 = call i32 @node_pfree(%struct.TYPE_14__* %409)
  br label %412

411:                                              ; preds = %397
  br label %412

412:                                              ; preds = %411, %408
  br label %413

413:                                              ; preds = %412, %207
  br label %414

414:                                              ; preds = %413
  store i32 1, i32* %2, align 4
  br label %415

415:                                              ; preds = %414, %407, %396, %373, %226, %145, %118, %94, %56
  %416 = load i32, i32* %2, align 4
  ret i32 %416
}

declare dso_local i32 @to_bool(%struct.TYPE_14__*) #1

declare dso_local i32 @node_pfree(%struct.TYPE_14__*) #1

declare dso_local i32 @IS_CONST(i64) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @max(i64, i64) #1

declare dso_local i32 @IS_STR(i64) #1

declare dso_local %struct.TYPE_14__* @tree_conv(%struct.TYPE_14__*, i64) #1

declare dso_local i32 @recalc_node(%struct.TYPE_14__*) #1

declare dso_local i64 @get_op_type(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
