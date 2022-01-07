; ModuleID = '/home/carl/AnghaBench/lab/q3map2/q3map2/extr_surface_extra.c_LoadSurfaceExtraFile.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/q3map2/extr_surface_extra.c_LoadSurfaceExtraFile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i8*, i8*, i8*, i8*, i8*, i32 }

@.str = private unnamed_addr constant [5 x i8] c".srf\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"Loading %s\0A\00", align 1
@SYS_WRN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [58 x i8] c"WARNING: Unable to find surface file %s, using defaults.\0A\00", align 1
@qtrue = common dso_local global i32 0, align 4
@token = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c"default\00", align 1
@seDefault = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@MAX_MAP_DRAW_SURFS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [58 x i8] c"ReadSurfaceExtraFile(): %s, line %d: bogus surface num %d\00", align 1
@scriptline = common dso_local global i32 0, align 4
@numSurfaceExtras = common dso_local global i32 0, align 4
@surfaceExtras = common dso_local global %struct.TYPE_5__* null, align 8
@.str.5 = private unnamed_addr constant [2 x i8] c"{\00", align 1
@.str.6 = private unnamed_addr constant [49 x i8] c"ReadSurfaceExtraFile(): %s, line %d: { not found\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"}\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"shader\00", align 1
@qfalse = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [7 x i8] c"parent\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"entity\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"castShadows\00", align 1
@.str.12 = private unnamed_addr constant [15 x i8] c"receiveShadows\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"sampleSize\00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c"longestCurve\00", align 1
@.str.15 = private unnamed_addr constant [13 x i8] c"lightmapAxis\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @LoadSurfaceExtraFile(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca [1024 x i8], align 16
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  store i8* %0, i8** %2, align 8
  %8 = load i8*, i8** %2, align 8
  %9 = icmp eq i8* %8, null
  br i1 %9, label %16, label %10

10:                                               ; preds = %1
  %11 = load i8*, i8** %2, align 8
  %12 = getelementptr inbounds i8, i8* %11, i64 0
  %13 = load i8, i8* %12, align 1
  %14 = sext i8 %13 to i32
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %10, %1
  br label %205

17:                                               ; preds = %10
  %18 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  %19 = load i8*, i8** %2, align 8
  %20 = call i32 @strcpy(i8* %18, i8* %19)
  %21 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  %22 = call i32 @StripExtension(i8* %21)
  %23 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  %24 = call i32 @strcat(i8* %23, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %25 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  %26 = call i32 @Sys_Printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* %25)
  %27 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  %28 = bitcast i32** %7 to i8**
  %29 = call i32 @LoadFile(i8* %27, i8** %28)
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  %31 = icmp sle i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %17
  %33 = load i32, i32* @SYS_WRN, align 4
  %34 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  %35 = call i32 @Sys_FPrintf(i32 %33, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.2, i64 0, i64 0), i8* %34)
  br label %205

36:                                               ; preds = %17
  %37 = load i32*, i32** %7, align 8
  %38 = load i32, i32* %6, align 4
  %39 = call i32 @ParseFromMemory(i32* %37, i32 %38)
  br label %40

