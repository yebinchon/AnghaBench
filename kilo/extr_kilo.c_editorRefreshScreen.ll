; ModuleID = '/home/carl/AnghaBench/kilo/extr_kilo.c_editorRefreshScreen.c'
source_filename = "/home/carl/AnghaBench/kilo/extr_kilo.c_editorRefreshScreen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.abuf = type { i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i8*, i32, i8*, i32, i32, %struct.TYPE_3__*, i64 }
%struct.TYPE_3__ = type { i32, i8*, i8*, i32, i64* }

@ABUF_INIT = common dso_local global %struct.abuf zeroinitializer, align 4
@.str = private unnamed_addr constant [7 x i8] c"\1B[?25l\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"\1B[H\00", align 1
@E = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@.str.2 = private unnamed_addr constant [32 x i8] c"Kilo editor -- verison %s\1B[0K\0D\0A\00", align 1
@KILO_VERSION = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [2 x i8] c"~\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"~\1B[0K\0D\0A\00", align 1
@HL_NONPRINT = common dso_local global i8 0, align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"\1B[7m\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"\1B[0m\00", align 1
@HL_NORMAL = common dso_local global i8 0, align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"\1B[39m\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"\1B[%dm\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"\1B[0K\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"\0D\0A\00", align 1
@.str.12 = private unnamed_addr constant [20 x i8] c"%.20s - %d lines %s\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"(modified)\00", align 1
@.str.14 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"%d/%d\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"\1B[0m\0D\0A\00", align 1
@TAB = common dso_local global i64 0, align 8
@.str.17 = private unnamed_addr constant [9 x i8] c"\1B[%d;%dH\00", align 1
@.str.18 = private unnamed_addr constant [7 x i8] c"\1B[?25h\00", align 1
@STDOUT_FILENO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @editorRefreshScreen() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca [32 x i8], align 16
  %4 = alloca %struct.abuf, align 4
  %5 = alloca i32, align 4
  %6 = alloca [80 x i8], align 16
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8, align 1
  %15 = alloca i32, align 4
  %16 = alloca [16 x i8], align 16
  %17 = alloca i32, align 4
  %18 = alloca [80 x i8], align 16
  %19 = alloca [80 x i8], align 16
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca %struct.TYPE_3__*, align 8
  %27 = bitcast %struct.abuf* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %27, i8* align 4 bitcast (%struct.abuf* @ABUF_INIT to i8*), i64 8, i1 false)
  %28 = call i32 @abAppend(%struct.abuf* %4, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 6)
  %29 = call i32 @abAppend(%struct.abuf* %4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 3)
  store i32 0, i32* %1, align 4
  br label %30

30:                                               ; preds = %199, %0
  %31 = load i32, i32* %1, align 4
  %32 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @E, i32 0, i32 0), align 8
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %202

34:                                               ; preds = %30
  %35 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @E, i32 0, i32 1), align 4
  %36 = load i32, i32* %1, align 4
  %37 = add nsw i32 %35, %36
  store i32 %37, i32* %5, align 4
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @E, i32 0, i32 2), align 8
  %40 = icmp sge i32 %38, %39
  br i1 %40, label %41, label %77

41:                                               ; preds = %34
  %42 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @E, i32 0, i32 2), align 8
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %74

44:                                               ; preds = %41
  %45 = load i32, i32* %1, align 4
  %46 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @E, i32 0, i32 0), align 8
  %47 = sdiv i32 %46, 3
  %48 = icmp eq i32 %45, %47
  br i1 %48, label %49, label %74

49:                                               ; preds = %44
  %50 = getelementptr inbounds [80 x i8], [80 x i8]* %6, i64 0, i64 0
  %51 = load i8*, i8** @KILO_VERSION, align 8
  %52 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %50, i32 80, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i8* %51)
  store i32 %52, i32* %7, align 4
  %53 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @E, i32 0, i32 3), align 4
  %54 = load i32, i32* %7, align 4
  %55 = sub nsw i32 %53, %54
  %56 = sdiv i32 %55, 2
  store i32 %56, i32* %8, align 4
  %57 = load i32, i32* %8, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %49
  %60 = call i32 @abAppend(%struct.abuf* %4, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i32 1)
  %61 = load i32, i32* %8, align 4
  %62 = add nsw i32 %61, -1
  store i32 %62, i32* %8, align 4
  br label %63

