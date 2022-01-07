; ModuleID = '/home/carl/AnghaBench/lab/engine/code/renderercommon/extr_tr_image_png.c_DecompressIDATs.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/renderercommon/extr_tr_image_png.c_DecompressIDATs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (i32*)*, i32* (i32)* }
%struct.BufferedFile = type { i32 }
%struct.PNG_ChunkHeader = type { i32, i32 }

@PNG_ChunkType_IDAT = common dso_local global i32 0, align 4
@qtrue = common dso_local global i64 0, align 8
@PNG_ChunkHeader_Size = common dso_local global i32 0, align 4
@PNG_ChunkCRC_Size = common dso_local global i64 0, align 8
@ri = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@PNG_ZlibHeader_Size = common dso_local global i32 0, align 4
@PNG_ZlibCheckValue_Size = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.BufferedFile*, i32**)* @DecompressIDATs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @DecompressIDATs(%struct.BufferedFile* %0, i32** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.BufferedFile*, align 8
  %5 = alloca i32**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.PNG_ChunkHeader*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32*, align 8
  store %struct.BufferedFile* %0, %struct.BufferedFile** %4, align 8
  store i32** %1, i32*** %5, align 8
  %21 = load %struct.BufferedFile*, %struct.BufferedFile** %4, align 8
  %22 = icmp ne %struct.BufferedFile* %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %2
  %24 = load i32**, i32*** %5, align 8
  %25 = icmp ne i32** %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %23, %2
  store i32 -1, i32* %3, align 4
  br label %235

27:                                               ; preds = %23
  store i32* null, i32** %6, align 8
  %28 = load i32*, i32** %6, align 8
  %29 = load i32**, i32*** %5, align 8
  store i32* %28, i32** %29, align 8
  store i32* null, i32** %8, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %14, align 4
  %30 = load %struct.BufferedFile*, %struct.BufferedFile** %4, align 8
  %31 = load i32, i32* @PNG_ChunkType_IDAT, align 4
  %32 = call i32 @FindChunk(%struct.BufferedFile* %30, i32 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %27
  store i32 -1, i32* %3, align 4
  br label %235

35:                                               ; preds = %27
  br label %36

36:                                               ; preds = %96, %35
  %37 = load i64, i64* @qtrue, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %97

39:                                               ; preds = %36
  %40 = load %struct.BufferedFile*, %struct.BufferedFile** %4, align 8
  %41 = load i32, i32* @PNG_ChunkHeader_Size, align 4
  %42 = call i8* @BufferedFileRead(%struct.BufferedFile* %40, i32 %41)
  %43 = bitcast i8* %42 to %struct.PNG_ChunkHeader*
  store %struct.PNG_ChunkHeader* %43, %struct.PNG_ChunkHeader** %11, align 8
  %44 = load %struct.PNG_ChunkHeader*, %struct.PNG_ChunkHeader** %11, align 8
  %45 = icmp ne %struct.PNG_ChunkHeader* %44, null
  br i1 %45, label %50, label %46

46:                                               ; preds = %39
  %47 = load %struct.BufferedFile*, %struct.BufferedFile** %4, align 8
  %48 = load i32, i32* %14, align 4
  %49 = call i32 @BufferedFileRewind(%struct.BufferedFile* %47, i32 %48)
  store i32 -1, i32* %3, align 4
  br label %235

50:                                               ; preds = %39
  %51 = load %struct.PNG_ChunkHeader*, %struct.PNG_ChunkHeader** %11, align 8
  %52 = getelementptr inbounds %struct.PNG_ChunkHeader, %struct.PNG_ChunkHeader* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @BigLong(i32 %53)
  store i32 %54, i32* %12, align 4
  %55 = load %struct.PNG_ChunkHeader*, %struct.PNG_ChunkHeader** %11, align 8
  %56 = getelementptr inbounds %struct.PNG_ChunkHeader, %struct.PNG_ChunkHeader* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @BigLong(i32 %57)
  store i32 %58, i32* %13, align 4
  %59 = load i32, i32* %13, align 4
  %60 = load i32, i32* @PNG_ChunkType_IDAT, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %66, label %62

62:                                               ; preds = %50
  %63 = load %struct.BufferedFile*, %struct.BufferedFile** %4, align 8
  %64 = load i32, i32* @PNG_ChunkHeader_Size, align 4
  %65 = call i32 @BufferedFileRewind(%struct.BufferedFile* %63, i32 %64)
  br label %97

66:                                               ; preds = %50
  %67 = load i32, i32* @PNG_ChunkHeader_Size, align 4
  %68 = load i32, i32* %14, align 4
  %69 = add nsw i32 %68, %67
  store i32 %69, i32* %14, align 4
  %70 = load i32, i32* %12, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %96

72:                                               ; preds = %66
  %73 = load %struct.BufferedFile*, %struct.BufferedFile** %4, align 8
  %74 = load i32, i32* %12, align 4
  %75 = sext i32 %74 to i64
  %76 = load i64, i64* @PNG_ChunkCRC_Size, align 8
  %77 = add nsw i64 %75, %76
  %78 = call i32 @BufferedFileSkip(%struct.BufferedFile* %73, i64 %77)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %84, label %80

80:                                               ; preds = %72
  %81 = load %struct.BufferedFile*, %struct.BufferedFile** %4, align 8
  %82 = load i32, i32* %14, align 4
  %83 = call i32 @BufferedFileRewind(%struct.BufferedFile* %81, i32 %82)
  store i32 -1, i32* %3, align 4
  br label %235

84:                                               ; preds = %72
  %85 = load i32, i32* %12, align 4
  %86 = sext i32 %85 to i64
  %87 = load i64, i64* @PNG_ChunkCRC_Size, align 8
  %88 = add nsw i64 %86, %87
  %89 = load i32, i32* %14, align 4
  %90 = sext i32 %89 to i64
  %91 = add nsw i64 %90, %88
  %92 = trunc i64 %91 to i32
  store i32 %92, i32* %14, align 4
  %93 = load i32, i32* %12, align 4
  %94 = load i32, i32* %10, align 4
  %95 = add nsw i32 %94, %93
  store i32 %95, i32* %10, align 4
  br label %96

96:                                               ; preds = %84, %66
  br label %36

97:                                               ; preds = %62, %36
  %98 = load %struct.BufferedFile*, %struct.BufferedFile** %4, align 8
  %99 = load i32, i32* %14, align 4
  %100 = call i32 @BufferedFileRewind(%struct.BufferedFile* %98, i32 %99)
  %101 = load i32* (i32)*, i32* (i32)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ri, i32 0, i32 1), align 8
  %102 = load i32, i32* %10, align 4
  %103 = call i32* %101(i32 %102)
  store i32* %103, i32** %8, align 8
  %104 = load i32*, i32** %8, align 8
  %105 = icmp ne i32* %104, null
  br i1 %105, label %107, label %106

106:                                              ; preds = %97
  store i32 -1, i32* %3, align 4
  br label %235

107:                                              ; preds = %97
  %108 = load i32*, i32** %8, align 8
  store i32* %108, i32** %9, align 8
  br label %109

109:                                              ; preds = %171, %107
  %110 = load i64, i64* @qtrue, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %172

112:                                              ; preds = %109
  %113 = load %struct.BufferedFile*, %struct.BufferedFile** %4, align 8
  %114 = load i32, i32* @PNG_ChunkHeader_Size, align 4
  %115 = call i8* @BufferedFileRead(%struct.BufferedFile* %113, i32 %114)
  %116 = bitcast i8* %115 to %struct.PNG_ChunkHeader*
  store %struct.PNG_ChunkHeader* %116, %struct.PNG_ChunkHeader** %11, align 8
  %117 = load %struct.PNG_ChunkHeader*, %struct.PNG_ChunkHeader** %11, align 8
  %118 = icmp ne %struct.PNG_ChunkHeader* %117, null
  br i1 %118, label %123, label %119

119:                                              ; preds = %112
  %120 = load i32 (i32*)*, i32 (i32*)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ri, i32 0, i32 0), align 8
  %121 = load i32*, i32** %8, align 8
  %122 = call i32 %120(i32* %121)
  store i32 -1, i32* %3, align 4
  br label %235