40:                                               ; preds = %36, %201
  %41 = load i32, i32* @qtrue, align 4
  %42 = call i32 @GetToken(i32 %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %40
  br label %202

45:                                               ; preds = %40
  %46 = load i32, i32* @token, align 4
  %47 = call i32 @Q_stricmp(i32 %46, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %45
  store %struct.TYPE_5__* @seDefault, %struct.TYPE_5__** %4, align 8
  br label %77

50:                                               ; preds = %45
  %51 = load i32, i32* @token, align 4
  %52 = call i8* @atoi(i32 %51)
  %53 = ptrtoint i8* %52 to i32
  store i32 %53, i32* %5, align 4
  %54 = load i32, i32* %5, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %60, label %56

56:                                               ; preds = %50
  %57 = load i32, i32* %5, align 4
  %58 = load i32, i32* @MAX_MAP_DRAW_SURFS, align 4
  %59 = icmp sgt i32 %57, %58
  br i1 %59, label %60, label %65

60:                                               ; preds = %56, %50
  %61 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  %62 = load i32, i32* @scriptline, align 4
  %63 = load i32, i32* %5, align 4
  %64 = call i32 (i8*, i8*, i32, ...) @Error(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.4, i64 0, i64 0), i8* %61, i32 %62, i32 %63)
  br label %65

65:                                               ; preds = %60, %56
  br label %66

66:                                               ; preds = %70, %65
  %67 = load i32, i32* %5, align 4
  %68 = load i32, i32* @numSurfaceExtras, align 4
  %69 = icmp sge i32 %67, %68
  br i1 %69, label %70, label %72

70:                                               ; preds = %66
  %71 = call %struct.TYPE_5__* (...) @AllocSurfaceExtra()
  store %struct.TYPE_5__* %71, %struct.TYPE_5__** %4, align 8
  br label %66

72:                                               ; preds = %66
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** @surfaceExtras, align 8
  %74 = load i32, i32* %5, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i64 %75
  store %struct.TYPE_5__* %76, %struct.TYPE_5__** %4, align 8
  br label %77

77:                                               ; preds = %72, %49
  %78 = load i32, i32* @qtrue, align 4
  %79 = call i32 @GetToken(i32 %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %77
  %82 = load i32, i32* @token, align 4
  %83 = call i64 @strcmp(i32 %82, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %89

85:                                               ; preds = %81, %77
  %86 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  %87 = load i32, i32* @scriptline, align 4
  %88 = call i32 (i8*, i8*, i32, ...) @Error(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.6, i64 0, i64 0), i8* %86, i32 %87)
  br label %89

89:                                               ; preds = %85, %81
  br label %90

90:                                               ; preds = %89, %200
  %91 = load i32, i32* @qtrue, align 4
  %92 = call i32 @GetToken(i32 %91)
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %95, label %94

94:                                               ; preds = %90
  br label %201

95:                                               ; preds = %90
  %96 = load i32, i32* @token, align 4
  %97 = call i64 @strcmp(i32 %96, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %100, label %99

99:                                               ; preds = %95
  br label %201

100:                                              ; preds = %95
  %101 = load i32, i32* @token, align 4
  %102 = call i32 @Q_stricmp(i32 %101, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0))
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %111, label %104

104:                                              ; preds = %100
  %105 = load i32, i32* @qfalse, align 4
  %106 = call i32 @GetToken(i32 %105)
  %107 = load i32, i32* @token, align 4
  %108 = call i32 @ShaderInfoForShader(i32 %107)
  %109 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 7
  store i32 %108, i32* %110, align 8
  br label %193

111:                                              ; preds = %100
  %112 = load i32, i32* @token, align 4
  %113 = call i32 @Q_stricmp(i32 %112, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0))
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %122, label %115

115:                                              ; preds = %111
  %116 = load i32, i32* @qfalse, align 4
  %117 = call i32 @GetToken(i32 %116)
  %118 = load i32, i32* @token, align 4
  %119 = call i8* @atoi(i32 %118)
  %120 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %121 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %120, i32 0, i32 6
  store i8* %119, i8** %121, align 8
  br label %192

122:                                              ; preds = %111
  %123 = load i32, i32* @token, align 4
  %124 = call i32 @Q_stricmp(i32 %123, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0))
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %133, label %126

126:                                              ; preds = %122
  %127 = load i32, i32* @qfalse, align 4
  %128 = call i32 @GetToken(i32 %127)
  %129 = load i32, i32* @token, align 4
  %130 = call i8* @atoi(i32 %129)
  %131 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %132 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %131, i32 0, i32 5
  store i8* %130, i8** %132, align 8
  br label %191

133:                                              ; preds = %122
  %134 = load i32, i32* @token, align 4
  %135 = call i32 @Q_stricmp(i32 %134, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i64 0, i64 0))
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %144, label %137

137:                                              ; preds = %133
  %138 = load i32, i32* @qfalse, align 4
  %139 = call i32 @GetToken(i32 %138)
  %140 = load i32, i32* @token, align 4
  %141 = call i8* @atoi(i32 %140)
  %142 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %143 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %142, i32 0, i32 4
  store i8* %141, i8** %143, align 8
  br label %190

