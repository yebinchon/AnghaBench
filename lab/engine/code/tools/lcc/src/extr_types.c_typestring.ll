; ModuleID = '/home/carl/AnghaBench/lab/engine/code/tools/lcc/src/extr_types.c_typestring.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/tools/lcc/src/extr_types.c_typestring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, i32, %struct.TYPE_17__*, %struct.TYPE_16__ }
%struct.TYPE_16__ = type { %struct.TYPE_15__, %struct.TYPE_14__* }
%struct.TYPE_15__ = type { %struct.TYPE_17__** }
%struct.TYPE_14__ = type { i8* }
%struct.TYPE_18__ = type { i8* }

@.str = private unnamed_addr constant [6 x i8] c"%k %s\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%s %s\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"unnamed %k in prototype\0A\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"%k %s %s\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"(*%s)\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"*%s\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"%s()\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"%s(%s\00", align 1
@.str.8 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@voidtype = common dso_local global %struct.TYPE_17__* null, align 8
@.str.9 = private unnamed_addr constant [8 x i8] c"%s, ...\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"%s, %s\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"%s)\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"%s(void)\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"%s[%d]\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"%s[]\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @typestring(%struct.TYPE_17__* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_18__*, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %4, align 8
  store i8* %1, i8** %5, align 8
  br label %8

8:                                                ; preds = %338, %2
  %9 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %10 = icmp ne %struct.TYPE_17__* %9, null
  br i1 %10, label %11, label %342

11:                                               ; preds = %8
  %12 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  switch i32 %14, label %335 [
    i32 266, label %15
    i32 138, label %15
    i32 128, label %15
    i32 132, label %38
    i32 131, label %38
    i32 137, label %38
    i32 129, label %116
    i32 136, label %116
    i32 134, label %116
    i32 130, label %116
    i32 133, label %139
    i32 135, label %184
    i32 139, label %286
  ]

15:                                               ; preds = %11, %11, %11
  %16 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %16, i32 0, i32 2
  %18 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  %19 = call i32 @isptr(%struct.TYPE_17__* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %15
  %22 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i8*, i8** %5, align 8
  %26 = call i8* (i8*, ...) @stringf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %24, i8* %25)
  store i8* %26, i8** %5, align 8
  br label %37

27:                                               ; preds = %15
  %28 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %31, i32 0, i32 2
  %33 = load %struct.TYPE_17__*, %struct.TYPE_17__** %32, align 8
  %34 = load i8*, i8** %5, align 8
  %35 = call i8* @typestring(%struct.TYPE_17__* %33, i8* %34)
  %36 = call i8* (i8*, ...) @stringf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %30, i8* %35)
  store i8* %36, i8** %3, align 8
  br label %344

37:                                               ; preds = %21
  br label %337

38:                                               ; preds = %11, %11, %11
  %39 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %39, i32 0, i32 3
  %41 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %40, i32 0, i32 1
  %42 = load %struct.TYPE_14__*, %struct.TYPE_14__** %41, align 8
  %43 = call i32 @assert(%struct.TYPE_14__* %42)
  %44 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %45 = call %struct.TYPE_18__* @findtype(%struct.TYPE_17__* %44)
  store %struct.TYPE_18__* %45, %struct.TYPE_18__** %6, align 8
  %46 = icmp ne %struct.TYPE_18__* %45, null
  br i1 %46, label %47, label %64

47:                                               ; preds = %38
  %48 = load i8*, i8** %5, align 8
  %49 = load i8, i8* %48, align 1
  %50 = sext i8 %49 to i32
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %47
  %53 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %53, i32 0, i32 0
  %55 = load i8*, i8** %54, align 8
  %56 = load i8*, i8** %5, align 8
  %57 = call i8* (i8*, ...) @stringf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %55, i8* %56)
  br label %62

58:                                               ; preds = %47
  %59 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %59, i32 0, i32 0
  %61 = load i8*, i8** %60, align 8
  br label %62

