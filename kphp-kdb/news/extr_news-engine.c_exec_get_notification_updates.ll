; ModuleID = '/home/carl/AnghaBench/kphp-kdb/news/extr_news-engine.c_exec_get_notification_updates.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/news/extr_news-engine.c_exec_get_notification_updates.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.connection = type { i32 }

@exec_get_notification_updates.value_buff = internal global [10000000 x i8] zeroinitializer, align 16
@verbosity = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"exec_get_notifications (%p, %s, %d, %d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"notification_updates%d_%d,%d_%d>%d#%d:%d\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"notification_updates%d_%d,%d_%d>%d:%d\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"notification_updates%d_%d,%d_%d#%d:%d\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"notification_updates%d_%d,%d_%d:%d\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"a:%d:{\00", align 1
@notify_groups = common dso_local global %struct.TYPE_3__* null, align 8
@RR = common dso_local global %struct.TYPE_4__* null, align 8
@.str.6 = private unnamed_addr constant [12 x i8] c"i:%d;a:%d:{\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"i:0;i:%d;i:1;i:%d;i:2;i:%d;\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"%d_%d\00", align 1
@.str.9 = private unnamed_addr constant [24 x i8] c"i:3;s:%d:\22%s\22;i:4;i:%d;\00", align 1
@.str.10 = private unnamed_addr constant [21 x i8] c"i:%d;a:%d:{i:0;i:%d;\00", align 1
@.str.11 = private unnamed_addr constant [16 x i8] c"i:%d;s:%d:\22%s\22;\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"i:%d;i:%d;\00", align 1
@.str.13 = private unnamed_addr constant [2 x i8] c"}\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.connection*, i8*, i32, i32)* @exec_get_notification_updates to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @exec_get_notification_updates(%struct.connection* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.connection*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca [100 x i8], align 16
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  store %struct.connection* %0, %struct.connection** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 -1, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  store i8* getelementptr inbounds ([10000000 x i8], [10000000 x i8]* @exec_get_notification_updates.value_buff, i64 0, i64 0), i8** %18, align 8
  store i8* getelementptr inbounds (i8, i8* getelementptr inbounds ([10000000 x i8], [10000000 x i8]* @exec_get_notification_updates.value_buff, i64 0, i64 0), i64 10000000), i8** %19, align 8
  %32 = load i32, i32* @verbosity, align 4
  %33 = icmp sge i32 %32, 2
  br i1 %33, label %34, label %41

34:                                               ; preds = %4
  %35 = load i32, i32* @stderr, align 4
  %36 = load %struct.connection*, %struct.connection** %6, align 8
  %37 = load i8*, i8** %7, align 8
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* %9, align 4
  %40 = call i32 @fprintf(i32 %35, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), %struct.connection* %36, i8* %37, i32 %38, i32 %39)
  br label %41

41:                                               ; preds = %34, %4
  %42 = load i8*, i8** %7, align 8
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp eq i32 %44, 37
  br i1 %45, label %46, label %47

46:                                               ; preds = %41
  store i32 1, i32* %14, align 4
  br label %47

47:                                               ; preds = %46, %41
  %48 = load i8*, i8** %7, align 8
  %49 = load i32, i32* %14, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i8, i8* %48, i64 %50
  %52 = call i32 (i8*, i8*, i32*, i32*, i32*, i32*, i32*, ...) @sscanf(i8* %51, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32* %11, i32* %15, i32* %13, i32* %16, i32* %12, i32* %17, i32* %10)
  %53 = icmp eq i32 %52, 7
  br i1 %53, label %75, label %54

54:                                               ; preds = %47
  %55 = load i8*, i8** %7, align 8
  %56 = load i32, i32* %14, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i8, i8* %55, i64 %57
  %59 = call i32 (i8*, i8*, i32*, i32*, i32*, i32*, i32*, ...) @sscanf(i8* %58, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32* %11, i32* %15, i32* %13, i32* %16, i32* %12, i32* %10)
  %60 = icmp eq i32 %59, 6
  br i1 %60, label %75, label %61

