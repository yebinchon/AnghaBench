; ModuleID = '/home/carl/AnghaBench/git/extr_date.c_show_date_normal.c'
source_filename = "/home/carl/AnghaBench/git/extr_date.c_show_date_normal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon = type { i8, [3 x i8] }
%struct.strbuf = type { i32 }
%struct.tm = type { i64, i64, i64, i64, i32, i32, i32 }

@__const.show_date_normal.hide = private unnamed_addr constant %struct.anon { i8 0, [3 x i8] undef }, align 4
@.str = private unnamed_addr constant [6 x i8] c"%.3s \00", align 1
@weekday_names = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [9 x i8] c"%.3s %d \00", align 1
@month_names = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [10 x i8] c"%02d:%02d\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c":%02d\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c" %d\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c" %+05d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.strbuf*, i32, %struct.tm*, i32, %struct.tm*, i32, i32)* @show_date_normal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @show_date_normal(%struct.strbuf* %0, i32 %1, %struct.tm* %2, i32 %3, %struct.tm* %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.strbuf*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.tm*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.tm*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.anon, align 4
  store %struct.strbuf* %0, %struct.strbuf** %8, align 8
  store i32 %1, i32* %9, align 4
  store %struct.tm* %2, %struct.tm** %10, align 8
  store i32 %3, i32* %11, align 4
  store %struct.tm* %4, %struct.tm** %12, align 8
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %16 = bitcast %struct.anon* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %16, i8* align 4 getelementptr inbounds (%struct.anon, %struct.anon* @__const.show_date_normal.hide, i32 0, i32 0), i64 4, i1 false)
  %17 = load i32, i32* %14, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %7
  %20 = load i32, i32* %11, align 4
  %21 = load i32, i32* %13, align 4
  %22 = icmp eq i32 %20, %21
  br label %23

23:                                               ; preds = %19, %7
  %24 = phi i1 [ true, %7 ], [ %22, %19 ]
  %25 = zext i1 %24 to i32
  %26 = bitcast %struct.anon* %15 to i8*
  %27 = trunc i32 %25 to i8
  %28 = load i8, i8* %26, align 4
  %29 = and i8 %27, 1
  %30 = shl i8 %29, 5
  %31 = and i8 %28, -33
  %32 = or i8 %31, %30
  store i8 %32, i8* %26, align 4
  %33 = zext i8 %29 to i32
  %34 = load %struct.tm*, %struct.tm** %10, align 8
  %35 = getelementptr inbounds %struct.tm, %struct.tm* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.tm*, %struct.tm** %12, align 8
  %38 = getelementptr inbounds %struct.tm, %struct.tm* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp eq i64 %36, %39
  %41 = zext i1 %40 to i32
  %42 = bitcast %struct.anon* %15 to i8*
  %43 = trunc i32 %41 to i8
  %44 = load i8, i8* %42, align 4
  %45 = and i8 %43, 1
  %46 = and i8 %44, -2
  %47 = or i8 %46, %45
  store i8 %47, i8* %42, align 4
  %48 = zext i8 %45 to i32
  %49 = bitcast %struct.anon* %15 to i8*
  %50 = load i8, i8* %49, align 4
  %51 = and i8 %50, 1
  %52 = zext i8 %51 to i32
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %106

54:                                               ; preds = %23
  %55 = load %struct.tm*, %struct.tm** %10, align 8
  %56 = getelementptr inbounds %struct.tm, %struct.tm* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.tm*, %struct.tm** %12, align 8
  %59 = getelementptr inbounds %struct.tm, %struct.tm* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = icmp eq i64 %57, %60
  br i1 %61, label %62, label %105

62:                                               ; preds = %54
  %63 = load %struct.tm*, %struct.tm** %10, align 8
  %64 = getelementptr inbounds %struct.tm, %struct.tm* %63, i32 0, i32 2
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.tm*, %struct.tm** %12, align 8
  %67 = getelementptr inbounds %struct.tm, %struct.tm* %66, i32 0, i32 2
  %68 = load i64, i64* %67, align 8
  %69 = icmp sgt i64 %65, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %62
  br label %104

71:                                               ; preds = %62
  %72 = load %struct.tm*, %struct.tm** %10, align 8
  %73 = getelementptr inbounds %struct.tm, %struct.tm* %72, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.tm*, %struct.tm** %12, align 8
  %76 = getelementptr inbounds %struct.tm, %struct.tm* %75, i32 0, i32 2
  %77 = load i64, i64* %76, align 8
  %78 = icmp eq i64 %74, %77
  br i1 %78, label %79, label %88

79:                                               ; preds = %71
  %80 = bitcast %struct.anon* %15 to i8*
  %81 = load i8, i8* %80, align 4
  %82 = and i8 %81, -5
  %83 = or i8 %82, 4
  store i8 %83, i8* %80, align 4
  %84 = bitcast %struct.anon* %15 to i8*
  %85 = load i8, i8* %84, align 4
  %86 = and i8 %85, -3
  %87 = or i8 %86, 2
  store i8 %87, i8* %84, align 4
  br label %103

