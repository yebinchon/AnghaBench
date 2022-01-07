; ModuleID = '/home/carl/AnghaBench/lab/q3map2/libs/picomodel/lwo/extr_surface.c_lwGetGradient.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/libs/picomodel/lwo/extr_surface.c_lwGetGradient.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i8**, %struct.TYPE_6__*, i8*, i8*, i8*, i8*, i8* }
%struct.TYPE_6__ = type { i8**, i8* }

@PICO_SEEK_CUR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lwGetGradient(i32* %0, i32 %1, %struct.TYPE_9__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i16, align 2
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_9__* %2, %struct.TYPE_9__** %7, align 8
  %15 = load i32*, i32** %5, align 8
  %16 = call i32 @_pico_memstream_tell(i32* %15)
  store i32 %16, i32* %11, align 4
  %17 = load i32*, i32** %5, align 8
  %18 = call i32 @getU4(i32* %17)
  store i32 %18, i32* %8, align 4
  %19 = load i32*, i32** %5, align 8
  %20 = call i8* @getU2(i32* %19)
  %21 = ptrtoint i8* %20 to i16
  store i16 %21, i16* %9, align 2
  %22 = call i32 (...) @get_flen()
  %23 = icmp sgt i32 0, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %231

25:                                               ; preds = %3
  br label %26

26:                                               ; preds = %25, %224
  %27 = load i16, i16* %9, align 2
  %28 = zext i16 %27 to i32
  %29 = and i32 %28, 1
  %30 = load i16, i16* %9, align 2
  %31 = zext i16 %30 to i32
  %32 = add nsw i32 %31, %29
  %33 = trunc i32 %32 to i16
  store i16 %33, i16* %9, align 2
  %34 = call i32 @set_flen(i32 0)
  %35 = load i32, i32* %8, align 4
  switch i32 %35, label %181 [
    i32 128, label %36
    i32 129, label %45
    i32 130, label %52
    i32 132, label %59
    i32 134, label %66
    i32 133, label %73
    i32 135, label %80
    i32 131, label %143
  ]

36:                                               ; preds = %26
  %37 = load i32*, i32** %5, align 8
  %38 = load i16, i16* %9, align 2
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 1
  %41 = call i32 @lwGetTMap(i32* %37, i16 zeroext %38, i32* %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %36
  store i32 0, i32* %4, align 4
  br label %231

44:                                               ; preds = %36
  br label %182

45:                                               ; preds = %26
  %46 = load i32*, i32** %5, align 8
  %47 = call i8* @getS0(i32* %46)
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 6
  store i8* %47, i8** %51, align 8
  br label %182

52:                                               ; preds = %26
  %53 = load i32*, i32** %5, align 8
  %54 = call i8* @getS0(i32* %53)
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 5
  store i8* %54, i8** %58, align 8
  br label %182

59:                                               ; preds = %26
  %60 = load i32*, i32** %5, align 8
  %61 = call i8* @getF4(i32* %60)
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 4
  store i8* %61, i8** %65, align 8
  br label %182

66:                                               ; preds = %26
  %67 = load i32*, i32** %5, align 8
  %68 = call i8* @getF4(i32* %67)
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 3
  store i8* %68, i8** %72, align 8
  br label %182

73:                                               ; preds = %26
  %74 = load i32*, i32** %5, align 8
  %75 = call i8* @getU2(i32* %74)
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 2
  store i8* %75, i8** %79, align 8
  br label %182

80:                                               ; preds = %26
  %81 = load i16, i16* %9, align 2
  %82 = zext i16 %81 to i64
  %83 = udiv i64 %82, 4
  %84 = trunc i64 %83 to i32
  store i32 %84, i32* %14, align 4
  %85 = load i32, i32* %14, align 4
  %86 = call i8* @_pico_calloc(i32 %85, i32 4)
  %87 = bitcast i8* %86 to %struct.TYPE_6__*
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 1
  store %struct.TYPE_6__* %87, %struct.TYPE_6__** %91, align 8
  %92 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 1
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** %95, align 8
  %97 = icmp ne %struct.TYPE_6__* %96, null
  br i1 %97, label %99, label %98

98:                                               ; preds = %80
  store i32 0, i32* %4, align 4
  br label %231

99:                                               ; preds = %80
  store i32 0, i32* %12, align 4
  br label %100

100:                                              ; preds = %139, %99
  %101 = load i32, i32* %12, align 4
  %102 = load i32, i32* %14, align 4
  %103 = icmp slt i32 %101, %102
  br i1 %103, label %104, label %142

104:                                              ; preds = %100
  %105 = load i32*, i32** %5, align 8
  %106 = call i8* @getF4(i32* %105)
  %107 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %108 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 1
  %111 = load %struct.TYPE_6__*, %struct.TYPE_6__** %110, align 8
  %112 = load i32, i32* %12, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i64 %113
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 1
  store i8* %106, i8** %115, align 8
  store i32 0, i32* %13, align 4
  br label %116

116:                                              ; preds = %135, %104
  %117 = load i32, i32* %13, align 4
  %118 = icmp slt i32 %117, 4
  br i1 %118, label %119, label %138

119:                                              ; preds = %116
  %120 = load i32*, i32** %5, align 8
  %121 = call i8* @getF4(i32* %120)
  %122 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %123 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %124, i32 0, i32 1
  %126 = load %struct.TYPE_6__*, %struct.TYPE_6__** %125, align 8
  %127 = load i32, i32* %12, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i64 %128
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i32 0, i32 0
  %131 = load i8**, i8*** %130, align 8
  %132 = load i32, i32* %13, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i8*, i8** %131, i64 %133
  store i8* %121, i8** %134, align 8
  br label %135

135:                                              ; preds = %119
  %136 = load i32, i32* %13, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %13, align 4
  br label %116

138:                                              ; preds = %116
  br label %139

139:                                              ; preds = %138
  %140 = load i32, i32* %12, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %12, align 4
  br label %100

142:                                              ; preds = %100
  br label %182

143:                                              ; preds = %26
  %144 = load i16, i16* %9, align 2
  %145 = zext i16 %144 to i32
  %146 = sdiv i32 %145, 2
  store i32 %146, i32* %14, align 4
  %147 = load i32, i32* %14, align 4
  %148 = call i8* @_pico_calloc(i32 %147, i32 2)
  %149 = bitcast i8* %148 to i8**
  %150 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %151 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %152, i32 0, i32 0
  store i8** %149, i8*** %153, align 8
  %154 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %155 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %156, i32 0, i32 0
  %158 = load i8**, i8*** %157, align 8
  %159 = icmp ne i8** %158, null
  br i1 %159, label %161, label %160

160:                                              ; preds = %143
  store i32 0, i32* %4, align 4
  br label %231

161:                                              ; preds = %143
  store i32 0, i32* %12, align 4
  br label %162

162:                                              ; preds = %177, %161
  %163 = load i32, i32* %12, align 4
  %164 = load i32, i32* %14, align 4
  %165 = icmp slt i32 %163, %164
  br i1 %165, label %166, label %180

166:                                              ; preds = %162
  %167 = load i32*, i32** %5, align 8
  %168 = call i8* @getU2(i32* %167)
  %169 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %170 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %169, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %171, i32 0, i32 0
  %173 = load i8**, i8*** %172, align 8
  %174 = load i32, i32* %12, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds i8*, i8** %173, i64 %175
  store i8* %168, i8** %176, align 8
  br label %177

177:                                              ; preds = %166
  %178 = load i32, i32* %12, align 4
  %179 = add nsw i32 %178, 1
  store i32 %179, i32* %12, align 4
  br label %162

180:                                              ; preds = %162
  br label %182

181:                                              ; preds = %26
  br label %182

182:                                              ; preds = %181, %180, %142, %73, %66, %59, %52, %45, %44
  %183 = call i32 (...) @get_flen()
  store i32 %183, i32* %10, align 4
  %184 = load i32, i32* %10, align 4
  %185 = icmp slt i32 %184, 0
  br i1 %185, label %191, label %186

186:                                              ; preds = %182
  %187 = load i32, i32* %10, align 4
  %188 = load i16, i16* %9, align 2
  %189 = zext i16 %188 to i32
  %190 = icmp sgt i32 %187, %189
  br i1 %190, label %191, label %192

191:                                              ; preds = %186, %182
  store i32 0, i32* %4, align 4
  br label %231

192:                                              ; preds = %186
  %193 = load i32, i32* %10, align 4
  %194 = load i16, i16* %9, align 2
  %195 = zext i16 %194 to i32
  %196 = icmp slt i32 %193, %195
  br i1 %196, label %197, label %206

197:                                              ; preds = %192
  %198 = load i32*, i32** %5, align 8
  %199 = load i16, i16* %9, align 2
  %200 = zext i16 %199 to i32
  %201 = load i32, i32* %10, align 4
  %202 = sub nsw i32 %200, %201
  %203 = trunc i32 %202 to i16
  %204 = load i32, i32* @PICO_SEEK_CUR, align 4
  %205 = call i32 @_pico_memstream_seek(i32* %198, i16 zeroext %203, i32 %204)
  br label %206

206:                                              ; preds = %197, %192
  %207 = load i32, i32* %6, align 4
  %208 = load i32*, i32** %5, align 8
  %209 = call i32 @_pico_memstream_tell(i32* %208)
  %210 = load i32, i32* %11, align 4
  %211 = sub nsw i32 %209, %210
  %212 = icmp sle i32 %207, %211
  br i1 %212, label %213, label %214

213:                                              ; preds = %206
  br label %225

214:                                              ; preds = %206
  %215 = call i32 @set_flen(i32 0)
  %216 = load i32*, i32** %5, align 8
  %217 = call i32 @getU4(i32* %216)
  store i32 %217, i32* %8, align 4
  %218 = load i32*, i32** %5, align 8
  %219 = call i8* @getU2(i32* %218)
  %220 = ptrtoint i8* %219 to i16
  store i16 %220, i16* %9, align 2
  %221 = call i32 (...) @get_flen()
  %222 = icmp ne i32 6, %221
  br i1 %222, label %223, label %224

223:                                              ; preds = %214
  store i32 0, i32* %4, align 4
  br label %231

224:                                              ; preds = %214
  br label %26

225:                                              ; preds = %213
  %226 = load i32*, i32** %5, align 8
  %227 = call i32 @_pico_memstream_tell(i32* %226)
  %228 = load i32, i32* %11, align 4
  %229 = sub nsw i32 %227, %228
  %230 = call i32 @set_flen(i32 %229)
  store i32 1, i32* %4, align 4
  br label %231

231:                                              ; preds = %225, %223, %191, %160, %98, %43, %24
  %232 = load i32, i32* %4, align 4
  ret i32 %232
}

declare dso_local i32 @_pico_memstream_tell(i32*) #1

declare dso_local i32 @getU4(i32*) #1

declare dso_local i8* @getU2(i32*) #1

declare dso_local i32 @get_flen(...) #1

declare dso_local i32 @set_flen(i32) #1

declare dso_local i32 @lwGetTMap(i32*, i16 zeroext, i32*) #1

declare dso_local i8* @getS0(i32*) #1

declare dso_local i8* @getF4(i32*) #1

declare dso_local i8* @_pico_calloc(i32, i32) #1

declare dso_local i32 @_pico_memstream_seek(i32*, i16 zeroext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