61:                                               ; preds = %54
  %62 = load i8*, i8** %7, align 8
  %63 = load i32, i32* %14, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i8, i8* %62, i64 %64
  %66 = call i32 (i8*, i8*, i32*, i32*, i32*, i32*, i32*, ...) @sscanf(i8* %65, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i32* %11, i32* %15, i32* %13, i32* %16, i32* %17, i32* %10)
  %67 = icmp eq i32 %66, 6
  br i1 %67, label %75, label %68

68:                                               ; preds = %61
  %69 = load i8*, i8** %7, align 8
  %70 = load i32, i32* %14, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i8, i8* %69, i64 %71
  %73 = call i32 (i8*, i8*, i32*, i32*, i32*, i32*, i32*, ...) @sscanf(i8* %72, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i32* %11, i32* %15, i32* %13, i32* %16, i32* %10)
  %74 = icmp eq i32 %73, 5
  br i1 %74, label %75, label %76

75:                                               ; preds = %68, %61, %54, %47
  br label %77

76:                                               ; preds = %68
  store i32 0, i32* %5, align 4
  br label %415

77:                                               ; preds = %75
  %78 = load i32, i32* %10, align 4
  %79 = load i32, i32* %11, align 4
  %80 = load i32, i32* %15, align 4
  %81 = load i32, i32* %13, align 4
  %82 = load i32, i32* %16, align 4
  %83 = load i32, i32* %12, align 4
  %84 = load i32, i32* %17, align 4
  %85 = call i32 @prepare_notify_groups(i32 %78, i32 %79, i32 %80, i32 %81, i32 %82, i32 %83, i32 %84, i32* %20, i32* %21)
  store i32 %85, i32* %22, align 4
  %86 = load i32, i32* %22, align 4
  %87 = icmp slt i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %77
  store i32 0, i32* %5, align 4
  br label %415

89:                                               ; preds = %77
  %90 = load i8*, i8** %18, align 8
  %91 = load i8*, i8** %19, align 8
  %92 = load i8*, i8** %18, align 8
  %93 = ptrtoint i8* %91 to i64
  %94 = ptrtoint i8* %92 to i64
  %95 = sub i64 %93, %94
  %96 = trunc i64 %95 to i32
  %97 = load i32, i32* %22, align 4
  %98 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %90, i32 %96, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i32 %97)
  %99 = load i8*, i8** %18, align 8
  %100 = sext i32 %98 to i64
  %101 = getelementptr inbounds i8, i8* %99, i64 %100
  store i8* %101, i8** %18, align 8
  store i32 0, i32* %23, align 4
  br label %102

102:                                              ; preds = %384, %89
  %103 = load i32, i32* %23, align 4
  %104 = load i32, i32* %21, align 4
  %105 = icmp slt i32 %103, %104
  br i1 %105, label %106, label %387

106:                                              ; preds = %102
  %107 = load %struct.TYPE_3__*, %struct.TYPE_3__** @notify_groups, align 8
  %108 = load i32, i32* %23, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i64 %109
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  store i32 %112, i32* %25, align 4
  %113 = load %struct.TYPE_3__*, %struct.TYPE_3__** @notify_groups, align 8
  %114 = load i32, i32* %23, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i64 %115
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* %16, align 4
  %120 = icmp sgt i32 %118, %119
  br i1 %120, label %121, label %125

121:                                              ; preds = %106
  %122 = load i32, i32* %25, align 4
  %123 = load i32, i32* %16, align 4
  %124 = add nsw i32 %122, %123
  br label %134

125:                                              ; preds = %106
  %126 = load i32, i32* %25, align 4
  %127 = load %struct.TYPE_3__*, %struct.TYPE_3__** @notify_groups, align 8
  %128 = load i32, i32* %23, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %127, i64 %129
  %131 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = add nsw i32 %126, %132
  br label %134

