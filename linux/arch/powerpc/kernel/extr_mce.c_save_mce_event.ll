; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_mce.c_save_mce_event.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_mce.c_save_mce_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_regs = type { i32, i32* }
%struct.mce_error_info = type { i32, i32, i32, i32, i32 }
%struct.machine_check_event = type { i32, i32, i64, %struct.TYPE_17__, i32, i32, i32, i32, i32, i32, i32, i64, i32 }
%struct.TYPE_17__ = type { %struct.TYPE_16__, %struct.TYPE_15__, %struct.TYPE_14__, %struct.TYPE_13__, %struct.TYPE_12__, %struct.TYPE_11__, %struct.TYPE_10__ }
%struct.TYPE_16__ = type { i32, i32, i32, i64, i64 }
%struct.TYPE_15__ = type { i32, i64 }
%struct.TYPE_14__ = type { i32, i64 }
%struct.TYPE_13__ = type { i32, i64 }
%struct.TYPE_12__ = type { i32, i64 }
%struct.TYPE_11__ = type { i32, i64 }
%struct.TYPE_10__ = type { i32, i64 }
%struct.TYPE_18__ = type { i32 }

@mce_nest_count = common dso_local global i32 0, align 4
@mce_event = common dso_local global i32* null, align 8
@MAX_MC_EVT = common dso_local global i32 0, align 4
@MCE_V1 = common dso_local global i32 0, align 4
@MSR_RI = common dso_local global i32 0, align 4
@MCE_DISPOSITION_RECOVERED = common dso_local global i32 0, align 4
@MCE_DISPOSITION_NOT_RECOVERED = common dso_local global i32 0, align 4
@MCE_ERROR_TYPE_TLB = common dso_local global i64 0, align 8
@MCE_ERROR_TYPE_SLB = common dso_local global i64 0, align 8
@MCE_ERROR_TYPE_ERAT = common dso_local global i64 0, align 8
@MCE_ERROR_TYPE_USER = common dso_local global i64 0, align 8
@MCE_ERROR_TYPE_RA = common dso_local global i64 0, align 8
@MCE_ERROR_TYPE_LINK = common dso_local global i64 0, align 8
@MCE_ERROR_TYPE_UE = common dso_local global i64 0, align 8
@ULONG_MAX = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @save_mce_event(%struct.pt_regs* %0, i64 %1, %struct.mce_error_info* %2, i64 %3, i64 %4, i64 %5) #0 {
  %7 = alloca %struct.pt_regs*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.mce_error_info*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.machine_check_event*, align 8
  store %struct.pt_regs* %0, %struct.pt_regs** %7, align 8
  store i64 %1, i64* %8, align 8
  store %struct.mce_error_info* %2, %struct.mce_error_info** %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  store i64 %5, i64* %12, align 8
  %15 = load i32, i32* @mce_nest_count, align 4
  %16 = call i32 @__this_cpu_inc_return(i32 %15)
  %17 = sub nsw i32 %16, 1
  store i32 %17, i32* %13, align 4
  %18 = load i32*, i32** @mce_event, align 8
  %19 = load i32, i32* %13, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %18, i64 %20
  %22 = call %struct.machine_check_event* @this_cpu_ptr(i32* %21)
  store %struct.machine_check_event* %22, %struct.machine_check_event** %14, align 8
  %23 = load i32, i32* %13, align 4
  %24 = load i32, i32* @MAX_MC_EVT, align 4
  %25 = icmp sge i32 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %6
  br label %239

