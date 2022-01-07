; ModuleID = '/home/carl/AnghaBench/hashcat/deps/LZMA-SDK/C/extr_Lzma2Enc.c_Lzma2EncProps_Normalize.c'
source_filename = "/home/carl/AnghaBench/hashcat/deps/LZMA-SDK/C/extr_Lzma2Enc.c_Lzma2EncProps_Normalize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32 }

@MTCODER__THREADS_MAX = common dso_local global i32 0, align 4
@LZMA2_ENC_PROPS__BLOCK_SIZE__SOLID = common dso_local global i32 0, align 4
@LZMA2_ENC_PROPS__BLOCK_SIZE__AUTO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Lzma2EncProps_Normalize(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_5__, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %2, align 8
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 4
  %17 = bitcast %struct.TYPE_5__* %9 to i8*
  %18 = bitcast %struct.TYPE_5__* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %17, i8* align 4 %18, i64 12, i1 false)
  %19 = call i32 @LzmaEncProps_Normalize(%struct.TYPE_5__* %9)
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %5, align 4
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 4
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %4, align 4
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %6, align 4
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* @MTCODER__THREADS_MAX, align 4
  %34 = icmp sgt i32 %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %1
  %36 = load i32, i32* @MTCODER__THREADS_MAX, align 4
  store i32 %36, i32* %6, align 4
  br label %37

37:                                               ; preds = %35, %1
  %38 = load i32, i32* %8, align 4
  %39 = icmp sle i32 %38, 0
  br i1 %39, label %40, label %48

40:                                               ; preds = %37
  %41 = load i32, i32* %6, align 4
  %42 = icmp sle i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %40
  store i32 1, i32* %6, align 4
  br label %44

44:                                               ; preds = %43, %40
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* %6, align 4
  %47 = mul nsw i32 %45, %46
  store i32 %47, i32* %8, align 4
  br label %83

48:                                               ; preds = %37
  %49 = load i32, i32* %6, align 4
  %50 = icmp sle i32 %49, 0
  br i1 %50, label %51, label %66

51:                                               ; preds = %48
  %52 = load i32, i32* %8, align 4
  %53 = load i32, i32* %5, align 4
  %54 = sdiv i32 %52, %53
  store i32 %54, i32* %6, align 4
  %55 = load i32, i32* %6, align 4
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %51
  store i32 1, i32* %4, align 4
  %58 = load i32, i32* %8, align 4
  store i32 %58, i32* %6, align 4
  br label %59

59:                                               ; preds = %57, %51
  %60 = load i32, i32* %6, align 4
  %61 = load i32, i32* @MTCODER__THREADS_MAX, align 4
  %62 = icmp sgt i32 %60, %61
  br i1 %62, label %63, label %65

63:                                               ; preds = %59
  %64 = load i32, i32* @MTCODER__THREADS_MAX, align 4
  store i32 %64, i32* %6, align 4
  br label %65

65:                                               ; preds = %63, %59
  br label %82

66:                                               ; preds = %48
  %67 = load i32, i32* %4, align 4
  %68 = icmp sle i32 %67, 0
  br i1 %68, label %69, label %77

69:                                               ; preds = %66
  %70 = load i32, i32* %8, align 4
  %71 = load i32, i32* %6, align 4
  %72 = sdiv i32 %70, %71
  store i32 %72, i32* %4, align 4
  %73 = load i32, i32* %4, align 4
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %69
  store i32 1, i32* %4, align 4
  br label %76

76:                                               ; preds = %75, %69
  br label %81

77:                                               ; preds = %66
  %78 = load i32, i32* %5, align 4
  %79 = load i32, i32* %6, align 4
  %80 = mul nsw i32 %78, %79
  store i32 %80, i32* %8, align 4
  br label %81

81:                                               ; preds = %77, %76
  br label %82

82:                                               ; preds = %81, %65
  br label %83

