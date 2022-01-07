; ModuleID = '/home/carl/AnghaBench/lab/q3map2/libs/picomodel/lwo/extr_surface.c_lwGetTMap.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/libs/picomodel/lwo/extr_surface.c_lwGetTMap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i8*, i32, %struct.TYPE_10__, i8*, %struct.TYPE_9__, %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_10__ = type { i8*, i8** }
%struct.TYPE_9__ = type { i8*, i8** }
%struct.TYPE_8__ = type { i8*, i8** }
%struct.TYPE_7__ = type { i8*, i8** }

@PICO_SEEK_CUR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lwGetTMap(i32* %0, i32 %1, %struct.TYPE_11__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i16, align 2
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_11__* %2, %struct.TYPE_11__** %7, align 8
  %13 = load i32*, i32** %5, align 8
  %14 = call i32 @_pico_memstream_tell(i32* %13)
  store i32 %14, i32* %11, align 4
  %15 = load i32*, i32** %5, align 8
  %16 = call i32 @getU4(i32* %15)
  store i32 %16, i32* %8, align 4
  %17 = load i32*, i32** %5, align 8
  %18 = call i8* @getU2(i32* %17)
  %19 = ptrtoint i8* %18 to i16
  store i16 %19, i16* %9, align 2
  %20 = call i32 (...) @get_flen()
  %21 = icmp sgt i32 0, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %190

23:                                               ; preds = %3
  br label %24

24:                                               ; preds = %23, %183
  %25 = load i16, i16* %9, align 2
  %26 = zext i16 %25 to i32
  %27 = and i32 %26, 1
  %28 = load i16, i16* %9, align 2
  %29 = zext i16 %28 to i32
  %30 = add nsw i32 %29, %27
  %31 = trunc i32 %30 to i16
  store i16 %31, i16* %9, align 2
  %32 = call i32 @set_flen(i32 0)
  %33 = load i32, i32* %8, align 4
  switch i32 %33, label %140 [
    i32 128, label %34
    i32 133, label %57
    i32 129, label %80
    i32 131, label %103
    i32 130, label %130
    i32 132, label %135
  ]

34:                                               ; preds = %24
  store i32 0, i32* %12, align 4
  br label %35

35:                                               ; preds = %48, %34
  %36 = load i32, i32* %12, align 4
  %37 = icmp slt i32 %36, 3
  br i1 %37, label %38, label %51

38:                                               ; preds = %35
  %39 = load i32*, i32** %5, align 8
  %40 = call i8* @getF4(i32* %39)
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 6
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 1
  %44 = load i8**, i8*** %43, align 8
  %45 = load i32, i32* %12, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i8*, i8** %44, i64 %46
  store i8* %40, i8** %47, align 8
  br label %48

48:                                               ; preds = %38
  %49 = load i32, i32* %12, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %12, align 4
  br label %35

51:                                               ; preds = %35
  %52 = load i32*, i32** %5, align 8
  %53 = call i8* @getVX(i32* %52)
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 6
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 0
  store i8* %53, i8** %56, align 8
  br label %141

57:                                               ; preds = %24
  store i32 0, i32* %12, align 4
  br label %58

58:                                               ; preds = %71, %57
  %59 = load i32, i32* %12, align 4
  %60 = icmp slt i32 %59, 3
  br i1 %60, label %61, label %74

61:                                               ; preds = %58
  %62 = load i32*, i32** %5, align 8
  %63 = call i8* @getF4(i32* %62)
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 5
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 1
  %67 = load i8**, i8*** %66, align 8
  %68 = load i32, i32* %12, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i8*, i8** %67, i64 %69
  store i8* %63, i8** %70, align 8
  br label %71

71:                                               ; preds = %61
  %72 = load i32, i32* %12, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %12, align 4
  br label %58

74:                                               ; preds = %58
  %75 = load i32*, i32** %5, align 8
  %76 = call i8* @getVX(i32* %75)
  %77 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %78 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %77, i32 0, i32 5
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 0
  store i8* %76, i8** %79, align 8
  br label %141

80:                                               ; preds = %24
  store i32 0, i32* %12, align 4
  br label %81

81:                                               ; preds = %94, %80
  %82 = load i32, i32* %12, align 4
  %83 = icmp slt i32 %82, 3
  br i1 %83, label %84, label %97

84:                                               ; preds = %81
  %85 = load i32*, i32** %5, align 8
  %86 = call i8* @getF4(i32* %85)
  %87 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %88 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %87, i32 0, i32 4
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 1
  %90 = load i8**, i8*** %89, align 8
  %91 = load i32, i32* %12, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i8*, i8** %90, i64 %92
  store i8* %86, i8** %93, align 8
  br label %94

94:                                               ; preds = %84
  %95 = load i32, i32* %12, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %12, align 4
  br label %81

97:                                               ; preds = %81
  %98 = load i32*, i32** %5, align 8
  %99 = call i8* @getVX(i32* %98)
  %100 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %101 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %100, i32 0, i32 4
  %102 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %101, i32 0, i32 0
  store i8* %99, i8** %102, align 8
  br label %141

103:                                              ; preds = %24
  %104 = load i32*, i32** %5, align 8
  %105 = call i8* @getU2(i32* %104)
  %106 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %107 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %106, i32 0, i32 3
  store i8* %105, i8** %107, align 8
  store i32 0, i32* %12, align 4
  br label %108

108:                                              ; preds = %121, %103
  %109 = load i32, i32* %12, align 4
  %110 = icmp slt i32 %109, 3
  br i1 %110, label %111, label %124

111:                                              ; preds = %108
  %112 = load i32*, i32** %5, align 8
  %113 = call i8* @getF4(i32* %112)
  %114 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %115 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %114, i32 0, i32 2
  %116 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %115, i32 0, i32 1
  %117 = load i8**, i8*** %116, align 8
  %118 = load i32, i32* %12, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i8*, i8** %117, i64 %119
  store i8* %113, i8** %120, align 8
  br label %121

121:                                              ; preds = %111
  %122 = load i32, i32* %12, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %12, align 4
  br label %108

124:                                              ; preds = %108
  %125 = load i32*, i32** %5, align 8
  %126 = call i8* @getVX(i32* %125)
  %127 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %128 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %127, i32 0, i32 2
  %129 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %128, i32 0, i32 0
  store i8* %126, i8** %129, align 8
  br label %141

130:                                              ; preds = %24
  %131 = load i32*, i32** %5, align 8
  %132 = call i32 @getS0(i32* %131)
  %133 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %134 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %133, i32 0, i32 1
  store i32 %132, i32* %134, align 8
  br label %141

135:                                              ; preds = %24
  %136 = load i32*, i32** %5, align 8
  %137 = call i8* @getU2(i32* %136)
  %138 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %139 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %138, i32 0, i32 0
  store i8* %137, i8** %139, align 8
  br label %141

140:                                              ; preds = %24
  br label %141

141:                                              ; preds = %140, %135, %130, %124, %97, %74, %51
  %142 = call i32 (...) @get_flen()
  store i32 %142, i32* %10, align 4
  %143 = load i32, i32* %10, align 4
  %144 = icmp slt i32 %143, 0
  br i1 %144, label %150, label %145

145:                                              ; preds = %141
  %146 = load i32, i32* %10, align 4
  %147 = load i16, i16* %9, align 2
  %148 = zext i16 %147 to i32
  %149 = icmp sgt i32 %146, %148
  br i1 %149, label %150, label %151

150:                                              ; preds = %145, %141
  store i32 0, i32* %4, align 4
  br label %190

151:                                              ; preds = %145
  %152 = load i32, i32* %10, align 4
  %153 = load i16, i16* %9, align 2
  %154 = zext i16 %153 to i32
  %155 = icmp slt i32 %152, %154
  br i1 %155, label %156, label %165

156:                                              ; preds = %151
  %157 = load i32*, i32** %5, align 8
  %158 = load i16, i16* %9, align 2
  %159 = zext i16 %158 to i32
  %160 = load i32, i32* %10, align 4
  %161 = sub nsw i32 %159, %160
  %162 = trunc i32 %161 to i16
  %163 = load i32, i32* @PICO_SEEK_CUR, align 4
  %164 = call i32 @_pico_memstream_seek(i32* %157, i16 zeroext %162, i32 %163)
  br label %165

165:                                              ; preds = %156, %151
  %166 = load i32, i32* %6, align 4
  %167 = load i32*, i32** %5, align 8
  %168 = call i32 @_pico_memstream_tell(i32* %167)
  %169 = load i32, i32* %11, align 4
  %170 = sub nsw i32 %168, %169
  %171 = icmp sle i32 %166, %170
  br i1 %171, label %172, label %173

172:                                              ; preds = %165
  br label %184

173:                                              ; preds = %165
  %174 = call i32 @set_flen(i32 0)
  %175 = load i32*, i32** %5, align 8
  %176 = call i32 @getU4(i32* %175)
  store i32 %176, i32* %8, align 4
  %177 = load i32*, i32** %5, align 8
  %178 = call i8* @getU2(i32* %177)
  %179 = ptrtoint i8* %178 to i16
  store i16 %179, i16* %9, align 2
  %180 = call i32 (...) @get_flen()
  %181 = icmp ne i32 6, %180
  br i1 %181, label %182, label %183

182:                                              ; preds = %173
  store i32 0, i32* %4, align 4
  br label %190

183:                                              ; preds = %173
  br label %24

184:                                              ; preds = %172
  %185 = load i32*, i32** %5, align 8
  %186 = call i32 @_pico_memstream_tell(i32* %185)
  %187 = load i32, i32* %11, align 4
  %188 = sub nsw i32 %186, %187
  %189 = call i32 @set_flen(i32 %188)
  store i32 1, i32* %4, align 4
  br label %190

190:                                              ; preds = %184, %182, %150, %22
  %191 = load i32, i32* %4, align 4
  ret i32 %191
}

declare dso_local i32 @_pico_memstream_tell(i32*) #1

declare dso_local i32 @getU4(i32*) #1

declare dso_local i8* @getU2(i32*) #1

declare dso_local i32 @get_flen(...) #1

declare dso_local i32 @set_flen(i32) #1

declare dso_local i8* @getF4(i32*) #1

declare dso_local i8* @getVX(i32*) #1

declare dso_local i32 @getS0(i32*) #1

declare dso_local i32 @_pico_memstream_seek(i32*, i16 zeroext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
