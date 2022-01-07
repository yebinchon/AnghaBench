; ModuleID = '/home/carl/AnghaBench/lab/q3map2/q3map2/extr_surface_extra.c_WriteSurfaceExtraFile.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/q3map2/extr_surface_extra.c_WriteSurfaceExtraFile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, double, double*, %struct.TYPE_7__*, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { i8* }
%struct.TYPE_6__ = type { i64, i32, i32, i64 }

@.str = private unnamed_addr constant [31 x i8] c"--- WriteSurfaceExtraFile ---\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c".srf\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"Writing %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"Error opening %s for writing\00", align 1
@numSurfaceExtras = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [8 x i8] c"default\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.8 = private unnamed_addr constant [23 x i8] c" // %s V: %d I: %d %s\0A\00", align 1
@surfaceTypes = common dso_local global i8** null, align 8
@.str.9 = private unnamed_addr constant [7 x i8] c"planar\00", align 1
@.str.10 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"{\0A\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"\09shader %s\0A\00", align 1
@seDefault = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@.str.13 = private unnamed_addr constant [12 x i8] c"\09parent %d\0A\00", align 1
@.str.14 = private unnamed_addr constant [12 x i8] c"\09entity %d\0A\00", align 1
@.str.15 = private unnamed_addr constant [17 x i8] c"\09castShadows %d\0A\00", align 1
@.str.16 = private unnamed_addr constant [20 x i8] c"\09receiveShadows %d\0A\00", align 1
@.str.17 = private unnamed_addr constant [16 x i8] c"\09sampleSize %d\0A\00", align 1
@.str.18 = private unnamed_addr constant [18 x i8] c"\09longestCurve %f\0A\00", align 1
@qfalse = common dso_local global i64 0, align 8
@.str.19 = private unnamed_addr constant [28 x i8] c"\09lightmapAxis ( %f %f %f )\0A\00", align 1
@.str.20 = private unnamed_addr constant [4 x i8] c"}\0A\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @WriteSurfaceExtraFile(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca [1024 x i8], align 16
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = icmp eq i8* %7, null
  br i1 %8, label %15, label %9

9:                                                ; preds = %1
  %10 = load i8*, i8** %2, align 8
  %11 = getelementptr inbounds i8, i8* %10, i64 0
  %12 = load i8, i8* %11, align 1
  %13 = sext i8 %12 to i32
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %9, %1
  br label %222

16:                                               ; preds = %9
  %17 = call i32 (i8*, ...) @Sys_Printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %18 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  %19 = load i8*, i8** %2, align 8
  %20 = call i32 @strcpy(i8* %18, i8* %19)
  %21 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  %22 = call i32 @StripExtension(i8* %21)
  %23 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  %24 = call i32 @strcat(i8* %23, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %25 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  %26 = call i32 (i8*, ...) @Sys_Printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i8* %25)
  %27 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  %28 = call i32* @fopen(i8* %27, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  store i32* %28, i32** %4, align 8
  %29 = load i32*, i32** %4, align 8
  %30 = icmp eq i32* %29, null
  br i1 %30, label %31, label %34

31:                                               ; preds = %16
  %32 = getelementptr inbounds [1024 x i8], [1024 x i8]* %3, i64 0, i64 0
  %33 = call i32 @Error(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i8* %32)
  br label %34

34:                                               ; preds = %31, %16
  store i32 -1, i32* %6, align 4
  br label %35

35:                                               ; preds = %216, %34
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* @numSurfaceExtras, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %219

39:                                               ; preds = %35
  %40 = load i32, i32* %6, align 4
  %41 = call %struct.TYPE_8__* @GetSurfaceExtra(i32 %40)
  store %struct.TYPE_8__* %41, %struct.TYPE_8__** %5, align 8
  %42 = load i32, i32* %6, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %39
  %45 = load i32*, i32** %4, align 8
  %46 = call i32 (i32*, i8*, ...) @fprintf(i32* %45, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  br label %51

47:                                               ; preds = %39
  %48 = load i32*, i32** %4, align 8
  %49 = load i32, i32* %6, align 4
  %50 = call i32 (i32*, i8*, ...) @fprintf(i32* %48, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i32 %49)
  br label %51

51:                                               ; preds = %47, %44
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 8
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %53, align 8
  %55 = icmp eq %struct.TYPE_6__* %54, null
  br i1 %55, label %56, label %59

56:                                               ; preds = %51
  %57 = load i32*, i32** %4, align 8
  %58 = call i32 (i32*, i8*, ...) @fprintf(i32* %57, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  br label %88

59:                                               ; preds = %51
  %60 = load i32*, i32** %4, align 8
  %61 = load i8**, i8*** @surfaceTypes, align 8
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 8
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = getelementptr inbounds i8*, i8** %61, i64 %66
  %68 = load i8*, i8** %67, align 8
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 8
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 8
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 8
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 3
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  %85 = zext i1 %84 to i64
  %86 = select i1 %84, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.10, i64 0, i64 0)
  %87 = call i32 (i32*, i8*, ...) @fprintf(i32* %60, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i64 0, i64 0), i8* %68, i32 %73, i32 %78, i8* %86)
  br label %88

88:                                               ; preds = %59, %56
  %89 = load i32*, i32** %4, align 8
  %90 = call i32 (i32*, i8*, ...) @fprintf(i32* %89, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0))
  %91 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 7
  %93 = load %struct.TYPE_7__*, %struct.TYPE_7__** %92, align 8
  %94 = icmp ne %struct.TYPE_7__* %93, null
  br i1 %94, label %95, label %103

