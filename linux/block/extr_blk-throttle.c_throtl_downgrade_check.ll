; ModuleID = '/home/carl/AnghaBench/linux/block/extr_blk-throttle.c_throtl_downgrade_check.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_blk-throttle.c_throtl_downgrade_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.throtl_grp = type { i64, i32**, i64*, i64*, i32**, i64*, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64, i64, i32* }
%struct.TYPE_8__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@LIMIT_MAX = common dso_local global i64 0, align 8
@LIMIT_LOW = common dso_local global i64 0, align 8
@READ = common dso_local global i64 0, align 8
@HZ = common dso_local global i64 0, align 8
@WRITE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.throtl_grp*)* @throtl_downgrade_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @throtl_downgrade_check(%struct.throtl_grp* %0) #0 {
  %2 = alloca %struct.throtl_grp*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.throtl_grp* %0, %struct.throtl_grp** %2, align 8
  %7 = load i64, i64* @jiffies, align 8
  store i64 %7, i64* %6, align 8
  %8 = load %struct.throtl_grp*, %struct.throtl_grp** %2, align 8
  %9 = getelementptr inbounds %struct.throtl_grp, %struct.throtl_grp* %8, i32 0, i32 6
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @LIMIT_MAX, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %25, label %15

15:                                               ; preds = %1
  %16 = load %struct.throtl_grp*, %struct.throtl_grp** %2, align 8
  %17 = getelementptr inbounds %struct.throtl_grp, %struct.throtl_grp* %16, i32 0, i32 6
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 2
  %20 = load i32*, i32** %19, align 8
  %21 = load i64, i64* @LIMIT_LOW, align 8
  %22 = getelementptr inbounds i32, i32* %20, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %15, %1
  br label %272