63:                                               ; preds = %59, %49
  br label %64

64:                                               ; preds = %68, %63
  %65 = load i32, i32* %8, align 4
  %66 = add nsw i32 %65, -1
  store i32 %66, i32* %8, align 4
  %67 = icmp ne i32 %65, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %64
  %69 = call i32 @abAppend(%struct.abuf* %4, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i32 1)
  br label %64

70:                                               ; preds = %64
  %71 = getelementptr inbounds [80 x i8], [80 x i8]* %6, i64 0, i64 0
  %72 = load i32, i32* %7, align 4
  %73 = call i32 @abAppend(%struct.abuf* %4, i8* %71, i32 %72)
  br label %76

74:                                               ; preds = %44, %41
  %75 = call i32 @abAppend(%struct.abuf* %4, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i32 7)
  br label %76

76:                                               ; preds = %74, %70
  br label %199

77:                                               ; preds = %34
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @E, i32 0, i32 10), align 8
  %79 = load i32, i32* %5, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i64 %80
  store %struct.TYPE_3__* %81, %struct.TYPE_3__** %2, align 8
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @E, i32 0, i32 4), align 8
  %86 = sub nsw i32 %84, %85
  store i32 %86, i32* %9, align 4
  store i32 -1, i32* %10, align 4
  %87 = load i32, i32* %9, align 4
  %88 = icmp sgt i32 %87, 0
  br i1 %88, label %89, label %195

89:                                               ; preds = %77
  %90 = load i32, i32* %9, align 4
  %91 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @E, i32 0, i32 3), align 4
  %92 = icmp sgt i32 %90, %91
  br i1 %92, label %93, label %95

93:                                               ; preds = %89
  %94 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @E, i32 0, i32 3), align 4
  store i32 %94, i32* %9, align 4
  br label %95

95:                                               ; preds = %93, %89
  %96 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 1
  %98 = load i8*, i8** %97, align 8
  %99 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @E, i32 0, i32 4), align 8
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i8, i8* %98, i64 %100
  store i8* %101, i8** %11, align 8
  %102 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 2
  %104 = load i8*, i8** %103, align 8
  %105 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @E, i32 0, i32 4), align 8
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i8, i8* %104, i64 %106
  store i8* %107, i8** %12, align 8
  store i32 0, i32* %13, align 4
  br label %108

108:                                              ; preds = %191, %95
  %109 = load i32, i32* %13, align 4
  %110 = load i32, i32* %9, align 4
  %111 = icmp slt i32 %109, %110
  br i1 %111, label %112, label %194

112:                                              ; preds = %108
  %113 = load i8*, i8** %12, align 8
  %114 = load i32, i32* %13, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i8, i8* %113, i64 %115
  %117 = load i8, i8* %116, align 1
  %118 = zext i8 %117 to i32
  %119 = load i8, i8* @HL_NONPRINT, align 1
  %120 = zext i8 %119 to i32
  %121 = icmp eq i32 %118, %120
  br i1 %121, label %122, label %144

122:                                              ; preds = %112
  %123 = call i32 @abAppend(%struct.abuf* %4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i32 4)
  %124 = load i8*, i8** %11, align 8
  %125 = load i32, i32* %13, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i8, i8* %124, i64 %126
  %128 = load i8, i8* %127, align 1
  %129 = sext i8 %128 to i32
  %130 = icmp sle i32 %129, 26
  br i1 %130, label %131, label %140

131:                                              ; preds = %122
  %132 = load i8*, i8** %11, align 8
  %133 = load i32, i32* %13, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i8, i8* %132, i64 %134
  %136 = load i8, i8* %135, align 1
  %137 = sext i8 %136 to i32
  %138 = add nsw i32 64, %137
  %139 = trunc i32 %138 to i8
  store i8 %139, i8* %14, align 1
  br label %141

140:                                              ; preds = %122
  store i8 63, i8* %14, align 1
  br label %141

141:                                              ; preds = %140, %131
  %142 = call i32 @abAppend(%struct.abuf* %4, i8* %14, i32 1)
  %143 = call i32 @abAppend(%struct.abuf* %4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i32 4)
  br label %190