83:                                               ; preds = %82, %44
  %84 = load i32, i32* %4, align 4
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 4
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 0
  store i32 %84, i32* %87, align 4
  %88 = load i32, i32* %6, align 4
  store i32 %88, i32* %7, align 4
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 4
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  store i32 %92, i32* %3, align 4
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* @LZMA2_ENC_PROPS__BLOCK_SIZE__SOLID, align 4
  %97 = icmp ne i32 %95, %96
  br i1 %97, label %98, label %120

98:                                               ; preds = %83
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* @LZMA2_ENC_PROPS__BLOCK_SIZE__AUTO, align 4
  %103 = icmp ne i32 %101, %102
  br i1 %103, label %104, label %120

104:                                              ; preds = %98
  %105 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* %3, align 4
  %109 = icmp slt i32 %107, %108
  br i1 %109, label %113, label %110

110:                                              ; preds = %104
  %111 = load i32, i32* %3, align 4
  %112 = icmp eq i32 %111, -1
  br i1 %112, label %113, label %120

113:                                              ; preds = %110, %104
  %114 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 4
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i32 0, i32 1
  store i32 %116, i32* %119, align 4
  br label %120

120:                                              ; preds = %113, %110, %98, %83
  %121 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 4
  %123 = call i32 @LzmaEncProps_Normalize(%struct.TYPE_5__* %122)
  %124 = load i32, i32* %3, align 4
  %125 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 4
  %127 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %126, i32 0, i32 1
  store i32 %124, i32* %127, align 4
  %128 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i32 0, i32 4
  %130 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  store i32 %131, i32* %4, align 4
  %132 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %132, i32 0, i32 2
  %134 = load i32, i32* %133, align 4
  %135 = load i32, i32* @LZMA2_ENC_PROPS__BLOCK_SIZE__SOLID, align 4
  %136 = icmp eq i32 %134, %135
  br i1 %136, label %137, label %139

137:                                              ; preds = %120
  store i32 1, i32* %6, align 4
  store i32 1, i32* %7, align 4
  %138 = load i32, i32* %4, align 4
  store i32 %138, i32* %8, align 4
  br label %224

139:                                              ; preds = %120
  %140 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %141 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %140, i32 0, i32 2
  %142 = load i32, i32* %141, align 4
  %143 = load i32, i32* @LZMA2_ENC_PROPS__BLOCK_SIZE__AUTO, align 4
  %144 = icmp eq i32 %142, %143
  br i1 %144, label %145, label %152

145:                                              ; preds = %139
  %146 = load i32, i32* %6, align 4
  %147 = icmp sle i32 %146, 1
  br i1 %147, label %148, label %152

148:                                              ; preds = %145
  %149 = load i32, i32* @LZMA2_ENC_PROPS__BLOCK_SIZE__SOLID, align 4
  %150 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %151 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %150, i32 0, i32 2
  store i32 %149, i32* %151, align 4
  br label %223

152:                                              ; preds = %145, %139
  %153 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %154 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %153, i32 0, i32 2
  %155 = load i32, i32* %154, align 4
  %156 = load i32, i32* @LZMA2_ENC_PROPS__BLOCK_SIZE__AUTO, align 4
  %157 = icmp eq i32 %155, %156
  br i1 %157, label %158, label %186

158:                                              ; preds = %152
  store i32 1048576, i32* %10, align 4
  store i32 268435456, i32* %11, align 4
  %159 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %160 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %159, i32 0, i32 4
  %161 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %160, i32 0, i32 2
  %162 = load i32, i32* %161, align 4
  store i32 %162, i32* %12, align 4
  %163 = load i32, i32* %12, align 4
  %164 = shl i32 %163, 2
  store i32 %164, i32* %13, align 4
  %165 = load i32, i32* %13, align 4
  %166 = icmp slt i32 %165, 1048576
  br i1 %166, label %167, label %168