27:                                               ; preds = %6
  %28 = load i32, i32* @MCE_V1, align 4
  %29 = load %struct.machine_check_event*, %struct.machine_check_event** %14, align 8
  %30 = getelementptr inbounds %struct.machine_check_event, %struct.machine_check_event* %29, i32 0, i32 12
  store i32 %28, i32* %30, align 8
  %31 = load i64, i64* %10, align 8
  %32 = load %struct.machine_check_event*, %struct.machine_check_event** %14, align 8
  %33 = getelementptr inbounds %struct.machine_check_event, %struct.machine_check_event* %32, i32 0, i32 11
  store i64 %31, i64* %33, align 8
  %34 = load %struct.pt_regs*, %struct.pt_regs** %7, align 8
  %35 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.machine_check_event*, %struct.machine_check_event** %14, align 8
  %38 = getelementptr inbounds %struct.machine_check_event, %struct.machine_check_event* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 8
  %39 = load %struct.pt_regs*, %struct.pt_regs** %7, align 8
  %40 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %39, i32 0, i32 1
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 3
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.machine_check_event*, %struct.machine_check_event** %14, align 8
  %45 = getelementptr inbounds %struct.machine_check_event, %struct.machine_check_event* %44, i32 0, i32 10
  store i32 %43, i32* %45, align 8
  %46 = load %struct.machine_check_event*, %struct.machine_check_event** %14, align 8
  %47 = getelementptr inbounds %struct.machine_check_event, %struct.machine_check_event* %46, i32 0, i32 1
  store i32 1, i32* %47, align 4
  %48 = call %struct.TYPE_18__* (...) @get_paca()
  %49 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.machine_check_event*, %struct.machine_check_event** %14, align 8
  %52 = getelementptr inbounds %struct.machine_check_event, %struct.machine_check_event* %51, i32 0, i32 9
  store i32 %50, i32* %52, align 4
  %53 = load i64, i64* %8, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %66

55:                                               ; preds = %27
  %56 = load %struct.pt_regs*, %struct.pt_regs** %7, align 8
  %57 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @MSR_RI, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %55
  %63 = load i32, i32* @MCE_DISPOSITION_RECOVERED, align 4
  %64 = load %struct.machine_check_event*, %struct.machine_check_event** %14, align 8
  %65 = getelementptr inbounds %struct.machine_check_event, %struct.machine_check_event* %64, i32 0, i32 8
  store i32 %63, i32* %65, align 8
  br label %70

66:                                               ; preds = %55, %27
  %67 = load i32, i32* @MCE_DISPOSITION_NOT_RECOVERED, align 4
  %68 = load %struct.machine_check_event*, %struct.machine_check_event** %14, align 8
  %69 = getelementptr inbounds %struct.machine_check_event, %struct.machine_check_event* %68, i32 0, i32 8
  store i32 %67, i32* %69, align 8
  br label %70

70:                                               ; preds = %66, %62
  %71 = load %struct.mce_error_info*, %struct.mce_error_info** %9, align 8
  %72 = getelementptr inbounds %struct.mce_error_info, %struct.mce_error_info* %71, i32 0, i32 4
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.machine_check_event*, %struct.machine_check_event** %14, align 8
  %75 = getelementptr inbounds %struct.machine_check_event, %struct.machine_check_event* %74, i32 0, i32 7
  store i32 %73, i32* %75, align 4
  %76 = load %struct.mce_error_info*, %struct.mce_error_info** %9, align 8
  %77 = getelementptr inbounds %struct.mce_error_info, %struct.mce_error_info* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.machine_check_event*, %struct.machine_check_event** %14, align 8
  %80 = getelementptr inbounds %struct.machine_check_event, %struct.machine_check_event* %79, i32 0, i32 6
  store i32 %78, i32* %80, align 8
  %81 = load %struct.mce_error_info*, %struct.mce_error_info** %9, align 8
  %82 = getelementptr inbounds %struct.mce_error_info, %struct.mce_error_info* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.machine_check_event*, %struct.machine_check_event** %14, align 8
  %85 = getelementptr inbounds %struct.machine_check_event, %struct.machine_check_event* %84, i32 0, i32 5
  store i32 %83, i32* %85, align 4
  %86 = load %struct.mce_error_info*, %struct.mce_error_info** %9, align 8
  %87 = getelementptr inbounds %struct.mce_error_info, %struct.mce_error_info* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.machine_check_event*, %struct.machine_check_event** %14, align 8
  %90 = getelementptr inbounds %struct.machine_check_event, %struct.machine_check_event* %89, i32 0, i32 4
  store i32 %88, i32* %90, align 8
  %91 = load %struct.machine_check_event*, %struct.machine_check_event** %14, align 8
  %92 = load %struct.mce_error_info*, %struct.mce_error_info** %9, align 8
  %93 = call i32 @mce_set_error_info(%struct.machine_check_event* %91, %struct.mce_error_info* %92)
  %94 = load i64, i64* %11, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %97, label %96