134:                                              ; preds = %125, %121
  %135 = phi i32 [ %124, %121 ], [ %133, %125 ]
  store i32 %135, i32* %26, align 4
  %136 = load i32, i32* %26, align 4
  %137 = load i32, i32* %20, align 4
  %138 = icmp sle i32 %136, %137
  %139 = zext i1 %138 to i32
  %140 = call i32 @assert(i32 %139)
  %141 = load %struct.TYPE_4__*, %struct.TYPE_4__** @RR, align 8
  %142 = load i32, i32* %25, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %141, i64 %143
  %145 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = icmp slt i32 %146, 0
  br i1 %147, label %148, label %152

148:                                              ; preds = %134
  %149 = load i32, i32* %16, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %152, label %151

151:                                              ; preds = %148
  br label %384

152:                                              ; preds = %148, %134
  %153 = load i8*, i8** %18, align 8
  %154 = load i8*, i8** %19, align 8
  %155 = load i8*, i8** %18, align 8
  %156 = ptrtoint i8* %154 to i64
  %157 = ptrtoint i8* %155 to i64
  %158 = sub i64 %156, %157
  %159 = trunc i64 %158 to i32
  %160 = load i32, i32* %23, align 4
  %161 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %153, i32 %159, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i32 %160, i32 5)
  %162 = load i8*, i8** %18, align 8
  %163 = sext i32 %161 to i64
  %164 = getelementptr inbounds i8, i8* %162, i64 %163
  store i8* %164, i8** %18, align 8
  %165 = load i8*, i8** %18, align 8
  %166 = load i8*, i8** %19, align 8
  %167 = load i8*, i8** %18, align 8
  %168 = ptrtoint i8* %166 to i64
  %169 = ptrtoint i8* %167 to i64
  %170 = sub i64 %168, %169
  %171 = trunc i64 %170 to i32
  %172 = load %struct.TYPE_4__*, %struct.TYPE_4__** @RR, align 8
  %173 = load i32, i32* %25, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %172, i64 %174
  %176 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 4
  %178 = load %struct.TYPE_4__*, %struct.TYPE_4__** @RR, align 8
  %179 = load i32, i32* %25, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %178, i64 %180
  %182 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %181, i32 0, i32 2
  %183 = load i32, i32* %182, align 4
  %184 = load %struct.TYPE_4__*, %struct.TYPE_4__** @RR, align 8
  %185 = load i32, i32* %25, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %184, i64 %186
  %188 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %187, i32 0, i32 3
  %189 = load i32, i32* %188, align 4
  %190 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %165, i32 %171, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i64 0, i64 0), i32 %177, i32 %183, i32 %189)
  %191 = load i8*, i8** %18, align 8
  %192 = sext i32 %190 to i64
  %193 = getelementptr inbounds i8, i8* %191, i64 %192
  store i8* %193, i8** %18, align 8
  %194 = load i32, i32* %16, align 4
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %230, label %196

196:                                              ; preds = %152
  %197 = getelementptr inbounds [100 x i8], [100 x i8]* %24, i64 0, i64 0
  %198 = load %struct.TYPE_4__*, %struct.TYPE_4__** @RR, align 8
  %199 = load i32, i32* %25, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %198, i64 %200
  %202 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %201, i32 0, i32 4
  %203 = load i32, i32* %202, align 4
  %204 = load %struct.TYPE_4__*, %struct.TYPE_4__** @RR, align 8
  %205 = load i32, i32* %25, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %204, i64 %206
  %208 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %207, i32 0, i32 5
  %209 = load i32, i32* %208, align 4
  %210 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %197, i32 100, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i32 %203, i32 %209)
  store i32 %210, i32* %27, align 4
  %211 = load i8*, i8** %18, align 8
  %212 = load i8*, i8** %19, align 8
  %213 = load i8*, i8** %18, align 8
  %214 = ptrtoint i8* %212 to i64
  %215 = ptrtoint i8* %213 to i64
  %216 = sub i64 %214, %215
  %217 = trunc i64 %216 to i32
  %218 = load i32, i32* %27, align 4
  %219 = getelementptr inbounds [100 x i8], [100 x i8]* %24, i64 0, i64 0
  %220 = load %struct.TYPE_4__*, %struct.TYPE_4__** @RR, align 8
  %221 = load i32, i32* %25, align 4
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %220, i64 %222
  %224 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %223, i32 0, i32 6
  %225 = load i32, i32* %224, align 4
  %226 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %211, i32 %217, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i64 0, i64 0), i32 %218, i8* %219, i32 %225)
  %227 = load i8*, i8** %18, align 8
  %228 = sext i32 %226 to i64
  %229 = getelementptr inbounds i8, i8* %227, i64 %228
  store i8* %229, i8** %18, align 8
  br label %372