88:                                               ; preds = %71
  %89 = load %struct.tm*, %struct.tm** %10, align 8
  %90 = getelementptr inbounds %struct.tm, %struct.tm* %89, i32 0, i32 2
  %91 = load i64, i64* %90, align 8
  %92 = add nsw i64 %91, 5
  %93 = load %struct.tm*, %struct.tm** %12, align 8
  %94 = getelementptr inbounds %struct.tm, %struct.tm* %93, i32 0, i32 2
  %95 = load i64, i64* %94, align 8
  %96 = icmp sgt i64 %92, %95
  br i1 %96, label %97, label %102

97:                                               ; preds = %88
  %98 = bitcast %struct.anon* %15 to i8*
  %99 = load i8, i8* %98, align 4
  %100 = and i8 %99, -3
  %101 = or i8 %100, 2
  store i8 %101, i8* %98, align 4
  br label %102

102:                                              ; preds = %97, %88
  br label %103

103:                                              ; preds = %102, %79
  br label %104

104:                                              ; preds = %103, %70
  br label %105

105:                                              ; preds = %104, %54
  br label %106

106:                                              ; preds = %105, %23
  %107 = bitcast %struct.anon* %15 to i8*
  %108 = load i8, i8* %107, align 4
  %109 = lshr i8 %108, 2
  %110 = and i8 %109, 1
  %111 = zext i8 %110 to i32
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %117

113:                                              ; preds = %106
  %114 = load i32, i32* %9, align 4
  %115 = load %struct.strbuf*, %struct.strbuf** %8, align 8
  %116 = call i32 @show_date_relative(i32 %114, %struct.strbuf* %115)
  br label %263

117:                                              ; preds = %106
  %118 = load %struct.tm*, %struct.tm** %12, align 8
  %119 = getelementptr inbounds %struct.tm, %struct.tm* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %171

122:                                              ; preds = %117
  %123 = bitcast %struct.anon* %15 to i8*
  %124 = load i8, i8* %123, align 4
  %125 = and i8 %124, -17
  %126 = or i8 %125, 16
  store i8 %126, i8* %123, align 4
  %127 = bitcast %struct.anon* %15 to i8*
  %128 = load i8, i8* %127, align 4
  %129 = lshr i8 %128, 1
  %130 = and i8 %129, 1
  %131 = zext i8 %130 to i32
  %132 = icmp ne i32 %131, 0
  %133 = xor i1 %132, true
  %134 = zext i1 %133 to i32
  %135 = bitcast %struct.anon* %15 to i8*
  %136 = load i8, i8* %135, align 4
  %137 = lshr i8 %136, 5
  %138 = and i8 %137, 1
  %139 = zext i8 %138 to i32
  %140 = or i32 %139, %134
  %141 = trunc i32 %140 to i8
  %142 = load i8, i8* %135, align 4
  %143 = and i8 %141, 1
  %144 = shl i8 %143, 5
  %145 = and i8 %142, -33
  %146 = or i8 %145, %144
  store i8 %146, i8* %135, align 4
  %147 = zext i8 %143 to i32
  %148 = bitcast %struct.anon* %15 to i8*
  %149 = load i8, i8* %148, align 4
  %150 = and i8 %149, 1
  %151 = zext i8 %150 to i32
  %152 = icmp ne i32 %151, 0
  %153 = xor i1 %152, true
  %154 = zext i1 %153 to i32
  %155 = bitcast %struct.anon* %15 to i8*
  %156 = trunc i32 %154 to i8
  %157 = load i8, i8* %155, align 4
  %158 = and i8 %156, 1
  %159 = shl i8 %158, 3
  %160 = and i8 %157, -9
  %161 = or i8 %160, %159
  store i8 %161, i8* %155, align 4
  %162 = zext i8 %158 to i32
  %163 = bitcast %struct.anon* %15 to i8*
  %164 = trunc i32 %162 to i8
  %165 = load i8, i8* %163, align 4
  %166 = and i8 %164, 1
  %167 = shl i8 %166, 2
  %168 = and i8 %165, -5
  %169 = or i8 %168, %167
  store i8 %169, i8* %163, align 4
  %170 = zext i8 %166 to i32
  br label %171

171:                                              ; preds = %122, %117
  %172 = bitcast %struct.anon* %15 to i8*
  %173 = load i8, i8* %172, align 4
  %174 = lshr i8 %173, 2
  %175 = and i8 %174, 1
  %176 = zext i8 %175 to i32
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %187, label %178

178:                                              ; preds = %171
  %179 = load %struct.strbuf*, %struct.strbuf** %8, align 8
  %180 = load i32*, i32** @weekday_names, align 8
  %181 = load %struct.tm*, %struct.tm** %10, align 8
  %182 = getelementptr inbounds %struct.tm, %struct.tm* %181, i32 0, i32 3
  %183 = load i64, i64* %182, align 8
  %184 = getelementptr inbounds i32, i32* %180, i64 %183
  %185 = load i32, i32* %184, align 4
  %186 = call i32 (%struct.strbuf*, i8*, i32, ...) @strbuf_addf(%struct.strbuf* %179, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %185)
  br label %187