96:                                               ; preds = %70
  br label %239

97:                                               ; preds = %70
  %98 = load %struct.machine_check_event*, %struct.machine_check_event** %14, align 8
  %99 = getelementptr inbounds %struct.machine_check_event, %struct.machine_check_event* %98, i32 0, i32 2
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* @MCE_ERROR_TYPE_TLB, align 8
  %102 = icmp eq i64 %100, %101
  br i1 %102, label %103, label %113

103:                                              ; preds = %97
  %104 = load %struct.machine_check_event*, %struct.machine_check_event** %14, align 8
  %105 = getelementptr inbounds %struct.machine_check_event, %struct.machine_check_event* %104, i32 0, i32 3
  %106 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %105, i32 0, i32 6
  %107 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %106, i32 0, i32 0
  store i32 1, i32* %107, align 8
  %108 = load i64, i64* %11, align 8
  %109 = load %struct.machine_check_event*, %struct.machine_check_event** %14, align 8
  %110 = getelementptr inbounds %struct.machine_check_event, %struct.machine_check_event* %109, i32 0, i32 3
  %111 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %110, i32 0, i32 6
  %112 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %111, i32 0, i32 1
  store i64 %108, i64* %112, align 8
  br label %238

113:                                              ; preds = %97
  %114 = load %struct.machine_check_event*, %struct.machine_check_event** %14, align 8
  %115 = getelementptr inbounds %struct.machine_check_event, %struct.machine_check_event* %114, i32 0, i32 2
  %116 = load i64, i64* %115, align 8
  %117 = load i64, i64* @MCE_ERROR_TYPE_SLB, align 8
  %118 = icmp eq i64 %116, %117
  br i1 %118, label %119, label %129

119:                                              ; preds = %113
  %120 = load %struct.machine_check_event*, %struct.machine_check_event** %14, align 8
  %121 = getelementptr inbounds %struct.machine_check_event, %struct.machine_check_event* %120, i32 0, i32 3
  %122 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %121, i32 0, i32 5
  %123 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %122, i32 0, i32 0
  store i32 1, i32* %123, align 8
  %124 = load i64, i64* %11, align 8
  %125 = load %struct.machine_check_event*, %struct.machine_check_event** %14, align 8
  %126 = getelementptr inbounds %struct.machine_check_event, %struct.machine_check_event* %125, i32 0, i32 3
  %127 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %126, i32 0, i32 5
  %128 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %127, i32 0, i32 1
  store i64 %124, i64* %128, align 8
  br label %237

129:                                              ; preds = %113
  %130 = load %struct.machine_check_event*, %struct.machine_check_event** %14, align 8
  %131 = getelementptr inbounds %struct.machine_check_event, %struct.machine_check_event* %130, i32 0, i32 2
  %132 = load i64, i64* %131, align 8
  %133 = load i64, i64* @MCE_ERROR_TYPE_ERAT, align 8
  %134 = icmp eq i64 %132, %133
  br i1 %134, label %135, label %145

135:                                              ; preds = %129
  %136 = load %struct.machine_check_event*, %struct.machine_check_event** %14, align 8
  %137 = getelementptr inbounds %struct.machine_check_event, %struct.machine_check_event* %136, i32 0, i32 3
  %138 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %137, i32 0, i32 4
  %139 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %138, i32 0, i32 0
  store i32 1, i32* %139, align 8
  %140 = load i64, i64* %11, align 8
  %141 = load %struct.machine_check_event*, %struct.machine_check_event** %14, align 8
  %142 = getelementptr inbounds %struct.machine_check_event, %struct.machine_check_event* %141, i32 0, i32 3
  %143 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %142, i32 0, i32 4
  %144 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %143, i32 0, i32 1
  store i64 %140, i64* %144, align 8
  br label %236

