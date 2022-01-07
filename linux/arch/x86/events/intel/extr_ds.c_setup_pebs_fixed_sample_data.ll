; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/events/intel/extr_ds.c_setup_pebs_fixed_sample_data.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/events/intel/extr_ds.c_setup_pebs_fixed_sample_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.perf_event = type { %struct.TYPE_9__, %struct.TYPE_6__ }
%struct.TYPE_9__ = type { i32, i32, i64 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.perf_sample_data = type { i32*, i32, i32, i32, i32, i32, %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.pt_regs = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.cpu_hw_events = type { i32 }
%struct.pebs_record_skl = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@cpu_hw_events = common dso_local global i32 0, align 4
@PERF_X86_EVENT_PEBS_LDLAT = common dso_local global i32 0, align 4
@PERF_SAMPLE_WEIGHT = common dso_local global i32 0, align 4
@PERF_SAMPLE_DATA_SRC = common dso_local global i32 0, align 4
@PERF_SAMPLE_CALLCHAIN = common dso_local global i32 0, align 4
@PERF_EFLAGS_EXACT = common dso_local global i32 0, align 4
@PERF_SAMPLE_REGS_INTR = common dso_local global i32 0, align 4
@x86_pmu = common dso_local global %struct.TYPE_10__ zeroinitializer, align 4
@PERF_SAMPLE_ADDR = common dso_local global i32 0, align 4
@PERF_SAMPLE_PHYS_ADDR = common dso_local global i32 0, align 4
@PERF_SAMPLE_TRANSACTION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.perf_event*, %struct.pt_regs*, i8*, %struct.perf_sample_data*, %struct.pt_regs*)* @setup_pebs_fixed_sample_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setup_pebs_fixed_sample_data(%struct.perf_event* %0, %struct.pt_regs* %1, i8* %2, %struct.perf_sample_data* %3, %struct.pt_regs* %4) #0 {
  %6 = alloca %struct.perf_event*, align 8
  %7 = alloca %struct.pt_regs*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.perf_sample_data*, align 8
  %10 = alloca %struct.pt_regs*, align 8
  %11 = alloca %struct.cpu_hw_events*, align 8
  %12 = alloca %struct.pebs_record_skl*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.perf_event* %0, %struct.perf_event** %6, align 8
  store %struct.pt_regs* %1, %struct.pt_regs** %7, align 8
  store i8* %2, i8** %8, align 8
  store %struct.perf_sample_data* %3, %struct.perf_sample_data** %9, align 8
  store %struct.pt_regs* %4, %struct.pt_regs** %10, align 8
  %15 = call %struct.cpu_hw_events* @this_cpu_ptr(i32* @cpu_hw_events)
  store %struct.cpu_hw_events* %15, %struct.cpu_hw_events** %11, align 8
  %16 = load i8*, i8** %8, align 8
  %17 = bitcast i8* %16 to %struct.pebs_record_skl*
  store %struct.pebs_record_skl* %17, %struct.pebs_record_skl** %12, align 8
  %18 = load %struct.pebs_record_skl*, %struct.pebs_record_skl** %12, align 8
  %19 = icmp eq %struct.pebs_record_skl* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %5
  br label %298

21:                                               ; preds = %5
  %22 = load %struct.perf_event*, %struct.perf_event** %6, align 8
  %23 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* %13, align 4
  %26 = load %struct.perf_event*, %struct.perf_event** %6, align 8
  %27 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @PERF_X86_EVENT_PEBS_LDLAT, align 4
  %31 = and i32 %29, %30
  store i32 %31, i32* %14, align 4
  %32 = load %struct.perf_sample_data*, %struct.perf_sample_data** %9, align 8
  %33 = load %struct.perf_event*, %struct.perf_event** %6, align 8
  %34 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @perf_sample_data_init(%struct.perf_sample_data* %32, i32 0, i32 %36)
  %38 = load %struct.perf_event*, %struct.perf_event** %6, align 8
  %39 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.perf_sample_data*, %struct.perf_sample_data** %9, align 8
  %43 = getelementptr inbounds %struct.perf_sample_data, %struct.perf_sample_data* %42, i32 0, i32 7
  store i32 %41, i32* %43, align 8
  %44 = load i32, i32* %14, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %57

46:                                               ; preds = %21
  %47 = load i32, i32* %13, align 4
  %48 = load i32, i32* @PERF_SAMPLE_WEIGHT, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %46
  %52 = load %struct.pebs_record_skl*, %struct.pebs_record_skl** %12, align 8
  %53 = getelementptr inbounds %struct.pebs_record_skl, %struct.pebs_record_skl* %52, i32 0, i32 23
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.perf_sample_data*, %struct.perf_sample_data** %9, align 8
  %56 = getelementptr inbounds %struct.perf_sample_data, %struct.perf_sample_data* %55, i32 0, i32 3
  store i32 %54, i32* %56, align 8
  br label %57

57:                                               ; preds = %51, %46, %21
  %58 = load i32, i32* %13, align 4
  %59 = load i32, i32* @PERF_SAMPLE_DATA_SRC, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %71

62:                                               ; preds = %57
  %63 = load %struct.perf_event*, %struct.perf_event** %6, align 8
  %64 = load %struct.pebs_record_skl*, %struct.pebs_record_skl** %12, align 8
  %65 = getelementptr inbounds %struct.pebs_record_skl, %struct.pebs_record_skl* %64, i32 0, i32 22
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @get_data_src(%struct.perf_event* %63, i32 %66)
  %68 = load %struct.perf_sample_data*, %struct.perf_sample_data** %9, align 8
  %69 = getelementptr inbounds %struct.perf_sample_data, %struct.perf_sample_data* %68, i32 0, i32 6
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 0
  store i32 %67, i32* %70, align 4
  br label %71

71:                                               ; preds = %62, %57
  %72 = load i32, i32* %13, align 4
  %73 = load i32, i32* @PERF_SAMPLE_CALLCHAIN, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %82

76:                                               ; preds = %71
  %77 = load %struct.perf_event*, %struct.perf_event** %6, align 8
  %78 = load %struct.pt_regs*, %struct.pt_regs** %7, align 8
  %79 = call i32 @perf_callchain(%struct.perf_event* %77, %struct.pt_regs* %78)
  %80 = load %struct.perf_sample_data*, %struct.perf_sample_data** %9, align 8
  %81 = getelementptr inbounds %struct.perf_sample_data, %struct.perf_sample_data* %80, i32 0, i32 5
  store i32 %79, i32* %81, align 8
  br label %82

82:                                               ; preds = %76, %71
  %83 = load %struct.pt_regs*, %struct.pt_regs** %10, align 8
  %84 = load %struct.pt_regs*, %struct.pt_regs** %7, align 8
  %85 = bitcast %struct.pt_regs* %83 to i8*
  %86 = bitcast %struct.pt_regs* %84 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %85, i8* align 4 %86, i64 68, i1 false)
  %87 = load %struct.pebs_record_skl*, %struct.pebs_record_skl** %12, align 8
  %88 = getelementptr inbounds %struct.pebs_record_skl, %struct.pebs_record_skl* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @PERF_EFLAGS_EXACT, align 4
  %91 = xor i32 %90, -1
  %92 = and i32 %89, %91
  %93 = load %struct.pt_regs*, %struct.pt_regs** %10, align 8
  %94 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %93, i32 0, i32 0
  store i32 %92, i32* %94, align 4
  %95 = load i32, i32* %13, align 4
  %96 = load i32, i32* @PERF_SAMPLE_REGS_INTR, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %180

