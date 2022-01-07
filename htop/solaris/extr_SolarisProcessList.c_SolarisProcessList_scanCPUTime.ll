; ModuleID = '/home/carl/AnghaBench/htop/solaris/extr_SolarisProcessList.c_SolarisProcessList_scanCPUTime.c'
source_filename = "/home/carl/AnghaBench/htop/solaris/extr_SolarisProcessList.c_SolarisProcessList_scanCPUTime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_12__*, i32* }
%struct.TYPE_12__ = type { double, double, double, double, double, double, double, double, double, double }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { double }

@.str = private unnamed_addr constant [4 x i8] c"cpu\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"sys\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"cpu_nsec_idle\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"cpu_nsec_intr\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"cpu_nsec_kernel\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"cpu_nsec_user\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_11__*)* @SolarisProcessList_scanCPUTime to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @SolarisProcessList_scanCPUTime(%struct.TYPE_11__* %0) #0 {
  %2 = alloca %struct.TYPE_11__*, align 8
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca %struct.TYPE_9__*, align 8
  %10 = alloca %struct.TYPE_9__*, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_12__*, align 8
  %19 = alloca %struct.TYPE_12__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %2, align 8
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %21 = bitcast %struct.TYPE_11__* %20 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %21, %struct.TYPE_10__** %3, align 8
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %4, align 4
  store i32* null, i32** %5, align 8
  store i32 0, i32* %6, align 4
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %7, align 8
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %8, align 8
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %9, align 8
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %10, align 8
  store double 0.000000e+00, double* %11, align 8
  store double 0.000000e+00, double* %12, align 8
  store double 0.000000e+00, double* %13, align 8
  store double 0.000000e+00, double* %14, align 8
  store double 0.000000e+00, double* %15, align 8
  store i32 0, i32* %16, align 4
  %25 = load i32, i32* %4, align 4
  %26 = icmp sgt i32 %25, 0
  %27 = zext i1 %26 to i32
  %28 = call i32 @assert(i32 %27)
  %29 = load i32, i32* %4, align 4
  %30 = icmp sgt i32 %29, 1
  br i1 %30, label %31, label %34

31:                                               ; preds = %1
  %32 = load i32, i32* %16, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %16, align 4
  br label %34

34:                                               ; preds = %31, %1
  store i32 0, i32* %17, align 4
  br label %35

35:                                               ; preds = %241, %34
  %36 = load i32, i32* %17, align 4
  %37 = load i32, i32* %4, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %244

39:                                               ; preds = %35
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 1
  %42 = load i32*, i32** %41, align 8
  %43 = icmp ne i32* %42, null
  br i1 %43, label %44, label %50

