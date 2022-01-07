; ModuleID = '/home/carl/AnghaBench/lab/engine/code/qcommon/extr_msg.c_MSG_ReadBits.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/qcommon/extr_msg.c_MSG_ReadBits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32, i32*, i32, i64 }

@qtrue = common dso_local global i64 0, align 8
@qfalse = common dso_local global i64 0, align 8
@ERR_DROP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"can't read %d bits\00", align 1
@msgHuff = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @MSG_ReadBits(%struct.TYPE_6__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i16, align 2
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = icmp sgt i32 %14, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %252

20:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  %21 = load i32, i32* %5, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %20
  %24 = load i32, i32* %5, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %5, align 4
  %26 = load i64, i64* @qtrue, align 8
  store i64 %26, i64* %8, align 8
  br label %29

27:                                               ; preds = %20
  %28 = load i64, i64* @qfalse, align 8
  store i64 %28, i64* %8, align 8
  br label %29

29:                                               ; preds = %27, %23
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 4
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %124

34:                                               ; preds = %29
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* %5, align 4
  %39 = ashr i32 %38, 3
  %40 = add nsw i32 %37, %39
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = icmp sgt i32 %40, %43
  br i1 %44, label %45, label %52

45:                                               ; preds = %34
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = add nsw i32 %48, 1
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 8
  store i32 0, i32* %3, align 4
  br label %252

52:                                               ; preds = %34
  %53 = load i32, i32* %5, align 4
  %54 = icmp eq i32 %53, 8
  br i1 %54, label %55, label %73

55:                                               ; preds = %52
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 2
  %58 = load i32*, i32** %57, align 8
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %58, i64 %62
  %64 = load i32, i32* %63, align 4
  store i32 %64, i32* %6, align 4
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %66, align 8
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 8
  %72 = add nsw i32 %71, 8
  store i32 %72, i32* %70, align 8
  br label %123

73:                                               ; preds = %52
  %74 = load i32, i32* %5, align 4
  %75 = icmp eq i32 %74, 16
  br i1 %75, label %76, label %96

76:                                               ; preds = %73
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 2
  %79 = load i32*, i32** %78, align 8
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %79, i64 %83
  %85 = call i32 @CopyLittleShort(i16* %11, i32* %84)
  %86 = load i16, i16* %11, align 2
  %87 = sext i16 %86 to i32
  store i32 %87, i32* %6, align 4
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = add nsw i32 %90, 2
  store i32 %91, i32* %89, align 8
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 8
  %95 = add nsw i32 %94, 16
  store i32 %95, i32* %93, align 8
  br label %122

96:                                               ; preds = %73
  %97 = load i32, i32* %5, align 4
  %98 = icmp eq i32 %97, 32
  br i1 %98, label %99, label %117

99:                                               ; preds = %96
  %100 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 2
  %102 = load i32*, i32** %101, align 8
  %103 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %102, i64 %106
  %108 = call i32 @CopyLittleLong(i32* %6, i32* %107)
  %109 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = add nsw i32 %111, 4
  store i32 %112, i32* %110, align 8
  %113 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 3
  %115 = load i32, i32* %114, align 8
  %116 = add nsw i32 %115, 32
  store i32 %116, i32* %114, align 8
  br label %121

117:                                              ; preds = %96
  %118 = load i32, i32* @ERR_DROP, align 4
  %119 = load i32, i32* %5, align 4
  %120 = call i32 @Com_Error(i32 %118, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %119)
  br label %121

121:                                              ; preds = %117, %99
  br label %122

122:                                              ; preds = %121, %76
  br label %123

123:                                              ; preds = %122, %55
  br label %226

124:                                              ; preds = %29
  store i32 0, i32* %10, align 4
  %125 = load i32, i32* %5, align 4
  %126 = and i32 %125, 7
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %171

128:                                              ; preds = %124
  %129 = load i32, i32* %5, align 4
  %130 = and i32 %129, 7
  store i32 %130, i32* %10, align 4
  %131 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i32 0, i32 3
  %133 = load i32, i32* %132, align 8
  %134 = load i32, i32* %10, align 4
  %135 = add nsw i32 %133, %134
  %136 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %137 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = shl i32 %138, 3
  %140 = icmp sgt i32 %135, %139
  br i1 %140, label %141, label %148

141:                                              ; preds = %128
  %142 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %143 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = add nsw i32 %144, 1
  %146 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %147 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %146, i32 0, i32 0
  store i32 %145, i32* %147, align 8
  store i32 0, i32* %3, align 4
  br label %252

148:                                              ; preds = %128
  store i32 0, i32* %9, align 4
  br label %149

149:                                              ; preds = %164, %148
  %150 = load i32, i32* %9, align 4
  %151 = load i32, i32* %10, align 4
  %152 = icmp slt i32 %150, %151
  br i1 %152, label %153, label %167

153:                                              ; preds = %149
  %154 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %155 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %154, i32 0, i32 2
  %156 = load i32*, i32** %155, align 8
  %157 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %158 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %157, i32 0, i32 3
  %159 = call i32 @Huff_getBit(i32* %156, i32* %158)
  %160 = load i32, i32* %9, align 4
  %161 = shl i32 %159, %160
  %162 = load i32, i32* %6, align 4
  %163 = or i32 %162, %161
  store i32 %163, i32* %6, align 4
  br label %164

164:                                              ; preds = %153
  %165 = load i32, i32* %9, align 4
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* %9, align 4
  br label %149

167:                                              ; preds = %149
  %168 = load i32, i32* %5, align 4
  %169 = load i32, i32* %10, align 4
  %170 = sub nsw i32 %168, %169
  store i32 %170, i32* %5, align 4
  br label %171

171:                                              ; preds = %167, %124
  %172 = load i32, i32* %5, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %218

174:                                              ; preds = %171
  store i32 0, i32* %9, align 4
  br label %175

175:                                              ; preds = %214, %174
  %176 = load i32, i32* %9, align 4
  %177 = load i32, i32* %5, align 4
  %178 = icmp slt i32 %176, %177
  br i1 %178, label %179, label %217

179:                                              ; preds = %175
  %180 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @msgHuff, i32 0, i32 0, i32 0), align 4
  %181 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %182 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %181, i32 0, i32 2
  %183 = load i32*, i32** %182, align 8
  %184 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %185 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %184, i32 0, i32 3
  %186 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %187 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %186, i32 0, i32 1
  %188 = load i32, i32* %187, align 4
  %189 = shl i32 %188, 3
  %190 = call i32 @Huff_offsetReceive(i32 %180, i32* %7, i32* %183, i32* %185, i32 %189)
  %191 = load i32, i32* %6, align 4
  %192 = load i32, i32* %7, align 4
  %193 = load i32, i32* %9, align 4
  %194 = load i32, i32* %10, align 4
  %195 = add nsw i32 %193, %194
  %196 = shl i32 %192, %195
  %197 = or i32 %191, %196
  store i32 %197, i32* %6, align 4
  %198 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %199 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %198, i32 0, i32 3
  %200 = load i32, i32* %199, align 8
  %201 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %202 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %201, i32 0, i32 1
  %203 = load i32, i32* %202, align 4
  %204 = shl i32 %203, 3
  %205 = icmp sgt i32 %200, %204
  br i1 %205, label %206, label %213

