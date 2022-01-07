; ModuleID = '/home/carl/AnghaBench/htop/extr_CPUMeter.c_CPUMeter_display.c'
source_filename = "/home/carl/AnghaBench/htop/extr_CPUMeter.c_CPUMeter_display.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i64*, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }

@CRT_colors = common dso_local global i32* null, align 8
@METER_TEXT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [7 x i8] c"absent\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"%5.1f%% \00", align 1
@CPU_METER_NORMAL = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [2 x i8] c":\00", align 1
@CPU_NORMAL = common dso_local global i64 0, align 8
@CPU_METER_KERNEL = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [4 x i8] c"sy:\00", align 1
@CPU_KERNEL = common dso_local global i64 0, align 8
@CPU_METER_NICE = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [4 x i8] c"ni:\00", align 1
@CPU_NICE_TEXT = common dso_local global i64 0, align 8
@CPU_METER_IRQ = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [4 x i8] c"hi:\00", align 1
@CPU_IRQ = common dso_local global i64 0, align 8
@CPU_METER_SOFTIRQ = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [4 x i8] c"si:\00", align 1
@CPU_SOFTIRQ = common dso_local global i64 0, align 8
@CPU_METER_STEAL = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [4 x i8] c"st:\00", align 1
@CPU_STEAL = common dso_local global i64 0, align 8
@CPU_METER_GUEST = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [4 x i8] c"gu:\00", align 1
@CPU_GUEST = common dso_local global i64 0, align 8
@CPU_METER_IOWAIT = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [4 x i8] c"wa:\00", align 1
@CPU_IOWAIT = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [5 x i8] c"sys:\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"low:\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"vir:\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*)* @CPUMeter_display to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CPUMeter_display(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca [50 x i8], align 16
  %6 = alloca %struct.TYPE_6__*, align 8
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load i32*, i32** %3, align 8
  %8 = bitcast i32* %7 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %8, %struct.TYPE_6__** %6, align 8
  %9 = load i32*, i32** %4, align 8
  %10 = call i32 @RichString_prune(i32* %9)
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 2
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp sgt i64 %13, %18
  br i1 %19, label %20, label %27