44:                                               ; preds = %39
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  %48 = load i32, i32* %17, align 4
  %49 = call i32* @kstat_lookup(i32* %47, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %48, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  store i32* %49, i32** %5, align 8
  br label %50

50:                                               ; preds = %44, %39
  %51 = load i32*, i32** %5, align 8
  %52 = icmp ne i32* %51, null
  br i1 %52, label %53, label %59

53:                                               ; preds = %50
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 1
  %56 = load i32*, i32** %55, align 8
  %57 = load i32*, i32** %5, align 8
  %58 = call i32 @kstat_read(i32* %56, i32* %57, i32* null)
  store i32 %58, i32* %6, align 4
  br label %59

59:                                               ; preds = %53, %50
  %60 = load i32, i32* %6, align 4
  %61 = icmp ne i32 %60, -1
  br i1 %61, label %62, label %71

62:                                               ; preds = %59
  %63 = load i32*, i32** %5, align 8
  %64 = call %struct.TYPE_9__* @kstat_data_lookup(i32* %63, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  store %struct.TYPE_9__* %64, %struct.TYPE_9__** %7, align 8
  %65 = load i32*, i32** %5, align 8
  %66 = call %struct.TYPE_9__* @kstat_data_lookup(i32* %65, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  store %struct.TYPE_9__* %66, %struct.TYPE_9__** %8, align 8
  %67 = load i32*, i32** %5, align 8
  %68 = call %struct.TYPE_9__* @kstat_data_lookup(i32* %67, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0))
  store %struct.TYPE_9__* %68, %struct.TYPE_9__** %9, align 8
  %69 = load i32*, i32** %5, align 8
  %70 = call %struct.TYPE_9__* @kstat_data_lookup(i32* %69, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0))
  store %struct.TYPE_9__* %70, %struct.TYPE_9__** %10, align 8
  br label %71

71:                                               ; preds = %62, %59
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %73 = icmp ne %struct.TYPE_9__* %72, null
  br i1 %73, label %74, label %83

74:                                               ; preds = %71
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %76 = icmp ne %struct.TYPE_9__* %75, null
  br i1 %76, label %77, label %83

77:                                               ; preds = %74
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %79 = icmp ne %struct.TYPE_9__* %78, null
  br i1 %79, label %80, label %83

80:                                               ; preds = %77
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %82 = icmp ne %struct.TYPE_9__* %81, null
  br label %83

83:                                               ; preds = %80, %77, %74, %71
  %84 = phi i1 [ false, %77 ], [ false, %74 ], [ false, %71 ], [ %82, %80 ]
  %85 = zext i1 %84 to i32
  %86 = call i32 @assert(i32 %85)
  %87 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 0
  %89 = load %struct.TYPE_12__*, %struct.TYPE_12__** %88, align 8
  %90 = load i32, i32* %17, align 4
  %91 = load i32, i32* %16, align 4
  %92 = add nsw i32 %90, %91
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %89, i64 %93
  store %struct.TYPE_12__* %94, %struct.TYPE_12__** %18, align 8
  %95 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 0
  %98 = load double, double* %97, align 8
  %99 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  %100 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %99, i32 0, i32 0
  %101 = load double, double* %100, align 8
  %102 = fsub double %98, %101
  %103 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %104 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i32 0, i32 0
  %106 = load double, double* %105, align 8
  %107 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  %108 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %107, i32 0, i32 1
  %109 = load double, double* %108, align 8
  %110 = fsub double %106, %109
  %111 = fadd double %102, %110
  %112 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %113 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %113, i32 0, i32 0
  %115 = load double, double* %114, align 8
  %116 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  %117 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %116, i32 0, i32 2
  %118 = load double, double* %117, align 8
  %119 = fsub double %115, %118
  %120 = fadd double %111, %119
  %121 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %122 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %122, i32 0, i32 0
  %124 = load double, double* %123, align 8
  %125 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  %126 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %125, i32 0, i32 3
  %127 = load double, double* %126, align 8
  %128 = fsub double %124, %127
  %129 = fadd double %120, %128
  store double %129, double* %15, align 8
  %130 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %131 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %131, i32 0, i32 0
  %133 = load double, double* %132, align 8
  %134 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  %135 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %134, i32 0, i32 3
  %136 = load double, double* %135, align 8
  %137 = fsub double %133, %136
  %138 = load double, double* %15, align 8
  %139 = fdiv double %137, %138
  %140 = fmul double %139, 1.000000e+02
  %141 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  %142 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %141, i32 0, i32 4
  store double %140, double* %142, align 8
  %143 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  %144 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %143, i32 0, i32 5
  store double 0.000000e+00, double* %144, align 8
  %145 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %146 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %146, i32 0, i32 0
  %148 = load double, double* %147, align 8
  %149 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  %150 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %149, i32 0, i32 2
  %151 = load double, double* %150, align 8
  %152 = fsub double %148, %151
  %153 = load double, double* %15, align 8
  %154 = fdiv double %152, %153
  %155 = fmul double %154, 1.000000e+02
  %156 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  %157 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %156, i32 0, i32 6
  store double %155, double* %157, align 8
  %158 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %159 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %159, i32 0, i32 0
  %161 = load double, double* %160, align 8
  %162 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  %163 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %162, i32 0, i32 1
  %164 = load double, double* %163, align 8
  %165 = fsub double %161, %164
  %166 = load double, double* %15, align 8
  %167 = fdiv double %165, %166
  %168 = fmul double %167, 1.000000e+02
  %169 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  %170 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %169, i32 0, i32 7
  store double %168, double* %170, align 8
  %171 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  %172 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %171, i32 0, i32 6
  %173 = load double, double* %172, align 8
  %174 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  %175 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %174, i32 0, i32 7
  %176 = load double, double* %175, align 8
  %177 = fadd double %173, %176
  %178 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  %179 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %178, i32 0, i32 8
  store double %177, double* %179, align 8
  %180 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %181 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %180, i32 0, i32 0
  %182 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %181, i32 0, i32 0
  %183 = load double, double* %182, align 8
  %184 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  %185 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %184, i32 0, i32 0
  %186 = load double, double* %185, align 8
  %187 = fsub double %183, %186
  %188 = load double, double* %15, align 8
  %189 = fdiv double %187, %188
  %190 = fmul double %189, 1.000000e+02
  %191 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  %192 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %191, i32 0, i32 9
  store double %190, double* %192, align 8
  %193 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %194 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %193, i32 0, i32 0
  %195 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %194, i32 0, i32 0
  %196 = load double, double* %195, align 8
  %197 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  %198 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %197, i32 0, i32 3
  store double %196, double* %198, align 8
  %199 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %200 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %199, i32 0, i32 0
  %201 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %200, i32 0, i32 0
  %202 = load double, double* %201, align 8
  %203 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  %204 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %203, i32 0, i32 2
  store double %202, double* %204, align 8
  %205 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %206 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %205, i32 0, i32 0
  %207 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %206, i32 0, i32 0
  %208 = load double, double* %207, align 8
  %209 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  %210 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %209, i32 0, i32 1
  store double %208, double* %210, align 8
  %211 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %212 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %211, i32 0, i32 0
  %213 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %212, i32 0, i32 0
  %214 = load double, double* %213, align 8
  %215 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  %216 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %215, i32 0, i32 0
  store double %214, double* %216, align 8
  %217 = load i32, i32* %4, align 4
  %218 = icmp sgt i32 %217, 1
  br i1 %218, label %219, label %240

219:                                              ; preds = %83
  %220 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  %221 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %220, i32 0, i32 4
  %222 = load double, double* %221, align 8
  %223 = load double, double* %14, align 8
  %224 = fadd double %223, %222
  store double %224, double* %14, align 8
  %225 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  %226 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %225, i32 0, i32 6
  %227 = load double, double* %226, align 8
  %228 = load double, double* %13, align 8
  %229 = fadd double %228, %227
  store double %229, double* %13, align 8
  %230 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  %231 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %230, i32 0, i32 7
  %232 = load double, double* %231, align 8
  %233 = load double, double* %12, align 8
  %234 = fadd double %233, %232
  store double %234, double* %12, align 8
  %235 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  %236 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %235, i32 0, i32 9
  %237 = load double, double* %236, align 8
  %238 = load double, double* %11, align 8
  %239 = fadd double %238, %237
  store double %239, double* %11, align 8
  br label %240

240:                                              ; preds = %219, %83
  br label %241

241:                                              ; preds = %240
  %242 = load i32, i32* %17, align 4
  %243 = add nsw i32 %242, 1
  store i32 %243, i32* %17, align 4
  br label %35

244:                                              ; preds = %35
  %245 = load i32, i32* %4, align 4
  %246 = icmp sgt i32 %245, 1
  br i1 %246, label %247, label %287

247:                                              ; preds = %244
  %248 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %249 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %248, i32 0, i32 0
  %250 = load %struct.TYPE_12__*, %struct.TYPE_12__** %249, align 8
  %251 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %250, i64 0
  store %struct.TYPE_12__* %251, %struct.TYPE_12__** %19, align 8
  %252 = load double, double* %14, align 8
  %253 = load i32, i32* %4, align 4
  %254 = sitofp i32 %253 to double
  %255 = fdiv double %252, %254
  %256 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %257 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %256, i32 0, i32 4
  store double %255, double* %257, align 8
  %258 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %259 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %258, i32 0, i32 5
  store double 0.000000e+00, double* %259, align 8
  %260 = load double, double* %13, align 8
  %261 = load i32, i32* %4, align 4
  %262 = sitofp i32 %261 to double
  %263 = fdiv double %260, %262
  %264 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %265 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %264, i32 0, i32 6
  store double %263, double* %265, align 8
  %266 = load double, double* %12, align 8
  %267 = load i32, i32* %4, align 4
  %268 = sitofp i32 %267 to double
  %269 = fdiv double %266, %268
  %270 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %271 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %270, i32 0, i32 7
  store double %269, double* %271, align 8
  %272 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %273 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %272, i32 0, i32 6
  %274 = load double, double* %273, align 8
  %275 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %276 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %275, i32 0, i32 7
  %277 = load double, double* %276, align 8
  %278 = fadd double %274, %277
  %279 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %280 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %279, i32 0, i32 8
  store double %278, double* %280, align 8
  %281 = load double, double* %11, align 8
  %282 = load i32, i32* %4, align 4
  %283 = sitofp i32 %282 to double
  %284 = fdiv double %281, %283
  %285 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %286 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %285, i32 0, i32 9
  store double %284, double* %286, align 8
  br label %287

287:                                              ; preds = %247, %244
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32* @kstat_lookup(i32*, i8*, i32, i8*) #1

declare dso_local i32 @kstat_read(i32*, i32*, i32*) #1

declare dso_local %struct.TYPE_9__* @kstat_data_lookup(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
