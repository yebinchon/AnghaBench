; ModuleID = '/home/carl/AnghaBench/lab/q3map2/libs/picomodel/lwo/extr_surface.c_lwGetShader.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/libs/picomodel/lwo/extr_surface.c_lwGetShader.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i8*, i8*, i8* }

@ID_ENAB = common dso_local global i32 0, align 4
@PICO_SEEK_CUR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_5__* @lwGetShader(i32* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i16, align 2
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = call %struct.TYPE_5__* @_pico_calloc(i32 1, i32 32)
  store %struct.TYPE_5__* %12, %struct.TYPE_5__** %6, align 8
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %14 = icmp ne %struct.TYPE_5__* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %3, align 8
  br label %159

16:                                               ; preds = %2
  %17 = load i32*, i32** %4, align 8
  %18 = call i32 @_pico_memstream_tell(i32* %17)
  store i32 %18, i32* %11, align 4
  %19 = call i32 @set_flen(i32 0)
  %20 = load i32*, i32** %4, align 8
  %21 = call i8* @getU2(i32* %20)
  %22 = ptrtoint i8* %21 to i32
  store i32 %22, i32* %9, align 4
  %23 = load i32*, i32** %4, align 8
  %24 = call i8* @getS0(i32* %23)
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 3
  store i8* %24, i8** %26, align 8
  %27 = load i32*, i32** %4, align 8
  %28 = call i32 @getU4(i32* %27)
  store i32 %28, i32* %7, align 4
  %29 = load i32*, i32** %4, align 8
  %30 = call i8* @getU2(i32* %29)
  %31 = ptrtoint i8* %30 to i16
  store i16 %31, i16* %8, align 2
  %32 = call i32 (...) @get_flen()
  %33 = icmp sgt i32 0, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %16
  br label %156

35:                                               ; preds = %16
  br label %36

36:                                               ; preds = %69, %35
  %37 = load i32, i32* %9, align 4
  %38 = icmp sgt i32 %37, 0
  br i1 %38, label %39, label %70

39:                                               ; preds = %36
  %40 = load i16, i16* %8, align 2
  %41 = zext i16 %40 to i32
  %42 = and i32 %41, 1
  %43 = load i16, i16* %8, align 2
  %44 = zext i16 %43 to i32
  %45 = add nsw i32 %44, %42
  %46 = trunc i32 %45 to i16
  store i16 %46, i16* %8, align 2
  %47 = load i16, i16* %8, align 2
  %48 = zext i16 %47 to i32
  %49 = load i32, i32* %9, align 4
  %50 = sub nsw i32 %49, %48
  store i32 %50, i32* %9, align 4
  %51 = load i32, i32* %7, align 4
  %52 = load i32, i32* @ID_ENAB, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %59

54:                                               ; preds = %39
  %55 = load i32*, i32** %4, align 8
  %56 = call i8* @getU2(i32* %55)
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 2
  store i8* %56, i8** %58, align 8
  br label %70

59:                                               ; preds = %39
  %60 = load i32*, i32** %4, align 8
  %61 = load i16, i16* %8, align 2
  %62 = load i32, i32* @PICO_SEEK_CUR, align 4
  %63 = call i32 @_pico_memstream_seek(i32* %60, i16 zeroext %61, i32 %62)
  %64 = load i32*, i32** %4, align 8
  %65 = call i32 @getU4(i32* %64)
  store i32 %65, i32* %7, align 4
  %66 = load i32*, i32** %4, align 8
  %67 = call i8* @getU2(i32* %66)
  %68 = ptrtoint i8* %67 to i16
  store i16 %68, i16* %8, align 2
  br label %69

69:                                               ; preds = %59
  br label %36

70:                                               ; preds = %54, %36
  %71 = load i32*, i32** %4, align 8
  %72 = call i32 @getU4(i32* %71)
  store i32 %72, i32* %7, align 4
  %73 = load i32*, i32** %4, align 8
  %74 = call i8* @getU2(i32* %73)
  %75 = ptrtoint i8* %74 to i16
  store i16 %75, i16* %8, align 2
  %76 = call i32 (...) @get_flen()
  %77 = icmp sgt i32 0, %76
  br i1 %77, label %78, label %79

78:                                               ; preds = %70
  br label %156

79:                                               ; preds = %70
  br label %80

80:                                               ; preds = %79, %148
  %81 = load i16, i16* %8, align 2
  %82 = zext i16 %81 to i32
  %83 = and i32 %82, 1
  %84 = load i16, i16* %8, align 2
  %85 = zext i16 %84 to i32
  %86 = add nsw i32 %85, %83
  %87 = trunc i32 %86 to i16
  store i16 %87, i16* %8, align 2
  %88 = call i32 @set_flen(i32 0)
  %89 = load i32, i32* %7, align 4
  switch i32 %89, label %105 [
    i32 128, label %90
  ]

90:                                               ; preds = %80
  %91 = load i32*, i32** %4, align 8
  %92 = call i8* @getS0(i32* %91)
  %93 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 1
  store i8* %92, i8** %94, align 8
  %95 = call i32 (...) @get_flen()
  store i32 %95, i32* %10, align 4
  %96 = load i32*, i32** %4, align 8
  %97 = load i16, i16* %8, align 2
  %98 = zext i16 %97 to i32
  %99 = load i32, i32* %10, align 4
  %100 = sub nsw i32 %98, %99
  %101 = trunc i32 %100 to i16
  %102 = call i32 @getbytes(i32* %96, i16 zeroext %101)
  %103 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 0
  store i32 %102, i32* %104, align 8
  br label %106

105:                                              ; preds = %80
  br label %106

106:                                              ; preds = %105, %90
  %107 = call i32 (...) @get_flen()
  store i32 %107, i32* %10, align 4
  %108 = load i32, i32* %10, align 4
  %109 = icmp slt i32 %108, 0
  br i1 %109, label %115, label %110

110:                                              ; preds = %106
  %111 = load i32, i32* %10, align 4
  %112 = load i16, i16* %8, align 2
  %113 = zext i16 %112 to i32
  %114 = icmp sgt i32 %111, %113
  br i1 %114, label %115, label %116

115:                                              ; preds = %110, %106
  br label %156

116:                                              ; preds = %110
  %117 = load i32, i32* %10, align 4
  %118 = load i16, i16* %8, align 2
  %119 = zext i16 %118 to i32
  %120 = icmp slt i32 %117, %119
  br i1 %120, label %121, label %130

121:                                              ; preds = %116
  %122 = load i32*, i32** %4, align 8
  %123 = load i16, i16* %8, align 2
  %124 = zext i16 %123 to i32
  %125 = load i32, i32* %10, align 4
  %126 = sub nsw i32 %124, %125
  %127 = trunc i32 %126 to i16
  %128 = load i32, i32* @PICO_SEEK_CUR, align 4
  %129 = call i32 @_pico_memstream_seek(i32* %122, i16 zeroext %127, i32 %128)
  br label %130

130:                                              ; preds = %121, %116
  %131 = load i32, i32* %5, align 4
  %132 = load i32*, i32** %4, align 8
  %133 = call i32 @_pico_memstream_tell(i32* %132)
  %134 = load i32, i32* %11, align 4
  %135 = sub nsw i32 %133, %134
  %136 = icmp sle i32 %131, %135
  br i1 %136, label %137, label %138

137:                                              ; preds = %130
  br label %149

138:                                              ; preds = %130
  %139 = call i32 @set_flen(i32 0)
  %140 = load i32*, i32** %4, align 8
  %141 = call i32 @getU4(i32* %140)
  store i32 %141, i32* %7, align 4
  %142 = load i32*, i32** %4, align 8
  %143 = call i8* @getU2(i32* %142)
  %144 = ptrtoint i8* %143 to i16
  store i16 %144, i16* %8, align 2
  %145 = call i32 (...) @get_flen()
  %146 = icmp ne i32 6, %145
  br i1 %146, label %147, label %148

147:                                              ; preds = %138
  br label %156

148:                                              ; preds = %138
  br label %80

149:                                              ; preds = %137
  %150 = load i32*, i32** %4, align 8
  %151 = call i32 @_pico_memstream_tell(i32* %150)
  %152 = load i32, i32* %11, align 4
  %153 = sub nsw i32 %151, %152
  %154 = call i32 @set_flen(i32 %153)
  %155 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  store %struct.TYPE_5__* %155, %struct.TYPE_5__** %3, align 8
  br label %159

156:                                              ; preds = %147, %115, %78, %34
  %157 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %158 = call i32 @lwFreePlugin(%struct.TYPE_5__* %157)
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %3, align 8
  br label %159

159:                                              ; preds = %156, %149, %15
  %160 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  ret %struct.TYPE_5__* %160
}

declare dso_local %struct.TYPE_5__* @_pico_calloc(i32, i32) #1

declare dso_local i32 @_pico_memstream_tell(i32*) #1

declare dso_local i32 @set_flen(i32) #1

declare dso_local i8* @getU2(i32*) #1

declare dso_local i8* @getS0(i32*) #1

declare dso_local i32 @getU4(i32*) #1

declare dso_local i32 @get_flen(...) #1

declare dso_local i32 @_pico_memstream_seek(i32*, i16 zeroext, i32) #1

declare dso_local i32 @getbytes(i32*, i16 zeroext) #1

declare dso_local i32 @lwFreePlugin(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