145:                                              ; preds = %129
  %146 = load %struct.machine_check_event*, %struct.machine_check_event** %14, align 8
  %147 = getelementptr inbounds %struct.machine_check_event, %struct.machine_check_event* %146, i32 0, i32 2
  %148 = load i64, i64* %147, align 8
  %149 = load i64, i64* @MCE_ERROR_TYPE_USER, align 8
  %150 = icmp eq i64 %148, %149
  br i1 %150, label %151, label %161

151:                                              ; preds = %145
  %152 = load %struct.machine_check_event*, %struct.machine_check_event** %14, align 8
  %153 = getelementptr inbounds %struct.machine_check_event, %struct.machine_check_event* %152, i32 0, i32 3
  %154 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %153, i32 0, i32 3
  %155 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %154, i32 0, i32 0
  store i32 1, i32* %155, align 8
  %156 = load i64, i64* %11, align 8
  %157 = load %struct.machine_check_event*, %struct.machine_check_event** %14, align 8
  %158 = getelementptr inbounds %struct.machine_check_event, %struct.machine_check_event* %157, i32 0, i32 3
  %159 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %158, i32 0, i32 3
  %160 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %159, i32 0, i32 1
  store i64 %156, i64* %160, align 8
  br label %235

161:                                              ; preds = %145
  %162 = load %struct.machine_check_event*, %struct.machine_check_event** %14, align 8
  %163 = getelementptr inbounds %struct.machine_check_event, %struct.machine_check_event* %162, i32 0, i32 2
  %164 = load i64, i64* %163, align 8
  %165 = load i64, i64* @MCE_ERROR_TYPE_RA, align 8
  %166 = icmp eq i64 %164, %165
  br i1 %166, label %167, label %177

167:                                              ; preds = %161
  %168 = load %struct.machine_check_event*, %struct.machine_check_event** %14, align 8
  %169 = getelementptr inbounds %struct.machine_check_event, %struct.machine_check_event* %168, i32 0, i32 3
  %170 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %169, i32 0, i32 2
  %171 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %170, i32 0, i32 0
  store i32 1, i32* %171, align 8
  %172 = load i64, i64* %11, align 8
  %173 = load %struct.machine_check_event*, %struct.machine_check_event** %14, align 8
  %174 = getelementptr inbounds %struct.machine_check_event, %struct.machine_check_event* %173, i32 0, i32 3
  %175 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %174, i32 0, i32 2
  %176 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %175, i32 0, i32 1
  store i64 %172, i64* %176, align 8
  br label %234

177:                                              ; preds = %161
  %178 = load %struct.machine_check_event*, %struct.machine_check_event** %14, align 8
  %179 = getelementptr inbounds %struct.machine_check_event, %struct.machine_check_event* %178, i32 0, i32 2
  %180 = load i64, i64* %179, align 8
  %181 = load i64, i64* @MCE_ERROR_TYPE_LINK, align 8
  %182 = icmp eq i64 %180, %181
  br i1 %182, label %183, label %193

183:                                              ; preds = %177
  %184 = load %struct.machine_check_event*, %struct.machine_check_event** %14, align 8
  %185 = getelementptr inbounds %struct.machine_check_event, %struct.machine_check_event* %184, i32 0, i32 3
  %186 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %185, i32 0, i32 1
  %187 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %186, i32 0, i32 0
  store i32 1, i32* %187, align 8
  %188 = load i64, i64* %11, align 8
  %189 = load %struct.machine_check_event*, %struct.machine_check_event** %14, align 8
  %190 = getelementptr inbounds %struct.machine_check_event, %struct.machine_check_event* %189, i32 0, i32 3
  %191 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %190, i32 0, i32 1
  %192 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %191, i32 0, i32 1
  store i64 %188, i64* %192, align 8
  br label %233