20:                                               ; preds = %2
  %21 = load i32*, i32** %4, align 8
  %22 = load i32*, i32** @CRT_colors, align 8
  %23 = load i64, i64* @METER_TEXT, align 8
  %24 = getelementptr inbounds i32, i32* %22, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @RichString_append(i32* %21, i32 %25, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  br label %296

27:                                               ; preds = %2
  %28 = getelementptr inbounds [50 x i8], [50 x i8]* %5, i64 0, i64 0
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 1
  %31 = load i64*, i64** %30, align 8
  %32 = load i64, i64* @CPU_METER_NORMAL, align 8
  %33 = getelementptr inbounds i64, i64* %31, i64 %32
  %34 = load i64, i64* %33, align 8
  %35 = call i32 @xSnprintf(i8* %28, i32 50, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i64 %34)
  %36 = load i32*, i32** %4, align 8
  %37 = load i32*, i32** @CRT_colors, align 8
  %38 = load i64, i64* @METER_TEXT, align 8
  %39 = getelementptr inbounds i32, i32* %37, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @RichString_append(i32* %36, i32 %40, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %42 = load i32*, i32** %4, align 8
  %43 = load i32*, i32** @CRT_colors, align 8
  %44 = load i64, i64* @CPU_NORMAL, align 8
  %45 = getelementptr inbounds i32, i32* %43, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = getelementptr inbounds [50 x i8], [50 x i8]* %5, i64 0, i64 0
  %48 = call i32 @RichString_append(i32* %42, i32 %46, i8* %47)
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 2
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 1
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %223

57:                                               ; preds = %27
  %58 = getelementptr inbounds [50 x i8], [50 x i8]* %5, i64 0, i64 0
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 1
  %61 = load i64*, i64** %60, align 8
  %62 = load i64, i64* @CPU_METER_KERNEL, align 8
  %63 = getelementptr inbounds i64, i64* %61, i64 %62
  %64 = load i64, i64* %63, align 8
  %65 = call i32 @xSnprintf(i8* %58, i32 50, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i64 %64)
  %66 = load i32*, i32** %4, align 8
  %67 = load i32*, i32** @CRT_colors, align 8
  %68 = load i64, i64* @METER_TEXT, align 8
  %69 = getelementptr inbounds i32, i32* %67, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @RichString_append(i32* %66, i32 %70, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %72 = load i32*, i32** %4, align 8
  %73 = load i32*, i32** @CRT_colors, align 8
  %74 = load i64, i64* @CPU_KERNEL, align 8
  %75 = getelementptr inbounds i32, i32* %73, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = getelementptr inbounds [50 x i8], [50 x i8]* %5, i64 0, i64 0
  %78 = call i32 @RichString_append(i32* %72, i32 %76, i8* %77)
  %79 = getelementptr inbounds [50 x i8], [50 x i8]* %5, i64 0, i64 0
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 1
  %82 = load i64*, i64** %81, align 8
  %83 = load i64, i64* @CPU_METER_NICE, align 8
  %84 = getelementptr inbounds i64, i64* %82, i64 %83
  %85 = load i64, i64* %84, align 8
  %86 = call i32 @xSnprintf(i8* %79, i32 50, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i64 %85)
  %87 = load i32*, i32** %4, align 8
  %88 = load i32*, i32** @CRT_colors, align 8
  %89 = load i64, i64* @METER_TEXT, align 8
  %90 = getelementptr inbounds i32, i32* %88, i64 %89
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @RichString_append(i32* %87, i32 %91, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  %93 = load i32*, i32** %4, align 8
  %94 = load i32*, i32** @CRT_colors, align 8
  %95 = load i64, i64* @CPU_NICE_TEXT, align 8
  %96 = getelementptr inbounds i32, i32* %94, i64 %95
  %97 = load i32, i32* %96, align 4
  %98 = getelementptr inbounds [50 x i8], [50 x i8]* %5, i64 0, i64 0
  %99 = call i32 @RichString_append(i32* %93, i32 %97, i8* %98)
  %100 = getelementptr inbounds [50 x i8], [50 x i8]* %5, i64 0, i64 0
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 1
  %103 = load i64*, i64** %102, align 8
  %104 = load i64, i64* @CPU_METER_IRQ, align 8
  %105 = getelementptr inbounds i64, i64* %103, i64 %104
  %106 = load i64, i64* %105, align 8
  %107 = call i32 @xSnprintf(i8* %100, i32 50, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i64 %106)
  %108 = load i32*, i32** %4, align 8
  %109 = load i32*, i32** @CRT_colors, align 8
  %110 = load i64, i64* @METER_TEXT, align 8
  %111 = getelementptr inbounds i32, i32* %109, i64 %110
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @RichString_append(i32* %108, i32 %112, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %114 = load i32*, i32** %4, align 8
  %115 = load i32*, i32** @CRT_colors, align 8
  %116 = load i64, i64* @CPU_IRQ, align 8
  %117 = getelementptr inbounds i32, i32* %115, i64 %116
  %118 = load i32, i32* %117, align 4
  %119 = getelementptr inbounds [50 x i8], [50 x i8]* %5, i64 0, i64 0
  %120 = call i32 @RichString_append(i32* %114, i32 %118, i8* %119)
  %121 = getelementptr inbounds [50 x i8], [50 x i8]* %5, i64 0, i64 0
  %122 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i32 0, i32 1
  %124 = load i64*, i64** %123, align 8
  %125 = load i64, i64* @CPU_METER_SOFTIRQ, align 8
  %126 = getelementptr inbounds i64, i64* %124, i64 %125
  %127 = load i64, i64* %126, align 8
  %128 = call i32 @xSnprintf(i8* %121, i32 50, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i64 %127)
  %129 = load i32*, i32** %4, align 8
  %130 = load i32*, i32** @CRT_colors, align 8
  %131 = load i64, i64* @METER_TEXT, align 8
  %132 = getelementptr inbounds i32, i32* %130, i64 %131
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @RichString_append(i32* %129, i32 %133, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0))
  %135 = load i32*, i32** %4, align 8
  %136 = load i32*, i32** @CRT_colors, align 8
  %137 = load i64, i64* @CPU_SOFTIRQ, align 8
  %138 = getelementptr inbounds i32, i32* %136, i64 %137
  %139 = load i32, i32* %138, align 4
  %140 = getelementptr inbounds [50 x i8], [50 x i8]* %5, i64 0, i64 0
  %141 = call i32 @RichString_append(i32* %135, i32 %139, i8* %140)
  %142 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %143 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %142, i32 0, i32 1
  %144 = load i64*, i64** %143, align 8
  %145 = load i64, i64* @CPU_METER_STEAL, align 8
  %146 = getelementptr inbounds i64, i64* %144, i64 %145
  %147 = load i64, i64* %146, align 8
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %171

149:                                              ; preds = %57
  %150 = getelementptr inbounds [50 x i8], [50 x i8]* %5, i64 0, i64 0
  %151 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %152 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %151, i32 0, i32 1
  %153 = load i64*, i64** %152, align 8
  %154 = load i64, i64* @CPU_METER_STEAL, align 8
  %155 = getelementptr inbounds i64, i64* %153, i64 %154
  %156 = load i64, i64* %155, align 8
  %157 = call i32 @xSnprintf(i8* %150, i32 50, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i64 %156)
  %158 = load i32*, i32** %4, align 8
  %159 = load i32*, i32** @CRT_colors, align 8
  %160 = load i64, i64* @METER_TEXT, align 8
  %161 = getelementptr inbounds i32, i32* %159, i64 %160
  %162 = load i32, i32* %161, align 4
  %163 = call i32 @RichString_append(i32* %158, i32 %162, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0))
  %164 = load i32*, i32** %4, align 8
  %165 = load i32*, i32** @CRT_colors, align 8
  %166 = load i64, i64* @CPU_STEAL, align 8
  %167 = getelementptr inbounds i32, i32* %165, i64 %166
  %168 = load i32, i32* %167, align 4
  %169 = getelementptr inbounds [50 x i8], [50 x i8]* %5, i64 0, i64 0
  %170 = call i32 @RichString_append(i32* %164, i32 %168, i8* %169)
  br label %171

171:                                              ; preds = %149, %57
  %172 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %173 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %172, i32 0, i32 1
  %174 = load i64*, i64** %173, align 8
  %175 = load i64, i64* @CPU_METER_GUEST, align 8
  %176 = getelementptr inbounds i64, i64* %174, i64 %175
  %177 = load i64, i64* %176, align 8
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %179, label %201

179:                                              ; preds = %171
  %180 = getelementptr inbounds [50 x i8], [50 x i8]* %5, i64 0, i64 0
  %181 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %182 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %181, i32 0, i32 1
  %183 = load i64*, i64** %182, align 8
  %184 = load i64, i64* @CPU_METER_GUEST, align 8
  %185 = getelementptr inbounds i64, i64* %183, i64 %184
  %186 = load i64, i64* %185, align 8
  %187 = call i32 @xSnprintf(i8* %180, i32 50, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i64 %186)
  %188 = load i32*, i32** %4, align 8
  %189 = load i32*, i32** @CRT_colors, align 8
  %190 = load i64, i64* @METER_TEXT, align 8
  %191 = getelementptr inbounds i32, i32* %189, i64 %190
  %192 = load i32, i32* %191, align 4
  %193 = call i32 @RichString_append(i32* %188, i32 %192, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0))
  %194 = load i32*, i32** %4, align 8
  %195 = load i32*, i32** @CRT_colors, align 8
  %196 = load i64, i64* @CPU_GUEST, align 8
  %197 = getelementptr inbounds i32, i32* %195, i64 %196
  %198 = load i32, i32* %197, align 4
  %199 = getelementptr inbounds [50 x i8], [50 x i8]* %5, i64 0, i64 0
  %200 = call i32 @RichString_append(i32* %194, i32 %198, i8* %199)
  br label %201

201:                                              ; preds = %179, %171
  %202 = getelementptr inbounds [50 x i8], [50 x i8]* %5, i64 0, i64 0
  %203 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %204 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %203, i32 0, i32 1
  %205 = load i64*, i64** %204, align 8
  %206 = load i64, i64* @CPU_METER_IOWAIT, align 8
  %207 = getelementptr inbounds i64, i64* %205, i64 %206
  %208 = load i64, i64* %207, align 8
  %209 = call i32 @xSnprintf(i8* %202, i32 50, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i64 %208)
  %210 = load i32*, i32** %4, align 8
  %211 = load i32*, i32** @CRT_colors, align 8
  %212 = load i64, i64* @METER_TEXT, align 8
  %213 = getelementptr inbounds i32, i32* %211, i64 %212
  %214 = load i32, i32* %213, align 4
  %215 = call i32 @RichString_append(i32* %210, i32 %214, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0))
  %216 = load i32*, i32** %4, align 8
  %217 = load i32*, i32** @CRT_colors, align 8
  %218 = load i64, i64* @CPU_IOWAIT, align 8
  %219 = getelementptr inbounds i32, i32* %217, i64 %218
  %220 = load i32, i32* %219, align 4
  %221 = getelementptr inbounds [50 x i8], [50 x i8]* %5, i64 0, i64 0
  %222 = call i32 @RichString_append(i32* %216, i32 %220, i8* %221)
  br label %296

223:                                              ; preds = %27
  %224 = getelementptr inbounds [50 x i8], [50 x i8]* %5, i64 0, i64 0
  %225 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %226 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %225, i32 0, i32 1
  %227 = load i64*, i64** %226, align 8
  %228 = load i64, i64* @CPU_METER_KERNEL, align 8
  %229 = getelementptr inbounds i64, i64* %227, i64 %228
  %230 = load i64, i64* %229, align 8
  %231 = call i32 @xSnprintf(i8* %224, i32 50, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i64 %230)
  %232 = load i32*, i32** %4, align 8
  %233 = load i32*, i32** @CRT_colors, align 8
  %234 = load i64, i64* @METER_TEXT, align 8
  %235 = getelementptr inbounds i32, i32* %233, i64 %234
  %236 = load i32, i32* %235, align 4
  %237 = call i32 @RichString_append(i32* %232, i32 %236, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0))
  %238 = load i32*, i32** %4, align 8
  %239 = load i32*, i32** @CRT_colors, align 8
  %240 = load i64, i64* @CPU_KERNEL, align 8
  %241 = getelementptr inbounds i32, i32* %239, i64 %240
  %242 = load i32, i32* %241, align 4
  %243 = getelementptr inbounds [50 x i8], [50 x i8]* %5, i64 0, i64 0
  %244 = call i32 @RichString_append(i32* %238, i32 %242, i8* %243)
  %245 = getelementptr inbounds [50 x i8], [50 x i8]* %5, i64 0, i64 0
  %246 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %247 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %246, i32 0, i32 1
  %248 = load i64*, i64** %247, align 8
  %249 = load i64, i64* @CPU_METER_NICE, align 8
  %250 = getelementptr inbounds i64, i64* %248, i64 %249
  %251 = load i64, i64* %250, align 8
  %252 = call i32 @xSnprintf(i8* %245, i32 50, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i64 %251)
  %253 = load i32*, i32** %4, align 8
  %254 = load i32*, i32** @CRT_colors, align 8
  %255 = load i64, i64* @METER_TEXT, align 8
  %256 = getelementptr inbounds i32, i32* %254, i64 %255
  %257 = load i32, i32* %256, align 4
  %258 = call i32 @RichString_append(i32* %253, i32 %257, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0))
  %259 = load i32*, i32** %4, align 8
  %260 = load i32*, i32** @CRT_colors, align 8
  %261 = load i64, i64* @CPU_NICE_TEXT, align 8
  %262 = getelementptr inbounds i32, i32* %260, i64 %261
  %263 = load i32, i32* %262, align 4
  %264 = getelementptr inbounds [50 x i8], [50 x i8]* %5, i64 0, i64 0
  %265 = call i32 @RichString_append(i32* %259, i32 %263, i8* %264)
  %266 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %267 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %266, i32 0, i32 1
  %268 = load i64*, i64** %267, align 8
  %269 = load i64, i64* @CPU_METER_IRQ, align 8
  %270 = getelementptr inbounds i64, i64* %268, i64 %269
  %271 = load i64, i64* %270, align 8
  %272 = icmp ne i64 %271, 0
  br i1 %272, label %273, label %295

