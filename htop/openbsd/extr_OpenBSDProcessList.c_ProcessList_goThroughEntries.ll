; ModuleID = '/home/carl/AnghaBench/htop/openbsd/extr_OpenBSDProcessList.c_ProcessList_goThroughEntries.c'
source_filename = "/home/carl/AnghaBench/htop/openbsd/extr_OpenBSDProcessList.c_ProcessList_goThroughEntries.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { double, i32, i32, i32, i64, i32, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32, i32, i64 }
%struct.TYPE_16__ = type { i32 }
%struct.kinfo_proc = type { i32, double, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_15__ = type { i32, i32, double, double, i32, i8, i32, i64, i64, i32, i32, i32, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.tm = type { i32 }
%struct.timeval = type { i32 }

@KERN_PROC_ALL = common dso_local global i32 0, align 4
@OpenBSDProcess_new = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [4 x i8] c"%R \00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%b%d \00", align 1
@PAGE_SIZE_KB = common dso_local global double 0.000000e+00, align 8
@PZERO = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ProcessList_goThroughEntries(%struct.TYPE_14__* %0) #0 {
  %2 = alloca %struct.TYPE_14__*, align 8
  %3 = alloca %struct.TYPE_16__*, align 8
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.kinfo_proc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_15__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.tm, align 4
  %12 = alloca %struct.timeval, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.kinfo_proc*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %2, align 8
  %16 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %17 = bitcast %struct.TYPE_14__* %16 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %17, %struct.TYPE_16__** %3, align 8
  %18 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %18, i32 0, i32 6
  %20 = load %struct.TYPE_13__*, %struct.TYPE_13__** %19, align 8
  store %struct.TYPE_13__* %20, %struct.TYPE_13__** %4, align 8
  %21 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* %5, align 4
  %24 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %6, align 4
  store i32 0, i32* %13, align 4
  %27 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %28 = call i32 @OpenBSDProcessList_scanMemoryInfo(%struct.TYPE_14__* %27)
  %29 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @KERN_PROC_ALL, align 4
  %33 = call %struct.kinfo_proc* @kvm_getprocs(i32 %31, i32 %32, i32 0, i32 80, i32* %13)
  store %struct.kinfo_proc* %33, %struct.kinfo_proc** %15, align 8
  %34 = call i32 @gettimeofday(%struct.timeval* %12, i32* null)
  store i32 0, i32* %14, align 4
  br label %35

35:                                               ; preds = %289, %1
  %36 = load i32, i32* %14, align 4
  %37 = load i32, i32* %13, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %292

39:                                               ; preds = %35
  %40 = load %struct.kinfo_proc*, %struct.kinfo_proc** %15, align 8
  %41 = load i32, i32* %14, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %40, i64 %42
  store %struct.kinfo_proc* %43, %struct.kinfo_proc** %7, align 8
  store i32 0, i32* %8, align 4
  %44 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %45 = load %struct.kinfo_proc*, %struct.kinfo_proc** %7, align 8
  %46 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %45, i32 0, i32 12
  %47 = load i32, i32* %46, align 4
  %48 = load i64, i64* @OpenBSDProcess_new, align 8
  %49 = trunc i64 %48 to i32
  %50 = call %struct.TYPE_15__* @ProcessList_getProcess(%struct.TYPE_14__* %44, i32 %47, i32* %8, i32 %49)
  store %struct.TYPE_15__* %50, %struct.TYPE_15__** %9, align 8
  %51 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %52 = bitcast %struct.TYPE_15__* %51 to i32*
  store i32* %52, i32** %10, align 8
  %53 = load i32, i32* %5, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %39
  %56 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %57 = call i64 @Process_isKernelThread(%struct.TYPE_15__* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %68, label %59

59:                                               ; preds = %55, %39
  %60 = load i32, i32* %6, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %59
  %63 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %64 = call i64 @Process_isUserlandThread(%struct.TYPE_15__* %63)
  %65 = icmp ne i64 %64, 0
  br label %66

66:                                               ; preds = %62, %59
  %67 = phi i1 [ false, %59 ], [ %65, %62 ]
  br label %68

68:                                               ; preds = %66, %55
  %69 = phi i1 [ true, %55 ], [ %67, %66 ]
  %70 = xor i1 %69, true
  %71 = zext i1 %70 to i32
  %72 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %73 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %72, i32 0, i32 0
  store i32 %71, i32* %73, align 8
  %74 = load i32, i32* %8, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %154, label %76

76:                                               ; preds = %68
  %77 = load %struct.kinfo_proc*, %struct.kinfo_proc** %7, align 8
  %78 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %77, i32 0, i32 14
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %81 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %80, i32 0, i32 21
  store i32 %79, i32* %81, align 8
  %82 = load %struct.kinfo_proc*, %struct.kinfo_proc** %7, align 8
  %83 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %82, i32 0, i32 13
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %86 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %85, i32 0, i32 20
  store i32 %84, i32* %86, align 4
  %87 = load %struct.kinfo_proc*, %struct.kinfo_proc** %7, align 8
  %88 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %87, i32 0, i32 12
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %91 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %90, i32 0, i32 19
  store i32 %89, i32* %91, align 8
  %92 = load %struct.kinfo_proc*, %struct.kinfo_proc** %7, align 8
  %93 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %92, i32 0, i32 11
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %96 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %95, i32 0, i32 18
  store i32 %94, i32* %96, align 4
  %97 = load %struct.kinfo_proc*, %struct.kinfo_proc** %7, align 8
  %98 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %97, i32 0, i32 10
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %101 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %100, i32 0, i32 17
  store i32 %99, i32* %101, align 8
  %102 = load %struct.kinfo_proc*, %struct.kinfo_proc** %7, align 8
  %103 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %102, i32 0, i32 9
  %104 = load i32, i32* %103, align 8
  %105 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %106 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %105, i32 0, i32 16
  store i32 %104, i32* %106, align 4
  %107 = load %struct.kinfo_proc*, %struct.kinfo_proc** %7, align 8
  %108 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %107, i32 0, i32 8
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %111 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %110, i32 0, i32 14
  store i32 %109, i32* %111, align 4
  %112 = load %struct.kinfo_proc*, %struct.kinfo_proc** %7, align 8
  %113 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %116 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %115, i32 0, i32 1
  store i32 %114, i32* %116, align 4
  %117 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %118 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %117, i32 0, i32 5
  %119 = load i32, i32* %118, align 8
  %120 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %121 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %120, i32 0, i32 14
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @UsersTable_getRef(i32 %119, i32 %122)
  %124 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %125 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %124, i32 0, i32 15
  store i32 %123, i32* %125, align 8
  %126 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %127 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %128 = call i32 @ProcessList_add(%struct.TYPE_14__* %126, %struct.TYPE_15__* %127)
  %129 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %130 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.kinfo_proc*, %struct.kinfo_proc** %7, align 8
  %133 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %134 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %133, i32 0, i32 11
  %135 = call i8* @OpenBSDProcessList_readProcessName(i32 %131, %struct.kinfo_proc* %132, i32* %134)
  %136 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %137 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %136, i32 0, i32 12
  store i8* %135, i8** %137, align 8
  %138 = load %struct.kinfo_proc*, %struct.kinfo_proc** %7, align 8
  %139 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %138, i32 0, i32 0
  %140 = call i32 @localtime_r(i32* %139, %struct.tm* %11)
  %141 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %142 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %141, i32 0, i32 13
  %143 = load i32, i32* %142, align 8
  %144 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %145 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = getelementptr inbounds %struct.timeval, %struct.timeval* %12, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = sub nsw i32 %148, 86400
  %150 = icmp sgt i32 %146, %149
  %151 = zext i1 %150 to i64
  %152 = select i1 %150, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0)
  %153 = call i32 @strftime(i32 %143, i32 7, i8* %152, %struct.tm* %11)
  br label %174

154:                                              ; preds = %68
  %155 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %156 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %155, i32 0, i32 2
  %157 = load i64, i64* %156, align 8
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %173

159:                                              ; preds = %154
  %160 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %161 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %160, i32 0, i32 12
  %162 = load i8*, i8** %161, align 8
  %163 = call i32 @free(i8* %162)
  %164 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %165 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = load %struct.kinfo_proc*, %struct.kinfo_proc** %7, align 8
  %168 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %169 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %168, i32 0, i32 11
  %170 = call i8* @OpenBSDProcessList_readProcessName(i32 %166, %struct.kinfo_proc* %167, i32* %169)
  %171 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %172 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %171, i32 0, i32 12
  store i8* %170, i8** %172, align 8
  br label %173

173:                                              ; preds = %159, %154
  br label %174

174:                                              ; preds = %173, %76
  %175 = load %struct.kinfo_proc*, %struct.kinfo_proc** %7, align 8
  %176 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %175, i32 0, i32 7
  %177 = load i32, i32* %176, align 8
  %178 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %179 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %178, i32 0, i32 10
  store i32 %177, i32* %179, align 4
  %180 = load %struct.kinfo_proc*, %struct.kinfo_proc** %7, align 8
  %181 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %180, i32 0, i32 1
  %182 = load double, double* %181, align 8
  %183 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %184 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %183, i32 0, i32 2
  store double %182, double* %184, align 8
  %185 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %186 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %185, i32 0, i32 2
  %187 = load double, double* %186, align 8
  %188 = load double, double* @PAGE_SIZE_KB, align 8
  %189 = fmul double %187, %188
  %190 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %191 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %190, i32 0, i32 4
  %192 = load i64, i64* %191, align 8
  %193 = sitofp i64 %192 to double
  %194 = fdiv double %189, %193
  %195 = fmul double %194, 1.000000e+02
  %196 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %197 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %196, i32 0, i32 3
  store double %195, double* %197, align 8
  %198 = load %struct.kinfo_proc*, %struct.kinfo_proc** %7, align 8
  %199 = call i32 @getpcpu(%struct.kinfo_proc* %198)
  %200 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %201 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %200, i32 0, i32 0
  %202 = load double, double* %201, align 8
  %203 = fmul double %202, 1.000000e+02
  %204 = call i32 @CLAMP(i32 %199, double 0.000000e+00, double %203)
  %205 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %206 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %205, i32 0, i32 9
  store i32 %204, i32* %206, align 8
  %207 = load %struct.kinfo_proc*, %struct.kinfo_proc** %7, align 8
  %208 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %207, i32 0, i32 6
  %209 = load i64, i64* %208, align 8
  %210 = sub nsw i64 %209, 20
  %211 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %212 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %211, i32 0, i32 8
  store i64 %210, i64* %212, align 8
  %213 = load %struct.kinfo_proc*, %struct.kinfo_proc** %7, align 8
  %214 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %213, i32 0, i32 2
  %215 = load i32, i32* %214, align 8
  %216 = load %struct.kinfo_proc*, %struct.kinfo_proc** %7, align 8
  %217 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %216, i32 0, i32 3
  %218 = load i32, i32* %217, align 4
  %219 = add nsw i32 %218, 500000
  %220 = sdiv i32 %219, 1000000
  %221 = add nsw i32 %215, %220
  %222 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %223 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %222, i32 0, i32 4
  store i32 %221, i32* %223, align 8
  %224 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %225 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %224, i32 0, i32 4
  %226 = load i32, i32* %225, align 8
  %227 = mul nsw i32 %226, 100
  store i32 %227, i32* %225, align 8
  %228 = load %struct.kinfo_proc*, %struct.kinfo_proc** %7, align 8
  %229 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %228, i32 0, i32 5
  %230 = load i64, i64* %229, align 8
  %231 = load i64, i64* @PZERO, align 8
  %232 = sub nsw i64 %230, %231
  %233 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %234 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %233, i32 0, i32 7
  store i64 %232, i64* %234, align 8
  %235 = load %struct.kinfo_proc*, %struct.kinfo_proc** %7, align 8
  %236 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %235, i32 0, i32 4
  %237 = load i32, i32* %236, align 8
  switch i32 %237, label %259 [
    i32 133, label %238
    i32 131, label %241
    i32 130, label %244
    i32 129, label %247
    i32 128, label %250
    i32 134, label %253
    i32 132, label %256
  ]

238:                                              ; preds = %174
  %239 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %240 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %239, i32 0, i32 5
  store i8 73, i8* %240, align 4
  br label %262

241:                                              ; preds = %174
  %242 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %243 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %242, i32 0, i32 5
  store i8 82, i8* %243, align 4
  br label %262

244:                                              ; preds = %174
  %245 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %246 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %245, i32 0, i32 5
  store i8 83, i8* %246, align 4
  br label %262

247:                                              ; preds = %174
  %248 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %249 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %248, i32 0, i32 5
  store i8 84, i8* %249, align 4
  br label %262

250:                                              ; preds = %174
  %251 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %252 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %251, i32 0, i32 5
  store i8 90, i8* %252, align 4
  br label %262

253:                                              ; preds = %174
  %254 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %255 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %254, i32 0, i32 5
  store i8 68, i8* %255, align 4
  br label %262

256:                                              ; preds = %174
  %257 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %258 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %257, i32 0, i32 5
  store i8 80, i8* %258, align 4
  br label %262

259:                                              ; preds = %174
  %260 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %261 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %260, i32 0, i32 5
  store i8 63, i8* %261, align 4
  br label %262

262:                                              ; preds = %259, %256, %253, %250, %247, %244, %241, %238
  %263 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %264 = call i64 @Process_isKernelThread(%struct.TYPE_15__* %263)
  %265 = icmp ne i64 %264, 0
  br i1 %265, label %266, label %271

266:                                              ; preds = %262
  %267 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %268 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %267, i32 0, i32 3
  %269 = load i32, i32* %268, align 8
  %270 = add nsw i32 %269, 1
  store i32 %270, i32* %268, align 8
  br label %271

271:                                              ; preds = %266, %262
  %272 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %273 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %272, i32 0, i32 2
  %274 = load i32, i32* %273, align 4
  %275 = add nsw i32 %274, 1
  store i32 %275, i32* %273, align 4
  %276 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %277 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %276, i32 0, i32 5
  %278 = load i8, i8* %277, align 4
  %279 = sext i8 %278 to i32
  %280 = icmp eq i32 %279, 80
  br i1 %280, label %281, label %286

281:                                              ; preds = %271
  %282 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %283 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %282, i32 0, i32 1
  %284 = load i32, i32* %283, align 8
  %285 = add nsw i32 %284, 1
  store i32 %285, i32* %283, align 8
  br label %286

286:                                              ; preds = %281, %271
  %287 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %288 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %287, i32 0, i32 6
  store i32 1, i32* %288, align 8
  br label %289

289:                                              ; preds = %286
  %290 = load i32, i32* %14, align 4
  %291 = add nsw i32 %290, 1
  store i32 %291, i32* %14, align 4
  br label %35

292:                                              ; preds = %35
  ret void
}

declare dso_local i32 @OpenBSDProcessList_scanMemoryInfo(%struct.TYPE_14__*) #1

declare dso_local %struct.kinfo_proc* @kvm_getprocs(i32, i32, i32, i32, i32*) #1

declare dso_local i32 @gettimeofday(%struct.timeval*, i32*) #1

declare dso_local %struct.TYPE_15__* @ProcessList_getProcess(%struct.TYPE_14__*, i32, i32*, i32) #1

declare dso_local i64 @Process_isKernelThread(%struct.TYPE_15__*) #1

declare dso_local i64 @Process_isUserlandThread(%struct.TYPE_15__*) #1

declare dso_local i32 @UsersTable_getRef(i32, i32) #1

declare dso_local i32 @ProcessList_add(%struct.TYPE_14__*, %struct.TYPE_15__*) #1

declare dso_local i8* @OpenBSDProcessList_readProcessName(i32, %struct.kinfo_proc*, i32*) #1

declare dso_local i32 @localtime_r(i32*, %struct.tm*) #1

declare dso_local i32 @strftime(i32, i32, i8*, %struct.tm*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @CLAMP(i32, double, double) #1

declare dso_local i32 @getpcpu(%struct.kinfo_proc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
