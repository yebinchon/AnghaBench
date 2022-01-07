; ModuleID = '/home/carl/AnghaBench/htop/freebsd/extr_FreeBSDProcessList.c_ProcessList_goThroughEntries.c'
source_filename = "/home/carl/AnghaBench/htop/freebsd/extr_FreeBSDProcessList.c_ProcessList_goThroughEntries.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i32, i32, i32, i32, i64, i32, %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i32, i32, i64 }
%struct.TYPE_22__ = type { i32 }
%struct.kinfo_proc = type { i32, i64, i32, i64, i64, i32, double, i32, i32, i32, %struct.TYPE_17__, i32, i64, i32, %struct.TYPE_18__, i32, i32, i32, i32 }
%struct.TYPE_17__ = type { i32, i64 }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_21__ = type { i32, i32, i64, i32, i64, i32, double, double, i32, double, i32, i32, i8, i32, i32, i32, i8*, i8*, i32, i32, i32, i32, i32 }
%struct.TYPE_23__ = type { i64, i32, i8* }

@KERN_PROC_PROC = common dso_local global i32 0, align 4
@FreeBSDProcess_new = common dso_local global i64 0, align 8
@P_SYSTEM = common dso_local global i32 0, align 4
@pageSizeKb = common dso_local global i32 0, align 4
@PAGE_SIZE_KB = common dso_local global double 0.000000e+00, align 8
@kernelFScale = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"idle\00", align 1
@PZERO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"intr\00", align 1
@PRI_TIMESHARE = common dso_local global i64 0, align 8
@NZERO = common dso_local global i32 0, align 4
@PRIO_MIN = common dso_local global i32 0, align 4
@PRI_MAX_REALTIME = common dso_local global i32 0, align 4
@PRIO_MAX = common dso_local global i32 0, align 4
@PRI_MIN_IDLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ProcessList_goThroughEntries(%struct.TYPE_20__* %0) #0 {
  %2 = alloca %struct.TYPE_20__*, align 8
  %3 = alloca %struct.TYPE_22__*, align 8
  %4 = alloca %struct.TYPE_19__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.kinfo_proc*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.kinfo_proc*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_21__*, align 8
  %15 = alloca %struct.TYPE_23__*, align 8
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %2, align 8
  %16 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %17 = bitcast %struct.TYPE_20__* %16 to %struct.TYPE_22__*
  store %struct.TYPE_22__* %17, %struct.TYPE_22__** %3, align 8
  %18 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %18, i32 0, i32 6
  %20 = load %struct.TYPE_19__*, %struct.TYPE_19__** %19, align 8
  store %struct.TYPE_19__* %20, %struct.TYPE_19__** %4, align 8
  %21 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* %5, align 4
  %24 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %6, align 4
  %27 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %28 = call i32 @FreeBSDProcessList_scanMemoryInfo(%struct.TYPE_20__* %27)
  %29 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %30 = call i32 @FreeBSDProcessList_scanCPUTime(%struct.TYPE_20__* %29)
  %31 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %32 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  store i32 %33, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %34 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @KERN_PROC_PROC, align 4
  %38 = call %struct.kinfo_proc* @kvm_getprocs(i32 %36, i32 %37, i32 0, i32* %8)
  store %struct.kinfo_proc* %38, %struct.kinfo_proc** %9, align 8
  store i32 0, i32* %10, align 4
  br label %39

39:                                               ; preds = %460, %1
  %40 = load i32, i32* %10, align 4
  %41 = load i32, i32* %8, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %463

