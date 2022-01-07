; ModuleID = '/home/carl/AnghaBench/lab/q3map2/libs/picomodel/lwo/extr_lwob.c_lwGetObject5.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/libs/picomodel/lwo/extr_lwob.c_lwGetObject5.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32, i32, i32, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32, %struct.TYPE_13__, i32 }
%struct.TYPE_13__ = type { i32 }

@ID_FORM = common dso_local global i32 0, align 4
@ID_LWOB = common dso_local global i32 0, align 4
@PICO_SEEK_CUR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_11__* @lwGetObject5(i8* %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_11__*, align 8
  %11 = alloca %struct.TYPE_12__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %17 = load i32*, i32** %7, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %4
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %5, align 8
  br label %207

20:                                               ; preds = %4
  %21 = call i32 @set_flen(i32 0)
  %22 = load i32*, i32** %7, align 8
  %23 = call i32 @getU4(i32* %22)
  store i32 %23, i32* %13, align 4
  %24 = load i32*, i32** %7, align 8
  %25 = call i32 @getU4(i32* %24)
  store i32 %25, i32* %14, align 4
  %26 = load i32*, i32** %7, align 8
  %27 = call i32 @getU4(i32* %26)
  store i32 %27, i32* %15, align 4
  %28 = call i32 (...) @get_flen()
  %29 = icmp ne i32 12, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %20
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %5, align 8
  br label %207

31:                                               ; preds = %20
  %32 = load i32, i32* %13, align 4
  %33 = load i32, i32* @ID_FORM, align 4
  %34 = icmp ne i32 %32, %33
  br i1 %34, label %39, label %35

35:                                               ; preds = %31
  %36 = load i32, i32* %15, align 4
  %37 = load i32, i32* @ID_LWOB, align 4
  %38 = icmp ne i32 %36, %37
  br i1 %38, label %39, label %45

39:                                               ; preds = %35, %31
  %40 = load i32*, i32** %9, align 8
  %41 = icmp ne i32* %40, null
  br i1 %41, label %42, label %44

42:                                               ; preds = %39
  %43 = load i32*, i32** %9, align 8
  store i32 12, i32* %43, align 4
  br label %44

44:                                               ; preds = %42, %39
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %5, align 8
  br label %207

45:                                               ; preds = %35
  %46 = call i8* @_pico_calloc(i32 1, i32 24)
  %47 = bitcast i8* %46 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %47, %struct.TYPE_11__** %10, align 8
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %49 = icmp ne %struct.TYPE_11__* %48, null
  br i1 %49, label %51, label %50

50:                                               ; preds = %45
  br label %187

51:                                               ; preds = %45
  %52 = call i8* @_pico_calloc(i32 1, i32 12)
  %53 = bitcast i8* %52 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %53, %struct.TYPE_12__** %11, align 8
  %54 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %55 = icmp ne %struct.TYPE_12__* %54, null
  br i1 %55, label %57, label %56

56:                                               ; preds = %51
  br label %187

57:                                               ; preds = %51
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 4
  store %struct.TYPE_12__* %58, %struct.TYPE_12__** %60, align 8
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 0
  store i32 1, i32* %62, align 8
  %63 = load i32*, i32** %7, align 8
  %64 = call i32 @getU4(i32* %63)
  store i32 %64, i32* %13, align 4
  %65 = load i32*, i32** %7, align 8
  %66 = call i32 @getU4(i32* %65)
  store i32 %66, i32* %16, align 4
  %67 = call i32 (...) @get_flen()
  %68 = icmp sgt i32 0, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %57
  br label %187

70:                                               ; preds = %57
  br label %71

71:                                               ; preds = %70, %148
  %72 = load i32, i32* %16, align 4
  %73 = and i32 %72, 1
  %74 = load i32, i32* %16, align 4
  %75 = add i32 %74, %73
  store i32 %75, i32* %16, align 4
  %76 = load i32, i32* %13, align 4
  switch i32 %76, label %127 [
    i32 131, label %77
    i32 130, label %86
    i32 129, label %99
    i32 128, label %108
  ]

77:                                               ; preds = %71
  %78 = load i32*, i32** %7, align 8
  %79 = load i32, i32* %16, align 4
  %80 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %81 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %80, i32 0, i32 1
  %82 = call i32 @lwGetPoints(i32* %78, i32 %79, %struct.TYPE_13__* %81)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %85, label %84

84:                                               ; preds = %77
  br label %187

85:                                               ; preds = %77
  br label %132

86:                                               ; preds = %71
  %87 = load i32*, i32** %7, align 8
  %88 = load i32, i32* %16, align 4
  %89 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %90 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %89, i32 0, i32 0
  %91 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %92 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @lwGetPolygons5(i32* %87, i32 %88, i32* %90, i32 %94)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %98, label %97

97:                                               ; preds = %86
  br label %187

98:                                               ; preds = %86
  br label %132

99:                                               ; preds = %71
  %100 = load i32*, i32** %7, align 8
  %101 = load i32, i32* %16, align 4
  %102 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %103 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %102, i32 0, i32 3
  %104 = call i32 @lwGetTags(i32* %100, i32 %101, i32* %103)
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %107, label %106

106:                                              ; preds = %99
  br label %187

107:                                              ; preds = %99
  br label %132

108:                                              ; preds = %71
  %109 = load i32*, i32** %7, align 8
  %110 = load i32, i32* %16, align 4
  %111 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %112 = call i64 @lwGetSurface5(i32* %109, i32 %110, %struct.TYPE_11__* %111)
  %113 = inttoptr i64 %112 to i32*
  store i32* %113, i32** %12, align 8
  %114 = load i32*, i32** %12, align 8
  %115 = icmp ne i32* %114, null
  br i1 %115, label %117, label %116

116:                                              ; preds = %108
  br label %187

117:                                              ; preds = %108
  %118 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %119 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %118, i32 0, i32 2
  %120 = bitcast i32* %119 to i8**
  %121 = load i32*, i32** %12, align 8
  %122 = call i32 @lwListAdd(i8** %120, i32* %121)
  %123 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %124 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %124, align 4
  br label %132

127:                                              ; preds = %71
  %128 = load i32*, i32** %7, align 8
  %129 = load i32, i32* %16, align 4
  %130 = load i32, i32* @PICO_SEEK_CUR, align 4
  %131 = call i32 @_pico_memstream_seek(i32* %128, i32 %129, i32 %130)
  br label %132

132:                                              ; preds = %127, %117, %107, %98, %85
  %133 = load i32, i32* %14, align 4
  %134 = load i32*, i32** %7, align 8
  %135 = call i32 @_pico_memstream_tell(i32* %134)
  %136 = sub nsw i32 %135, 8
  %137 = icmp ule i32 %133, %136
  br i1 %137, label %138, label %139

138:                                              ; preds = %132
  br label %149

139:                                              ; preds = %132
  %140 = call i32 @set_flen(i32 0)
  %141 = load i32*, i32** %7, align 8
  %142 = call i32 @getU4(i32* %141)
  store i32 %142, i32* %13, align 4
  %143 = load i32*, i32** %7, align 8
  %144 = call i32 @getU4(i32* %143)
  store i32 %144, i32* %16, align 4
  %145 = call i32 (...) @get_flen()
  %146 = icmp ne i32 8, %145
  br i1 %146, label %147, label %148

147:                                              ; preds = %139
  br label %187

148:                                              ; preds = %139
  br label %71

149:                                              ; preds = %138
  %150 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %151 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %150, i32 0, i32 1
  %152 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %153 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %152, i32 0, i32 2
  %154 = load i32, i32* %153, align 4
  %155 = call i32 @lwGetBoundingBox(%struct.TYPE_13__* %151, i32 %154)
  %156 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %157 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %156, i32 0, i32 1
  %158 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %159 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %158, i32 0, i32 0
  %160 = call i32 @lwGetPolyNormals(%struct.TYPE_13__* %157, i32* %159)
  %161 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %162 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %161, i32 0, i32 1
  %163 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %164 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %163, i32 0, i32 0
  %165 = call i32 @lwGetPointPolygons(%struct.TYPE_13__* %162, i32* %164)
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %168, label %167

167:                                              ; preds = %149
  br label %187

168:                                              ; preds = %149
  %169 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %170 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %169, i32 0, i32 0
  %171 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %172 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %171, i32 0, i32 3
  %173 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %174 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %173, i32 0, i32 2
  %175 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %176 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %175, i32 0, i32 1
  %177 = call i32 @lwResolvePolySurfaces(i32* %170, i32* %172, i32* %174, i32* %176)
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %180, label %179

179:                                              ; preds = %168
  br label %187

180:                                              ; preds = %168
  %181 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %182 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %181, i32 0, i32 1
  %183 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %184 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %183, i32 0, i32 0
  %185 = call i32 @lwGetVertNormals(%struct.TYPE_13__* %182, i32* %184)
  %186 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  store %struct.TYPE_11__* %186, %struct.TYPE_11__** %5, align 8
  br label %207

187:                                              ; preds = %179, %167, %147, %116, %106, %97, %84, %69, %56, %50
  %188 = load i32*, i32** %8, align 8
  %189 = icmp ne i32* %188, null
  br i1 %189, label %190, label %193

190:                                              ; preds = %187
  %191 = load i32, i32* %13, align 4
  %192 = load i32*, i32** %8, align 8
  store i32 %191, i32* %192, align 4
  br label %193

193:                                              ; preds = %190, %187
  %194 = load i32*, i32** %7, align 8
  %195 = icmp ne i32* %194, null
  br i1 %195, label %196, label %204

196:                                              ; preds = %193
  %197 = load i32*, i32** %9, align 8
  %198 = icmp ne i32* %197, null
  br i1 %198, label %199, label %203

199:                                              ; preds = %196
  %200 = load i32*, i32** %7, align 8
  %201 = call i32 @_pico_memstream_tell(i32* %200)
  %202 = load i32*, i32** %9, align 8
  store i32 %201, i32* %202, align 4
  br label %203

203:                                              ; preds = %199, %196
  br label %204

204:                                              ; preds = %203, %193
  %205 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %206 = call i32 @lwFreeObject(%struct.TYPE_11__* %205)
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %5, align 8
  br label %207

207:                                              ; preds = %204, %180, %44, %30, %19
  %208 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  ret %struct.TYPE_11__* %208
}