230:                                              ; preds = %152
  %231 = load %struct.TYPE_3__*, %struct.TYPE_3__** @notify_groups, align 8
  %232 = load i32, i32* %23, align 4
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %231, i64 %233
  %235 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %234, i32 0, i32 1
  %236 = load i32, i32* %235, align 4
  store i32 %236, i32* %29, align 4
  %237 = load %struct.TYPE_4__*, %struct.TYPE_4__** @RR, align 8
  %238 = load i32, i32* %25, align 4
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %237, i64 %239
  %241 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %240, i32 0, i32 0
  %242 = load i32, i32* %241, align 4
  %243 = icmp sle i32 %242, 0
  br i1 %243, label %244, label %268

244:                                              ; preds = %230
  %245 = load %struct.TYPE_4__*, %struct.TYPE_4__** @RR, align 8
  %246 = load i32, i32* %25, align 4
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %245, i64 %247
  %249 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %248, i32 0, i32 0
  %250 = load i32, i32* %249, align 4
  %251 = sub nsw i32 0, %250
  store i32 %251, i32* %29, align 4
  %252 = load i32, i32* %26, align 4
  %253 = load i32, i32* %25, align 4
  %254 = load %struct.TYPE_3__*, %struct.TYPE_3__** @notify_groups, align 8
  %255 = load i32, i32* %23, align 4
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %254, i64 %256
  %258 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %257, i32 0, i32 1
  %259 = load i32, i32* %258, align 4
  %260 = add nsw i32 %253, %259
  %261 = icmp slt i32 %252, %260
  br i1 %261, label %262, label %265

262:                                              ; preds = %244
  %263 = load i32, i32* %26, align 4
  %264 = add nsw i32 %263, 1
  store i32 %264, i32* %26, align 4
  br label %265

265:                                              ; preds = %262, %244
  %266 = load i32, i32* %25, align 4
  %267 = add nsw i32 %266, 1
  store i32 %267, i32* %25, align 4
  br label %268

268:                                              ; preds = %265, %230
  store i32 3, i32* %28, align 4
  br label %269

269:                                              ; preds = %368, %268
  %270 = load i32, i32* %28, align 4
  %271 = icmp slt i32 %270, 5
  br i1 %271, label %272, label %371

272:                                              ; preds = %269
  %273 = load i8*, i8** %18, align 8
  %274 = load i8*, i8** %19, align 8
  %275 = load i8*, i8** %18, align 8
  %276 = ptrtoint i8* %274 to i64
  %277 = ptrtoint i8* %275 to i64
  %278 = sub i64 %276, %277
  %279 = trunc i64 %278 to i32
  %280 = load i32, i32* %28, align 4
  %281 = load i32, i32* %26, align 4
  %282 = load i32, i32* %25, align 4
  %283 = sub nsw i32 %281, %282
  %284 = add nsw i32 %283, 1
  %285 = load i32, i32* %29, align 4
  %286 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %273, i32 %279, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i64 0, i64 0), i32 %280, i32 %284, i32 %285)
  %287 = load i8*, i8** %18, align 8
  %288 = sext i32 %286 to i64
  %289 = getelementptr inbounds i8, i8* %287, i64 %288
  store i8* %289, i8** %18, align 8
  %290 = load i32, i32* %25, align 4
  store i32 %290, i32* %30, align 4
  br label %291

