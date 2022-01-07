; ModuleID = '/home/carl/AnghaBench/lab/q3map2/q3map2/extr_shaders.c_CustomShader.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/q3map2/extr_shaders.c_CustomShader.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i8*, i64, i8*, i8*, i64 }

@MAX_QPATH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"default\00", align 1
@IM_OPAQUE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [165 x i8] c"\0A{ // Q3Map2 defaulted (implicitMap)\0A\09{\0A\09\09map $lightmap\0A\09\09rgbGen identity\0A\09}\0A\09q3map_styleMarker\0A\09{\0A\09\09map %s\0A\09\09blendFunc GL_DST_COLOR GL_ZERO\0A\09\09rgbGen identity\0A\09}\0A}\0A\00", align 1
@IM_MASKED = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [259 x i8] c"\0A{ // Q3Map2 defaulted (implicitMask)\0A\09cull none\0A\09{\0A\09\09map %s\0A\09\09alphaFunc GE128\0A\09\09depthWrite\0A\09}\0A\09{\0A\09\09map $lightmap\0A\09\09rgbGen identity\0A\09\09depthFunc equal\0A\09}\0A\09q3map_styleMarker\0A\09{\0A\09\09map %s\0A\09\09blendFunc GL_DST_COLOR GL_ZERO\0A\09\09depthFunc equal\0A\09\09rgbGen identity\0A\09}\0A}\0A\00", align 1
@IM_BLEND = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [208 x i8] c"\0A{ // Q3Map2 defaulted (implicitBlend)\0A\09cull none\0A\09{\0A\09\09map %s\0A\09\09blendFunc GL_SRC_ALPHA GL_ONE_MINUS_SRC_ALPHA\0A\09}\0A\09{\0A\09\09map $lightmap\0A\09\09rgbGen identity\0A\09\09blendFunc GL_DST_COLOR GL_ZERO\0A\09}\0A\09q3map_styleMarker\0A}\0A\00", align 1
@.str.4 = private unnamed_addr constant [155 x i8] c"\0A{ // Q3Map2 defaulted\0A\09{\0A\09\09map $lightmap\0A\09\09rgbGen identity\0A\09}\0A\09q3map_styleMarker\0A\09{\0A\09\09map %s.tga\0A\09\09blendFunc GL_DST_COLOR GL_ZERO\0A\09\09rgbGen identity\0A\09}\0A}\0A\00", align 1
@mapName = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [65 x i8] c"Custom shader name length (%d) exceeded. Shorten your map name.\0A\00", align 1
@.str.6 = private unnamed_addr constant [68 x i8] c"%s/%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X\00", align 1
@qtrue = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_7__* @CustomShader(%struct.TYPE_7__* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca [16 x i32], align 16
  %14 = alloca i8*, align 8
  %15 = alloca [8192 x i8], align 16
  %16 = alloca [8192 x i8], align 16
  %17 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %18 = load i32, i32* @MAX_QPATH, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %9, align 8
  %21 = alloca i8, i64 %19, align 16
  store i64 %19, i64* %10, align 8
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %23 = icmp eq %struct.TYPE_7__* %22, null
  br i1 %23, label %24, label %26

24:                                               ; preds = %3
  %25 = call %struct.TYPE_7__* @ShaderInfoForShader(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_7__* %25, %struct.TYPE_7__** %4, align 8
  store i32 1, i32* %17, align 4
  br label %198

26:                                               ; preds = %3
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  store i8* %29, i8** %14, align 8
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @IM_OPAQUE, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %42

35:                                               ; preds = %26
  %36 = getelementptr inbounds [8192 x i8], [8192 x i8]* %15, i64 0, i64 0
  store i8* %36, i8** %14, align 8
  %37 = getelementptr inbounds [8192 x i8], [8192 x i8]* %15, i64 0, i64 0
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 2
  %40 = load i8*, i8** %39, align 8
  %41 = call i32 (i8*, i8*, i8*, ...) @sprintf(i8* %37, i8* getelementptr inbounds ([165 x i8], [165 x i8]* @.str.1, i64 0, i64 0), i8* %40)
  br label %84

42:                                               ; preds = %26
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @IM_MASKED, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %58

48:                                               ; preds = %42
  %49 = getelementptr inbounds [8192 x i8], [8192 x i8]* %15, i64 0, i64 0
  store i8* %49, i8** %14, align 8
  %50 = getelementptr inbounds [8192 x i8], [8192 x i8]* %15, i64 0, i64 0
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 2
  %53 = load i8*, i8** %52, align 8
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 2
  %56 = load i8*, i8** %55, align 8
  %57 = call i32 (i8*, i8*, i8*, ...) @sprintf(i8* %50, i8* getelementptr inbounds ([259 x i8], [259 x i8]* @.str.2, i64 0, i64 0), i8* %53, i8* %56)
  br label %83

58:                                               ; preds = %42
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @IM_BLEND, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %71

64:                                               ; preds = %58
  %65 = getelementptr inbounds [8192 x i8], [8192 x i8]* %15, i64 0, i64 0
  store i8* %65, i8** %14, align 8
  %66 = getelementptr inbounds [8192 x i8], [8192 x i8]* %15, i64 0, i64 0
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 2
  %69 = load i8*, i8** %68, align 8
  %70 = call i32 (i8*, i8*, i8*, ...) @sprintf(i8* %66, i8* getelementptr inbounds ([208 x i8], [208 x i8]* @.str.3, i64 0, i64 0), i8* %69)
  br label %82

71:                                               ; preds = %58
  %72 = load i8*, i8** %14, align 8
  %73 = icmp eq i8* %72, null
  br i1 %73, label %74, label %81

74:                                               ; preds = %71
  %75 = getelementptr inbounds [8192 x i8], [8192 x i8]* %15, i64 0, i64 0
  store i8* %75, i8** %14, align 8
  %76 = getelementptr inbounds [8192 x i8], [8192 x i8]* %15, i64 0, i64 0
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 3
  %79 = load i8*, i8** %78, align 8
  %80 = call i32 (i8*, i8*, i8*, ...) @sprintf(i8* %76, i8* getelementptr inbounds ([155 x i8], [155 x i8]* @.str.4, i64 0, i64 0), i8* %79)
  br label %81

81:                                               ; preds = %74, %71
  br label %82

82:                                               ; preds = %81, %64
  br label %83

83:                                               ; preds = %82, %48
  br label %84

84:                                               ; preds = %83, %35
  %85 = load i8*, i8** @mapName, align 8
  %86 = call i64 @strlen(i8* %85)
  %87 = add i64 %86, 1
  %88 = add i64 %87, 32
  %89 = load i32, i32* @MAX_QPATH, align 4
  %90 = sext i32 %89 to i64
  %91 = icmp ugt i64 %88, %90
  br i1 %91, label %92, label %95

92:                                               ; preds = %84
  %93 = load i32, i32* @MAX_QPATH, align 4
  %94 = call i32 @Error(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.5, i64 0, i64 0), i32 %93)
  br label %95

95:                                               ; preds = %92, %84
  %96 = load i8*, i8** %14, align 8
  %97 = load i8*, i8** %6, align 8
  %98 = call i8* @strstr(i8* %96, i8* %97)
  store i8* %98, i8** %11, align 8
  %99 = load i8*, i8** %11, align 8
  %100 = icmp eq i8* %99, null
  br i1 %100, label %101, label %103

101:                                              ; preds = %95
  %102 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  store %struct.TYPE_7__* %102, %struct.TYPE_7__** %4, align 8
  store i32 1, i32* %17, align 4
  br label %198

103:                                              ; preds = %95
  %104 = load i8*, i8** %11, align 8
  %105 = load i8*, i8** %14, align 8
  %106 = ptrtoint i8* %104 to i64
  %107 = ptrtoint i8* %105 to i64
  %108 = sub i64 %106, %107
  %109 = trunc i64 %108 to i32
  store i32 %109, i32* %12, align 4
  %110 = getelementptr inbounds [8192 x i8], [8192 x i8]* %16, i64 0, i64 0
  %111 = load i8*, i8** %14, align 8
  %112 = call i32 @strcpy(i8* %110, i8* %111)
  %113 = load i32, i32* %12, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds [8192 x i8], [8192 x i8]* %16, i64 0, i64 %114
  store i8 0, i8* %115, align 1
  %116 = getelementptr inbounds [8192 x i8], [8192 x i8]* %16, i64 0, i64 0
  %117 = load i8*, i8** %7, align 8
  %118 = call i32 @strcat(i8* %116, i8* %117)
  %119 = getelementptr inbounds [8192 x i8], [8192 x i8]* %16, i64 0, i64 0
  %120 = load i8*, i8** %14, align 8
  %121 = load i32, i32* %12, align 4
  %122 = sext i32 %121 to i64
  %123 = load i8*, i8** %6, align 8
  %124 = call i64 @strlen(i8* %123)
  %125 = add i64 %122, %124
  %126 = getelementptr inbounds i8, i8* %120, i64 %125
  %127 = call i32 @strcat(i8* %119, i8* %126)
  br label %128

128:                                              ; preds = %103
  %129 = getelementptr inbounds [8192 x i8], [8192 x i8]* %16, i64 0, i64 0
  %130 = getelementptr inbounds [8192 x i8], [8192 x i8]* %16, i64 0, i64 0
  %131 = call i64 @strlen(i8* %130)
  %132 = bitcast [16 x i32]* %13 to i8*
  %133 = call i32 @MD5(i8* %129, i64 %131, i8* %132)
  %134 = load i8*, i8** @mapName, align 8
  %135 = getelementptr inbounds [16 x i32], [16 x i32]* %13, i64 0, i64 0
  %136 = load i32, i32* %135, align 16
  %137 = getelementptr inbounds [16 x i32], [16 x i32]* %13, i64 0, i64 1
  %138 = load i32, i32* %137, align 4
  %139 = getelementptr inbounds [16 x i32], [16 x i32]* %13, i64 0, i64 2
  %140 = load i32, i32* %139, align 8
  %141 = getelementptr inbounds [16 x i32], [16 x i32]* %13, i64 0, i64 3
  %142 = load i32, i32* %141, align 4
  %143 = getelementptr inbounds [16 x i32], [16 x i32]* %13, i64 0, i64 4
  %144 = load i32, i32* %143, align 16
  %145 = getelementptr inbounds [16 x i32], [16 x i32]* %13, i64 0, i64 5
  %146 = load i32, i32* %145, align 4
  %147 = getelementptr inbounds [16 x i32], [16 x i32]* %13, i64 0, i64 6
  %148 = load i32, i32* %147, align 8
  %149 = getelementptr inbounds [16 x i32], [16 x i32]* %13, i64 0, i64 7
  %150 = load i32, i32* %149, align 4
  %151 = getelementptr inbounds [16 x i32], [16 x i32]* %13, i64 0, i64 8
  %152 = load i32, i32* %151, align 16
  %153 = getelementptr inbounds [16 x i32], [16 x i32]* %13, i64 0, i64 9
  %154 = load i32, i32* %153, align 4
  %155 = getelementptr inbounds [16 x i32], [16 x i32]* %13, i64 0, i64 10
  %156 = load i32, i32* %155, align 8
  %157 = getelementptr inbounds [16 x i32], [16 x i32]* %13, i64 0, i64 11
  %158 = load i32, i32* %157, align 4
  %159 = getelementptr inbounds [16 x i32], [16 x i32]* %13, i64 0, i64 12
  %160 = load i32, i32* %159, align 16
  %161 = getelementptr inbounds [16 x i32], [16 x i32]* %13, i64 0, i64 13
  %162 = load i32, i32* %161, align 4
  %163 = getelementptr inbounds [16 x i32], [16 x i32]* %13, i64 0, i64 14
  %164 = load i32, i32* %163, align 8
  %165 = getelementptr inbounds [16 x i32], [16 x i32]* %13, i64 0, i64 15
  %166 = load i32, i32* %165, align 4
  %167 = call i32 (i8*, i8*, i8*, ...) @sprintf(i8* %21, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.6, i64 0, i64 0), i8* %134, i32 %136, i32 %138, i32 %140, i32 %142, i32 %144, i32 %146, i32 %148, i32 %150, i32 %152, i32 %154, i32 %156, i32 %158, i32 %160, i32 %162, i32 %164, i32 %166)
  %168 = call %struct.TYPE_7__* @ShaderInfoForShader(i8* %21)
  store %struct.TYPE_7__* %168, %struct.TYPE_7__** %8, align 8
  %169 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %170 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %169, i32 0, i32 4
  %171 = load i64, i64* %170, align 8
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %175