144:                                              ; preds = %112
  %145 = load i8*, i8** %12, align 8
  %146 = load i32, i32* %13, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i8, i8* %145, i64 %147
  %149 = load i8, i8* %148, align 1
  %150 = zext i8 %149 to i32
  %151 = load i8, i8* @HL_NORMAL, align 1
  %152 = zext i8 %151 to i32
  %153 = icmp eq i32 %150, %152
  br i1 %153, label %154, label %165

154:                                              ; preds = %144
  %155 = load i32, i32* %10, align 4
  %156 = icmp ne i32 %155, -1
  br i1 %156, label %157, label %159

157:                                              ; preds = %154
  %158 = call i32 @abAppend(%struct.abuf* %4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i32 5)
  store i32 -1, i32* %10, align 4
  br label %159

159:                                              ; preds = %157, %154
  %160 = load i8*, i8** %11, align 8
  %161 = load i32, i32* %13, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i8, i8* %160, i64 %162
  %164 = call i32 @abAppend(%struct.abuf* %4, i8* %163, i32 1)
  br label %189

165:                                              ; preds = %144
  %166 = load i8*, i8** %12, align 8
  %167 = load i32, i32* %13, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i8, i8* %166, i64 %168
  %170 = load i8, i8* %169, align 1
  %171 = call i32 @editorSyntaxToColor(i8 zeroext %170)
  store i32 %171, i32* %15, align 4
  %172 = load i32, i32* %15, align 4
  %173 = load i32, i32* %10, align 4
  %174 = icmp ne i32 %172, %173
  br i1 %174, label %175, label %183

175:                                              ; preds = %165
  %176 = getelementptr inbounds [16 x i8], [16 x i8]* %16, i64 0, i64 0
  %177 = load i32, i32* %15, align 4
  %178 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %176, i32 16, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %177)
  store i32 %178, i32* %17, align 4
  %179 = load i32, i32* %15, align 4
  store i32 %179, i32* %10, align 4
  %180 = getelementptr inbounds [16 x i8], [16 x i8]* %16, i64 0, i64 0
  %181 = load i32, i32* %17, align 4
  %182 = call i32 @abAppend(%struct.abuf* %4, i8* %180, i32 %181)
  br label %183

183:                                              ; preds = %175, %165
  %184 = load i8*, i8** %11, align 8
  %185 = load i32, i32* %13, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds i8, i8* %184, i64 %186
  %188 = call i32 @abAppend(%struct.abuf* %4, i8* %187, i32 1)
  br label %189

189:                                              ; preds = %183, %159
  br label %190

190:                                              ; preds = %189, %141
  br label %191

191:                                              ; preds = %190
  %192 = load i32, i32* %13, align 4
  %193 = add nsw i32 %192, 1
  store i32 %193, i32* %13, align 4
  br label %108

194:                                              ; preds = %108
  br label %195

195:                                              ; preds = %194, %77
  %196 = call i32 @abAppend(%struct.abuf* %4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i32 5)
  %197 = call i32 @abAppend(%struct.abuf* %4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32 4)
  %198 = call i32 @abAppend(%struct.abuf* %4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0), i32 2)
  br label %199

199:                                              ; preds = %195, %76
  %200 = load i32, i32* %1, align 4
  %201 = add nsw i32 %200, 1
  store i32 %201, i32* %1, align 4
  br label %30

202:                                              ; preds = %30
  %203 = call i32 @abAppend(%struct.abuf* %4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32 4)
  %204 = call i32 @abAppend(%struct.abuf* %4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i32 4)
  %205 = getelementptr inbounds [80 x i8], [80 x i8]* %18, i64 0, i64 0
  %206 = load i8*, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @E, i32 0, i32 5), align 8
  %207 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @E, i32 0, i32 2), align 8
  %208 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @E, i32 0, i32 11), align 8
  %209 = icmp ne i64 %208, 0
  %210 = zext i1 %209 to i64
  %211 = select i1 %209, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i64 0, i64 0)
  %212 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %205, i32 80, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.12, i64 0, i64 0), i8* %206, i32 %207, i8* %211)
  store i32 %212, i32* %20, align 4
  %213 = getelementptr inbounds [80 x i8], [80 x i8]* %19, i64 0, i64 0
  %214 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @E, i32 0, i32 1), align 4
  %215 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @E, i32 0, i32 6), align 8
  %216 = add nsw i32 %214, %215
  %217 = add nsw i32 %216, 1
  %218 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @E, i32 0, i32 2), align 8
  %219 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %213, i32 80, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i64 0, i64 0), i32 %217, i32 %218)
  store i32 %219, i32* %21, align 4
  %220 = load i32, i32* %20, align 4
  %221 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @E, i32 0, i32 3), align 4
  %222 = icmp sgt i32 %220, %221
  br i1 %222, label %223, label %225