291:                                              ; preds = %353, %272
  %292 = load i32, i32* %30, align 4
  %293 = load i32, i32* %26, align 4
  %294 = icmp slt i32 %292, %293
  br i1 %294, label %295, label %356

295:                                              ; preds = %291
  %296 = load i32, i32* %28, align 4
  %297 = icmp eq i32 %296, 3
  br i1 %297, label %298, label %330

298:                                              ; preds = %295
  %299 = getelementptr inbounds [100 x i8], [100 x i8]* %24, i64 0, i64 0
  %300 = load %struct.TYPE_4__*, %struct.TYPE_4__** @RR, align 8
  %301 = load i32, i32* %30, align 4
  %302 = sext i32 %301 to i64
  %303 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %300, i64 %302
  %304 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %303, i32 0, i32 4
  %305 = load i32, i32* %304, align 4
  %306 = load %struct.TYPE_4__*, %struct.TYPE_4__** @RR, align 8
  %307 = load i32, i32* %30, align 4
  %308 = sext i32 %307 to i64
  %309 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %306, i64 %308
  %310 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %309, i32 0, i32 5
  %311 = load i32, i32* %310, align 4
  %312 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %299, i32 100, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i32 %305, i32 %311)
  store i32 %312, i32* %31, align 4
  %313 = load i8*, i8** %18, align 8
  %314 = load i8*, i8** %18, align 8
  %315 = load i8*, i8** %19, align 8
  %316 = ptrtoint i8* %314 to i64
  %317 = ptrtoint i8* %315 to i64
  %318 = sub i64 %316, %317
  %319 = trunc i64 %318 to i32
  %320 = load i32, i32* %30, align 4
  %321 = load i32, i32* %25, align 4
  %322 = sub nsw i32 %320, %321
  %323 = add nsw i32 %322, 1
  %324 = load i32, i32* %31, align 4
  %325 = getelementptr inbounds [100 x i8], [100 x i8]* %24, i64 0, i64 0
  %326 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %313, i32 %319, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0), i32 %323, i32 %324, i8* %325)
  %327 = load i8*, i8** %18, align 8
  %328 = sext i32 %326 to i64
  %329 = getelementptr inbounds i8, i8* %327, i64 %328
  store i8* %329, i8** %18, align 8
  br label %352

330:                                              ; preds = %295
  %331 = load i8*, i8** %18, align 8
  %332 = load i8*, i8** %18, align 8
  %333 = load i8*, i8** %19, align 8
  %334 = ptrtoint i8* %332 to i64
  %335 = ptrtoint i8* %333 to i64
  %336 = sub i64 %334, %335
  %337 = trunc i64 %336 to i32
  %338 = load i32, i32* %30, align 4
  %339 = load i32, i32* %25, align 4
  %340 = sub nsw i32 %338, %339
  %341 = add nsw i32 %340, 1
  %342 = load %struct.TYPE_4__*, %struct.TYPE_4__** @RR, align 8
  %343 = load i32, i32* %30, align 4
  %344 = sext i32 %343 to i64
  %345 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %342, i64 %344
  %346 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %345, i32 0, i32 6
  %347 = load i32, i32* %346, align 4
  %348 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %331, i32 %337, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i64 0, i64 0), i32 %341, i32 %347)
  %349 = load i8*, i8** %18, align 8
  %350 = sext i32 %348 to i64
  %351 = getelementptr inbounds i8, i8* %349, i64 %350
  store i8* %351, i8** %18, align 8
  br label %352

352:                                              ; preds = %330, %298
  br label %353

353:                                              ; preds = %352
  %354 = load i32, i32* %30, align 4
  %355 = add nsw i32 %354, 1
  store i32 %355, i32* %30, align 4
  br label %291