26:                                               ; preds = %15
  %27 = load %struct.throtl_grp*, %struct.throtl_grp** %2, align 8
  %28 = call %struct.TYPE_8__* @tg_to_blkg(%struct.throtl_grp* %27)
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = call i32 @list_empty(i32* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %26
  br label %272

36:                                               ; preds = %26
  %37 = load %struct.throtl_grp*, %struct.throtl_grp** %2, align 8
  %38 = getelementptr inbounds %struct.throtl_grp, %struct.throtl_grp* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.throtl_grp*, %struct.throtl_grp** %2, align 8
  %41 = getelementptr inbounds %struct.throtl_grp, %struct.throtl_grp* %40, i32 0, i32 6
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = add i64 %39, %44
  %46 = load i64, i64* %6, align 8
  %47 = call i64 @time_after(i64 %45, i64 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %36
  br label %272

50:                                               ; preds = %36
  %51 = load i64, i64* %6, align 8
  %52 = load %struct.throtl_grp*, %struct.throtl_grp** %2, align 8
  %53 = getelementptr inbounds %struct.throtl_grp, %struct.throtl_grp* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = sub i64 %51, %54
  store i64 %55, i64* %5, align 8
  %56 = load i64, i64* %6, align 8
  %57 = load %struct.throtl_grp*, %struct.throtl_grp** %2, align 8
  %58 = getelementptr inbounds %struct.throtl_grp, %struct.throtl_grp* %57, i32 0, i32 0
  store i64 %56, i64* %58, align 8
  %59 = load i64, i64* %6, align 8
  %60 = load %struct.throtl_grp*, %struct.throtl_grp** %2, align 8
  %61 = call i64 @tg_last_low_overflow_time(%struct.throtl_grp* %60)
  %62 = load %struct.throtl_grp*, %struct.throtl_grp** %2, align 8
  %63 = getelementptr inbounds %struct.throtl_grp, %struct.throtl_grp* %62, i32 0, i32 6
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = add nsw i64 %61, %66
  %68 = call i64 @time_before(i64 %59, i64 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %50
  br label %272

71:                                               ; preds = %50
  %72 = load %struct.throtl_grp*, %struct.throtl_grp** %2, align 8
  %73 = getelementptr inbounds %struct.throtl_grp, %struct.throtl_grp* %72, i32 0, i32 1
  %74 = load i32**, i32*** %73, align 8
  %75 = load i64, i64* @READ, align 8
  %76 = getelementptr inbounds i32*, i32** %74, i64 %75
  %77 = load i32*, i32** %76, align 8
  %78 = load i64, i64* @LIMIT_LOW, align 8
  %79 = getelementptr inbounds i32, i32* %77, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %114

82:                                               ; preds = %71
  %83 = load %struct.throtl_grp*, %struct.throtl_grp** %2, align 8
  %84 = getelementptr inbounds %struct.throtl_grp, %struct.throtl_grp* %83, i32 0, i32 2
  %85 = load i64*, i64** %84, align 8
  %86 = load i64, i64* @READ, align 8
  %87 = getelementptr inbounds i64, i64* %85, i64 %86
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @HZ, align 8
  %90 = mul i64 %88, %89
  store i64 %90, i64* %3, align 8
  %91 = load i64, i64* %3, align 8
  %92 = load i64, i64* %5, align 8
  %93 = call i32 @do_div(i64 %91, i64 %92)
  %94 = load i64, i64* %3, align 8
  %95 = load %struct.throtl_grp*, %struct.throtl_grp** %2, align 8
  %96 = getelementptr inbounds %struct.throtl_grp, %struct.throtl_grp* %95, i32 0, i32 1
  %97 = load i32**, i32*** %96, align 8
  %98 = load i64, i64* @READ, align 8
  %99 = getelementptr inbounds i32*, i32** %97, i64 %98
  %100 = load i32*, i32** %99, align 8
  %101 = load i64, i64* @LIMIT_LOW, align 8
  %102 = getelementptr inbounds i32, i32* %100, i64 %101
  %103 = load i32, i32* %102, align 4
  %104 = sext i32 %103 to i64
  %105 = icmp uge i64 %94, %104
  br i1 %105, label %106, label %113

106:                                              ; preds = %82
  %107 = load i64, i64* %6, align 8
  %108 = load %struct.throtl_grp*, %struct.throtl_grp** %2, align 8
  %109 = getelementptr inbounds %struct.throtl_grp, %struct.throtl_grp* %108, i32 0, i32 3
  %110 = load i64*, i64** %109, align 8
  %111 = load i64, i64* @READ, align 8
  %112 = getelementptr inbounds i64, i64* %110, i64 %111
  store i64 %107, i64* %112, align 8
  br label %113

113:                                              ; preds = %106, %82
  br label %114

114:                                              ; preds = %113, %71
  %115 = load %struct.throtl_grp*, %struct.throtl_grp** %2, align 8
  %116 = getelementptr inbounds %struct.throtl_grp, %struct.throtl_grp* %115, i32 0, i32 1
  %117 = load i32**, i32*** %116, align 8
  %118 = load i64, i64* @WRITE, align 8
  %119 = getelementptr inbounds i32*, i32** %117, i64 %118
  %120 = load i32*, i32** %119, align 8
  %121 = load i64, i64* @LIMIT_LOW, align 8
  %122 = getelementptr inbounds i32, i32* %120, i64 %121
  %123 = load i32, i32* %122, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %157

125:                                              ; preds = %114
  %126 = load %struct.throtl_grp*, %struct.throtl_grp** %2, align 8
  %127 = getelementptr inbounds %struct.throtl_grp, %struct.throtl_grp* %126, i32 0, i32 2
  %128 = load i64*, i64** %127, align 8
  %129 = load i64, i64* @WRITE, align 8
  %130 = getelementptr inbounds i64, i64* %128, i64 %129
  %131 = load i64, i64* %130, align 8
  %132 = load i64, i64* @HZ, align 8
  %133 = mul i64 %131, %132
  store i64 %133, i64* %3, align 8
  %134 = load i64, i64* %3, align 8
  %135 = load i64, i64* %5, align 8
  %136 = call i32 @do_div(i64 %134, i64 %135)
  %137 = load i64, i64* %3, align 8
  %138 = load %struct.throtl_grp*, %struct.throtl_grp** %2, align 8
  %139 = getelementptr inbounds %struct.throtl_grp, %struct.throtl_grp* %138, i32 0, i32 1
  %140 = load i32**, i32*** %139, align 8
  %141 = load i64, i64* @WRITE, align 8
  %142 = getelementptr inbounds i32*, i32** %140, i64 %141
  %143 = load i32*, i32** %142, align 8
  %144 = load i64, i64* @LIMIT_LOW, align 8
  %145 = getelementptr inbounds i32, i32* %143, i64 %144
  %146 = load i32, i32* %145, align 4
  %147 = sext i32 %146 to i64
  %148 = icmp uge i64 %137, %147
  br i1 %148, label %149, label %156

149:                                              ; preds = %125
  %150 = load i64, i64* %6, align 8
  %151 = load %struct.throtl_grp*, %struct.throtl_grp** %2, align 8
  %152 = getelementptr inbounds %struct.throtl_grp, %struct.throtl_grp* %151, i32 0, i32 3
  %153 = load i64*, i64** %152, align 8
  %154 = load i64, i64* @WRITE, align 8
  %155 = getelementptr inbounds i64, i64* %153, i64 %154
  store i64 %150, i64* %155, align 8
  br label %156

156:                                              ; preds = %149, %125
  br label %157

157:                                              ; preds = %156, %114
  %158 = load %struct.throtl_grp*, %struct.throtl_grp** %2, align 8
  %159 = getelementptr inbounds %struct.throtl_grp, %struct.throtl_grp* %158, i32 0, i32 4
  %160 = load i32**, i32*** %159, align 8
  %161 = load i64, i64* @READ, align 8
  %162 = getelementptr inbounds i32*, i32** %160, i64 %161
  %163 = load i32*, i32** %162, align 8
  %164 = load i64, i64* @LIMIT_LOW, align 8
  %165 = getelementptr inbounds i32, i32* %163, i64 %164
  %166 = load i32, i32* %165, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %199

168:                                              ; preds = %157
  %169 = load %struct.throtl_grp*, %struct.throtl_grp** %2, align 8
  %170 = getelementptr inbounds %struct.throtl_grp, %struct.throtl_grp* %169, i32 0, i32 5
  %171 = load i64*, i64** %170, align 8
  %172 = load i64, i64* @READ, align 8
  %173 = getelementptr inbounds i64, i64* %171, i64 %172
  %174 = load i64, i64* %173, align 8
  %175 = load i64, i64* @HZ, align 8
  %176 = mul i64 %174, %175
  %177 = load i64, i64* %5, align 8
  %178 = udiv i64 %176, %177
  %179 = trunc i64 %178 to i32
  store i32 %179, i32* %4, align 4
  %180 = load i32, i32* %4, align 4
  %181 = load %struct.throtl_grp*, %struct.throtl_grp** %2, align 8
  %182 = getelementptr inbounds %struct.throtl_grp, %struct.throtl_grp* %181, i32 0, i32 4
  %183 = load i32**, i32*** %182, align 8
  %184 = load i64, i64* @READ, align 8
  %185 = getelementptr inbounds i32*, i32** %183, i64 %184
  %186 = load i32*, i32** %185, align 8
  %187 = load i64, i64* @LIMIT_LOW, align 8
  %188 = getelementptr inbounds i32, i32* %186, i64 %187
  %189 = load i32, i32* %188, align 4
  %190 = icmp uge i32 %180, %189
  br i1 %190, label %191, label %198

191:                                              ; preds = %168
  %192 = load i64, i64* %6, align 8
  %193 = load %struct.throtl_grp*, %struct.throtl_grp** %2, align 8
  %194 = getelementptr inbounds %struct.throtl_grp, %struct.throtl_grp* %193, i32 0, i32 3
  %195 = load i64*, i64** %194, align 8
  %196 = load i64, i64* @READ, align 8
  %197 = getelementptr inbounds i64, i64* %195, i64 %196
  store i64 %192, i64* %197, align 8
  br label %198

198:                                              ; preds = %191, %168
  br label %199

199:                                              ; preds = %198, %157
  %200 = load %struct.throtl_grp*, %struct.throtl_grp** %2, align 8
  %201 = getelementptr inbounds %struct.throtl_grp, %struct.throtl_grp* %200, i32 0, i32 4
  %202 = load i32**, i32*** %201, align 8
  %203 = load i64, i64* @WRITE, align 8
  %204 = getelementptr inbounds i32*, i32** %202, i64 %203
  %205 = load i32*, i32** %204, align 8
  %206 = load i64, i64* @LIMIT_LOW, align 8
  %207 = getelementptr inbounds i32, i32* %205, i64 %206
  %208 = load i32, i32* %207, align 4
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %241

210:                                              ; preds = %199
  %211 = load %struct.throtl_grp*, %struct.throtl_grp** %2, align 8
  %212 = getelementptr inbounds %struct.throtl_grp, %struct.throtl_grp* %211, i32 0, i32 5
  %213 = load i64*, i64** %212, align 8
  %214 = load i64, i64* @WRITE, align 8
  %215 = getelementptr inbounds i64, i64* %213, i64 %214
  %216 = load i64, i64* %215, align 8
  %217 = load i64, i64* @HZ, align 8
  %218 = mul i64 %216, %217
  %219 = load i64, i64* %5, align 8
  %220 = udiv i64 %218, %219
  %221 = trunc i64 %220 to i32
  store i32 %221, i32* %4, align 4
  %222 = load i32, i32* %4, align 4
  %223 = load %struct.throtl_grp*, %struct.throtl_grp** %2, align 8
  %224 = getelementptr inbounds %struct.throtl_grp, %struct.throtl_grp* %223, i32 0, i32 4
  %225 = load i32**, i32*** %224, align 8
  %226 = load i64, i64* @WRITE, align 8
  %227 = getelementptr inbounds i32*, i32** %225, i64 %226
  %228 = load i32*, i32** %227, align 8
  %229 = load i64, i64* @LIMIT_LOW, align 8
  %230 = getelementptr inbounds i32, i32* %228, i64 %229
  %231 = load i32, i32* %230, align 4
  %232 = icmp uge i32 %222, %231
  br i1 %232, label %233, label %240

233:                                              ; preds = %210
  %234 = load i64, i64* %6, align 8
  %235 = load %struct.throtl_grp*, %struct.throtl_grp** %2, align 8
  %236 = getelementptr inbounds %struct.throtl_grp, %struct.throtl_grp* %235, i32 0, i32 3
  %237 = load i64*, i64** %236, align 8
  %238 = load i64, i64* @WRITE, align 8
  %239 = getelementptr inbounds i64, i64* %237, i64 %238
  store i64 %234, i64* %239, align 8
  br label %240

240:                                              ; preds = %233, %210
  br label %241

241:                                              ; preds = %240, %199
  %242 = load %struct.throtl_grp*, %struct.throtl_grp** %2, align 8
  %243 = call i64 @throtl_hierarchy_can_downgrade(%struct.throtl_grp* %242)
  %244 = icmp ne i64 %243, 0
  br i1 %244, label %245, label %251

245:                                              ; preds = %241
  %246 = load %struct.throtl_grp*, %struct.throtl_grp** %2, align 8
  %247 = getelementptr inbounds %struct.throtl_grp, %struct.throtl_grp* %246, i32 0, i32 6
  %248 = load %struct.TYPE_7__*, %struct.TYPE_7__** %247, align 8
  %249 = load i64, i64* @LIMIT_LOW, align 8
  %250 = call i32 @throtl_downgrade_state(%struct.TYPE_7__* %248, i64 %249)
  br label %251

251:                                              ; preds = %245, %241
  %252 = load %struct.throtl_grp*, %struct.throtl_grp** %2, align 8
  %253 = getelementptr inbounds %struct.throtl_grp, %struct.throtl_grp* %252, i32 0, i32 2
  %254 = load i64*, i64** %253, align 8
  %255 = load i64, i64* @READ, align 8
  %256 = getelementptr inbounds i64, i64* %254, i64 %255
  store i64 0, i64* %256, align 8
  %257 = load %struct.throtl_grp*, %struct.throtl_grp** %2, align 8
  %258 = getelementptr inbounds %struct.throtl_grp, %struct.throtl_grp* %257, i32 0, i32 2
  %259 = load i64*, i64** %258, align 8
  %260 = load i64, i64* @WRITE, align 8
  %261 = getelementptr inbounds i64, i64* %259, i64 %260
  store i64 0, i64* %261, align 8
  %262 = load %struct.throtl_grp*, %struct.throtl_grp** %2, align 8
  %263 = getelementptr inbounds %struct.throtl_grp, %struct.throtl_grp* %262, i32 0, i32 5
  %264 = load i64*, i64** %263, align 8
  %265 = load i64, i64* @READ, align 8
  %266 = getelementptr inbounds i64, i64* %264, i64 %265
  store i64 0, i64* %266, align 8
  %267 = load %struct.throtl_grp*, %struct.throtl_grp** %2, align 8
  %268 = getelementptr inbounds %struct.throtl_grp, %struct.throtl_grp* %267, i32 0, i32 5
  %269 = load i64*, i64** %268, align 8
  %270 = load i64, i64* @WRITE, align 8
  %271 = getelementptr inbounds i64, i64* %269, i64 %270
  store i64 0, i64* %271, align 8
  br label %272

272:                                              ; preds = %251, %70, %49, %35, %25
  ret void
}

declare dso_local i32 @list_empty(i32*) #1

declare dso_local %struct.TYPE_8__* @tg_to_blkg(%struct.throtl_grp*) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i64 @time_before(i64, i64) #1

declare dso_local i64 @tg_last_low_overflow_time(%struct.throtl_grp*) #1

declare dso_local i32 @do_div(i64, i64) #1

declare dso_local i64 @throtl_hierarchy_can_downgrade(%struct.throtl_grp*) #1

declare dso_local i32 @throtl_downgrade_state(%struct.TYPE_7__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