62:                                               ; preds = %58, %52
  %63 = phi i8* [ %57, %52 ], [ %61, %58 ]
  store i8* %63, i8** %3, align 8
  br label %344

64:                                               ; preds = %38
  %65 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %65, i32 0, i32 3
  %67 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %66, i32 0, i32 1
  %68 = load %struct.TYPE_14__*, %struct.TYPE_14__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %68, i32 0, i32 0
  %70 = load i8*, i8** %69, align 8
  %71 = load i8, i8* %70, align 1
  %72 = sext i8 %71 to i32
  %73 = icmp sge i32 %72, 49
  br i1 %73, label %74, label %89

74:                                               ; preds = %64
  %75 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %75, i32 0, i32 3
  %77 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %76, i32 0, i32 1
  %78 = load %struct.TYPE_14__*, %struct.TYPE_14__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %78, i32 0, i32 0
  %80 = load i8*, i8** %79, align 8
  %81 = load i8, i8* %80, align 1
  %82 = sext i8 %81 to i32
  %83 = icmp sle i32 %82, 57
  br i1 %83, label %84, label %89

84:                                               ; preds = %74
  %85 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @warning(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %87)
  br label %89

89:                                               ; preds = %84, %74, %64
  %90 = load i8*, i8** %5, align 8
  %91 = load i8, i8* %90, align 1
  %92 = icmp ne i8 %91, 0
  br i1 %92, label %93, label %105

93:                                               ; preds = %89
  %94 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %95 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %97, i32 0, i32 3
  %99 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %98, i32 0, i32 1
  %100 = load %struct.TYPE_14__*, %struct.TYPE_14__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %100, i32 0, i32 0
  %102 = load i8*, i8** %101, align 8
  %103 = load i8*, i8** %5, align 8
  %104 = call i8* (i8*, ...) @stringf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 %96, i8* %102, i8* %103)
  store i8* %104, i8** %3, align 8
  br label %344

105:                                              ; preds = %89
  %106 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %107 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %110 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %109, i32 0, i32 3
  %111 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %110, i32 0, i32 1
  %112 = load %struct.TYPE_14__*, %struct.TYPE_14__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %112, i32 0, i32 0
  %114 = load i8*, i8** %113, align 8
  %115 = call i8* (i8*, ...) @stringf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %108, i8* %114)
  store i8* %115, i8** %3, align 8
  br label %344

116:                                              ; preds = %11, %11, %11, %11
  %117 = load i8*, i8** %5, align 8
  %118 = load i8, i8* %117, align 1
  %119 = sext i8 %118 to i32
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %130

121:                                              ; preds = %116
  %122 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %123 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %122, i32 0, i32 3
  %124 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %123, i32 0, i32 1
  %125 = load %struct.TYPE_14__*, %struct.TYPE_14__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %125, i32 0, i32 0
  %127 = load i8*, i8** %126, align 8
  %128 = load i8*, i8** %5, align 8
  %129 = call i8* (i8*, ...) @stringf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %127, i8* %128)
  br label %137

130:                                              ; preds = %116
  %131 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %132 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %131, i32 0, i32 3
  %133 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %132, i32 0, i32 1
  %134 = load %struct.TYPE_14__*, %struct.TYPE_14__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %134, i32 0, i32 0
  %136 = load i8*, i8** %135, align 8
  br label %137

137:                                              ; preds = %130, %121
  %138 = phi i8* [ %129, %121 ], [ %136, %130 ]
  store i8* %138, i8** %3, align 8
  br label %344

139:                                              ; preds = %11
  %140 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %141 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %140, i32 0, i32 2
  %142 = load %struct.TYPE_17__*, %struct.TYPE_17__** %141, align 8
  %143 = call i32 @ischar(%struct.TYPE_17__* %142)
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %166, label %145

