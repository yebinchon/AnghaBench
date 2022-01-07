; ModuleID = '/home/carl/AnghaBench/lab/engine/code/tools/lcc/src/extr_types.c_prtype.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/tools/lcc/src/extr_types.c_prtype.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i32, %struct.TYPE_21__, %struct.TYPE_22__*, i32, i32, %struct.TYPE_18__ }
%struct.TYPE_21__ = type { %struct.TYPE_20__, %struct.TYPE_17__* }
%struct.TYPE_20__ = type { %struct.TYPE_22__** }
%struct.TYPE_17__ = type { %struct.TYPE_16__, i32 }
%struct.TYPE_16__ = type { %struct.TYPE_23__**, %struct.TYPE_15__ }
%struct.TYPE_23__ = type { %struct.TYPE_19__, i32 }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_15__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32, i32, i32, %struct.TYPE_22__*, %struct.TYPE_14__* }
%struct.TYPE_18__ = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"(%d %d %d [%p])\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"(%k %d %d [\22%s\22])\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"(%k %d %d \00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c")\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"(%k %d %d [\22%s\22]\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"\0A%I\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c" %s@%d\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c":%d..%d\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"%I%s=%d\0A\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"\0A%I{\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"%I\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"%I}\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_22__*, i32*, i32, i32)* @prtype to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @prtype(%struct.TYPE_22__* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_22__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_14__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_23__**, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %13 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  switch i32 %15, label %16 [
    i32 136, label %32
    i32 134, label %32
    i32 130, label %32
    i32 129, label %32
    i32 266, label %50
    i32 138, label %50
    i32 128, label %50
    i32 133, label %50
    i32 139, label %50
    i32 132, label %71
    i32 131, label %71
    i32 137, label %157
    i32 135, label %227
  ]

16:                                               ; preds = %4
  %17 = load i32*, i32** %6, align 8
  %18 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %21, i32 0, i32 4
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %28, i32 0, i32 1
  %30 = load %struct.TYPE_17__*, %struct.TYPE_17__** %29, align 8
  %31 = call i32 (i32*, i8*, ...) @fprint(i32* %17, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %20, i32 %23, i32 %26, %struct.TYPE_17__* %30)
  br label %303

32:                                               ; preds = %4, %4, %4, %4
  %33 = load i32*, i32** %6, align 8
  %34 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %37, i32 0, i32 4
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %44, i32 0, i32 1
  %46 = load %struct.TYPE_17__*, %struct.TYPE_17__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = call i32 (i32*, i8*, ...) @fprint(i32* %33, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %36, i32 %39, i32 %42, i32 %48)
  br label %303

50:                                               ; preds = %4, %4, %4, %4, %4
  %51 = load i32*, i32** %6, align 8
  %52 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %55, i32 0, i32 4
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 8
  %61 = call i32 (i32*, i8*, ...) @fprint(i32* %51, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 %54, i32 %57, i32 %60)
  %62 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %62, i32 0, i32 2
  %64 = load %struct.TYPE_22__*, %struct.TYPE_22__** %63, align 8
  %65 = load i32*, i32** %6, align 8
  %66 = load i32, i32* %7, align 4
  %67 = add nsw i32 %66, 1
  %68 = load i32, i32* %8, align 4
  call void @prtype(%struct.TYPE_22__* %64, i32* %65, i32 %67, i32 %68)
  %69 = load i32*, i32** %6, align 8
  %70 = call i32 (i32*, i8*, ...) @fprint(i32* %69, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  br label %303

71:                                               ; preds = %4, %4
  %72 = load i32*, i32** %6, align 8
  %73 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %76, i32 0, i32 4
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %83, i32 0, i32 1
  %85 = load %struct.TYPE_17__*, %struct.TYPE_17__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = call i32 (i32*, i8*, ...) @fprint(i32* %72, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i32 %75, i32 %78, i32 %81, i32 %87)
  %89 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %89, i32 0, i32 5
  %91 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* %8, align 4
  %94 = icmp ne i32 %92, %93
  br i1 %94, label %95, label %154

95:                                               ; preds = %71
  %96 = load i32, i32* %8, align 4
  %97 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %97, i32 0, i32 5
  %99 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %98, i32 0, i32 0
  store i32 %96, i32* %99, align 8
  %100 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %101, i32 0, i32 1
  %103 = load %struct.TYPE_17__*, %struct.TYPE_17__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %105, i32 0, i32 0
  %107 = load %struct.TYPE_14__*, %struct.TYPE_14__** %106, align 8
  store %struct.TYPE_14__* %107, %struct.TYPE_14__** %9, align 8
  br label %108

108:                                              ; preds = %146, %95
  %109 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %110 = icmp ne %struct.TYPE_14__* %109, null
  br i1 %110, label %111, label %150

111:                                              ; preds = %108
  %112 = load i32*, i32** %6, align 8
  %113 = load i32, i32* %7, align 4
  %114 = add nsw i32 %113, 1
  %115 = call i32 (i32*, i8*, ...) @fprint(i32* %112, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i32 %114)
  %116 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %117 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %116, i32 0, i32 3
  %118 = load %struct.TYPE_22__*, %struct.TYPE_22__** %117, align 8
  %119 = load i32*, i32** %6, align 8
  %120 = load i32, i32* %7, align 4
  %121 = add nsw i32 %120, 1
  %122 = load i32, i32* %8, align 4
  call void @prtype(%struct.TYPE_22__* %118, i32* %119, i32 %121, i32 %122)
  %123 = load i32*, i32** %6, align 8
  %124 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %125 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 8
  %127 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %128 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = call i32 (i32*, i8*, ...) @fprint(i32* %123, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i32 %126, i32 %129)
  %131 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %132 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %145

135:                                              ; preds = %111
  %136 = load i32*, i32** %6, align 8
  %137 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %138 = call i64 @fieldsize(%struct.TYPE_14__* %137)
  %139 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %140 = call i64 @fieldright(%struct.TYPE_14__* %139)
  %141 = add nsw i64 %138, %140
  %142 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %143 = call i64 @fieldright(%struct.TYPE_14__* %142)
  %144 = call i32 (i32*, i8*, ...) @fprint(i32* %136, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i64 %141, i64 %143)
  br label %145

145:                                              ; preds = %135, %111
  br label %146

146:                                              ; preds = %145
  %147 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %148 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %147, i32 0, i32 4
  %149 = load %struct.TYPE_14__*, %struct.TYPE_14__** %148, align 8
  store %struct.TYPE_14__* %149, %struct.TYPE_14__** %9, align 8
  br label %108

150:                                              ; preds = %108
  %151 = load i32*, i32** %6, align 8
  %152 = load i32, i32* %7, align 4
  %153 = call i32 (i32*, i8*, ...) @fprint(i32* %151, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i32 %152)
  br label %154

154:                                              ; preds = %150, %71
  %155 = load i32*, i32** %6, align 8
  %156 = call i32 (i32*, i8*, ...) @fprint(i32* %155, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  br label %303

157:                                              ; preds = %4
  %158 = load i32*, i32** %6, align 8
  %159 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %160 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %163 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %162, i32 0, i32 4
  %164 = load i32, i32* %163, align 4
  %165 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %166 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %165, i32 0, i32 3
  %167 = load i32, i32* %166, align 8
  %168 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %169 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %168, i32 0, i32 1
  %170 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %169, i32 0, i32 1
  %171 = load %struct.TYPE_17__*, %struct.TYPE_17__** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 8
  %174 = call i32 (i32*, i8*, ...) @fprint(i32* %158, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i32 %161, i32 %164, i32 %167, i32 %173)
  %175 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %176 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %175, i32 0, i32 5
  %177 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  %179 = load i32, i32* %8, align 4
  %180 = icmp ne i32 %178, %179
  br i1 %180, label %181, label %224

181:                                              ; preds = %157
  %182 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %183 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %182, i32 0, i32 1
  %184 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %183, i32 0, i32 1
  %185 = load %struct.TYPE_17__*, %struct.TYPE_17__** %184, align 8
  %186 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %185, i32 0, i32 0
  %187 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %186, i32 0, i32 0
  %188 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %187, align 8
  store %struct.TYPE_23__** %188, %struct.TYPE_23__*** %11, align 8
  %189 = load i32, i32* %8, align 4
  %190 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %191 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %190, i32 0, i32 5
  %192 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %191, i32 0, i32 0
  store i32 %189, i32* %192, align 8
  store i32 0, i32* %10, align 4
  br label %193

193:                                              ; preds = %220, %181
  %194 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %11, align 8
  %195 = load i32, i32* %10, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds %struct.TYPE_23__*, %struct.TYPE_23__** %194, i64 %196
  %198 = load %struct.TYPE_23__*, %struct.TYPE_23__** %197, align 8
  %199 = icmp ne %struct.TYPE_23__* %198, null
  br i1 %199, label %200, label %223

200:                                              ; preds = %193
  %201 = load i32*, i32** %6, align 8
  %202 = load i32, i32* %7, align 4
  %203 = add nsw i32 %202, 1
  %204 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %11, align 8
  %205 = load i32, i32* %10, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds %struct.TYPE_23__*, %struct.TYPE_23__** %204, i64 %206
  %208 = load %struct.TYPE_23__*, %struct.TYPE_23__** %207, align 8
  %209 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %208, i32 0, i32 1
  %210 = load i32, i32* %209, align 4
  %211 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %11, align 8
  %212 = load i32, i32* %10, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds %struct.TYPE_23__*, %struct.TYPE_23__** %211, i64 %213
  %215 = load %struct.TYPE_23__*, %struct.TYPE_23__** %214, align 8
  %216 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %215, i32 0, i32 0
  %217 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 4
  %219 = call i32 (i32*, i8*, ...) @fprint(i32* %201, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0), i32 %203, i32 %210, i32 %218)
  br label %220

220:                                              ; preds = %200
  %221 = load i32, i32* %10, align 4
  %222 = add nsw i32 %221, 1
  store i32 %222, i32* %10, align 4
  br label %193

223:                                              ; preds = %193
  br label %224

224:                                              ; preds = %223, %157
  %225 = load i32*, i32** %6, align 8
  %226 = call i32 (i32*, i8*, ...) @fprint(i32* %225, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  br label %303

227:                                              ; preds = %4
  %228 = load i32*, i32** %6, align 8
  %229 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %230 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %229, i32 0, i32 0
  %231 = load i32, i32* %230, align 8
  %232 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %233 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %232, i32 0, i32 4
  %234 = load i32, i32* %233, align 4
  %235 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %236 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %235, i32 0, i32 3
  %237 = load i32, i32* %236, align 8
  %238 = call i32 (i32*, i8*, ...) @fprint(i32* %228, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 %231, i32 %234, i32 %237)
  %239 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %240 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %239, i32 0, i32 2
  %241 = load %struct.TYPE_22__*, %struct.TYPE_22__** %240, align 8
  %242 = load i32*, i32** %6, align 8
  %243 = load i32, i32* %7, align 4
  %244 = add nsw i32 %243, 1
  %245 = load i32, i32* %8, align 4
  call void @prtype(%struct.TYPE_22__* %241, i32* %242, i32 %244, i32 %245)
  %246 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %247 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %246, i32 0, i32 1
  %248 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %247, i32 0, i32 0
  %249 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %248, i32 0, i32 0
  %250 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %249, align 8
  %251 = icmp ne %struct.TYPE_22__** %250, null
  br i1 %251, label %252, label %300

252:                                              ; preds = %227
  %253 = load i32*, i32** %6, align 8
  %254 = load i32, i32* %7, align 4
  %255 = add nsw i32 %254, 1
  %256 = call i32 (i32*, i8*, ...) @fprint(i32* %253, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i32 %255)
  store i32 0, i32* %12, align 4
  br label %257

257:                                              ; preds = %292, %252
  %258 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %259 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %258, i32 0, i32 1
  %260 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %259, i32 0, i32 0
  %261 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %260, i32 0, i32 0
  %262 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %261, align 8
  %263 = load i32, i32* %12, align 4
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds %struct.TYPE_22__*, %struct.TYPE_22__** %262, i64 %264
  %266 = load %struct.TYPE_22__*, %struct.TYPE_22__** %265, align 8
  %267 = icmp ne %struct.TYPE_22__* %266, null
  br i1 %267, label %268, label %295

268:                                              ; preds = %257
  %269 = load i32, i32* %12, align 4
  %270 = icmp sgt i32 %269, 0
  br i1 %270, label %271, label %276

271:                                              ; preds = %268
  %272 = load i32*, i32** %6, align 8
  %273 = load i32, i32* %7, align 4
  %274 = add nsw i32 %273, 2
  %275 = call i32 (i32*, i8*, ...) @fprint(i32* %272, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0), i32 %274)
  br label %276

276:                                              ; preds = %271, %268
  %277 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %278 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %277, i32 0, i32 1
  %279 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %278, i32 0, i32 0
  %280 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %279, i32 0, i32 0
  %281 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %280, align 8
  %282 = load i32, i32* %12, align 4
  %283 = sext i32 %282 to i64
  %284 = getelementptr inbounds %struct.TYPE_22__*, %struct.TYPE_22__** %281, i64 %283
  %285 = load %struct.TYPE_22__*, %struct.TYPE_22__** %284, align 8
  %286 = load i32*, i32** %6, align 8
  %287 = load i32, i32* %7, align 4
  %288 = add nsw i32 %287, 2
  %289 = load i32, i32* %8, align 4
  call void @prtype(%struct.TYPE_22__* %285, i32* %286, i32 %288, i32 %289)
  %290 = load i32*, i32** %6, align 8
  %291 = call i32 (i32*, i8*, ...) @fprint(i32* %290, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0))
  br label %292

292:                                              ; preds = %276
  %293 = load i32, i32* %12, align 4
  %294 = add nsw i32 %293, 1
  store i32 %294, i32* %12, align 4
  br label %257

295:                                              ; preds = %257
  %296 = load i32*, i32** %6, align 8
  %297 = load i32, i32* %7, align 4
  %298 = add nsw i32 %297, 1
  %299 = call i32 (i32*, i8*, ...) @fprint(i32* %296, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), i32 %298)
  br label %300

300:                                              ; preds = %295, %227
  %301 = load i32*, i32** %6, align 8
  %302 = call i32 (i32*, i8*, ...) @fprint(i32* %301, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  br label %303

303:                                              ; preds = %300, %224, %154, %50, %32, %16
  ret void
}

declare dso_local i32 @fprint(i32*, i8*, ...) #1

declare dso_local i64 @fieldsize(%struct.TYPE_14__*) #1

declare dso_local i64 @fieldright(%struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