356:                                              ; preds = %291
  %357 = load i8*, i8** %18, align 8
  %358 = load i8*, i8** %19, align 8
  %359 = load i8*, i8** %18, align 8
  %360 = ptrtoint i8* %358 to i64
  %361 = ptrtoint i8* %359 to i64
  %362 = sub i64 %360, %361
  %363 = trunc i64 %362 to i32
  %364 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %357, i32 %363, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0))
  %365 = load i8*, i8** %18, align 8
  %366 = sext i32 %364 to i64
  %367 = getelementptr inbounds i8, i8* %365, i64 %366
  store i8* %367, i8** %18, align 8
  br label %368

368:                                              ; preds = %356
  %369 = load i32, i32* %28, align 4
  %370 = add nsw i32 %369, 1
  store i32 %370, i32* %28, align 4
  br label %269

371:                                              ; preds = %269
  br label %372

372:                                              ; preds = %371, %196
  %373 = load i8*, i8** %18, align 8
  %374 = load i8*, i8** %19, align 8
  %375 = load i8*, i8** %18, align 8
  %376 = ptrtoint i8* %374 to i64
  %377 = ptrtoint i8* %375 to i64
  %378 = sub i64 %376, %377
  %379 = trunc i64 %378 to i32
  %380 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %373, i32 %379, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0))
  %381 = load i8*, i8** %18, align 8
  %382 = sext i32 %380 to i64
  %383 = getelementptr inbounds i8, i8* %381, i64 %382
  store i8* %383, i8** %18, align 8
  br label %384

384:                                              ; preds = %372, %151
  %385 = load i32, i32* %23, align 4
  %386 = add nsw i32 %385, 1
  store i32 %386, i32* %23, align 4
  br label %102

387:                                              ; preds = %102
  %388 = load i8*, i8** %18, align 8
  %389 = load i8*, i8** %19, align 8
  %390 = load i8*, i8** %18, align 8
  %391 = ptrtoint i8* %389 to i64
  %392 = ptrtoint i8* %390 to i64
  %393 = sub i64 %391, %392
  %394 = trunc i64 %393 to i32
  %395 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %388, i32 %394, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0))
  %396 = load i8*, i8** %18, align 8
  %397 = sext i32 %395 to i64
  %398 = getelementptr inbounds i8, i8* %396, i64 %397
  store i8* %398, i8** %18, align 8
  %399 = load i8*, i8** %19, align 8
  %400 = load i8*, i8** %18, align 8
  %401 = icmp ugt i8* %399, %400
  br i1 %401, label %402, label %414

402:                                              ; preds = %387
  %403 = load %struct.connection*, %struct.connection** %6, align 8
  %404 = load i8*, i8** %7, align 8
  %405 = load i32, i32* %9, align 4
  %406 = sext i32 %405 to i64
  %407 = sub i64 0, %406
  %408 = getelementptr inbounds i8, i8* %404, i64 %407
  %409 = load i8*, i8** %18, align 8
  %410 = ptrtoint i8* %409 to i64
  %411 = sub i64 %410, ptrtoint ([10000000 x i8]* @exec_get_notification_updates.value_buff to i64)
  %412 = trunc i64 %411 to i32
  %413 = call i32 @return_one_key_flags(%struct.connection* %403, i8* %408, i8* getelementptr inbounds ([10000000 x i8], [10000000 x i8]* @exec_get_notification_updates.value_buff, i64 0, i64 0), i32 %412)
  store i32 %413, i32* %5, align 4
  br label %415

414:                                              ; preds = %387
  store i32 0, i32* %5, align 4
  br label %415

415:                                              ; preds = %414, %402, %88, %76
  %416 = load i32, i32* %5, align 4
  ret i32 %416
}

declare dso_local i32 @fprintf(i32, i8*, %struct.connection*, i8*, i32, i32) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*, i32*, i32*, i32*, i32*, ...) #1

declare dso_local i32 @prepare_notify_groups(i32, i32, i32, i32, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, ...) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @return_one_key_flags(%struct.connection*, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