206:                                              ; preds = %179
  %207 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %208 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %207, i32 0, i32 1
  %209 = load i32, i32* %208, align 4
  %210 = add nsw i32 %209, 1
  %211 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %212 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %211, i32 0, i32 0
  store i32 %210, i32* %212, align 8
  store i32 0, i32* %3, align 4
  br label %252

213:                                              ; preds = %179
  br label %214

214:                                              ; preds = %213
  %215 = load i32, i32* %9, align 4
  %216 = add nsw i32 %215, 8
  store i32 %216, i32* %9, align 4
  br label %175

217:                                              ; preds = %175
  br label %218

218:                                              ; preds = %217, %171
  %219 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %220 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %219, i32 0, i32 3
  %221 = load i32, i32* %220, align 8
  %222 = ashr i32 %221, 3
  %223 = add nsw i32 %222, 1
  %224 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %225 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %224, i32 0, i32 0
  store i32 %223, i32* %225, align 8
  br label %226

226:                                              ; preds = %218, %123
  %227 = load i64, i64* %8, align 8
  %228 = icmp ne i64 %227, 0
  br i1 %228, label %229, label %250

229:                                              ; preds = %226
  %230 = load i32, i32* %5, align 4
  %231 = icmp sgt i32 %230, 0
  br i1 %231, label %232, label %250

232:                                              ; preds = %229
  %233 = load i32, i32* %5, align 4
  %234 = icmp slt i32 %233, 32
  br i1 %234, label %235, label %250

235:                                              ; preds = %232
  %236 = load i32, i32* %6, align 4
  %237 = load i32, i32* %5, align 4
  %238 = sub nsw i32 %237, 1
  %239 = shl i32 1, %238
  %240 = and i32 %236, %239
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %242, label %249

242:                                              ; preds = %235
  %243 = load i32, i32* %5, align 4
  %244 = shl i32 1, %243
  %245 = sub nsw i32 %244, 1
  %246 = xor i32 -1, %245
  %247 = load i32, i32* %6, align 4
  %248 = or i32 %247, %246
  store i32 %248, i32* %6, align 4
  br label %249

249:                                              ; preds = %242, %235
  br label %250

250:                                              ; preds = %249, %232, %229, %226
  %251 = load i32, i32* %6, align 4
  store i32 %251, i32* %3, align 4
  br label %252

252:                                              ; preds = %250, %206, %141, %45, %19
  %253 = load i32, i32* %3, align 4
  ret i32 %253
}

declare dso_local i32 @CopyLittleShort(i16*, i32*) #1

declare dso_local i32 @CopyLittleLong(i32*, i32*) #1

declare dso_local i32 @Com_Error(i32, i8*, i32) #1

declare dso_local i32 @Huff_getBit(i32*, i32*) #1

declare dso_local i32 @Huff_offsetReceive(i32, i32*, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