173:                                              ; preds = %128
  %174 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  store %struct.TYPE_7__* %174, %struct.TYPE_7__** %4, align 8
  store i32 1, i32* %17, align 4
  br label %198

175:                                              ; preds = %128
  %176 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %177 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %178 = call i32 @memcpy(%struct.TYPE_7__* %176, %struct.TYPE_7__* %177, i32 40)
  %179 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %180 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %179, i32 0, i32 3
  %181 = load i8*, i8** %180, align 8
  %182 = call i32 @strcpy(i8* %181, i8* %21)
  %183 = load i64, i64* @qtrue, align 8
  %184 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %185 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %184, i32 0, i32 4
  store i64 %183, i64* %185, align 8
  %186 = getelementptr inbounds [8192 x i8], [8192 x i8]* %16, i64 0, i64 0
  %187 = call i64 @strlen(i8* %186)
  %188 = add i64 %187, 1
  %189 = call i8* @safe_malloc(i64 %188)
  %190 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %191 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %190, i32 0, i32 0
  store i8* %189, i8** %191, align 8
  %192 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %193 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %192, i32 0, i32 0
  %194 = load i8*, i8** %193, align 8
  %195 = getelementptr inbounds [8192 x i8], [8192 x i8]* %16, i64 0, i64 0
  %196 = call i32 @strcpy(i8* %194, i8* %195)
  %197 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  store %struct.TYPE_7__* %197, %struct.TYPE_7__** %4, align 8
  store i32 1, i32* %17, align 4
  br label %198

198:                                              ; preds = %175, %173, %101, %24
  %199 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %199)
  %200 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  ret %struct.TYPE_7__* %200
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.TYPE_7__* @ShaderInfoForShader(i8*) #2

declare dso_local i32 @sprintf(i8*, i8*, i8*, ...) #2

declare dso_local i64 @strlen(i8*) #2

declare dso_local i32 @Error(i8*, i32) #2

declare dso_local i8* @strstr(i8*, i8*) #2

declare dso_local i32 @strcpy(i8*, i8*) #2

declare dso_local i32 @strcat(i8*, i8*) #2

declare dso_local i32 @MD5(i8*, i64, i8*) #2

declare dso_local i32 @memcpy(%struct.TYPE_7__*, %struct.TYPE_7__*, i32) #2

declare dso_local i8* @safe_malloc(i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
