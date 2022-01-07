; ModuleID = '/home/carl/AnghaBench/linux/arch/ia64/kernel/extr_perfmon_default_smpl.c_default_handler.c'
source_filename = "/home/carl/AnghaBench/linux/arch/ia64/kernel/extr_perfmon_default_smpl.c_default_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32 }
%struct.task_struct = type { i32 }
%struct.TYPE_10__ = type { i8, i8, i64*, %struct.TYPE_9__, i32, i32, i32* }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32, i32, i32 }
%struct.pt_regs = type { i32, i32 }
%struct.TYPE_11__ = type { i32, i32, i32, i32 }
%struct.TYPE_12__ = type { i8, i32, i64, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [38 x i8] c"[%d] invalid arguments buf=%p arg=%p\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@PFM_DEFAULT_MAX_ENTRY_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [82 x i8] c"[%d] count=%lu cur=%p last=%p free_bytes=%lu ovfl_pmd=%d ovfl_notify=%d npmds=%u\0A\00", align 1
@current = common dso_local global %struct.TYPE_13__* null, align 8
@.str.2 = private unnamed_addr constant [58 x i8] c"sampling buffer full free=%lu, count=%lu, ovfl_notify=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.task_struct*, i8*, %struct.TYPE_10__*, %struct.pt_regs*, i64)* @default_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @default_handler(%struct.task_struct* %0, i8* %1, %struct.TYPE_10__* %2, %struct.pt_regs* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.task_struct*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_10__*, align 8
  %10 = alloca %struct.pt_regs*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_11__*, align 8
  %13 = alloca %struct.TYPE_12__*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i8, align 1
  %21 = alloca i8, align 1
  %22 = alloca i64*, align 8
  store %struct.task_struct* %0, %struct.task_struct** %7, align 8
  store i8* %1, i8** %8, align 8
  store %struct.TYPE_10__* %2, %struct.TYPE_10__** %9, align 8
  store %struct.pt_regs* %3, %struct.pt_regs** %10, align 8
  store i64 %4, i64* %11, align 8
  %23 = load i8*, i8** %8, align 8
  %24 = icmp eq i8* %23, null
  br i1 %24, label %34, label %25

25:                                               ; preds = %5
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %27 = icmp eq %struct.TYPE_10__* %26, null
  br i1 %27, label %34, label %28

28:                                               ; preds = %25
  %29 = load %struct.pt_regs*, %struct.pt_regs** %10, align 8
  %30 = icmp eq %struct.pt_regs* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %28
  %32 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  %33 = icmp eq %struct.task_struct* %32, null
  br label %34

34:                                               ; preds = %31, %28, %25, %5
  %35 = phi i1 [ true, %28 ], [ true, %25 ], [ true, %5 ], [ %33, %31 ]
  %36 = zext i1 %35 to i32
  %37 = call i64 @unlikely(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %49

39:                                               ; preds = %34
  %40 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  %41 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i8*, i8** %8, align 8
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %45 = bitcast %struct.TYPE_10__* %44 to i8*
  %46 = call i32 @DPRINT(i8* %45)
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %6, align 4
  br label %274

49:                                               ; preds = %34
  %50 = load i8*, i8** %8, align 8
  %51 = bitcast i8* %50 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %51, %struct.TYPE_11__** %12, align 8
  %52 = load i8*, i8** %8, align 8
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr i8, i8* %52, i64 %56
  store i8* %57, i8** %14, align 8
  %58 = load i8*, i8** %8, align 8
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr i8, i8* %58, i64 %62
  store i8* %63, i8** %15, align 8
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 0
  %66 = load i8, i8* %65, align 8
  store i8 %66, i8* %20, align 1
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 1
  %69 = load i8, i8* %68, align 1
  store i8 %69, i8* %21, align 1
  %70 = load i8*, i8** %15, align 8
  %71 = load i8*, i8** %14, align 8
  %72 = ptrtoint i8* %70 to i64
  %73 = ptrtoint i8* %71 to i64
  %74 = sub i64 %72, %73
  %75 = load i32, i32* @PFM_DEFAULT_MAX_ENTRY_SIZE, align 4
  %76 = sext i32 %75 to i64
  %77 = icmp slt i64 %74, %76
  br i1 %77, label %78, label %79

78:                                               ; preds = %49
  br label %219

79:                                               ; preds = %49
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 6
  %82 = load i32*, i32** %81, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 0
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @hweight64(i32 %84)
  store i32 %85, i32* %18, align 4
  %86 = load i8*, i8** %14, align 8
  %87 = bitcast i8* %86 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %87, %struct.TYPE_12__** %13, align 8
  %88 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i32 0, i32 2
  %90 = load i64*, i64** %89, align 8
  %91 = call i32 @prefetch(i64* %90)
  %92 = load i32, i32* %18, align 4
  %93 = shl i32 %92, 3
  %94 = zext i32 %93 to i64
  %95 = add i64 40, %94
  store i64 %95, i64* %17, align 8
  %96 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %97 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %96, i64 1
  %98 = bitcast %struct.TYPE_12__* %97 to i64*
  store i64* %98, i64** %16, align 8
  %99 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %100 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %100, align 4
  %103 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  %104 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %107 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %106, i32 0, i32 3
  %108 = load i32, i32* %107, align 4
  %109 = load i8*, i8** %14, align 8
  %110 = load i8*, i8** %15, align 8
  %111 = load i8*, i8** %15, align 8
  %112 = load i8*, i8** %14, align 8
  %113 = ptrtoint i8* %111 to i64
  %114 = ptrtoint i8* %112 to i64
  %115 = sub i64 %113, %114
  %116 = load i8, i8* %20, align 1
  %117 = load i8, i8* %21, align 1
  %118 = load i32, i32* %18, align 4
  %119 = zext i32 %118 to i64
  %120 = inttoptr i64 %119 to i8*
  %121 = call i32 @DPRINT_ovfl(i8* %120)
  %122 = load %struct.TYPE_13__*, %struct.TYPE_13__** @current, align 8
  %123 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %126 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %125, i32 0, i32 7
  store i32 %124, i32* %126, align 8
  %127 = load i8, i8* %20, align 1
  %128 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %129 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %128, i32 0, i32 0
  store i8 %127, i8* %129, align 8
  %130 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %131 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %130, i32 0, i32 5
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %134 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %133, i32 0, i32 6
  store i32 %132, i32* %134, align 4
  %135 = load %struct.pt_regs*, %struct.pt_regs** %10, align 8
  %136 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.pt_regs*, %struct.pt_regs** %10, align 8
  %139 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = ashr i32 %140, 41
  %142 = and i32 %141, 3
  %143 = or i32 %137, %142
  %144 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %145 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %144, i32 0, i32 1
  store i32 %143, i32* %145, align 4
  %146 = load i64, i64* %11, align 8
  %147 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %148 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %147, i32 0, i32 2
  store i64 %146, i64* %148, align 8
  %149 = call i32 (...) @smp_processor_id()
  %150 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %151 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %150, i32 0, i32 5
  store i32 %149, i32* %151, align 8
  %152 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %153 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %152, i32 0, i32 4
  %154 = load i32, i32* %153, align 8
  %155 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %156 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %155, i32 0, i32 4
  store i32 %154, i32* %156, align 4
  %157 = load %struct.TYPE_13__*, %struct.TYPE_13__** @current, align 8
  %158 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %161 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %160, i32 0, i32 3
  store i32 %159, i32* %161, align 8
  %162 = load i32, i32* %18, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %182

164:                                              ; preds = %79
  %165 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %166 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %165, i32 0, i32 2
  %167 = load i64*, i64** %166, align 8
  store i64* %167, i64** %22, align 8
  store i32 0, i32* %19, align 4
  br label %168

168:                                              ; preds = %178, %164
  %169 = load i32, i32* %19, align 4
  %170 = load i32, i32* %18, align 4
  %171 = icmp ult i32 %169, %170
  br i1 %171, label %172, label %181

172:                                              ; preds = %168
  %173 = load i64*, i64** %22, align 8
  %174 = getelementptr inbounds i64, i64* %173, i32 1
  store i64* %174, i64** %22, align 8
  %175 = load i64, i64* %173, align 8
  %176 = load i64*, i64** %16, align 8
  %177 = getelementptr inbounds i64, i64* %176, i32 1
  store i64* %177, i64** %16, align 8
  store i64 %175, i64* %176, align 8
  br label %178

178:                                              ; preds = %172
  %179 = load i32, i32* %19, align 4
  %180 = add i32 %179, 1
  store i32 %180, i32* %19, align 4
  br label %168

181:                                              ; preds = %168
  br label %182

182:                                              ; preds = %181, %79
  %183 = load i64, i64* %17, align 8
  %184 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %185 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 4
  %187 = sext i32 %186 to i64
  %188 = add i64 %187, %183
  %189 = trunc i64 %188 to i32
  store i32 %189, i32* %185, align 4
  %190 = load i64, i64* %17, align 8
  %191 = load i8*, i8** %14, align 8
  %192 = getelementptr i8, i8* %191, i64 %190
  store i8* %192, i8** %14, align 8
  %193 = load i8*, i8** %15, align 8
  %194 = load i8*, i8** %14, align 8
  %195 = ptrtoint i8* %193 to i64
  %196 = ptrtoint i8* %194 to i64
  %197 = sub i64 %195, %196
  %198 = load i32, i32* @PFM_DEFAULT_MAX_ENTRY_SIZE, align 4
  %199 = sext i32 %198 to i64
  %200 = icmp slt i64 %197, %199
  br i1 %200, label %201, label %202

201:                                              ; preds = %182
  br label %219

202:                                              ; preds = %182
  %203 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %204 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %203, i32 0, i32 3
  %205 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %204, i32 0, i32 0
  %206 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %205, i32 0, i32 0
  store i32 0, i32* %206, align 8
  %207 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %208 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %207, i32 0, i32 3
  %209 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %208, i32 0, i32 0
  %210 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %209, i32 0, i32 1
  store i32 0, i32* %210, align 4
  %211 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %212 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %211, i32 0, i32 3
  %213 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %212, i32 0, i32 0
  %214 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %213, i32 0, i32 2
  store i32 0, i32* %214, align 8
  %215 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %216 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %215, i32 0, i32 3
  %217 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %216, i32 0, i32 0
  %218 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %217, i32 0, i32 3
  store i32 1, i32* %218, align 4
  store i32 0, i32* %6, align 4
  br label %274

219:                                              ; preds = %201, %78
  %220 = load i8*, i8** %15, align 8
  %221 = load i8*, i8** %14, align 8
  %222 = ptrtoint i8* %220 to i64
  %223 = ptrtoint i8* %221 to i64
  %224 = sub i64 %222, %223
  %225 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %226 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %225, i32 0, i32 3
  %227 = load i32, i32* %226, align 4
  %228 = load i8, i8* %21, align 1
  %229 = zext i8 %228 to i64
  %230 = inttoptr i64 %229 to i8*
  %231 = call i32 @DPRINT_ovfl(i8* %230)
  %232 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %233 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %232, i32 0, i32 2
  %234 = load i32, i32* %233, align 4
  %235 = add nsw i32 %234, 1
  store i32 %235, i32* %233, align 4
  %236 = load i8, i8* %21, align 1
  %237 = zext i8 %236 to i32
  %238 = icmp eq i32 %237, 0
  br i1 %238, label %239, label %256

239:                                              ; preds = %219
  %240 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %241 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %240, i32 0, i32 3
  %242 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %241, i32 0, i32 0
  %243 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %242, i32 0, i32 0
  store i32 0, i32* %243, align 8
  %244 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %245 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %244, i32 0, i32 3
  %246 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %245, i32 0, i32 0
  %247 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %246, i32 0, i32 1
  store i32 0, i32* %247, align 4
  %248 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %249 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %248, i32 0, i32 3
  %250 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %249, i32 0, i32 0
  %251 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %250, i32 0, i32 2
  store i32 1, i32* %251, align 8
  %252 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %253 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %252, i32 0, i32 3
  %254 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %253, i32 0, i32 0
  %255 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %254, i32 0, i32 3
  store i32 0, i32* %255, align 4
  br label %273

256:                                              ; preds = %219
  %257 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %258 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %257, i32 0, i32 3
  %259 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %258, i32 0, i32 0
  %260 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %259, i32 0, i32 0
  store i32 1, i32* %260, align 8
  %261 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %262 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %261, i32 0, i32 3
  %263 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %262, i32 0, i32 0
  %264 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %263, i32 0, i32 1
  store i32 1, i32* %264, align 4
  %265 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %266 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %265, i32 0, i32 3
  %267 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %266, i32 0, i32 0
  %268 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %267, i32 0, i32 2
  store i32 1, i32* %268, align 8
  %269 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %270 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %269, i32 0, i32 3
  %271 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %270, i32 0, i32 0
  %272 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %271, i32 0, i32 3
  store i32 0, i32* %272, align 4
  br label %273

273:                                              ; preds = %256, %239
  store i32 -1, i32* %6, align 4
  br label %274

274:                                              ; preds = %273, %202, %39
  %275 = load i32, i32* %6, align 4
  ret i32 %275
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @DPRINT(i8*) #1

declare dso_local i32 @hweight64(i32) #1

declare dso_local i32 @prefetch(i64*) #1

declare dso_local i32 @DPRINT_ovfl(i8*) #1

declare dso_local i32 @smp_processor_id(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