43:                                               ; preds = %39
  %44 = load %struct.kinfo_proc*, %struct.kinfo_proc** %9, align 8
  %45 = load i32, i32* %10, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %44, i64 %46
  store %struct.kinfo_proc* %47, %struct.kinfo_proc** %11, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %48 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %49 = load %struct.kinfo_proc*, %struct.kinfo_proc** %11, align 8
  %50 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i64, i64* @FreeBSDProcess_new, align 8
  %53 = trunc i64 %52 to i32
  %54 = call %struct.TYPE_21__* @ProcessList_getProcess(%struct.TYPE_20__* %48, i32 %51, i32* %12, i32 %53)
  store %struct.TYPE_21__* %54, %struct.TYPE_21__** %14, align 8
  %55 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %56 = bitcast %struct.TYPE_21__* %55 to %struct.TYPE_23__*
  store %struct.TYPE_23__* %56, %struct.TYPE_23__** %15, align 8
  %57 = load i32, i32* %5, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %43
  %60 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %61 = call i64 @Process_isKernelThread(%struct.TYPE_23__* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %72, label %63

63:                                               ; preds = %59, %43
  %64 = load i32, i32* %6, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %63
  %67 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %68 = call i64 @Process_isUserlandThread(%struct.TYPE_21__* %67)
  %69 = icmp ne i64 %68, 0
  br label %70

70:                                               ; preds = %66, %63
  %71 = phi i1 [ false, %63 ], [ %69, %66 ]
  br label %72

72:                                               ; preds = %70, %59
  %73 = phi i1 [ true, %59 ], [ %71, %70 ]
  %74 = xor i1 %73, true
  %75 = zext i1 %74 to i32
  %76 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %77 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %76, i32 0, i32 0
  store i32 %75, i32* %77, align 8
  %78 = load i32, i32* %12, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %180, label %80

80:                                               ; preds = %72
  %81 = load %struct.kinfo_proc*, %struct.kinfo_proc** %11, align 8
  %82 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %85 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %84, i32 0, i32 0
  store i64 %83, i64* %85, align 8
  %86 = load %struct.kinfo_proc*, %struct.kinfo_proc** %11, align 8
  %87 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %90 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %89, i32 0, i32 1
  store i32 %88, i32* %90, align 4
  %91 = load %struct.kinfo_proc*, %struct.kinfo_proc** %11, align 8
  %92 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %110, label %95

95:                                               ; preds = %80
  %96 = load %struct.kinfo_proc*, %struct.kinfo_proc** %11, align 8
  %97 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = icmp eq i32 %98, 1
  br i1 %99, label %110, label %100

100:                                              ; preds = %95
  %101 = load %struct.kinfo_proc*, %struct.kinfo_proc** %11, align 8
  %102 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* @P_SYSTEM, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %110

107:                                              ; preds = %100
  %108 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %109 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %108, i32 0, i32 1
  store i32 1, i32* %109, align 8
  br label %113

110:                                              ; preds = %100, %95, %80
  %111 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %112 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %111, i32 0, i32 1
  store i32 0, i32* %112, align 8
  br label %113

113:                                              ; preds = %110, %107
  %114 = load %struct.kinfo_proc*, %struct.kinfo_proc** %11, align 8
  %115 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %114, i32 0, i32 3
  %116 = load i64, i64* %115, align 8
  %117 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %118 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %117, i32 0, i32 2
  store i64 %116, i64* %118, align 8
  %119 = load %struct.kinfo_proc*, %struct.kinfo_proc** %11, align 8
  %120 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %119, i32 0, i32 18
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %123 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %122, i32 0, i32 22
  store i32 %121, i32* %123, align 8
  %124 = load %struct.kinfo_proc*, %struct.kinfo_proc** %11, align 8
  %125 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %128 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %127, i32 0, i32 3
  store i32 %126, i32* %128, align 8
  %129 = load %struct.kinfo_proc*, %struct.kinfo_proc** %11, align 8
  %130 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %129, i32 0, i32 17
  %131 = load i32, i32* %130, align 8
  %132 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %133 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %132, i32 0, i32 21
  store i32 %131, i32* %133, align 4
  %134 = load %struct.kinfo_proc*, %struct.kinfo_proc** %11, align 8
  %135 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %134, i32 0, i32 16
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %138 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %137, i32 0, i32 20
  store i32 %136, i32* %138, align 8
  %139 = load %struct.kinfo_proc*, %struct.kinfo_proc** %11, align 8
  %140 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %139, i32 0, i32 15
  %141 = load i32, i32* %140, align 8
  %142 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %143 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %142, i32 0, i32 19
  store i32 %141, i32* %143, align 4
  %144 = load %struct.kinfo_proc*, %struct.kinfo_proc** %11, align 8
  %145 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %144, i32 0, i32 4
  %146 = load i64, i64* %145, align 8
  %147 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %148 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %147, i32 0, i32 4
  store i64 %146, i64* %148, align 8
  %149 = load %struct.kinfo_proc*, %struct.kinfo_proc** %11, align 8
  %150 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %149, i32 0, i32 14
  %151 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %154 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %153, i32 0, i32 18
  store i32 %152, i32* %154, align 8
  %155 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %156 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %155, i32 0, i32 5
  %157 = load i32, i32* %156, align 8
  %158 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %159 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %158, i32 0, i32 4
  %160 = load i64, i64* %159, align 8
  %161 = call i8* @UsersTable_getRef(i32 %157, i64 %160)
  %162 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %163 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %162, i32 0, i32 17
  store i8* %161, i8** %163, align 8
  %164 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %165 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %166 = call i32 @ProcessList_add(%struct.TYPE_20__* %164, %struct.TYPE_21__* %165)
  %167 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %168 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  %170 = load %struct.kinfo_proc*, %struct.kinfo_proc** %11, align 8
  %171 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %172 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %171, i32 0, i32 15
  %173 = call i8* @FreeBSDProcessList_readProcessName(i32 %169, %struct.kinfo_proc* %170, i32* %172)
  %174 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %175 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %174, i32 0, i32 16
  store i8* %173, i8** %175, align 8
  %176 = load %struct.kinfo_proc*, %struct.kinfo_proc** %11, align 8
  %177 = call i8* @FreeBSDProcessList_readJailName(%struct.kinfo_proc* %176)
  %178 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %179 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %178, i32 0, i32 2
  store i8* %177, i8** %179, align 8
  br label %259

180:                                              ; preds = %72
  %181 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %182 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %181, i32 0, i32 0
  %183 = load i64, i64* %182, align 8
  %184 = load %struct.kinfo_proc*, %struct.kinfo_proc** %11, align 8
  %185 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %184, i32 0, i32 1
  %186 = load i64, i64* %185, align 8
  %187 = icmp ne i64 %183, %186
  br i1 %187, label %188, label %202

188:                                              ; preds = %180
  %189 = load %struct.kinfo_proc*, %struct.kinfo_proc** %11, align 8
  %190 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %189, i32 0, i32 1
  %191 = load i64, i64* %190, align 8
  %192 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %193 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %192, i32 0, i32 0
  store i64 %191, i64* %193, align 8
  %194 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %195 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %194, i32 0, i32 2
  %196 = load i8*, i8** %195, align 8
  %197 = call i32 @free(i8* %196)
  %198 = load %struct.kinfo_proc*, %struct.kinfo_proc** %11, align 8
  %199 = call i8* @FreeBSDProcessList_readJailName(%struct.kinfo_proc* %198)
  %200 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %201 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %200, i32 0, i32 2
  store i8* %199, i8** %201, align 8
  br label %202

202:                                              ; preds = %188, %180
  %203 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %204 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %203, i32 0, i32 2
  %205 = load i64, i64* %204, align 8
  %206 = load %struct.kinfo_proc*, %struct.kinfo_proc** %11, align 8
  %207 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %206, i32 0, i32 3
  %208 = load i64, i64* %207, align 8
  %209 = icmp ne i64 %205, %208
  br i1 %209, label %210, label %216

210:                                              ; preds = %202
  %211 = load %struct.kinfo_proc*, %struct.kinfo_proc** %11, align 8
  %212 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %211, i32 0, i32 3
  %213 = load i64, i64* %212, align 8
  %214 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %215 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %214, i32 0, i32 2
  store i64 %213, i64* %215, align 8
  br label %216

216:                                              ; preds = %210, %202
  %217 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %218 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %217, i32 0, i32 4
  %219 = load i64, i64* %218, align 8
  %220 = load %struct.kinfo_proc*, %struct.kinfo_proc** %11, align 8
  %221 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %220, i32 0, i32 4
  %222 = load i64, i64* %221, align 8
  %223 = icmp ne i64 %219, %222
  br i1 %223, label %224, label %239

224:                                              ; preds = %216
  %225 = load %struct.kinfo_proc*, %struct.kinfo_proc** %11, align 8
  %226 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %225, i32 0, i32 4
  %227 = load i64, i64* %226, align 8
  %228 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %229 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %228, i32 0, i32 4
  store i64 %227, i64* %229, align 8
  %230 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %231 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %230, i32 0, i32 5
  %232 = load i32, i32* %231, align 8
  %233 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %234 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %233, i32 0, i32 4
  %235 = load i64, i64* %234, align 8
  %236 = call i8* @UsersTable_getRef(i32 %232, i64 %235)
  %237 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %238 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %237, i32 0, i32 17
  store i8* %236, i8** %238, align 8
  br label %239

239:                                              ; preds = %224, %216
  %240 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %241 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %240, i32 0, i32 2
  %242 = load i64, i64* %241, align 8
  %243 = icmp ne i64 %242, 0
  br i1 %243, label %244, label %258

244:                                              ; preds = %239
  %245 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %246 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %245, i32 0, i32 16
  %247 = load i8*, i8** %246, align 8
  %248 = call i32 @free(i8* %247)
  %249 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %250 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %249, i32 0, i32 0
  %251 = load i32, i32* %250, align 4
  %252 = load %struct.kinfo_proc*, %struct.kinfo_proc** %11, align 8
  %253 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %254 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %253, i32 0, i32 15
  %255 = call i8* @FreeBSDProcessList_readProcessName(i32 %251, %struct.kinfo_proc* %252, i32* %254)
  %256 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %257 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %256, i32 0, i32 16
  store i8* %255, i8** %257, align 8
  br label %258

258:                                              ; preds = %244, %239
  br label %259

259:                                              ; preds = %258, %113
  %260 = load %struct.kinfo_proc*, %struct.kinfo_proc** %11, align 8
  %261 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %260, i32 0, i32 5
  %262 = load i32, i32* %261, align 8
  %263 = sdiv i32 %262, 1024
  %264 = load i32, i32* @pageSizeKb, align 4
  %265 = sdiv i32 %263, %264
  %266 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %267 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %266, i32 0, i32 5
  store i32 %265, i32* %267, align 8
  %268 = load %struct.kinfo_proc*, %struct.kinfo_proc** %11, align 8
  %269 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %268, i32 0, i32 6
  %270 = load double, double* %269, align 8
  %271 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %272 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %271, i32 0, i32 6
  store double %270, double* %272, align 8
  %273 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %274 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %273, i32 0, i32 6
  %275 = load double, double* %274, align 8
  %276 = load double, double* @PAGE_SIZE_KB, align 8
  %277 = fmul double %275, %276
  %278 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %279 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %278, i32 0, i32 4
  %280 = load i64, i64* %279, align 8
  %281 = sitofp i64 %280 to double
  %282 = fdiv double %277, %281
  %283 = fmul double %282, 1.000000e+02
  %284 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %285 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %284, i32 0, i32 7
  store double %283, double* %285, align 8
  %286 = load %struct.kinfo_proc*, %struct.kinfo_proc** %11, align 8
  %287 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %286, i32 0, i32 13
  %288 = load i32, i32* %287, align 8
  %289 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %290 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %289, i32 0, i32 14
  store i32 %288, i32* %290, align 8
  %291 = load %struct.kinfo_proc*, %struct.kinfo_proc** %11, align 8
  %292 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %291, i32 0, i32 7
  %293 = load i32, i32* %292, align 8
  %294 = add nsw i32 %293, 5000
  %295 = sdiv i32 %294, 10000
  %296 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %297 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %296, i32 0, i32 8
  store i32 %295, i32* %297, align 8
  %298 = load %struct.kinfo_proc*, %struct.kinfo_proc** %11, align 8
  %299 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %298, i32 0, i32 12
  %300 = load i64, i64* %299, align 8
  %301 = sitofp i64 %300 to double
  %302 = load i64, i64* @kernelFScale, align 8
  %303 = sitofp i64 %302 to double
  %304 = fdiv double %301, %303
  %305 = fmul double 1.000000e+02, %304
  %306 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %307 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %306, i32 0, i32 9
  store double %305, double* %307, align 8
  %308 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %309 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %308, i32 0, i32 6
  %310 = load double, double* %309, align 8
  %311 = load double, double* @PAGE_SIZE_KB, align 8
  %312 = fmul double %310, %311
  %313 = fmul double 1.000000e+02, %312
  %314 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %315 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %314, i32 0, i32 4
  %316 = load i64, i64* %315, align 8
  %317 = sitofp i64 %316 to double
  %318 = fdiv double %313, %317
  %319 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %320 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %319, i32 0, i32 7
  store double %318, double* %320, align 8
  %321 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %322 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %321, i32 0, i32 9
  %323 = load double, double* %322, align 8
  %324 = fcmp ogt double %323, 1.000000e-01
  br i1 %324, label %325, label %333

325:                                              ; preds = %259
  %326 = load %struct.kinfo_proc*, %struct.kinfo_proc** %11, align 8
  %327 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %326, i32 0, i32 11
  %328 = load i32, i32* %327, align 8
  %329 = call i64 @strcmp(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %328)
  %330 = icmp eq i64 %329, 0
  br i1 %330, label %331, label %332

331:                                              ; preds = %325
  store i32 1, i32* %13, align 4
  br label %332

332:                                              ; preds = %331, %325
  br label %333

333:                                              ; preds = %332, %259
  %334 = load %struct.kinfo_proc*, %struct.kinfo_proc** %11, align 8
  %335 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %334, i32 0, i32 10
  %336 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %335, i32 0, i32 0
  %337 = load i32, i32* %336, align 8
  %338 = load i32, i32* @PZERO, align 4
  %339 = sub nsw i32 %337, %338
  %340 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %341 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %340, i32 0, i32 10
  store i32 %339, i32* %341, align 8
  %342 = load %struct.kinfo_proc*, %struct.kinfo_proc** %11, align 8
  %343 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %342, i32 0, i32 11
  %344 = load i32, i32* %343, align 8
  %345 = call i64 @strcmp(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %344)
  %346 = icmp eq i64 %345, 0
  br i1 %346, label %347, label %357

347:                                              ; preds = %333
  %348 = load %struct.kinfo_proc*, %struct.kinfo_proc** %11, align 8
  %349 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %348, i32 0, i32 2
  %350 = load i32, i32* %349, align 8
  %351 = load i32, i32* @P_SYSTEM, align 4
  %352 = and i32 %350, %351
  %353 = icmp ne i32 %352, 0
  br i1 %353, label %354, label %357

354:                                              ; preds = %347
  %355 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %356 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %355, i32 0, i32 11
  store i32 0, i32* %356, align 4
  br label %405

357:                                              ; preds = %347, %333
  %358 = load %struct.kinfo_proc*, %struct.kinfo_proc** %11, align 8
  %359 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %358, i32 0, i32 10
  %360 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %359, i32 0, i32 1
  %361 = load i64, i64* %360, align 8
  %362 = load i64, i64* @PRI_TIMESHARE, align 8
  %363 = icmp eq i64 %361, %362
  br i1 %363, label %364, label %372

364:                                              ; preds = %357
  %365 = load %struct.kinfo_proc*, %struct.kinfo_proc** %11, align 8
  %366 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %365, i32 0, i32 8
  %367 = load i32, i32* %366, align 4
  %368 = load i32, i32* @NZERO, align 4
  %369 = sub nsw i32 %367, %368
  %370 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %371 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %370, i32 0, i32 11
  store i32 %369, i32* %371, align 4
  br label %404

372:                                              ; preds = %357
  %373 = load %struct.kinfo_proc*, %struct.kinfo_proc** %11, align 8
  %374 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %373, i32 0, i32 10
  %375 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %374, i32 0, i32 1
  %376 = load i64, i64* %375, align 8
  %377 = call i64 @PRI_IS_REALTIME(i64 %376)
  %378 = icmp ne i64 %377, 0
  br i1 %378, label %379, label %391

379:                                              ; preds = %372
  %380 = load i32, i32* @PRIO_MIN, align 4
  %381 = sub nsw i32 %380, 1
  %382 = load i32, i32* @PRI_MAX_REALTIME, align 4
  %383 = load %struct.kinfo_proc*, %struct.kinfo_proc** %11, align 8
  %384 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %383, i32 0, i32 10
  %385 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %384, i32 0, i32 0
  %386 = load i32, i32* %385, align 8
  %387 = sub nsw i32 %382, %386
  %388 = sub nsw i32 %381, %387
  %389 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %390 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %389, i32 0, i32 11
  store i32 %388, i32* %390, align 4
  br label %403

391:                                              ; preds = %372
  %392 = load i32, i32* @PRIO_MAX, align 4
  %393 = add nsw i32 %392, 1
  %394 = load %struct.kinfo_proc*, %struct.kinfo_proc** %11, align 8
  %395 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %394, i32 0, i32 10
  %396 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %395, i32 0, i32 0
  %397 = load i32, i32* %396, align 8
  %398 = add nsw i32 %393, %397
  %399 = load i32, i32* @PRI_MIN_IDLE, align 4
  %400 = sub nsw i32 %398, %399
  %401 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %402 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %401, i32 0, i32 11
  store i32 %400, i32* %402, align 4
  br label %403

403:                                              ; preds = %391, %379
  br label %404

404:                                              ; preds = %403, %364
  br label %405

405:                                              ; preds = %404, %354
  %406 = load %struct.kinfo_proc*, %struct.kinfo_proc** %11, align 8
  %407 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %406, i32 0, i32 9
  %408 = load i32, i32* %407, align 8
  switch i32 %408, label %430 [
    i32 134, label %409
    i32 132, label %412
    i32 131, label %415
    i32 130, label %418
    i32 128, label %421
    i32 129, label %424
    i32 133, label %427
  ]

409:                                              ; preds = %405
  %410 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %411 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %410, i32 0, i32 12
  store i8 73, i8* %411, align 8
  br label %433

412:                                              ; preds = %405
  %413 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %414 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %413, i32 0, i32 12
  store i8 82, i8* %414, align 8
  br label %433

415:                                              ; preds = %405
  %416 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %417 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %416, i32 0, i32 12
  store i8 83, i8* %417, align 8
  br label %433

418:                                              ; preds = %405
  %419 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %420 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %419, i32 0, i32 12
  store i8 84, i8* %420, align 8
  br label %433

421:                                              ; preds = %405
  %422 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %423 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %422, i32 0, i32 12
  store i8 90, i8* %423, align 8
  br label %433

424:                                              ; preds = %405
  %425 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %426 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %425, i32 0, i32 12
  store i8 68, i8* %426, align 8
  br label %433

427:                                              ; preds = %405
  %428 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %429 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %428, i32 0, i32 12
  store i8 76, i8* %429, align 8
  br label %433

430:                                              ; preds = %405
  %431 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %432 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %431, i32 0, i32 12
  store i8 63, i8* %432, align 8
  br label %433

433:                                              ; preds = %430, %427, %424, %421, %418, %415, %412, %409
  %434 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %435 = call i64 @Process_isKernelThread(%struct.TYPE_23__* %434)
  %436 = icmp ne i64 %435, 0
  br i1 %436, label %437, label %442

437:                                              ; preds = %433
  %438 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %439 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %438, i32 0, i32 3
  %440 = load i32, i32* %439, align 4
  %441 = add nsw i32 %440, 1
  store i32 %441, i32* %439, align 4
  br label %442

442:                                              ; preds = %437, %433
  %443 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %444 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %443, i32 0, i32 2
  %445 = load i32, i32* %444, align 8
  %446 = add nsw i32 %445, 1
  store i32 %446, i32* %444, align 8
  %447 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %448 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %447, i32 0, i32 12
  %449 = load i8, i8* %448, align 8
  %450 = sext i8 %449 to i32
  %451 = icmp eq i32 %450, 82
  br i1 %451, label %452, label %457

452:                                              ; preds = %442
  %453 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %454 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %453, i32 0, i32 1
  %455 = load i32, i32* %454, align 4
  %456 = add nsw i32 %455, 1
  store i32 %456, i32* %454, align 4
  br label %457

457:                                              ; preds = %452, %442
  %458 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %459 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %458, i32 0, i32 13
  store i32 1, i32* %459, align 4
  br label %460

460:                                              ; preds = %457
  %461 = load i32, i32* %10, align 4
  %462 = add nsw i32 %461, 1
  store i32 %462, i32* %10, align 4
  br label %39

463:                                              ; preds = %39
  ret void
}

declare dso_local i32 @FreeBSDProcessList_scanMemoryInfo(%struct.TYPE_20__*) #1

declare dso_local i32 @FreeBSDProcessList_scanCPUTime(%struct.TYPE_20__*) #1

declare dso_local %struct.kinfo_proc* @kvm_getprocs(i32, i32, i32, i32*) #1

declare dso_local %struct.TYPE_21__* @ProcessList_getProcess(%struct.TYPE_20__*, i32, i32*, i32) #1

declare dso_local i64 @Process_isKernelThread(%struct.TYPE_23__*) #1

declare dso_local i64 @Process_isUserlandThread(%struct.TYPE_21__*) #1

declare dso_local i8* @UsersTable_getRef(i32, i64) #1

declare dso_local i32 @ProcessList_add(%struct.TYPE_20__*, %struct.TYPE_21__*) #1

declare dso_local i8* @FreeBSDProcessList_readProcessName(i32, %struct.kinfo_proc*, i32*) #1

declare dso_local i8* @FreeBSDProcessList_readJailName(%struct.kinfo_proc*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i64 @strcmp(i8*, i32) #1

declare dso_local i64 @PRI_IS_REALTIME(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