95:                                               ; preds = %88
  %96 = load i32*, i32** %4, align 8
  %97 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 7
  %99 = load %struct.TYPE_7__*, %struct.TYPE_7__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 0
  %101 = load i8*, i8** %100, align 8
  %102 = call i32 (i32*, i8*, ...) @fprintf(i32* %96, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i64 0, i64 0), i8* %101)
  br label %103

103:                                              ; preds = %95, %88
  %104 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @seDefault, i32 0, i32 0), align 8
  %108 = icmp ne i32 %106, %107
  br i1 %108, label %109, label %115

109:                                              ; preds = %103
  %110 = load i32*, i32** %4, align 8
  %111 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = call i32 (i32*, i8*, ...) @fprintf(i32* %110, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i64 0, i64 0), i32 %113)
  br label %115

115:                                              ; preds = %109, %103
  %116 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %117 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @seDefault, i32 0, i32 1), align 4
  %120 = icmp ne i32 %118, %119
  br i1 %120, label %121, label %127

121:                                              ; preds = %115
  %122 = load i32*, i32** %4, align 8
  %123 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %124 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = call i32 (i32*, i8*, ...) @fprintf(i32* %122, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i64 0, i64 0), i32 %125)
  br label %127

127:                                              ; preds = %121, %115
  %128 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %129 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 8
  %131 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @seDefault, i32 0, i32 2), align 8
  %132 = icmp ne i32 %130, %131
  br i1 %132, label %136, label %133

133:                                              ; preds = %127
  %134 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %135 = icmp eq %struct.TYPE_8__* %134, @seDefault
  br i1 %135, label %136, label %142

136:                                              ; preds = %133, %127
  %137 = load i32*, i32** %4, align 8
  %138 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %139 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %138, i32 0, i32 2
  %140 = load i32, i32* %139, align 8
  %141 = call i32 (i32*, i8*, ...) @fprintf(i32* %137, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15, i64 0, i64 0), i32 %140)
  br label %142

142:                                              ; preds = %136, %133
  %143 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %144 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %143, i32 0, i32 3
  %145 = load i32, i32* %144, align 4
  %146 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @seDefault, i32 0, i32 3), align 4
  %147 = icmp ne i32 %145, %146
  br i1 %147, label %151, label %148

148:                                              ; preds = %142
  %149 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %150 = icmp eq %struct.TYPE_8__* %149, @seDefault
  br i1 %150, label %151, label %157