99:                                               ; preds = %82
  %100 = load %struct.pebs_record_skl*, %struct.pebs_record_skl** %12, align 8
  %101 = getelementptr inbounds %struct.pebs_record_skl, %struct.pebs_record_skl* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.pt_regs*, %struct.pt_regs** %10, align 8
  %104 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %103, i32 0, i32 16
  store i32 %102, i32* %104, align 4
  %105 = load %struct.pebs_record_skl*, %struct.pebs_record_skl** %12, align 8
  %106 = getelementptr inbounds %struct.pebs_record_skl, %struct.pebs_record_skl* %105, i32 0, i32 21
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.pt_regs*, %struct.pt_regs** %10, align 8
  %109 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %108, i32 0, i32 15
  store i32 %107, i32* %109, align 4
  %110 = load %struct.pebs_record_skl*, %struct.pebs_record_skl** %12, align 8
  %111 = getelementptr inbounds %struct.pebs_record_skl, %struct.pebs_record_skl* %110, i32 0, i32 20
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.pt_regs*, %struct.pt_regs** %10, align 8
  %114 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %113, i32 0, i32 14
  store i32 %112, i32* %114, align 4
  %115 = load %struct.pebs_record_skl*, %struct.pebs_record_skl** %12, align 8
  %116 = getelementptr inbounds %struct.pebs_record_skl, %struct.pebs_record_skl* %115, i32 0, i32 19
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.pt_regs*, %struct.pt_regs** %10, align 8
  %119 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %118, i32 0, i32 13
  store i32 %117, i32* %119, align 4
  %120 = load %struct.pebs_record_skl*, %struct.pebs_record_skl** %12, align 8
  %121 = getelementptr inbounds %struct.pebs_record_skl, %struct.pebs_record_skl* %120, i32 0, i32 18
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.pt_regs*, %struct.pt_regs** %10, align 8
  %124 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %123, i32 0, i32 12
  store i32 %122, i32* %124, align 4
  %125 = load %struct.pebs_record_skl*, %struct.pebs_record_skl** %12, align 8
  %126 = getelementptr inbounds %struct.pebs_record_skl, %struct.pebs_record_skl* %125, i32 0, i32 17
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.pt_regs*, %struct.pt_regs** %10, align 8
  %129 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %128, i32 0, i32 11
  store i32 %127, i32* %129, align 4
  %130 = load %struct.pebs_record_skl*, %struct.pebs_record_skl** %12, align 8
  %131 = getelementptr inbounds %struct.pebs_record_skl, %struct.pebs_record_skl* %130, i32 0, i32 16
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.pt_regs*, %struct.pt_regs** %10, align 8
  %134 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %133, i32 0, i32 10
  store i32 %132, i32* %134, align 4
  %135 = load %struct.pebs_record_skl*, %struct.pebs_record_skl** %12, align 8
  %136 = getelementptr inbounds %struct.pebs_record_skl, %struct.pebs_record_skl* %135, i32 0, i32 15
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.pt_regs*, %struct.pt_regs** %10, align 8
  %139 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %138, i32 0, i32 9
  store i32 %137, i32* %139, align 4
  %140 = load %struct.pebs_record_skl*, %struct.pebs_record_skl** %12, align 8
  %141 = getelementptr inbounds %struct.pebs_record_skl, %struct.pebs_record_skl* %140, i32 0, i32 14
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.pt_regs*, %struct.pt_regs** %10, align 8
  %144 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %143, i32 0, i32 8
  store i32 %142, i32* %144, align 4
  %145 = load %struct.pebs_record_skl*, %struct.pebs_record_skl** %12, align 8
  %146 = getelementptr inbounds %struct.pebs_record_skl, %struct.pebs_record_skl* %145, i32 0, i32 13
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.pt_regs*, %struct.pt_regs** %10, align 8
  %149 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %148, i32 0, i32 7
  store i32 %147, i32* %149, align 4
  %150 = load %struct.pebs_record_skl*, %struct.pebs_record_skl** %12, align 8
  %151 = getelementptr inbounds %struct.pebs_record_skl, %struct.pebs_record_skl* %150, i32 0, i32 12
  %152 = load i32, i32* %151, align 4
  %153 = load %struct.pt_regs*, %struct.pt_regs** %10, align 8
  %154 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %153, i32 0, i32 6
  store i32 %152, i32* %154, align 4
  %155 = load %struct.pebs_record_skl*, %struct.pebs_record_skl** %12, align 8
  %156 = getelementptr inbounds %struct.pebs_record_skl, %struct.pebs_record_skl* %155, i32 0, i32 11
  %157 = load i32, i32* %156, align 4
  %158 = load %struct.pt_regs*, %struct.pt_regs** %10, align 8
  %159 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %158, i32 0, i32 5
  store i32 %157, i32* %159, align 4
  %160 = load %struct.pebs_record_skl*, %struct.pebs_record_skl** %12, align 8
  %161 = getelementptr inbounds %struct.pebs_record_skl, %struct.pebs_record_skl* %160, i32 0, i32 10
  %162 = load i32, i32* %161, align 4
  %163 = load %struct.pt_regs*, %struct.pt_regs** %10, align 8
  %164 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %163, i32 0, i32 4
  store i32 %162, i32* %164, align 4
  %165 = load %struct.pebs_record_skl*, %struct.pebs_record_skl** %12, align 8
  %166 = getelementptr inbounds %struct.pebs_record_skl, %struct.pebs_record_skl* %165, i32 0, i32 9
  %167 = load i32, i32* %166, align 4
  %168 = load %struct.pt_regs*, %struct.pt_regs** %10, align 8
  %169 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %168, i32 0, i32 3
  store i32 %167, i32* %169, align 4
  %170 = load %struct.pebs_record_skl*, %struct.pebs_record_skl** %12, align 8
  %171 = getelementptr inbounds %struct.pebs_record_skl, %struct.pebs_record_skl* %170, i32 0, i32 8
  %172 = load i32, i32* %171, align 4
  %173 = load %struct.pt_regs*, %struct.pt_regs** %10, align 8
  %174 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %173, i32 0, i32 2
  store i32 %172, i32* %174, align 4
  %175 = load %struct.pebs_record_skl*, %struct.pebs_record_skl** %12, align 8
  %176 = getelementptr inbounds %struct.pebs_record_skl, %struct.pebs_record_skl* %175, i32 0, i32 7
  %177 = load i32, i32* %176, align 4
  %178 = load %struct.pt_regs*, %struct.pt_regs** %10, align 8
  %179 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %178, i32 0, i32 1
  store i32 %177, i32* %179, align 4
  br label %180