273:                                              ; preds = %223
  %274 = getelementptr inbounds [50 x i8], [50 x i8]* %5, i64 0, i64 0
  %275 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %276 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %275, i32 0, i32 1
  %277 = load i64*, i64** %276, align 8
  %278 = load i64, i64* @CPU_METER_IRQ, align 8
  %279 = getelementptr inbounds i64, i64* %277, i64 %278
  %280 = load i64, i64* %279, align 8
  %281 = call i32 @xSnprintf(i8* %274, i32 50, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i64 %280)
  %282 = load i32*, i32** %4, align 8
  %283 = load i32*, i32** @CRT_colors, align 8
  %284 = load i64, i64* @METER_TEXT, align 8
  %285 = getelementptr inbounds i32, i32* %283, i64 %284
  %286 = load i32, i32* %285, align 4
  %287 = call i32 @RichString_append(i32* %282, i32 %286, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0))
  %288 = load i32*, i32** %4, align 8
  %289 = load i32*, i32** @CRT_colors, align 8
  %290 = load i64, i64* @CPU_GUEST, align 8
  %291 = getelementptr inbounds i32, i32* %289, i64 %290
  %292 = load i32, i32* %291, align 4
  %293 = getelementptr inbounds [50 x i8], [50 x i8]* %5, i64 0, i64 0
  %294 = call i32 @RichString_append(i32* %288, i32 %292, i8* %293)
  br label %295

295:                                              ; preds = %273, %223
  br label %296

296:                                              ; preds = %20, %295, %201
  ret void
}

declare dso_local i32 @RichString_prune(i32*) #1

declare dso_local i32 @RichString_append(i32*, i32, i8*) #1

declare dso_local i32 @xSnprintf(i8*, i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