declare dso_local i32 @set_flen(i32) #1

declare dso_local i32 @getU4(i32*) #1

declare dso_local i32 @get_flen(...) #1

declare dso_local i8* @_pico_calloc(i32, i32) #1

declare dso_local i32 @lwGetPoints(i32*, i32, %struct.TYPE_13__*) #1

declare dso_local i32 @lwGetPolygons5(i32*, i32, i32*, i32) #1

declare dso_local i32 @lwGetTags(i32*, i32, i32*) #1

declare dso_local i64 @lwGetSurface5(i32*, i32, %struct.TYPE_11__*) #1

declare dso_local i32 @lwListAdd(i8**, i32*) #1

declare dso_local i32 @_pico_memstream_seek(i32*, i32, i32) #1

declare dso_local i32 @_pico_memstream_tell(i32*) #1

declare dso_local i32 @lwGetBoundingBox(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @lwGetPolyNormals(%struct.TYPE_13__*, i32*) #1

declare dso_local i32 @lwGetPointPolygons(%struct.TYPE_13__*, i32*) #1

declare dso_local i32 @lwResolvePolySurfaces(i32*, i32*, i32*, i32*) #1

declare dso_local i32 @lwGetVertNormals(%struct.TYPE_13__*, i32*) #1

declare dso_local i32 @lwFreeObject(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