180:                                              ; preds = %99, %82
  %181 = load %struct.perf_event*, %struct.perf_event** %6, align 8
  %182 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %181, i32 0, i32 0
  %183 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 4
  %185 = icmp sgt i32 %184, 1
  br i1 %185, label %186, label %217

186:                                              ; preds = %180
  %187 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @x86_pmu, i32 0, i32 0, i32 0), align 4
  %188 = icmp sge i32 %187, 2
  br i1 %188, label %189, label %200

189:                                              ; preds = %186
  %190 = load %struct.pt_regs*, %struct.pt_regs** %10, align 8
  %191 = load %struct.pebs_record_skl*, %struct.pebs_record_skl** %12, align 8
  %192 = getelementptr inbounds %struct.pebs_record_skl, %struct.pebs_record_skl* %191, i32 0, i32 6
  %193 = load i32, i32* %192, align 4
  %194 = call i32 @set_linear_ip(%struct.pt_regs* %190, i32 %193)
  %195 = load i32, i32* @PERF_EFLAGS_EXACT, align 4
  %196 = load %struct.pt_regs*, %struct.pt_regs** %10, align 8
  %197 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 4
  %199 = or i32 %198, %195
  store i32 %199, i32* %197, align 4
  br label %216

200:                                              ; preds = %186
  %201 = load %struct.pt_regs*, %struct.pt_regs** %10, align 8
  %202 = load %struct.pebs_record_skl*, %struct.pebs_record_skl** %12, align 8
  %203 = getelementptr inbounds %struct.pebs_record_skl, %struct.pebs_record_skl* %202, i32 0, i32 5
  %204 = load i32, i32* %203, align 4
  %205 = call i32 @set_linear_ip(%struct.pt_regs* %201, i32 %204)
  %206 = load %struct.pt_regs*, %struct.pt_regs** %10, align 8
  %207 = call i64 @intel_pmu_pebs_fixup_ip(%struct.pt_regs* %206)
  %208 = icmp ne i64 %207, 0
  br i1 %208, label %209, label %215

