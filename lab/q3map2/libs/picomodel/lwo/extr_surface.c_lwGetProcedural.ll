; ModuleID = '/home/carl/AnghaBench/lab/q3map2/libs/picomodel/lwo/extr_surface.c_lwGetProcedural.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/libs/picomodel/lwo/extr_surface.c_lwGetProcedural.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i8**, i8* }

@PICO_SEEK_CUR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lwGetProcedural(i32* %0, i32 %1, %struct.TYPE_7__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i16, align 2
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_7__* %2, %struct.TYPE_7__** %7, align 8
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
  br label %153

22:                                               ; preds = %3
  br label %23

23:                                               ; preds = %22, %146
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
  switch i32 %32, label %103 [
    i32 129, label %33
    i32 131, label %42
    i32 128, label %49
    i32 130, label %84
  ]

33:                                               ; preds = %23
  %34 = load i32*, i32** %5, align 8
  %35 = load i16, i16* %9, align 2
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 1
  %38 = call i32 @lwGetTMap(i32* %34, i16 zeroext %35, i32* %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %33
  store i32 0, i32* %4, align 4
  br label %153

41:                                               ; preds = %33
  br label %104

42:                                               ; preds = %23
  %43 = load i32*, i32** %5, align 8
  %44 = call i8* @getU2(i32* %43)
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 3
  store i8* %44, i8** %48, align 8
  br label %104

49:                                               ; preds = %23
  %50 = load i32*, i32** %5, align 8
  %51 = call i8* @getF4(i32* %50)
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 2
  %56 = load i8**, i8*** %55, align 8
  %57 = getelementptr inbounds i8*, i8** %56, i64 0
  store i8* %51, i8** %57, align 8
  %58 = load i16, i16* %9, align 2
  %59 = zext i16 %58 to i32
  %60 = icmp sge i32 %59, 8
  br i1 %60, label %61, label %70

61:                                               ; preds = %49
  %62 = load i32*, i32** %5, align 8
  %63 = call i8* @getF4(i32* %62)
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 2
  %68 = load i8**, i8*** %67, align 8
  %69 = getelementptr inbounds i8*, i8** %68, i64 1
  store i8* %63, i8** %69, align 8
  br label %70

70:                                               ; preds = %61, %49
  %71 = load i16, i16* %9, align 2
  %72 = zext i16 %71 to i32
  %73 = icmp sge i32 %72, 12
  br i1 %73, label %74, label %83

74:                                               ; preds = %70
  %75 = load i32*, i32** %5, align 8
  %76 = call i8* @getF4(i32* %75)
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 2
  %81 = load i8**, i8*** %80, align 8
  %82 = getelementptr inbounds i8*, i8** %81, i64 2
  store i8* %76, i8** %82, align 8
  br label %83

83:                                               ; preds = %74, %70
  br label %104

84:                                               ; preds = %23
  %85 = load i32*, i32** %5, align 8
  %86 = call i32 @getS0(i32* %85)
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 1
  store i32 %86, i32* %90, align 4
  %91 = call i32 (...) @get_flen()
  store i32 %91, i32* %10, align 4
  %92 = load i32*, i32** %5, align 8
  %93 = load i16, i16* %9, align 2
  %94 = zext i16 %93 to i32
  %95 = load i32, i32* %10, align 4
  %96 = sub nsw i32 %94, %95
  %97 = trunc i32 %96 to i16
  %98 = call i32 @getbytes(i32* %92, i16 zeroext %97)
  %99 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 0
  store i32 %98, i32* %102, align 8
  br label %104

103:                                              ; preds = %23
  br label %104

104:                                              ; preds = %103, %84, %83, %42, %41
  %105 = call i32 (...) @get_flen()
  store i32 %105, i32* %10, align 4
  %106 = load i32, i32* %10, align 4
  %107 = icmp slt i32 %106, 0
  br i1 %107, label %113, label %108

108:                                              ; preds = %104
  %109 = load i32, i32* %10, align 4
  %110 = load i16, i16* %9, align 2
  %111 = zext i16 %110 to i32
  %112 = icmp sgt i32 %109, %111
  br i1 %112, label %113, label %114

113:                                              ; preds = %108, %104
  store i32 0, i32* %4, align 4
  br label %153

114:                                              ; preds = %108
  %115 = load i32, i32* %10, align 4
  %116 = load i16, i16* %9, align 2
  %117 = zext i16 %116 to i32
  %118 = icmp slt i32 %115, %117
  br i1 %118, label %119, label %128

119:                                              ; preds = %114
  %120 = load i32*, i32** %5, align 8
  %121 = load i16, i16* %9, align 2
  %122 = zext i16 %121 to i32
  %123 = load i32, i32* %10, align 4
  %124 = sub nsw i32 %122, %123
  %125 = trunc i32 %124 to i16
  %126 = load i32, i32* @PICO_SEEK_CUR, align 4
  %127 = call i32 @_pico_memstream_seek(i32* %120, i16 zeroext %125, i32 %126)
  br label %128

128:                                              ; preds = %119, %114
  %129 = load i32, i32* %6, align 4
  %130 = load i32*, i32** %5, align 8
  %131 = call i32 @_pico_memstream_tell(i32* %130)
  %132 = load i32, i32* %11, align 4
  %133 = sub nsw i32 %131, %132
  %134 = icmp sle i32 %129, %133
  br i1 %134, label %135, label %136

135:                                              ; preds = %128
  br label %147

136:                                              ; preds = %128
  %137 = call i32 @set_flen(i32 0)
  %138 = load i32*, i32** %5, align 8
  %139 = call i32 @getU4(i32* %138)
  store i32 %139, i32* %8, align 4
  %140 = load i32*, i32** %5, align 8
  %141 = call i8* @getU2(i32* %140)
  %142 = ptrtoint i8* %141 to i16
  store i16 %142, i16* %9, align 2
  %143 = call i32 (...) @get_flen()
  %144 = icmp ne i32 6, %143
  br i1 %144, label %145, label %146

145:                                              ; preds = %136
  store i32 0, i32* %4, align 4
  br label %153

146:                                              ; preds = %136
  br label %23

147:                                              ; preds = %135
  %148 = load i32*, i32** %5, align 8
  %149 = call i32 @_pico_memstream_tell(i32* %148)
  %150 = load i32, i32* %11, align 4
  %151 = sub nsw i32 %149, %150
  %152 = call i32 @set_flen(i32 %151)
  store i32 1, i32* %4, align 4
  br label %153

153:                                              ; preds = %147, %145, %113, %40, %21
  %154 = load i32, i32* %4, align 4
  ret i32 %154
}

declare dso_local i32 @_pico_memstream_tell(i32*) #1

declare dso_local i32 @getU4(i32*) #1

declare dso_local i8* @getU2(i32*) #1

declare dso_local i32 @get_flen(...) #1

declare dso_local i32 @set_flen(i32) #1

declare dso_local i32 @lwGetTMap(i32*, i16 zeroext, i32*) #1

declare dso_local i8* @getF4(i32*) #1

declare dso_local i32 @getS0(i32*) #1

declare dso_local i32 @getbytes(i32*, i16 zeroext) #1

declare dso_local i32 @_pico_memstream_seek(i32*, i16 zeroext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