223:                                              ; preds = %202
  %224 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @E, i32 0, i32 3), align 4
  store i32 %224, i32* %20, align 4
  br label %225

225:                                              ; preds = %223, %202
  %226 = getelementptr inbounds [80 x i8], [80 x i8]* %18, i64 0, i64 0
  %227 = load i32, i32* %20, align 4
  %228 = call i32 @abAppend(%struct.abuf* %4, i8* %226, i32 %227)
  br label %229

229:                                              ; preds = %247, %225
  %230 = load i32, i32* %20, align 4
  %231 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @E, i32 0, i32 3), align 4
  %232 = icmp slt i32 %230, %231
  br i1 %232, label %233, label %248

233:                                              ; preds = %229
  %234 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @E, i32 0, i32 3), align 4
  %235 = load i32, i32* %20, align 4
  %236 = sub nsw i32 %234, %235
  %237 = load i32, i32* %21, align 4
  %238 = icmp eq i32 %236, %237
  br i1 %238, label %239, label %243

239:                                              ; preds = %233
  %240 = getelementptr inbounds [80 x i8], [80 x i8]* %19, i64 0, i64 0
  %241 = load i32, i32* %21, align 4
  %242 = call i32 @abAppend(%struct.abuf* %4, i8* %240, i32 %241)
  br label %248

243:                                              ; preds = %233
  %244 = call i32 @abAppend(%struct.abuf* %4, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i32 1)
  %245 = load i32, i32* %20, align 4
  %246 = add nsw i32 %245, 1
  store i32 %246, i32* %20, align 4
  br label %247

247:                                              ; preds = %243
  br label %229

248:                                              ; preds = %239, %229
  %249 = call i32 @abAppend(%struct.abuf* %4, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i64 0, i64 0), i32 6)
  %250 = call i32 @abAppend(%struct.abuf* %4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32 4)
  %251 = load i8*, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @E, i32 0, i32 7), align 8
  %252 = call i32 @strlen(i8* %251)
  store i32 %252, i32* %22, align 4
  %253 = load i32, i32* %22, align 4
  %254 = icmp ne i32 %253, 0
  br i1 %254, label %255, label %272

255:                                              ; preds = %248
  %256 = call i32 @time(i32* null)
  %257 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @E, i32 0, i32 8), align 8
  %258 = sub nsw i32 %256, %257
  %259 = icmp slt i32 %258, 5
  br i1 %259, label %260, label %272

260:                                              ; preds = %255
  %261 = load i8*, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @E, i32 0, i32 7), align 8
  %262 = load i32, i32* %22, align 4
  %263 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @E, i32 0, i32 3), align 4
  %264 = icmp sle i32 %262, %263
  br i1 %264, label %265, label %267

265:                                              ; preds = %260
  %266 = load i32, i32* %22, align 4
  br label %269

267:                                              ; preds = %260
  %268 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @E, i32 0, i32 3), align 4
  br label %269

269:                                              ; preds = %267, %265
  %270 = phi i32 [ %266, %265 ], [ %268, %267 ]
  %271 = call i32 @abAppend(%struct.abuf* %4, i8* %261, i32 %270)
  br label %272

272:                                              ; preds = %269, %255, %248
  store i32 1, i32* %24, align 4
  %273 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @E, i32 0, i32 1), align 4
  %274 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @E, i32 0, i32 6), align 8
  %275 = add nsw i32 %273, %274
  store i32 %275, i32* %25, align 4
  %276 = load i32, i32* %25, align 4
  %277 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @E, i32 0, i32 2), align 8
  %278 = icmp sge i32 %276, %277
  br i1 %278, label %279, label %280