144:                                              ; preds = %133
  %145 = load i32, i32* @token, align 4
  %146 = call i32 @Q_stricmp(i32 %145, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i64 0, i64 0))
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %155, label %148

148:                                              ; preds = %144
  %149 = load i32, i32* @qfalse, align 4
  %150 = call i32 @GetToken(i32 %149)
  %151 = load i32, i32* @token, align 4
  %152 = call i8* @atoi(i32 %151)
  %153 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %154 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %153, i32 0, i32 3
  store i8* %152, i8** %154, align 8
  br label %189

155:                                              ; preds = %144
  %156 = load i32, i32* @token, align 4
  %157 = call i32 @Q_stricmp(i32 %156, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i64 0, i64 0))
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %166, label %159

159:                                              ; preds = %155
  %160 = load i32, i32* @qfalse, align 4
  %161 = call i32 @GetToken(i32 %160)
  %162 = load i32, i32* @token, align 4
  %163 = call i8* @atoi(i32 %162)
  %164 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %165 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %164, i32 0, i32 2
  store i8* %163, i8** %165, align 8
  br label %188

166:                                              ; preds = %155
  %167 = load i32, i32* @token, align 4
  %168 = call i32 @Q_stricmp(i32 %167, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14, i64 0, i64 0))
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %177, label %170

170:                                              ; preds = %166
  %171 = load i32, i32* @qfalse, align 4
  %172 = call i32 @GetToken(i32 %171)
  %173 = load i32, i32* @token, align 4
  %174 = call i32 @atof(i32 %173)
  %175 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %176 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %175, i32 0, i32 1
  store i32 %174, i32* %176, align 4
  br label %187

177:                                              ; preds = %166
  %178 = load i32, i32* @token, align 4
  %179 = call i32 @Q_stricmp(i32 %178, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i64 0, i64 0))
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %186, label %181

181:                                              ; preds = %177
  %182 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %183 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 8
  %185 = call i32 @Parse1DMatrix(i32 3, i32 %184)
  br label %186

186:                                              ; preds = %181, %177
  br label %187

187:                                              ; preds = %186, %170
  br label %188

188:                                              ; preds = %187, %159
  br label %189

189:                                              ; preds = %188, %148
  br label %190

190:                                              ; preds = %189, %137
  br label %191

191:                                              ; preds = %190, %126
  br label %192

192:                                              ; preds = %191, %115
  br label %193

193:                                              ; preds = %192, %104
  br label %194

194:                                              ; preds = %197, %193
  %195 = call i64 (...) @TokenAvailable()
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %197, label %200

197:                                              ; preds = %194
  %198 = load i32, i32* @qfalse, align 4
  %199 = call i32 @GetToken(i32 %198)
  br label %194

200:                                              ; preds = %194
  br label %90

201:                                              ; preds = %99, %94
  br label %40

202:                                              ; preds = %44
  %203 = load i32*, i32** %7, align 8
  %204 = call i32 @free(i32* %203)
  br label %205

205:                                              ; preds = %202, %32, %16
  ret void
}

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @StripExtension(i8*) #1

declare dso_local i32 @strcat(i8*, i8*) #1

declare dso_local i32 @Sys_Printf(i8*, i8*) #1

declare dso_local i32 @LoadFile(i8*, i8**) #1

declare dso_local i32 @Sys_FPrintf(i32, i8*, i8*) #1

declare dso_local i32 @ParseFromMemory(i32*, i32) #1

declare dso_local i32 @GetToken(i32) #1

declare dso_local i32 @Q_stricmp(i32, i8*) #1

declare dso_local i8* @atoi(i32) #1

declare dso_local i32 @Error(i8*, i8*, i32, ...) #1

declare dso_local %struct.TYPE_5__* @AllocSurfaceExtra(...) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @ShaderInfoForShader(i32) #1

declare dso_local i32 @atof(i32) #1

declare dso_local i32 @Parse1DMatrix(i32, i32) #1

declare dso_local i64 @TokenAvailable(...) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