209:                                              ; preds = %200
  %210 = load i32, i32* @PERF_EFLAGS_EXACT, align 4
  %211 = load %struct.pt_regs*, %struct.pt_regs** %10, align 8
  %212 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 4
  %214 = or i32 %213, %210
  store i32 %214, i32* %212, align 4
  br label %215

215:                                              ; preds = %209, %200
  br label %216

216:                                              ; preds = %215, %189
  br label %223

217:                                              ; preds = %180
  %218 = load %struct.pt_regs*, %struct.pt_regs** %10, align 8
  %219 = load %struct.pebs_record_skl*, %struct.pebs_record_skl** %12, align 8
  %220 = getelementptr inbounds %struct.pebs_record_skl, %struct.pebs_record_skl* %219, i32 0, i32 5
  %221 = load i32, i32* %220, align 4
  %222 = call i32 @set_linear_ip(%struct.pt_regs* %218, i32 %221)
  br label %223

223:                                              ; preds = %217, %216
  %224 = load i32, i32* %13, align 4
  %225 = load i32, i32* @PERF_SAMPLE_ADDR, align 4
  %226 = load i32, i32* @PERF_SAMPLE_PHYS_ADDR, align 4
  %227 = or i32 %225, %226
  %228 = and i32 %224, %227
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %230, label %239