145:                                              ; preds = %139
  %146 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %147 = call %struct.TYPE_18__* @findtype(%struct.TYPE_17__* %146)
  store %struct.TYPE_18__* %147, %struct.TYPE_18__** %6, align 8
  %148 = icmp ne %struct.TYPE_18__* %147, null
  br i1 %148, label %149, label %166

149:                                              ; preds = %145
  %150 = load i8*, i8** %5, align 8
  %151 = load i8, i8* %150, align 1
  %152 = sext i8 %151 to i32
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %160

154:                                              ; preds = %149
  %155 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %156 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %155, i32 0, i32 0
  %157 = load i8*, i8** %156, align 8
  %158 = load i8*, i8** %5, align 8
  %159 = call i8* (i8*, ...) @stringf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %157, i8* %158)
  br label %164

160:                                              ; preds = %149
  %161 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %162 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %161, i32 0, i32 0
  %163 = load i8*, i8** %162, align 8
  br label %164

164:                                              ; preds = %160, %154
  %165 = phi i8* [ %159, %154 ], [ %163, %160 ]
  store i8* %165, i8** %3, align 8
  br label %344

166:                                              ; preds = %145, %139
  %167 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %168 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %167, i32 0, i32 2
  %169 = load %struct.TYPE_17__*, %struct.TYPE_17__** %168, align 8
  %170 = call i32 @isarray(%struct.TYPE_17__* %169)
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %178, label %172

172:                                              ; preds = %166
  %173 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %174 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %173, i32 0, i32 2
  %175 = load %struct.TYPE_17__*, %struct.TYPE_17__** %174, align 8
  %176 = call i32 @isfunc(%struct.TYPE_17__* %175)
  %177 = icmp ne i32 %176, 0
  br label %178

178:                                              ; preds = %172, %166
  %179 = phi i1 [ true, %166 ], [ %177, %172 ]
  %180 = zext i1 %179 to i64
  %181 = select i1 %179, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0)
  %182 = load i8*, i8** %5, align 8
  %183 = call i8* (i8*, ...) @stringf(i8* %181, i8* %182)
  store i8* %183, i8** %5, align 8
  br label %337

184:                                              ; preds = %11
  %185 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %186 = call %struct.TYPE_18__* @findtype(%struct.TYPE_17__* %185)
  store %struct.TYPE_18__* %186, %struct.TYPE_18__** %6, align 8
  %187 = icmp ne %struct.TYPE_18__* %186, null
  br i1 %187, label %188, label %205

188:                                              ; preds = %184
  %189 = load i8*, i8** %5, align 8
  %190 = load i8, i8* %189, align 1
  %191 = sext i8 %190 to i32
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %199

193:                                              ; preds = %188
  %194 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %195 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %194, i32 0, i32 0
  %196 = load i8*, i8** %195, align 8
  %197 = load i8*, i8** %5, align 8
  %198 = call i8* (i8*, ...) @stringf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %196, i8* %197)
  br label %203

199:                                              ; preds = %188
  %200 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %201 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %200, i32 0, i32 0
  %202 = load i8*, i8** %201, align 8
  br label %203

203:                                              ; preds = %199, %193
  %204 = phi i8* [ %198, %193 ], [ %202, %199 ]
  store i8* %204, i8** %3, align 8
  br label %344

205:                                              ; preds = %184
  %206 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %207 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %206, i32 0, i32 3
  %208 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %207, i32 0, i32 0
  %209 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %208, i32 0, i32 0
  %210 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %209, align 8
  %211 = icmp eq %struct.TYPE_17__** %210, null
  br i1 %211, label %212, label %215

212:                                              ; preds = %205
  %213 = load i8*, i8** %5, align 8
  %214 = call i8* (i8*, ...) @stringf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8* %213)
  store i8* %214, i8** %5, align 8
  br label %285

215:                                              ; preds = %205
  %216 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %217 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %216, i32 0, i32 3
  %218 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %217, i32 0, i32 0
  %219 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %218, i32 0, i32 0
  %220 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %219, align 8
  %221 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %220, i64 0
  %222 = load %struct.TYPE_17__*, %struct.TYPE_17__** %221, align 8
  %223 = icmp ne %struct.TYPE_17__* %222, null
  br i1 %223, label %224, label %281