151:                                              ; preds = %148, %142
  %152 = load i32*, i32** %4, align 8
  %153 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %154 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %153, i32 0, i32 3
  %155 = load i32, i32* %154, align 4
  %156 = call i32 (i32*, i8*, ...) @fprintf(i32* %152, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16, i64 0, i64 0), i32 %155)
  br label %157

157:                                              ; preds = %151, %148
  %158 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %159 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %158, i32 0, i32 4
  %160 = load i32, i32* %159, align 8
  %161 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @seDefault, i32 0, i32 4), align 8
  %162 = icmp ne i32 %160, %161
  br i1 %162, label %166, label %163

163:                                              ; preds = %157
  %164 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %165 = icmp eq %struct.TYPE_8__* %164, @seDefault
  br i1 %165, label %166, label %172

166:                                              ; preds = %163, %157
  %167 = load i32*, i32** %4, align 8
  %168 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %169 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %168, i32 0, i32 4
  %170 = load i32, i32* %169, align 8
  %171 = call i32 (i32*, i8*, ...) @fprintf(i32* %167, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.17, i64 0, i64 0), i32 %170)
  br label %172

172:                                              ; preds = %166, %163
  %173 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %174 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %173, i32 0, i32 5
  %175 = load double, double* %174, align 8
  %176 = load double, double* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @seDefault, i32 0, i32 5), align 8
  %177 = fcmp une double %175, %176
  br i1 %177, label %181, label %178

178:                                              ; preds = %172
  %179 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %180 = icmp eq %struct.TYPE_8__* %179, @seDefault
  br i1 %180, label %181, label %187

181:                                              ; preds = %178, %172
  %182 = load i32*, i32** %4, align 8
  %183 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %184 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %183, i32 0, i32 5
  %185 = load double, double* %184, align 8
  %186 = call i32 (i32*, i8*, ...) @fprintf(i32* %182, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.18, i64 0, i64 0), double %185)
  br label %187

187:                                              ; preds = %181, %178
  %188 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %189 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %188, i32 0, i32 6
  %190 = load double*, double** %189, align 8
  %191 = load double*, double** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @seDefault, i32 0, i32 6), align 8
  %192 = call i64 @VectorCompare(double* %190, double* %191)
  %193 = load i64, i64* @qfalse, align 8
  %194 = icmp eq i64 %192, %193
  br i1 %194, label %195, label %213

195:                                              ; preds = %187
  %196 = load i32*, i32** %4, align 8
  %197 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %198 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %197, i32 0, i32 6
  %199 = load double*, double** %198, align 8
  %200 = getelementptr inbounds double, double* %199, i64 0
  %201 = load double, double* %200, align 8
  %202 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %203 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %202, i32 0, i32 6
  %204 = load double*, double** %203, align 8
  %205 = getelementptr inbounds double, double* %204, i64 1
  %206 = load double, double* %205, align 8
  %207 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %208 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %207, i32 0, i32 6
  %209 = load double*, double** %208, align 8
  %210 = getelementptr inbounds double, double* %209, i64 2
  %211 = load double, double* %210, align 8
  %212 = call i32 (i32*, i8*, ...) @fprintf(i32* %196, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.19, i64 0, i64 0), double %201, double %206, double %211)
  br label %213

213:                                              ; preds = %195, %187
  %214 = load i32*, i32** %4, align 8
  %215 = call i32 (i32*, i8*, ...) @fprintf(i32* %214, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.20, i64 0, i64 0))
  br label %216

216:                                              ; preds = %213
  %217 = load i32, i32* %6, align 4
  %218 = add nsw i32 %217, 1
  store i32 %218, i32* %6, align 4
  br label %35

219:                                              ; preds = %35
  %220 = load i32*, i32** %4, align 8
  %221 = call i32 @fclose(i32* %220)
  br label %222

222:                                              ; preds = %219, %15
  ret void
}

declare dso_local i32 @Sys_Printf(i8*, ...) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @StripExtension(i8*) #1

declare dso_local i32 @strcat(i8*, i8*) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @Error(i8*, i8*) #1

declare dso_local %struct.TYPE_8__* @GetSurfaceExtra(i32) #1

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

declare dso_local i64 @VectorCompare(double*, double*) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