230:                                              ; preds = %223
  %231 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @x86_pmu, i32 0, i32 0, i32 0), align 4
  %232 = icmp sge i32 %231, 1
  br i1 %232, label %233, label %239

233:                                              ; preds = %230
  %234 = load %struct.pebs_record_skl*, %struct.pebs_record_skl** %12, align 8
  %235 = getelementptr inbounds %struct.pebs_record_skl, %struct.pebs_record_skl* %234, i32 0, i32 4
  %236 = load i32, i32* %235, align 4
  %237 = load %struct.perf_sample_data*, %struct.perf_sample_data** %9, align 8
  %238 = getelementptr inbounds %struct.perf_sample_data, %struct.perf_sample_data* %237, i32 0, i32 4
  store i32 %236, i32* %238, align 4
  br label %239

239:                                              ; preds = %233, %230, %223
  %240 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @x86_pmu, i32 0, i32 0, i32 0), align 4
  %241 = icmp sge i32 %240, 2
  br i1 %241, label %242, label %273

242:                                              ; preds = %239
  %243 = load i32, i32* %13, align 4
  %244 = load i32, i32* @PERF_SAMPLE_WEIGHT, align 4
  %245 = and i32 %243, %244
  %246 = icmp ne i32 %245, 0
  br i1 %246, label %247, label %257

247:                                              ; preds = %242
  %248 = load i32, i32* %14, align 4
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %257, label %250

250:                                              ; preds = %247
  %251 = load %struct.pebs_record_skl*, %struct.pebs_record_skl** %12, align 8
  %252 = getelementptr inbounds %struct.pebs_record_skl, %struct.pebs_record_skl* %251, i32 0, i32 3
  %253 = load i32, i32* %252, align 4
  %254 = call i32 @intel_get_tsx_weight(i32 %253)
  %255 = load %struct.perf_sample_data*, %struct.perf_sample_data** %9, align 8
  %256 = getelementptr inbounds %struct.perf_sample_data, %struct.perf_sample_data* %255, i32 0, i32 3
  store i32 %254, i32* %256, align 8
  br label %257

257:                                              ; preds = %250, %247, %242
  %258 = load i32, i32* %13, align 4
  %259 = load i32, i32* @PERF_SAMPLE_TRANSACTION, align 4
  %260 = and i32 %258, %259
  %261 = icmp ne i32 %260, 0
  br i1 %261, label %262, label %272

