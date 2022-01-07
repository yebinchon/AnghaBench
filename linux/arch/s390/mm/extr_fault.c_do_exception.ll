; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/mm/extr_fault.c_do_exception.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/mm/extr_fault.c_do_exception.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { %struct.TYPE_3__, i32, i32, %struct.mm_struct* }
%struct.TYPE_3__ = type { i64, i32, i32, i32 }
%struct.mm_struct = type { i32 }
%struct.TYPE_4__ = type { i64 }
%struct.pt_regs = type { i64, i32 }
%struct.gmap = type { i64 }
%struct.vm_area_struct = type { i64, i32 }

@current = common dso_local global %struct.task_struct* null, align 8
@PIF_PER_TRAP = common dso_local global i32 0, align 4
@VM_FAULT_BADCONTEXT = common dso_local global i32 0, align 4
@VM_FAULT_BADMAP = common dso_local global i32 0, align 4
@__FAIL_ADDR_MASK = common dso_local global i64 0, align 8
@PERF_COUNT_SW_PAGE_FAULTS = common dso_local global i32 0, align 4
@FAULT_FLAG_ALLOW_RETRY = common dso_local global i32 0, align 4
@FAULT_FLAG_KILLABLE = common dso_local global i32 0, align 4
@FAULT_FLAG_USER = common dso_local global i32 0, align 4
@VM_WRITE = common dso_local global i32 0, align 4
@store_indication = common dso_local global i64 0, align 8
@FAULT_FLAG_WRITE = common dso_local global i32 0, align 4
@CONFIG_PGSTE = common dso_local global i32 0, align 4
@S390_lowcore = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@EFAULT = common dso_local global i64 0, align 8
@FAULT_FLAG_RETRY_NOWAIT = common dso_local global i32 0, align 4
@VM_GROWSDOWN = common dso_local global i32 0, align 4
@VM_FAULT_BADACCESS = common dso_local global i32 0, align 4
@HPAGE_MASK = common dso_local global i64 0, align 8
@VM_FAULT_RETRY = common dso_local global i32 0, align 4
@VM_FAULT_SIGNAL = common dso_local global i32 0, align 4
@VM_FAULT_ERROR = common dso_local global i32 0, align 4
@VM_FAULT_MAJOR = common dso_local global i32 0, align 4
@PERF_COUNT_SW_PAGE_FAULTS_MAJ = common dso_local global i32 0, align 4
@PERF_COUNT_SW_PAGE_FAULTS_MIN = common dso_local global i32 0, align 4
@VM_FAULT_PFAULT = common dso_local global i32 0, align 4
@FAULT_FLAG_TRIED = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i64 0, align 8
@VM_FAULT_OOM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pt_regs*, i32)* @do_exception to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_exception(%struct.pt_regs* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pt_regs*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.gmap*, align 8
  %7 = alloca %struct.task_struct*, align 8
  %8 = alloca %struct.mm_struct*, align 8
  %9 = alloca %struct.vm_area_struct*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.pt_regs* %0, %struct.pt_regs** %4, align 8
  store i32 %1, i32* %5, align 4
  %15 = load %struct.task_struct*, %struct.task_struct** @current, align 8
  store %struct.task_struct* %15, %struct.task_struct** %7, align 8
  %16 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %17 = load i32, i32* @PIF_PER_TRAP, align 4
  %18 = call i32 @clear_pt_regs_flag(%struct.pt_regs* %16, i32 %17)
  %19 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %20 = call i64 @kprobe_page_fault(%struct.pt_regs* %19, i32 14)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %311

23:                                               ; preds = %2
  %24 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  %25 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %24, i32 0, i32 3
  %26 = load %struct.mm_struct*, %struct.mm_struct** %25, align 8
  store %struct.mm_struct* %26, %struct.mm_struct** %8, align 8
  %27 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %28 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  store i64 %29, i64* %11, align 8
  %30 = load i32, i32* @VM_FAULT_BADCONTEXT, align 4
  store i32 %30, i32* %14, align 4
  %31 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %32 = call i32 @get_fault_type(%struct.pt_regs* %31)
  store i32 %32, i32* %10, align 4
  %33 = load i32, i32* %10, align 4
  switch i32 %33, label %45 [
    i32 130, label %34
    i32 128, label %35
    i32 129, label %37
    i32 131, label %37
  ]

34:                                               ; preds = %23
  br label %309

35:                                               ; preds = %23
  %36 = load i32, i32* @VM_FAULT_BADMAP, align 4
  store i32 %36, i32* %14, align 4
  br label %309

37:                                               ; preds = %23, %23
  %38 = call i32 (...) @faulthandler_disabled()
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %37
  %41 = load %struct.mm_struct*, %struct.mm_struct** %8, align 8
  %42 = icmp ne %struct.mm_struct* %41, null
  br i1 %42, label %44, label %43

43:                                               ; preds = %40, %37
  br label %309

44:                                               ; preds = %40
  br label %45

45:                                               ; preds = %23, %44
  %46 = load i64, i64* %11, align 8
  %47 = load i64, i64* @__FAIL_ADDR_MASK, align 8
  %48 = and i64 %46, %47
  store i64 %48, i64* %12, align 8
  %49 = load i32, i32* @PERF_COUNT_SW_PAGE_FAULTS, align 4
  %50 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %51 = load i64, i64* %12, align 8
  %52 = call i32 @perf_sw_event(i32 %49, i32 1, %struct.pt_regs* %50, i64 %51)
  %53 = load i32, i32* @FAULT_FLAG_ALLOW_RETRY, align 4
  %54 = load i32, i32* @FAULT_FLAG_KILLABLE, align 4
  %55 = or i32 %53, %54
  store i32 %55, i32* %13, align 4
  %56 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %57 = call i64 @user_mode(%struct.pt_regs* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %45
  %60 = load i32, i32* @FAULT_FLAG_USER, align 4
  %61 = load i32, i32* %13, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %13, align 4
  br label %63

63:                                               ; preds = %59, %45
  %64 = load i32, i32* %5, align 4
  %65 = load i32, i32* @VM_WRITE, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %72, label %67

67:                                               ; preds = %63
  %68 = load i64, i64* %11, align 8
  %69 = load i64, i64* @store_indication, align 8
  %70 = and i64 %68, %69
  %71 = icmp eq i64 %70, 1024
  br i1 %71, label %72, label %76

72:                                               ; preds = %67, %63
  %73 = load i32, i32* @FAULT_FLAG_WRITE, align 4
  %74 = load i32, i32* %13, align 4
  %75 = or i32 %74, %73
  store i32 %75, i32* %13, align 4
  br label %76

76:                                               ; preds = %72, %67
  %77 = load %struct.mm_struct*, %struct.mm_struct** %8, align 8
  %78 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %77, i32 0, i32 0
  %79 = call i32 @down_read(i32* %78)
  store %struct.gmap* null, %struct.gmap** %6, align 8
  %80 = load i32, i32* @CONFIG_PGSTE, align 4
  %81 = call i64 @IS_ENABLED(i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %129

83:                                               ; preds = %76
  %84 = load i32, i32* %10, align 4
  %85 = icmp eq i32 %84, 131
  br i1 %85, label %86, label %129

86:                                               ; preds = %83
  %87 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @S390_lowcore, i32 0, i32 0), align 8
  %88 = inttoptr i64 %87 to %struct.gmap*
  store %struct.gmap* %88, %struct.gmap** %6, align 8
  %89 = load i64, i64* %12, align 8
  %90 = load %struct.task_struct*, %struct.task_struct** @current, align 8
  %91 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 0
  store i64 %89, i64* %92, align 8
  %93 = load i32, i32* %13, align 4
  %94 = load i32, i32* @FAULT_FLAG_WRITE, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  %97 = xor i1 %96, true
  %98 = xor i1 %97, true
  %99 = zext i1 %98 to i32
  %100 = load %struct.task_struct*, %struct.task_struct** @current, align 8
  %101 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 1
  store i32 %99, i32* %102, align 8
  %103 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %104 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 8
  %106 = and i32 %105, 65535
  %107 = load %struct.task_struct*, %struct.task_struct** @current, align 8
  %108 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %108, i32 0, i32 2
  store i32 %106, i32* %109, align 4
  %110 = load %struct.gmap*, %struct.gmap** %6, align 8
  %111 = load i64, i64* %12, align 8
  %112 = call i64 @__gmap_translate(%struct.gmap* %110, i64 %111)
  store i64 %112, i64* %12, align 8
  %113 = load i64, i64* %12, align 8
  %114 = load i64, i64* @EFAULT, align 8
  %115 = sub i64 0, %114
  %116 = icmp eq i64 %113, %115
  br i1 %116, label %117, label %119

117:                                              ; preds = %86
  %118 = load i32, i32* @VM_FAULT_BADMAP, align 4
  store i32 %118, i32* %14, align 4
  br label %305

119:                                              ; preds = %86
  %120 = load %struct.gmap*, %struct.gmap** %6, align 8
  %121 = getelementptr inbounds %struct.gmap, %struct.gmap* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %128

124:                                              ; preds = %119
  %125 = load i32, i32* @FAULT_FLAG_RETRY_NOWAIT, align 4
  %126 = load i32, i32* %13, align 4
  %127 = or i32 %126, %125
  store i32 %127, i32* %13, align 4
  br label %128

128:                                              ; preds = %124, %119
  br label %129

129:                                              ; preds = %128, %83, %76
  br label %130

130:                                              ; preds = %261, %129
  %131 = load i32, i32* @VM_FAULT_BADMAP, align 4
  store i32 %131, i32* %14, align 4
  %132 = load %struct.mm_struct*, %struct.mm_struct** %8, align 8
  %133 = load i64, i64* %12, align 8
  %134 = call %struct.vm_area_struct* @find_vma(%struct.mm_struct* %132, i64 %133)
  store %struct.vm_area_struct* %134, %struct.vm_area_struct** %9, align 8
  %135 = load %struct.vm_area_struct*, %struct.vm_area_struct** %9, align 8
  %136 = icmp ne %struct.vm_area_struct* %135, null
  br i1 %136, label %138, label %137

137:                                              ; preds = %130
  br label %305

138:                                              ; preds = %130
  %139 = load %struct.vm_area_struct*, %struct.vm_area_struct** %9, align 8
  %140 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = load i64, i64* %12, align 8
  %143 = icmp ugt i64 %141, %142
  %144 = zext i1 %143 to i32
  %145 = call i64 @unlikely(i32 %144)
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %162

147:                                              ; preds = %138
  %148 = load %struct.vm_area_struct*, %struct.vm_area_struct** %9, align 8
  %149 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 8
  %151 = load i32, i32* @VM_GROWSDOWN, align 4
  %152 = and i32 %150, %151
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %155, label %154

154:                                              ; preds = %147
  br label %305

155:                                              ; preds = %147
  %156 = load %struct.vm_area_struct*, %struct.vm_area_struct** %9, align 8
  %157 = load i64, i64* %12, align 8
  %158 = call i64 @expand_stack(%struct.vm_area_struct* %156, i64 %157)
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %161

160:                                              ; preds = %155
  br label %305

161:                                              ; preds = %155
  br label %162

162:                                              ; preds = %161, %138
  %163 = load i32, i32* @VM_FAULT_BADACCESS, align 4
  store i32 %163, i32* %14, align 4
  %164 = load %struct.vm_area_struct*, %struct.vm_area_struct** %9, align 8
  %165 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 8
  %167 = load i32, i32* %5, align 4
  %168 = and i32 %166, %167
  %169 = icmp ne i32 %168, 0
  %170 = xor i1 %169, true
  %171 = zext i1 %170 to i32
  %172 = call i64 @unlikely(i32 %171)
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %175

174:                                              ; preds = %162
  br label %305

175:                                              ; preds = %162
  %176 = load %struct.vm_area_struct*, %struct.vm_area_struct** %9, align 8
  %177 = call i64 @is_vm_hugetlb_page(%struct.vm_area_struct* %176)
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %179, label %183

179:                                              ; preds = %175
  %180 = load i64, i64* @HPAGE_MASK, align 8
  %181 = load i64, i64* %12, align 8
  %182 = and i64 %181, %180
  store i64 %182, i64* %12, align 8
  br label %183

183:                                              ; preds = %179, %175
  %184 = load %struct.vm_area_struct*, %struct.vm_area_struct** %9, align 8
  %185 = load i64, i64* %12, align 8
  %186 = load i32, i32* %13, align 4
  %187 = call i32 @handle_mm_fault(%struct.vm_area_struct* %184, i64 %185, i32 %186)
  store i32 %187, i32* %14, align 4
  %188 = load i32, i32* %14, align 4
  %189 = load i32, i32* @VM_FAULT_RETRY, align 4
  %190 = and i32 %188, %189
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %204

192:                                              ; preds = %183
  %193 = load %struct.task_struct*, %struct.task_struct** @current, align 8
  %194 = call i64 @fatal_signal_pending(%struct.task_struct* %193)
  %195 = icmp ne i64 %194, 0
  br i1 %195, label %196, label %204

196:                                              ; preds = %192
  %197 = load i32, i32* @VM_FAULT_SIGNAL, align 4
  store i32 %197, i32* %14, align 4
  %198 = load i32, i32* %13, align 4
  %199 = load i32, i32* @FAULT_FLAG_RETRY_NOWAIT, align 4
  %200 = and i32 %198, %199
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %203

202:                                              ; preds = %196
  br label %305

203:                                              ; preds = %196
  br label %309

204:                                              ; preds = %192, %183
  %205 = load i32, i32* %14, align 4
  %206 = load i32, i32* @VM_FAULT_ERROR, align 4
  %207 = and i32 %205, %206
  %208 = call i64 @unlikely(i32 %207)
  %209 = icmp ne i64 %208, 0
  br i1 %209, label %210, label %211

210:                                              ; preds = %204
  br label %305

211:                                              ; preds = %204
  %212 = load i32, i32* %13, align 4
  %213 = load i32, i32* @FAULT_FLAG_ALLOW_RETRY, align 4
  %214 = and i32 %212, %213
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %275

216:                                              ; preds = %211
  %217 = load i32, i32* %14, align 4
  %218 = load i32, i32* @VM_FAULT_MAJOR, align 4
  %219 = and i32 %217, %218
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %221, label %230

221:                                              ; preds = %216
  %222 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  %223 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %222, i32 0, i32 2
  %224 = load i32, i32* %223, align 4
  %225 = add nsw i32 %224, 1
  store i32 %225, i32* %223, align 4
  %226 = load i32, i32* @PERF_COUNT_SW_PAGE_FAULTS_MAJ, align 4
  %227 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %228 = load i64, i64* %12, align 8
  %229 = call i32 @perf_sw_event(i32 %226, i32 1, %struct.pt_regs* %227, i64 %228)
  br label %239

230:                                              ; preds = %216
  %231 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  %232 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %231, i32 0, i32 1
  %233 = load i32, i32* %232, align 8
  %234 = add nsw i32 %233, 1
  store i32 %234, i32* %232, align 8
  %235 = load i32, i32* @PERF_COUNT_SW_PAGE_FAULTS_MIN, align 4
  %236 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %237 = load i64, i64* %12, align 8
  %238 = call i32 @perf_sw_event(i32 %235, i32 1, %struct.pt_regs* %236, i64 %237)
  br label %239

239:                                              ; preds = %230, %221
  %240 = load i32, i32* %14, align 4
  %241 = load i32, i32* @VM_FAULT_RETRY, align 4
  %242 = and i32 %240, %241
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %244, label %274

244:                                              ; preds = %239
  %245 = load i32, i32* @CONFIG_PGSTE, align 4
  %246 = call i64 @IS_ENABLED(i32 %245)
  %247 = icmp ne i64 %246, 0
  br i1 %247, label %248, label %261

248:                                              ; preds = %244
  %249 = load %struct.gmap*, %struct.gmap** %6, align 8
  %250 = icmp ne %struct.gmap* %249, null
  br i1 %250, label %251, label %261

251:                                              ; preds = %248
  %252 = load i32, i32* %13, align 4
  %253 = load i32, i32* @FAULT_FLAG_RETRY_NOWAIT, align 4
  %254 = and i32 %252, %253
  %255 = icmp ne i32 %254, 0
  br i1 %255, label %256, label %261

256:                                              ; preds = %251
  %257 = load %struct.task_struct*, %struct.task_struct** @current, align 8
  %258 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %257, i32 0, i32 0
  %259 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %258, i32 0, i32 3
  store i32 1, i32* %259, align 8
  %260 = load i32, i32* @VM_FAULT_PFAULT, align 4
  store i32 %260, i32* %14, align 4
  br label %305

261:                                              ; preds = %251, %248, %244
  %262 = load i32, i32* @FAULT_FLAG_ALLOW_RETRY, align 4
  %263 = load i32, i32* @FAULT_FLAG_RETRY_NOWAIT, align 4
  %264 = or i32 %262, %263
  %265 = xor i32 %264, -1
  %266 = load i32, i32* %13, align 4
  %267 = and i32 %266, %265
  store i32 %267, i32* %13, align 4
  %268 = load i32, i32* @FAULT_FLAG_TRIED, align 4
  %269 = load i32, i32* %13, align 4
  %270 = or i32 %269, %268
  store i32 %270, i32* %13, align 4
  %271 = load %struct.mm_struct*, %struct.mm_struct** %8, align 8
  %272 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %271, i32 0, i32 0
  %273 = call i32 @down_read(i32* %272)
  br label %130

274:                                              ; preds = %239
  br label %275

275:                                              ; preds = %274, %211
  %276 = load i32, i32* @CONFIG_PGSTE, align 4
  %277 = call i64 @IS_ENABLED(i32 %276)
  %278 = icmp ne i64 %277, 0
  br i1 %278, label %279, label %304

279:                                              ; preds = %275
  %280 = load %struct.gmap*, %struct.gmap** %6, align 8
  %281 = icmp ne %struct.gmap* %280, null
  br i1 %281, label %282, label %304

282:                                              ; preds = %279
  %283 = load %struct.gmap*, %struct.gmap** %6, align 8
  %284 = load %struct.task_struct*, %struct.task_struct** @current, align 8
  %285 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %284, i32 0, i32 0
  %286 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %285, i32 0, i32 0
  %287 = load i64, i64* %286, align 8
  %288 = load i64, i64* %12, align 8
  %289 = call i64 @__gmap_link(%struct.gmap* %283, i64 %287, i64 %288)
  store i64 %289, i64* %12, align 8
  %290 = load i64, i64* %12, align 8
  %291 = load i64, i64* @EFAULT, align 8
  %292 = sub i64 0, %291
  %293 = icmp eq i64 %290, %292
  br i1 %293, label %294, label %296

294:                                              ; preds = %282
  %295 = load i32, i32* @VM_FAULT_BADMAP, align 4
  store i32 %295, i32* %14, align 4
  br label %305

296:                                              ; preds = %282
  %297 = load i64, i64* %12, align 8
  %298 = load i64, i64* @ENOMEM, align 8
  %299 = sub i64 0, %298
  %300 = icmp eq i64 %297, %299
  br i1 %300, label %301, label %303

301:                                              ; preds = %296
  %302 = load i32, i32* @VM_FAULT_OOM, align 4
  store i32 %302, i32* %14, align 4
  br label %305

303:                                              ; preds = %296
  br label %304

304:                                              ; preds = %303, %279, %275
  store i32 0, i32* %14, align 4
  br label %305

305:                                              ; preds = %304, %301, %294, %256, %210, %202, %174, %160, %154, %137, %117
  %306 = load %struct.mm_struct*, %struct.mm_struct** %8, align 8
  %307 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %306, i32 0, i32 0
  %308 = call i32 @up_read(i32* %307)
  br label %309

309:                                              ; preds = %305, %203, %43, %35, %34
  %310 = load i32, i32* %14, align 4
  store i32 %310, i32* %3, align 4
  br label %311

311:                                              ; preds = %309, %22
  %312 = load i32, i32* %3, align 4
  ret i32 %312
}

declare dso_local i32 @clear_pt_regs_flag(%struct.pt_regs*, i32) #1

declare dso_local i64 @kprobe_page_fault(%struct.pt_regs*, i32) #1

declare dso_local i32 @get_fault_type(%struct.pt_regs*) #1

declare dso_local i32 @faulthandler_disabled(...) #1

declare dso_local i32 @perf_sw_event(i32, i32, %struct.pt_regs*, i64) #1

declare dso_local i64 @user_mode(%struct.pt_regs*) #1

declare dso_local i32 @down_read(i32*) #1

declare dso_local i64 @IS_ENABLED(i32) #1

declare dso_local i64 @__gmap_translate(%struct.gmap*, i64) #1

declare dso_local %struct.vm_area_struct* @find_vma(%struct.mm_struct*, i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @expand_stack(%struct.vm_area_struct*, i64) #1

declare dso_local i64 @is_vm_hugetlb_page(%struct.vm_area_struct*) #1

declare dso_local i32 @handle_mm_fault(%struct.vm_area_struct*, i64, i32) #1

declare dso_local i64 @fatal_signal_pending(%struct.task_struct*) #1

declare dso_local i64 @__gmap_link(%struct.gmap*, i64, i64) #1

declare dso_local i32 @up_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