224:                                              ; preds = %215
  %225 = load i8*, i8** %5, align 8
  %226 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %227 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %226, i32 0, i32 3
  %228 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %227, i32 0, i32 0
  %229 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %228, i32 0, i32 0
  %230 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %229, align 8
  %231 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %230, i64 0
  %232 = load %struct.TYPE_17__*, %struct.TYPE_17__** %231, align 8
  %233 = call i8* @typestring(%struct.TYPE_17__* %232, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0))
  %234 = call i8* (i8*, ...) @stringf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i8* %225, i8* %233)
  store i8* %234, i8** %5, align 8
  store i32 1, i32* %7, align 4
  br label %235

235:                                              ; preds = %275, %224
  %236 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %237 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %236, i32 0, i32 3
  %238 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %237, i32 0, i32 0
  %239 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %238, i32 0, i32 0
  %240 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %239, align 8
  %241 = load i32, i32* %7, align 4
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %240, i64 %242
  %244 = load %struct.TYPE_17__*, %struct.TYPE_17__** %243, align 8
  %245 = icmp ne %struct.TYPE_17__* %244, null
  br i1 %245, label %246, label %278

246:                                              ; preds = %235
  %247 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %248 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %247, i32 0, i32 3
  %249 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %248, i32 0, i32 0
  %250 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %249, i32 0, i32 0
  %251 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %250, align 8
  %252 = load i32, i32* %7, align 4
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %251, i64 %253
  %255 = load %struct.TYPE_17__*, %struct.TYPE_17__** %254, align 8
  %256 = load %struct.TYPE_17__*, %struct.TYPE_17__** @voidtype, align 8
  %257 = icmp eq %struct.TYPE_17__* %255, %256
  br i1 %257, label %258, label %261

258:                                              ; preds = %246
  %259 = load i8*, i8** %5, align 8
  %260 = call i8* (i8*, ...) @stringf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i8* %259)
  store i8* %260, i8** %5, align 8
  br label %274

261:                                              ; preds = %246
  %262 = load i8*, i8** %5, align 8
  %263 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %264 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %263, i32 0, i32 3
  %265 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %264, i32 0, i32 0
  %266 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %265, i32 0, i32 0
  %267 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %266, align 8
  %268 = load i32, i32* %7, align 4
  %269 = sext i32 %268 to i64
  %270 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %267, i64 %269
  %271 = load %struct.TYPE_17__*, %struct.TYPE_17__** %270, align 8
  %272 = call i8* @typestring(%struct.TYPE_17__* %271, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0))
  %273 = call i8* (i8*, ...) @stringf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0), i8* %262, i8* %272)
  store i8* %273, i8** %5, align 8
  br label %274

274:                                              ; preds = %261, %258
  br label %275

275:                                              ; preds = %274
  %276 = load i32, i32* %7, align 4
  %277 = add nsw i32 %276, 1
  store i32 %277, i32* %7, align 4
  br label %235

278:                                              ; preds = %235
  %279 = load i8*, i8** %5, align 8
  %280 = call i8* (i8*, ...) @stringf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i8* %279)
  store i8* %280, i8** %5, align 8
  br label %284

281:                                              ; preds = %215
  %282 = load i8*, i8** %5, align 8
  %283 = call i8* (i8*, ...) @stringf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i64 0, i64 0), i8* %282)
  store i8* %283, i8** %5, align 8
  br label %284

284:                                              ; preds = %281, %278
  br label %285

285:                                              ; preds = %284, %212
  br label %337

286:                                              ; preds = %11
  %287 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %288 = call %struct.TYPE_18__* @findtype(%struct.TYPE_17__* %287)
  store %struct.TYPE_18__* %288, %struct.TYPE_18__** %6, align 8
  %289 = icmp ne %struct.TYPE_18__* %288, null
  br i1 %289, label %290, label %307

