; ModuleID = '/home/carl/AnghaBench/lab/engine/code/qcommon/extr_msg.c_MSG_WriteDeltaEntity.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/qcommon/extr_msg.c_MSG_WriteDeltaEntity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }
%struct.entityState_s = type { i32 }

@entityStateFields = common dso_local global %struct.TYPE_4__* null, align 8
@GENTITYNUM_BITS = common dso_local global i32 0, align 4
@MAX_GENTITIES = common dso_local global i32 0, align 4
@ERR_FATAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"MSG_WriteDeltaEntity: Bad entity number: %i\00", align 1
@oldsize = common dso_local global i32 0, align 4
@FLOAT_INT_BITS = common dso_local global i32 0, align 4
@FLOAT_INT_BIAS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @MSG_WriteDeltaEntity(i32* %0, %struct.entityState_s* %1, %struct.entityState_s* %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.entityState_s*, align 8
  %7 = alloca %struct.entityState_s*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_4__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca float, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store %struct.entityState_s* %1, %struct.entityState_s** %6, align 8
  store %struct.entityState_s* %2, %struct.entityState_s** %7, align 8
  store i32 %3, i32* %8, align 4
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** @entityStateFields, align 8
  %18 = call i32 @ARRAY_LEN(%struct.TYPE_4__* %17)
  store i32 %18, i32* %11, align 4
  %19 = load i32, i32* %11, align 4
  %20 = add nsw i32 %19, 1
  %21 = sext i32 %20 to i64
  %22 = icmp eq i64 %21, 1
  %23 = zext i1 %22 to i32
  %24 = call i32 @assert(i32 %23)
  %25 = load %struct.entityState_s*, %struct.entityState_s** %7, align 8
  %26 = icmp eq %struct.entityState_s* %25, null
  br i1 %26, label %27, label %40

27:                                               ; preds = %4
  %28 = load %struct.entityState_s*, %struct.entityState_s** %6, align 8
  %29 = icmp eq %struct.entityState_s* %28, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %27
  br label %237

31:                                               ; preds = %27
  %32 = load i32*, i32** %5, align 8
  %33 = load %struct.entityState_s*, %struct.entityState_s** %6, align 8
  %34 = getelementptr inbounds %struct.entityState_s, %struct.entityState_s* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @GENTITYNUM_BITS, align 4
  %37 = call i32 @MSG_WriteBits(i32* %32, i32 %35, i32 %36)
  %38 = load i32*, i32** %5, align 8
  %39 = call i32 @MSG_WriteBits(i32* %38, i32 1, i32 1)
  br label %237

40:                                               ; preds = %4
  %41 = load %struct.entityState_s*, %struct.entityState_s** %7, align 8
  %42 = getelementptr inbounds %struct.entityState_s, %struct.entityState_s* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %51, label %45

45:                                               ; preds = %40
  %46 = load %struct.entityState_s*, %struct.entityState_s** %7, align 8
  %47 = getelementptr inbounds %struct.entityState_s, %struct.entityState_s* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @MAX_GENTITIES, align 4
  %50 = icmp sge i32 %48, %49
  br i1 %50, label %51, label %57

51:                                               ; preds = %45, %40
  %52 = load i32, i32* @ERR_FATAL, align 4
  %53 = load %struct.entityState_s*, %struct.entityState_s** %7, align 8
  %54 = getelementptr inbounds %struct.entityState_s, %struct.entityState_s* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @Com_Error(i32 %52, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %55)
  br label %57

57:                                               ; preds = %51, %45
  store i32 0, i32* %10, align 4
  store i32 0, i32* %9, align 4
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** @entityStateFields, align 8
  store %struct.TYPE_4__* %58, %struct.TYPE_4__** %12, align 8
  br label %59

59:                                               ; preds = %87, %57
  %60 = load i32, i32* %9, align 4
  %61 = load i32, i32* %11, align 4
  %62 = icmp slt i32 %60, %61
  br i1 %62, label %63, label %92

63:                                               ; preds = %59
  %64 = load %struct.entityState_s*, %struct.entityState_s** %6, align 8
  %65 = bitcast %struct.entityState_s* %64 to i32*
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %65, i64 %69
  store i32* %70, i32** %15, align 8
  %71 = load %struct.entityState_s*, %struct.entityState_s** %7, align 8
  %72 = bitcast %struct.entityState_s* %71 to i32*
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %72, i64 %76
  store i32* %77, i32** %16, align 8
  %78 = load i32*, i32** %15, align 8
  %79 = load i32, i32* %78, align 4
  %80 = load i32*, i32** %16, align 8
  %81 = load i32, i32* %80, align 4
  %82 = icmp ne i32 %79, %81
  br i1 %82, label %83, label %86

83:                                               ; preds = %63
  %84 = load i32, i32* %9, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %10, align 4
  br label %86

86:                                               ; preds = %83, %63
  br label %87

87:                                               ; preds = %86
  %88 = load i32, i32* %9, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %9, align 4
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 1
  store %struct.TYPE_4__* %91, %struct.TYPE_4__** %12, align 8
  br label %59

92:                                               ; preds = %59
  %93 = load i32, i32* %10, align 4
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %110

95:                                               ; preds = %92
  %96 = load i32, i32* %8, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %99, label %98

98:                                               ; preds = %95
  br label %237

99:                                               ; preds = %95
  %100 = load i32*, i32** %5, align 8
  %101 = load %struct.entityState_s*, %struct.entityState_s** %7, align 8
  %102 = getelementptr inbounds %struct.entityState_s, %struct.entityState_s* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* @GENTITYNUM_BITS, align 4
  %105 = call i32 @MSG_WriteBits(i32* %100, i32 %103, i32 %104)
  %106 = load i32*, i32** %5, align 8
  %107 = call i32 @MSG_WriteBits(i32* %106, i32 0, i32 1)
  %108 = load i32*, i32** %5, align 8
  %109 = call i32 @MSG_WriteBits(i32* %108, i32 0, i32 1)
  br label %237

110:                                              ; preds = %92
  %111 = load i32*, i32** %5, align 8
  %112 = load %struct.entityState_s*, %struct.entityState_s** %7, align 8
  %113 = getelementptr inbounds %struct.entityState_s, %struct.entityState_s* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* @GENTITYNUM_BITS, align 4
  %116 = call i32 @MSG_WriteBits(i32* %111, i32 %114, i32 %115)
  %117 = load i32*, i32** %5, align 8
  %118 = call i32 @MSG_WriteBits(i32* %117, i32 0, i32 1)
  %119 = load i32*, i32** %5, align 8
  %120 = call i32 @MSG_WriteBits(i32* %119, i32 1, i32 1)
  %121 = load i32*, i32** %5, align 8
  %122 = load i32, i32* %10, align 4
  %123 = call i32 @MSG_WriteByte(i32* %121, i32 %122)
  %124 = load i32, i32* %11, align 4
  %125 = load i32, i32* @oldsize, align 4
  %126 = add nsw i32 %125, %124
  store i32 %126, i32* @oldsize, align 4
  store i32 0, i32* %9, align 4
  %127 = load %struct.TYPE_4__*, %struct.TYPE_4__** @entityStateFields, align 8
  store %struct.TYPE_4__* %127, %struct.TYPE_4__** %12, align 8
  br label %128

128:                                              ; preds = %232, %110
  %129 = load i32, i32* %9, align 4
  %130 = load i32, i32* %10, align 4
  %131 = icmp slt i32 %129, %130
  br i1 %131, label %132, label %237

132:                                              ; preds = %128
  %133 = load %struct.entityState_s*, %struct.entityState_s** %6, align 8
  %134 = bitcast %struct.entityState_s* %133 to i32*
  %135 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %136 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i32, i32* %134, i64 %138
  store i32* %139, i32** %15, align 8
  %140 = load %struct.entityState_s*, %struct.entityState_s** %7, align 8
  %141 = bitcast %struct.entityState_s* %140 to i32*
  %142 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %143 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i32, i32* %141, i64 %145
  store i32* %146, i32** %16, align 8
  %147 = load i32*, i32** %15, align 8
  %148 = load i32, i32* %147, align 4
  %149 = load i32*, i32** %16, align 8
  %150 = load i32, i32* %149, align 4
  %151 = icmp eq i32 %148, %150
  br i1 %151, label %152, label %155

152:                                              ; preds = %132
  %153 = load i32*, i32** %5, align 8
  %154 = call i32 @MSG_WriteBits(i32* %153, i32 0, i32 1)
  br label %232

155:                                              ; preds = %132
  %156 = load i32*, i32** %5, align 8
  %157 = call i32 @MSG_WriteBits(i32* %156, i32 1, i32 1)
  %158 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %159 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 4
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %162, label %213

162:                                              ; preds = %155
  %163 = load i32*, i32** %16, align 8
  %164 = bitcast i32* %163 to float*
  %165 = load float, float* %164, align 4
  store float %165, float* %14, align 4
  %166 = load float, float* %14, align 4
  %167 = fptosi float %166 to i32
  store i32 %167, i32* %13, align 4
  %168 = load float, float* %14, align 4
  %169 = fcmp oeq float %168, 0.000000e+00
  br i1 %169, label %170, label %176

170:                                              ; preds = %162
  %171 = load i32*, i32** %5, align 8
  %172 = call i32 @MSG_WriteBits(i32* %171, i32 0, i32 1)
  %173 = load i32, i32* @FLOAT_INT_BITS, align 4
  %174 = load i32, i32* @oldsize, align 4
  %175 = add nsw i32 %174, %173
  store i32 %175, i32* @oldsize, align 4
  br label %212

176:                                              ; preds = %162
  %177 = load i32*, i32** %5, align 8
  %178 = call i32 @MSG_WriteBits(i32* %177, i32 1, i32 1)
  %179 = load i32, i32* %13, align 4
  %180 = sitofp i32 %179 to float
  %181 = load float, float* %14, align 4
  %182 = fcmp oeq float %180, %181
  br i1 %182, label %183, label %204

183:                                              ; preds = %176
  %184 = load i32, i32* %13, align 4
  %185 = load i32, i32* @FLOAT_INT_BIAS, align 4
  %186 = add nsw i32 %184, %185
  %187 = icmp sge i32 %186, 0
  br i1 %187, label %188, label %204

188:                                              ; preds = %183
  %189 = load i32, i32* %13, align 4
  %190 = load i32, i32* @FLOAT_INT_BIAS, align 4
  %191 = add nsw i32 %189, %190
  %192 = load i32, i32* @FLOAT_INT_BITS, align 4
  %193 = shl i32 1, %192
  %194 = icmp slt i32 %191, %193
  br i1 %194, label %195, label %204

195:                                              ; preds = %188
  %196 = load i32*, i32** %5, align 8
  %197 = call i32 @MSG_WriteBits(i32* %196, i32 0, i32 1)
  %198 = load i32*, i32** %5, align 8
  %199 = load i32, i32* %13, align 4
  %200 = load i32, i32* @FLOAT_INT_BIAS, align 4
  %201 = add nsw i32 %199, %200
  %202 = load i32, i32* @FLOAT_INT_BITS, align 4
  %203 = call i32 @MSG_WriteBits(i32* %198, i32 %201, i32 %202)
  br label %211

204:                                              ; preds = %188, %183, %176
  %205 = load i32*, i32** %5, align 8
  %206 = call i32 @MSG_WriteBits(i32* %205, i32 1, i32 1)
  %207 = load i32*, i32** %5, align 8
  %208 = load i32*, i32** %16, align 8
  %209 = load i32, i32* %208, align 4
  %210 = call i32 @MSG_WriteBits(i32* %207, i32 %209, i32 32)
  br label %211

211:                                              ; preds = %204, %195
  br label %212

212:                                              ; preds = %211, %170
  br label %231

213:                                              ; preds = %155
  %214 = load i32*, i32** %16, align 8
  %215 = load i32, i32* %214, align 4
  %216 = icmp eq i32 %215, 0
  br i1 %216, label %217, label %220

217:                                              ; preds = %213
  %218 = load i32*, i32** %5, align 8
  %219 = call i32 @MSG_WriteBits(i32* %218, i32 0, i32 1)
  br label %230

220:                                              ; preds = %213
  %221 = load i32*, i32** %5, align 8
  %222 = call i32 @MSG_WriteBits(i32* %221, i32 1, i32 1)
  %223 = load i32*, i32** %5, align 8
  %224 = load i32*, i32** %16, align 8
  %225 = load i32, i32* %224, align 4
  %226 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %227 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %226, i32 0, i32 1
  %228 = load i32, i32* %227, align 4
  %229 = call i32 @MSG_WriteBits(i32* %223, i32 %225, i32 %228)
  br label %230

230:                                              ; preds = %220, %217
  br label %231

231:                                              ; preds = %230, %212
  br label %232

232:                                              ; preds = %231, %152
  %233 = load i32, i32* %9, align 4
  %234 = add nsw i32 %233, 1
  store i32 %234, i32* %9, align 4
  %235 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %236 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %235, i32 1
  store %struct.TYPE_4__* %236, %struct.TYPE_4__** %12, align 8
  br label %128

237:                                              ; preds = %30, %31, %98, %99, %128
  ret void
}

declare dso_local i32 @ARRAY_LEN(%struct.TYPE_4__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @MSG_WriteBits(i32*, i32, i32) #1

declare dso_local i32 @Com_Error(i32, i8*, i32) #1

declare dso_local i32 @MSG_WriteByte(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