187:                                              ; preds = %178, %171
  %188 = bitcast %struct.anon* %15 to i8*
  %189 = load i8, i8* %188, align 4
  %190 = lshr i8 %189, 1
  %191 = and i8 %190, 1
  %192 = zext i8 %191 to i32
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %206, label %194

194:                                              ; preds = %187
  %195 = load %struct.strbuf*, %struct.strbuf** %8, align 8
  %196 = load i32*, i32** @month_names, align 8
  %197 = load %struct.tm*, %struct.tm** %10, align 8
  %198 = getelementptr inbounds %struct.tm, %struct.tm* %197, i32 0, i32 1
  %199 = load i64, i64* %198, align 8
  %200 = getelementptr inbounds i32, i32* %196, i64 %199
  %201 = load i32, i32* %200, align 4
  %202 = load %struct.tm*, %struct.tm** %10, align 8
  %203 = getelementptr inbounds %struct.tm, %struct.tm* %202, i32 0, i32 2
  %204 = load i64, i64* %203, align 8
  %205 = call i32 (%struct.strbuf*, i8*, i32, ...) @strbuf_addf(%struct.strbuf* %195, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %201, i64 %204)
  br label %206

206:                                              ; preds = %194, %187
  %207 = bitcast %struct.anon* %15 to i8*
  %208 = load i8, i8* %207, align 4
  %209 = lshr i8 %208, 3
  %210 = and i8 %209, 1
  %211 = zext i8 %210 to i32
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %235, label %213

213:                                              ; preds = %206
  %214 = load %struct.strbuf*, %struct.strbuf** %8, align 8
  %215 = load %struct.tm*, %struct.tm** %10, align 8
  %216 = getelementptr inbounds %struct.tm, %struct.tm* %215, i32 0, i32 6
  %217 = load i32, i32* %216, align 8
  %218 = load %struct.tm*, %struct.tm** %10, align 8
  %219 = getelementptr inbounds %struct.tm, %struct.tm* %218, i32 0, i32 5
  %220 = load i32, i32* %219, align 4
  %221 = call i32 (%struct.strbuf*, i8*, i32, ...) @strbuf_addf(%struct.strbuf* %214, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %217, i32 %220)
  %222 = bitcast %struct.anon* %15 to i8*
  %223 = load i8, i8* %222, align 4
  %224 = lshr i8 %223, 4
  %225 = and i8 %224, 1
  %226 = zext i8 %225 to i32
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %234, label %228

228:                                              ; preds = %213
  %229 = load %struct.strbuf*, %struct.strbuf** %8, align 8
  %230 = load %struct.tm*, %struct.tm** %10, align 8
  %231 = getelementptr inbounds %struct.tm, %struct.tm* %230, i32 0, i32 4
  %232 = load i32, i32* %231, align 8
  %233 = call i32 (%struct.strbuf*, i8*, i32, ...) @strbuf_addf(%struct.strbuf* %229, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 %232)
  br label %234

234:                                              ; preds = %228, %213
  br label %238

235:                                              ; preds = %206
  %236 = load %struct.strbuf*, %struct.strbuf** %8, align 8
  %237 = call i32 @strbuf_rtrim(%struct.strbuf* %236)
  br label %238

238:                                              ; preds = %235, %234
  %239 = bitcast %struct.anon* %15 to i8*
  %240 = load i8, i8* %239, align 4
  %241 = and i8 %240, 1
  %242 = zext i8 %241 to i32
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %252, label %244

244:                                              ; preds = %238
  %245 = load %struct.strbuf*, %struct.strbuf** %8, align 8
  %246 = load %struct.tm*, %struct.tm** %10, align 8
  %247 = getelementptr inbounds %struct.tm, %struct.tm* %246, i32 0, i32 0
  %248 = load i64, i64* %247, align 8
  %249 = add nsw i64 %248, 1900
  %250 = trunc i64 %249 to i32
  %251 = call i32 (%struct.strbuf*, i8*, i32, ...) @strbuf_addf(%struct.strbuf* %245, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %250)
  br label %252

252:                                              ; preds = %244, %238
  %253 = bitcast %struct.anon* %15 to i8*
  %254 = load i8, i8* %253, align 4
  %255 = lshr i8 %254, 5
  %256 = and i8 %255, 1
  %257 = zext i8 %256 to i32
  %258 = icmp ne i32 %257, 0
  br i1 %258, label %263, label %259

259:                                              ; preds = %252
  %260 = load %struct.strbuf*, %struct.strbuf** %8, align 8
  %261 = load i32, i32* %11, align 4
  %262 = call i32 (%struct.strbuf*, i8*, i32, ...) @strbuf_addf(%struct.strbuf* %260, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i32 %261)
  br label %263

263:                                              ; preds = %113, %259, %252
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @show_date_relative(i32, %struct.strbuf*) #2

declare dso_local i32 @strbuf_addf(%struct.strbuf*, i8*, i32, ...) #2

declare dso_local i32 @strbuf_rtrim(%struct.strbuf*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