123:                                              ; preds = %112
  %124 = load %struct.PNG_ChunkHeader*, %struct.PNG_ChunkHeader** %11, align 8
  %125 = getelementptr inbounds %struct.PNG_ChunkHeader, %struct.PNG_ChunkHeader* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @BigLong(i32 %126)
  store i32 %127, i32* %12, align 4
  %128 = load %struct.PNG_ChunkHeader*, %struct.PNG_ChunkHeader** %11, align 8
  %129 = getelementptr inbounds %struct.PNG_ChunkHeader, %struct.PNG_ChunkHeader* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = call i32 @BigLong(i32 %130)
  store i32 %131, i32* %13, align 4
  %132 = load i32, i32* %13, align 4
  %133 = load i32, i32* @PNG_ChunkType_IDAT, align 4
  %134 = icmp eq i32 %132, %133
  br i1 %134, label %139, label %135

135:                                              ; preds = %123
  %136 = load %struct.BufferedFile*, %struct.BufferedFile** %4, align 8
  %137 = load i32, i32* @PNG_ChunkHeader_Size, align 4
  %138 = call i32 @BufferedFileRewind(%struct.BufferedFile* %136, i32 %137)
  br label %172

139:                                              ; preds = %123
  %140 = load i32, i32* %12, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %171