262:                                              ; preds = %257
  %263 = load %struct.pebs_record_skl*, %struct.pebs_record_skl** %12, align 8
  %264 = getelementptr inbounds %struct.pebs_record_skl, %struct.pebs_record_skl* %263, i32 0, i32 3
  %265 = load i32, i32* %264, align 4
  %266 = load %struct.pebs_record_skl*, %struct.pebs_record_skl** %12, align 8
  %267 = getelementptr inbounds %struct.pebs_record_skl, %struct.pebs_record_skl* %266, i32 0, i32 2
  %268 = load i32, i32* %267, align 4
  %269 = call i32 @intel_get_tsx_transaction(i32 %265, i32 %268)
  %270 = load %struct.perf_sample_data*, %struct.perf_sample_data** %9, align 8
  %271 = getelementptr inbounds %struct.perf_sample_data, %struct.perf_sample_data* %270, i32 0, i32 2
  store i32 %269, i32* %271, align 4
  br label %272

272:                                              ; preds = %262, %257
  br label %273

273:                                              ; preds = %272, %239
  %274 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @x86_pmu, i32 0, i32 0, i32 0), align 4
  %275 = icmp sge i32 %274, 3
  br i1 %275, label %276, label %289

276:                                              ; preds = %273
  %277 = load %struct.perf_event*, %struct.perf_event** %6, align 8
  %278 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %277, i32 0, i32 0
  %279 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %278, i32 0, i32 2
  %280 = load i64, i64* %279, align 8
  %281 = icmp eq i64 %280, 0
  br i1 %281, label %282, label %289

282:                                              ; preds = %276
  %283 = load %struct.pebs_record_skl*, %struct.pebs_record_skl** %12, align 8
  %284 = getelementptr inbounds %struct.pebs_record_skl, %struct.pebs_record_skl* %283, i32 0, i32 1
  %285 = load i32, i32* %284, align 4
  %286 = call i32 @native_sched_clock_from_tsc(i32 %285)
  %287 = load %struct.perf_sample_data*, %struct.perf_sample_data** %9, align 8
  %288 = getelementptr inbounds %struct.perf_sample_data, %struct.perf_sample_data* %287, i32 0, i32 1
  store i32 %286, i32* %288, align 8
  br label %289

289:                                              ; preds = %282, %276, %273
  %290 = load %struct.perf_event*, %struct.perf_event** %6, align 8
  %291 = call i64 @has_branch_stack(%struct.perf_event* %290)
  %292 = icmp ne i64 %291, 0
  br i1 %292, label %293, label %298

293:                                              ; preds = %289
  %294 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %11, align 8
  %295 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %294, i32 0, i32 0
  %296 = load %struct.perf_sample_data*, %struct.perf_sample_data** %9, align 8
  %297 = getelementptr inbounds %struct.perf_sample_data, %struct.perf_sample_data* %296, i32 0, i32 0
  store i32* %295, i32** %297, align 8
  br label %298

298:                                              ; preds = %20, %293, %289
  ret void
}

declare dso_local %struct.cpu_hw_events* @this_cpu_ptr(i32*) #1

declare dso_local i32 @perf_sample_data_init(%struct.perf_sample_data*, i32, i32) #1

declare dso_local i32 @get_data_src(%struct.perf_event*, i32) #1

declare dso_local i32 @perf_callchain(%struct.perf_event*, %struct.pt_regs*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @set_linear_ip(%struct.pt_regs*, i32) #1

declare dso_local i64 @intel_pmu_pebs_fixup_ip(%struct.pt_regs*) #1

declare dso_local i32 @intel_get_tsx_weight(i32) #1

declare dso_local i32 @intel_get_tsx_transaction(i32, i32) #1

declare dso_local i32 @native_sched_clock_from_tsc(i32) #1

declare dso_local i64 @has_branch_stack(%struct.perf_event*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