279:                                              ; preds = %272
  br label %285

280:                                              ; preds = %272
  %281 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @E, i32 0, i32 10), align 8
  %282 = load i32, i32* %25, align 4
  %283 = sext i32 %282 to i64
  %284 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %281, i64 %283
  br label %285

285:                                              ; preds = %280, %279
  %286 = phi %struct.TYPE_3__* [ null, %279 ], [ %284, %280 ]
  store %struct.TYPE_3__* %286, %struct.TYPE_3__** %26, align 8
  %287 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %288 = icmp ne %struct.TYPE_3__* %287, null
  br i1 %288, label %289, label %326

289:                                              ; preds = %285
  %290 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @E, i32 0, i32 4), align 8
  store i32 %290, i32* %23, align 4
  br label %291

291:                                              ; preds = %322, %289
  %292 = load i32, i32* %23, align 4
  %293 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @E, i32 0, i32 9), align 4
  %294 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @E, i32 0, i32 4), align 8
  %295 = add nsw i32 %293, %294
  %296 = icmp slt i32 %292, %295
  br i1 %296, label %297, label %325

297:                                              ; preds = %291
  %298 = load i32, i32* %23, align 4
  %299 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %300 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %299, i32 0, i32 3
  %301 = load i32, i32* %300, align 8
  %302 = icmp slt i32 %298, %301
  br i1 %302, label %303, label %319

303:                                              ; preds = %297
  %304 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %305 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %304, i32 0, i32 4
  %306 = load i64*, i64** %305, align 8
  %307 = load i32, i32* %23, align 4
  %308 = sext i32 %307 to i64
  %309 = getelementptr inbounds i64, i64* %306, i64 %308
  %310 = load i64, i64* %309, align 8
  %311 = load i64, i64* @TAB, align 8
  %312 = icmp eq i64 %310, %311
  br i1 %312, label %313, label %319

313:                                              ; preds = %303
  %314 = load i32, i32* %24, align 4
  %315 = srem i32 %314, 8
  %316 = sub nsw i32 7, %315
  %317 = load i32, i32* %24, align 4
  %318 = add nsw i32 %317, %316
  store i32 %318, i32* %24, align 4
  br label %319

319:                                              ; preds = %313, %303, %297
  %320 = load i32, i32* %24, align 4
  %321 = add nsw i32 %320, 1
  store i32 %321, i32* %24, align 4
  br label %322

322:                                              ; preds = %319
  %323 = load i32, i32* %23, align 4
  %324 = add nsw i32 %323, 1
  store i32 %324, i32* %23, align 4
  br label %291

325:                                              ; preds = %291
  br label %326

326:                                              ; preds = %325, %285
  %327 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 0
  %328 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @E, i32 0, i32 6), align 8
  %329 = add nsw i32 %328, 1
  %330 = load i32, i32* %24, align 4
  %331 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %327, i32 32, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i64 0, i64 0), i32 %329, i32 %330)
  %332 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 0
  %333 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 0
  %334 = call i32 @strlen(i8* %333)
  %335 = call i32 @abAppend(%struct.abuf* %4, i8* %332, i32 %334)
  %336 = call i32 @abAppend(%struct.abuf* %4, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.18, i64 0, i64 0), i32 6)
  %337 = load i32, i32* @STDOUT_FILENO, align 4
  %338 = getelementptr inbounds %struct.abuf, %struct.abuf* %4, i32 0, i32 1
  %339 = load i32, i32* %338, align 4
  %340 = getelementptr inbounds %struct.abuf, %struct.abuf* %4, i32 0, i32 0
  %341 = load i32, i32* %340, align 4
  %342 = call i32 @write(i32 %337, i32 %339, i32 %341)
  %343 = call i32 @abFree(%struct.abuf* %4)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @abAppend(%struct.abuf*, i8*, i32) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, ...) #2

declare dso_local i32 @editorSyntaxToColor(i8 zeroext) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @time(i32*) #2

declare dso_local i32 @write(i32, i32, i32) #2

declare dso_local i32 @abFree(%struct.abuf*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
