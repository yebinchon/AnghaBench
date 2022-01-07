; ModuleID = '/home/carl/AnghaBench/lab/q3map2/libs/picomodel/lwo/extr_surface.c_lwGetImageMap.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/libs/picomodel/lwo/extr_surface.c_lwGetImageMap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_14__, i32 }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { %struct.TYPE_12__, %struct.TYPE_11__, i8*, i8*, i8*, %struct.TYPE_10__, %struct.TYPE_9__, i8*, i8*, i8*, i8*, i32, i8* }
%struct.TYPE_12__ = type { i8*, i8* }
%struct.TYPE_11__ = type { i8*, i8* }
%struct.TYPE_10__ = type { i8*, i8* }
%struct.TYPE_9__ = type { i8*, i8* }

@PICO_SEEK_CUR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lwGetImageMap(i32* %0, i32 %1, %struct.TYPE_15__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_15__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i16, align 2
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_15__* %2, %struct.TYPE_15__** %7, align 8
  %12 = load i32*, i32** %5, align 8
  %13 = call i32 @_pico_memstream_tell(i32* %12)
  store i32 %13, i32* %11, align 4
  %14 = load i32*, i32** %5, align 8
  %15 = call i32 @getU4(i32* %14)
  store i32 %15, i32* %8, align 4
  %16 = load i32*, i32** %5, align 8
  %17 = call i8* @getU2(i32* %16)
  %18 = ptrtoint i8* %17 to i16
  store i16 %18, i16* %9, align 2
  %19 = call i32 (...) @get_flen()
  %20 = icmp sgt i32 0, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %213

22:                                               ; preds = %3
  br label %23

23:                                               ; preds = %22, %206
  %24 = load i16, i16* %9, align 2
  %25 = zext i16 %24 to i32
  %26 = and i32 %25, 1
  %27 = load i16, i16* %9, align 2
  %28 = zext i16 %27 to i32
  %29 = add nsw i32 %28, %26
  %30 = trunc i32 %29 to i16
  store i16 %30, i16* %9, align 2
  %31 = call i32 @set_flen(i32 0)
  %32 = load i32, i32* %8, align 4
  switch i32 %32, label %163 [
    i32 132, label %33
    i32 135, label %42
    i32 131, label %49
    i32 138, label %56
    i32 137, label %63
    i32 130, label %70
    i32 128, label %83
    i32 129, label %98
    i32 139, label %113
    i32 136, label %126
    i32 134, label %133
    i32 133, label %148
  ]

33:                                               ; preds = %23
  %34 = load i32*, i32** %5, align 8
  %35 = load i16, i16* %9, align 2
  %36 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %36, i32 0, i32 1
  %38 = call i32 @lwGetTMap(i32* %34, i16 zeroext %35, i32* %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %33
  store i32 0, i32* %4, align 4
  br label %213

41:                                               ; preds = %33
  br label %164

42:                                               ; preds = %23
  %43 = load i32*, i32** %5, align 8
  %44 = call i8* @getU2(i32* %43)
  %45 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %47, i32 0, i32 12
  store i8* %44, i8** %48, align 8
  br label %164

49:                                               ; preds = %23
  %50 = load i32*, i32** %5, align 8
  %51 = call i32 @getS0(i32* %50)
  %52 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %54, i32 0, i32 11
  store i32 %51, i32* %55, align 8
  br label %164

56:                                               ; preds = %23
  %57 = load i32*, i32** %5, align 8
  %58 = call i8* @getU2(i32* %57)
  %59 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %61, i32 0, i32 10
  store i8* %58, i8** %62, align 8
  br label %164

63:                                               ; preds = %23
  %64 = load i32*, i32** %5, align 8
  %65 = call i8* @getVX(i32* %64)
  %66 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %67 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %68, i32 0, i32 9
  store i8* %65, i8** %69, align 8
  br label %164

70:                                               ; preds = %23
  %71 = load i32*, i32** %5, align 8
  %72 = call i8* @getU2(i32* %71)
  %73 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %74 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %75, i32 0, i32 8
  store i8* %72, i8** %76, align 8
  %77 = load i32*, i32** %5, align 8
  %78 = call i8* @getU2(i32* %77)
  %79 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %80 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %81, i32 0, i32 7
  store i8* %78, i8** %82, align 8
  br label %164

83:                                               ; preds = %23
  %84 = load i32*, i32** %5, align 8
  %85 = call i8* @getF4(i32* %84)
  %86 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %87 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %88, i32 0, i32 6
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 1
  store i8* %85, i8** %90, align 8
  %91 = load i32*, i32** %5, align 8
  %92 = call i8* @getVX(i32* %91)
  %93 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %94 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %95, i32 0, i32 6
  %97 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %96, i32 0, i32 0
  store i8* %92, i8** %97, align 8
  br label %164

98:                                               ; preds = %23
  %99 = load i32*, i32** %5, align 8
  %100 = call i8* @getF4(i32* %99)
  %101 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %102 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %103, i32 0, i32 5
  %105 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %104, i32 0, i32 1
  store i8* %100, i8** %105, align 8
  %106 = load i32*, i32** %5, align 8
  %107 = call i8* @getVX(i32* %106)
  %108 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %109 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %110, i32 0, i32 5
  %112 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %111, i32 0, i32 0
  store i8* %107, i8** %112, align 8
  br label %164

113:                                              ; preds = %23
  %114 = load i32*, i32** %5, align 8
  %115 = call i8* @getU2(i32* %114)
  %116 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %117 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %118, i32 0, i32 4
  store i8* %115, i8** %119, align 8
  %120 = load i32*, i32** %5, align 8
  %121 = call i8* @getF4(i32* %120)
  %122 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %123 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %124, i32 0, i32 3
  store i8* %121, i8** %125, align 8
  br label %164

126:                                              ; preds = %23
  %127 = load i32*, i32** %5, align 8
  %128 = call i8* @getU2(i32* %127)
  %129 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %130 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %131, i32 0, i32 2
  store i8* %128, i8** %132, align 8
  br label %164

133:                                              ; preds = %23
  %134 = load i32*, i32** %5, align 8
  %135 = call i8* @getF4(i32* %134)
  %136 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %137 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %138, i32 0, i32 1
  %140 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %139, i32 0, i32 1
  store i8* %135, i8** %140, align 8
  %141 = load i32*, i32** %5, align 8
  %142 = call i8* @getVX(i32* %141)
  %143 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %144 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %145, i32 0, i32 1
  %147 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %146, i32 0, i32 0
  store i8* %142, i8** %147, align 8
  br label %164

148:                                              ; preds = %23
  %149 = load i32*, i32** %5, align 8
  %150 = call i8* @getF4(i32* %149)
  %151 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %152 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %154, i32 0, i32 1
  store i8* %150, i8** %155, align 8
  %156 = load i32*, i32** %5, align 8
  %157 = call i8* @getVX(i32* %156)
  %158 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %159 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %161, i32 0, i32 0
  store i8* %157, i8** %162, align 8
  br label %164

163:                                              ; preds = %23
  br label %164

164:                                              ; preds = %163, %148, %133, %126, %113, %98, %83, %70, %63, %56, %49, %42, %41
  %165 = call i32 (...) @get_flen()
  store i32 %165, i32* %10, align 4
  %166 = load i32, i32* %10, align 4
  %167 = icmp slt i32 %166, 0
  br i1 %167, label %173, label %168

168:                                              ; preds = %164
  %169 = load i32, i32* %10, align 4
  %170 = load i16, i16* %9, align 2
  %171 = zext i16 %170 to i32
  %172 = icmp sgt i32 %169, %171
  br i1 %172, label %173, label %174

173:                                              ; preds = %168, %164
  store i32 0, i32* %4, align 4
  br label %213

174:                                              ; preds = %168
  %175 = load i32, i32* %10, align 4
  %176 = load i16, i16* %9, align 2
  %177 = zext i16 %176 to i32
  %178 = icmp slt i32 %175, %177
  br i1 %178, label %179, label %188

179:                                              ; preds = %174
  %180 = load i32*, i32** %5, align 8
  %181 = load i16, i16* %9, align 2
  %182 = zext i16 %181 to i32
  %183 = load i32, i32* %10, align 4
  %184 = sub nsw i32 %182, %183
  %185 = trunc i32 %184 to i16
  %186 = load i32, i32* @PICO_SEEK_CUR, align 4
  %187 = call i32 @_pico_memstream_seek(i32* %180, i16 zeroext %185, i32 %186)
  br label %188

188:                                              ; preds = %179, %174
  %189 = load i32, i32* %6, align 4
  %190 = load i32*, i32** %5, align 8
  %191 = call i32 @_pico_memstream_tell(i32* %190)
  %192 = load i32, i32* %11, align 4
  %193 = sub nsw i32 %191, %192
  %194 = icmp sle i32 %189, %193
  br i1 %194, label %195, label %196

195:                                              ; preds = %188
  br label %207

196:                                              ; preds = %188
  %197 = call i32 @set_flen(i32 0)
  %198 = load i32*, i32** %5, align 8
  %199 = call i32 @getU4(i32* %198)
  store i32 %199, i32* %8, align 4
  %200 = load i32*, i32** %5, align 8
  %201 = call i8* @getU2(i32* %200)
  %202 = ptrtoint i8* %201 to i16
  store i16 %202, i16* %9, align 2
  %203 = call i32 (...) @get_flen()
  %204 = icmp ne i32 6, %203
  br i1 %204, label %205, label %206

205:                                              ; preds = %196
  store i32 0, i32* %4, align 4
  br label %213

206:                                              ; preds = %196
  br label %23

207:                                              ; preds = %195
  %208 = load i32*, i32** %5, align 8
  %209 = call i32 @_pico_memstream_tell(i32* %208)
  %210 = load i32, i32* %11, align 4
  %211 = sub nsw i32 %209, %210
  %212 = call i32 @set_flen(i32 %211)
  store i32 1, i32* %4, align 4
  br label %213

213:                                              ; preds = %207, %205, %173, %40, %21
  %214 = load i32, i32* %4, align 4
  ret i32 %214
}

declare dso_local i32 @_pico_memstream_tell(i32*) #1

declare dso_local i32 @getU4(i32*) #1

declare dso_local i8* @getU2(i32*) #1

declare dso_local i32 @get_flen(...) #1

declare dso_local i32 @set_flen(i32) #1

declare dso_local i32 @lwGetTMap(i32*, i16 zeroext, i32*) #1

declare dso_local i32 @getS0(i32*) #1

declare dso_local i8* @getVX(i32*) #1

declare dso_local i8* @getF4(i32*) #1

declare dso_local i32 @_pico_memstream_seek(i32*, i16 zeroext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