290:                                              ; preds = %286
  %291 = load i8*, i8** %5, align 8
  %292 = load i8, i8* %291, align 1
  %293 = sext i8 %292 to i32
  %294 = icmp ne i32 %293, 0
  br i1 %294, label %295, label %301

295:                                              ; preds = %290
  %296 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %297 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %296, i32 0, i32 0
  %298 = load i8*, i8** %297, align 8
  %299 = load i8*, i8** %5, align 8
  %300 = call i8* (i8*, ...) @stringf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %298, i8* %299)
  br label %305

301:                                              ; preds = %290
  %302 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %303 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %302, i32 0, i32 0
  %304 = load i8*, i8** %303, align 8
  br label %305

305:                                              ; preds = %301, %295
  %306 = phi i8* [ %300, %295 ], [ %304, %301 ]
  store i8* %306, i8** %3, align 8
  br label %344

307:                                              ; preds = %286
  %308 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %309 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %308, i32 0, i32 2
  %310 = load %struct.TYPE_17__*, %struct.TYPE_17__** %309, align 8
  %311 = icmp ne %struct.TYPE_17__* %310, null
  br i1 %311, label %312, label %331

312:                                              ; preds = %307
  %313 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %314 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %313, i32 0, i32 2
  %315 = load %struct.TYPE_17__*, %struct.TYPE_17__** %314, align 8
  %316 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %315, i32 0, i32 1
  %317 = load i32, i32* %316, align 4
  %318 = icmp sgt i32 %317, 0
  br i1 %318, label %319, label %331

319:                                              ; preds = %312
  %320 = load i8*, i8** %5, align 8
  %321 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %322 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %321, i32 0, i32 1
  %323 = load i32, i32* %322, align 4
  %324 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %325 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %324, i32 0, i32 2
  %326 = load %struct.TYPE_17__*, %struct.TYPE_17__** %325, align 8
  %327 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %326, i32 0, i32 1
  %328 = load i32, i32* %327, align 4
  %329 = sdiv i32 %323, %328
  %330 = call i8* (i8*, ...) @stringf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0), i8* %320, i32 %329)
  store i8* %330, i8** %5, align 8
  br label %334

331:                                              ; preds = %312, %307
  %332 = load i8*, i8** %5, align 8
  %333 = call i8* (i8*, ...) @stringf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0), i8* %332)
  store i8* %333, i8** %5, align 8
  br label %334

334:                                              ; preds = %331, %319
  br label %337

335:                                              ; preds = %11
  %336 = call i32 @assert(%struct.TYPE_14__* null)
  br label %337

337:                                              ; preds = %335, %334, %285, %178, %37
  br label %338

338:                                              ; preds = %337
  %339 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %340 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %339, i32 0, i32 2
  %341 = load %struct.TYPE_17__*, %struct.TYPE_17__** %340, align 8
  store %struct.TYPE_17__* %341, %struct.TYPE_17__** %4, align 8
  br label %8

342:                                              ; preds = %8
  %343 = call i32 @assert(%struct.TYPE_14__* null)
  store i8* null, i8** %3, align 8
  br label %344

344:                                              ; preds = %342, %305, %203, %164, %137, %105, %93, %62, %27
  %345 = load i8*, i8** %3, align 8
  ret i8* %345
}

declare dso_local i32 @isptr(%struct.TYPE_17__*) #1

declare dso_local i8* @stringf(i8*, ...) #1

declare dso_local i32 @assert(%struct.TYPE_14__*) #1

declare dso_local %struct.TYPE_18__* @findtype(%struct.TYPE_17__*) #1

declare dso_local i32 @warning(i8*, i32) #1

declare dso_local i32 @ischar(%struct.TYPE_17__*) #1

declare dso_local i32 @isarray(%struct.TYPE_17__*) #1

declare dso_local i32 @isfunc(%struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