142:                                              ; preds = %139
  %143 = load %struct.BufferedFile*, %struct.BufferedFile** %4, align 8
  %144 = load i32, i32* %12, align 4
  %145 = call i8* @BufferedFileRead(%struct.BufferedFile* %143, i32 %144)
  %146 = bitcast i8* %145 to i32*
  store i32* %146, i32** %20, align 8
  %147 = load i32*, i32** %20, align 8
  %148 = icmp ne i32* %147, null
  br i1 %148, label %153, label %149

149:                                              ; preds = %142
  %150 = load i32 (i32*)*, i32 (i32*)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ri, i32 0, i32 0), align 8
  %151 = load i32*, i32** %8, align 8
  %152 = call i32 %150(i32* %151)
  store i32 -1, i32* %3, align 4
  br label %235

153:                                              ; preds = %142
  %154 = load %struct.BufferedFile*, %struct.BufferedFile** %4, align 8
  %155 = load i64, i64* @PNG_ChunkCRC_Size, align 8
  %156 = call i32 @BufferedFileSkip(%struct.BufferedFile* %154, i64 %155)
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %162, label %158

158:                                              ; preds = %153
  %159 = load i32 (i32*)*, i32 (i32*)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ri, i32 0, i32 0), align 8
  %160 = load i32*, i32** %8, align 8
  %161 = call i32 %159(i32* %160)
  store i32 -1, i32* %3, align 4
  br label %235

162:                                              ; preds = %153
  %163 = load i32*, i32** %9, align 8
  %164 = load i32*, i32** %20, align 8
  %165 = load i32, i32* %12, align 4
  %166 = call i32 @memcpy(i32* %163, i32* %164, i32 %165)
  %167 = load i32, i32* %12, align 4
  %168 = load i32*, i32** %9, align 8
  %169 = sext i32 %167 to i64
  %170 = getelementptr inbounds i32, i32* %168, i64 %169
  store i32* %170, i32** %9, align 8
  br label %171

171:                                              ; preds = %162, %139
  br label %109

172:                                              ; preds = %135, %109
  store i32* null, i32** %16, align 8
  store i32 0, i32* %17, align 4
  %173 = load i32*, i32** %8, align 8
  %174 = load i32, i32* @PNG_ZlibHeader_Size, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds i32, i32* %173, i64 %175
  store i32* %176, i32** %18, align 8
  %177 = load i32, i32* %10, align 4
  %178 = load i32, i32* @PNG_ZlibHeader_Size, align 4
  %179 = sub nsw i32 %177, %178
  %180 = load i32, i32* @PNG_ZlibCheckValue_Size, align 4
  %181 = sub nsw i32 %179, %180
  store i32 %181, i32* %19, align 4
  %182 = load i32*, i32** %16, align 8
  %183 = load i32*, i32** %18, align 8
  %184 = call i64 @puff(i32* %182, i32* %17, i32* %183, i32* %19)
  store i64 %184, i64* %15, align 8
  %185 = load i64, i64* %15, align 8
  %186 = icmp eq i64 %185, 0
  br i1 %186, label %187, label %190