193:                                              ; preds = %177
  %194 = load %struct.machine_check_event*, %struct.machine_check_event** %14, align 8
  %195 = getelementptr inbounds %struct.machine_check_event, %struct.machine_check_event* %194, i32 0, i32 2
  %196 = load i64, i64* %195, align 8
  %197 = load i64, i64* @MCE_ERROR_TYPE_UE, align 8
  %198 = icmp eq i64 %196, %197
  br i1 %198, label %199, label %232

199:                                              ; preds = %193
  %200 = load %struct.machine_check_event*, %struct.machine_check_event** %14, align 8
  %201 = getelementptr inbounds %struct.machine_check_event, %struct.machine_check_event* %200, i32 0, i32 3
  %202 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %201, i32 0, i32 0
  %203 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %202, i32 0, i32 0
  store i32 1, i32* %203, align 8
  %204 = load i64, i64* %11, align 8
  %205 = load %struct.machine_check_event*, %struct.machine_check_event** %14, align 8
  %206 = getelementptr inbounds %struct.machine_check_event, %struct.machine_check_event* %205, i32 0, i32 3
  %207 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %206, i32 0, i32 0
  %208 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %207, i32 0, i32 4
  store i64 %204, i64* %208, align 8
  %209 = load i64, i64* %12, align 8
  %210 = load i64, i64* @ULONG_MAX, align 8
  %211 = icmp ne i64 %209, %210
  br i1 %211, label %212, label %231

212:                                              ; preds = %199
  %213 = load %struct.machine_check_event*, %struct.machine_check_event** %14, align 8
  %214 = getelementptr inbounds %struct.machine_check_event, %struct.machine_check_event* %213, i32 0, i32 3
  %215 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %214, i32 0, i32 0
  %216 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %215, i32 0, i32 1
  store i32 1, i32* %216, align 4
  %217 = load i64, i64* %12, align 8
  %218 = load %struct.machine_check_event*, %struct.machine_check_event** %14, align 8
  %219 = getelementptr inbounds %struct.machine_check_event, %struct.machine_check_event* %218, i32 0, i32 3
  %220 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %219, i32 0, i32 0
  %221 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %220, i32 0, i32 3
  store i64 %217, i64* %221, align 8
  %222 = load %struct.mce_error_info*, %struct.mce_error_info** %9, align 8
  %223 = getelementptr inbounds %struct.mce_error_info, %struct.mce_error_info* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 4
  %225 = load %struct.machine_check_event*, %struct.machine_check_event** %14, align 8
  %226 = getelementptr inbounds %struct.machine_check_event, %struct.machine_check_event* %225, i32 0, i32 3
  %227 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %226, i32 0, i32 0
  %228 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %227, i32 0, i32 2
  store i32 %224, i32* %228, align 8
  %229 = load %struct.machine_check_event*, %struct.machine_check_event** %14, align 8
  %230 = call i32 @machine_check_ue_event(%struct.machine_check_event* %229)
  br label %231

231:                                              ; preds = %212, %199
  br label %232

232:                                              ; preds = %231, %193
  br label %233

233:                                              ; preds = %232, %183
  br label %234

234:                                              ; preds = %233, %167
  br label %235

235:                                              ; preds = %234, %151
  br label %236

236:                                              ; preds = %235, %135
  br label %237

237:                                              ; preds = %236, %119
  br label %238

238:                                              ; preds = %237, %103
  br label %239

239:                                              ; preds = %238, %96, %26
  ret void
}

declare dso_local i32 @__this_cpu_inc_return(i32) #1

declare dso_local %struct.machine_check_event* @this_cpu_ptr(i32*) #1

declare dso_local %struct.TYPE_18__* @get_paca(...) #1

declare dso_local i32 @mce_set_error_info(%struct.machine_check_event*, %struct.mce_error_info*) #1

declare dso_local i32 @machine_check_ue_event(%struct.machine_check_event*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