167:                                              ; preds = %158
  store i32 1048576, i32* %13, align 4
  br label %168

168:                                              ; preds = %167, %158
  %169 = load i32, i32* %13, align 4
  %170 = icmp sgt i32 %169, 268435456
  br i1 %170, label %171, label %172

171:                                              ; preds = %168
  store i32 268435456, i32* %13, align 4
  br label %172

172:                                              ; preds = %171, %168
  %173 = load i32, i32* %13, align 4
  %174 = load i32, i32* %12, align 4
  %175 = icmp slt i32 %173, %174
  br i1 %175, label %176, label %178

176:                                              ; preds = %172
  %177 = load i32, i32* %12, align 4
  store i32 %177, i32* %13, align 4
  br label %178

178:                                              ; preds = %176, %172
  %179 = load i32, i32* %13, align 4
  %180 = add nsw i32 %179, 1048575
  store i32 %180, i32* %13, align 4
  %181 = load i32, i32* %13, align 4
  %182 = and i32 %181, -1048576
  store i32 %182, i32* %13, align 4
  %183 = load i32, i32* %13, align 4
  %184 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %185 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %184, i32 0, i32 2
  store i32 %183, i32* %185, align 4
  br label %186

186:                                              ; preds = %178, %152
  %187 = load i32, i32* %6, align 4
  %188 = icmp sgt i32 %187, 1
  br i1 %188, label %189, label %222

189:                                              ; preds = %186
  %190 = load i32, i32* %3, align 4
  %191 = icmp ne i32 %190, -1
  br i1 %191, label %192, label %222

192:                                              ; preds = %189
  %193 = load i32, i32* %3, align 4
  %194 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %195 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %194, i32 0, i32 2
  %196 = load i32, i32* %195, align 4
  %197 = sdiv i32 %193, %196
  store i32 %197, i32* %14, align 4
  %198 = load i32, i32* %14, align 4
  %199 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %200 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %199, i32 0, i32 2
  %201 = load i32, i32* %200, align 4
  %202 = mul nsw i32 %198, %201
  %203 = load i32, i32* %3, align 4
  %204 = icmp ne i32 %202, %203
  br i1 %204, label %205, label %208

205:                                              ; preds = %192
  %206 = load i32, i32* %14, align 4
  %207 = add nsw i32 %206, 1
  store i32 %207, i32* %14, align 4
  br label %208

208:                                              ; preds = %205, %192
  %209 = load i32, i32* %14, align 4
  %210 = load i32, i32* %6, align 4
  %211 = icmp ult i32 %209, %210
  br i1 %211, label %212, label %221

212:                                              ; preds = %208
  %213 = load i32, i32* %14, align 4
  store i32 %213, i32* %7, align 4
  %214 = load i32, i32* %7, align 4
  %215 = icmp eq i32 %214, 0
  br i1 %215, label %216, label %217

216:                                              ; preds = %212
  store i32 1, i32* %7, align 4
  br label %217

217:                                              ; preds = %216, %212
  %218 = load i32, i32* %4, align 4
  %219 = load i32, i32* %7, align 4
  %220 = mul nsw i32 %218, %219
  store i32 %220, i32* %8, align 4
  br label %221

221:                                              ; preds = %217, %208
  br label %222

222:                                              ; preds = %221, %189, %186
  br label %223

223:                                              ; preds = %222, %148
  br label %224

224:                                              ; preds = %223, %137
  %225 = load i32, i32* %6, align 4
  %226 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %227 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %226, i32 0, i32 0
  store i32 %225, i32* %227, align 4
  %228 = load i32, i32* %7, align 4
  %229 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %230 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %229, i32 0, i32 3
  store i32 %228, i32* %230, align 4
  %231 = load i32, i32* %8, align 4
  %232 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %233 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %232, i32 0, i32 1
  store i32 %231, i32* %233, align 4
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @LzmaEncProps_Normalize(%struct.TYPE_5__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