187:                                              ; preds = %172
  %188 = load i32, i32* %17, align 4
  %189 = icmp sgt i32 %188, 0
  br i1 %189, label %194, label %190

190:                                              ; preds = %187, %172
  %191 = load i32 (i32*)*, i32 (i32*)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ri, i32 0, i32 0), align 8
  %192 = load i32*, i32** %8, align 8
  %193 = call i32 %191(i32* %192)
  store i32 -1, i32* %3, align 4
  br label %235

194:                                              ; preds = %187
  %195 = load i32* (i32)*, i32* (i32)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ri, i32 0, i32 1), align 8
  %196 = load i32, i32* %17, align 4
  %197 = call i32* %195(i32 %196)
  store i32* %197, i32** %6, align 8
  %198 = load i32*, i32** %6, align 8
  %199 = icmp ne i32* %198, null
  br i1 %199, label %204, label %200

200:                                              ; preds = %194
  %201 = load i32 (i32*)*, i32 (i32*)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ri, i32 0, i32 0), align 8
  %202 = load i32*, i32** %8, align 8
  %203 = call i32 %201(i32* %202)
  store i32 -1, i32* %3, align 4
  br label %235

204:                                              ; preds = %194
  %205 = load i32*, i32** %6, align 8
  store i32* %205, i32** %16, align 8
  %206 = load i32*, i32** %8, align 8
  %207 = load i32, i32* @PNG_ZlibHeader_Size, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds i32, i32* %206, i64 %208
  store i32* %209, i32** %18, align 8
  %210 = load i32, i32* %10, align 4
  %211 = load i32, i32* @PNG_ZlibHeader_Size, align 4
  %212 = sub nsw i32 %210, %211
  %213 = load i32, i32* @PNG_ZlibCheckValue_Size, align 4
  %214 = sub nsw i32 %212, %213
  store i32 %214, i32* %19, align 4
  %215 = load i32*, i32** %16, align 8
  %216 = load i32*, i32** %18, align 8
  %217 = call i64 @puff(i32* %215, i32* %17, i32* %216, i32* %19)
  store i64 %217, i64* %15, align 8
  %218 = load i32 (i32*)*, i32 (i32*)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ri, i32 0, i32 0), align 8
  %219 = load i32*, i32** %8, align 8
  %220 = call i32 %218(i32* %219)
  %221 = load i64, i64* %15, align 8
  %222 = icmp eq i64 %221, 0
  br i1 %222, label %223, label %226

223:                                              ; preds = %204
  %224 = load i32, i32* %17, align 4
  %225 = icmp sgt i32 %224, 0
  br i1 %225, label %230, label %226

226:                                              ; preds = %223, %204
  %227 = load i32 (i32*)*, i32 (i32*)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ri, i32 0, i32 0), align 8
  %228 = load i32*, i32** %6, align 8
  %229 = call i32 %227(i32* %228)
  store i32 -1, i32* %3, align 4
  br label %235

230:                                              ; preds = %223
  %231 = load i32, i32* %17, align 4
  store i32 %231, i32* %7, align 4
  %232 = load i32*, i32** %6, align 8
  %233 = load i32**, i32*** %5, align 8
  store i32* %232, i32** %233, align 8
  %234 = load i32, i32* %7, align 4
  store i32 %234, i32* %3, align 4
  br label %235

235:                                              ; preds = %230, %226, %200, %190, %158, %149, %119, %106, %80, %46, %34, %26
  %236 = load i32, i32* %3, align 4
  ret i32 %236
}

declare dso_local i32 @FindChunk(%struct.BufferedFile*, i32) #1

declare dso_local i8* @BufferedFileRead(%struct.BufferedFile*, i32) #1

declare dso_local i32 @BufferedFileRewind(%struct.BufferedFile*, i32) #1

declare dso_local i32 @BigLong(i32) #1

declare dso_local i32 @BufferedFileSkip(%struct.BufferedFile*, i64) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i64 @puff(i32*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
