; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/mm/extr_fault.c_do_user_addr_fault.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/mm/extr_fault.c_do_user_addr_fault.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32, i32, %struct.mm_struct* }
%struct.mm_struct = type { i32 }
%struct.pt_regs = type { i32, i32 }
%struct.vm_area_struct = type { i64, i32 }

@FAULT_FLAG_ALLOW_RETRY = common dso_local global i32 0, align 4
@FAULT_FLAG_KILLABLE = common dso_local global i32 0, align 4
@current = common dso_local global %struct.task_struct* null, align 8
@X86_TRAP_PF = common dso_local global i32 0, align 4
@X86_PF_RSVD = common dso_local global i64 0, align 8
@X86_FEATURE_SMAP = common dso_local global i32 0, align 4
@X86_PF_USER = common dso_local global i64 0, align 8
@X86_EFLAGS_AC = common dso_local global i32 0, align 4
@FAULT_FLAG_USER = common dso_local global i32 0, align 4
@X86_EFLAGS_IF = common dso_local global i32 0, align 4
@PERF_COUNT_SW_PAGE_FAULTS = common dso_local global i32 0, align 4
@X86_PF_WRITE = common dso_local global i64 0, align 8
@FAULT_FLAG_WRITE = common dso_local global i32 0, align 4
@X86_PF_INSTR = common dso_local global i64 0, align 8
@FAULT_FLAG_INSTRUCTION = common dso_local global i32 0, align 4
@VM_GROWSDOWN = common dso_local global i32 0, align 4
@VM_FAULT_MAJOR = common dso_local global i32 0, align 4
@VM_FAULT_RETRY = common dso_local global i32 0, align 4
@FAULT_FLAG_TRIED = common dso_local global i32 0, align 4
@SIGBUS = common dso_local global i32 0, align 4
@BUS_ADRERR = common dso_local global i32 0, align 4
@VM_FAULT_ERROR = common dso_local global i32 0, align 4
@PERF_COUNT_SW_PAGE_FAULTS_MAJ = common dso_local global i32 0, align 4
@PERF_COUNT_SW_PAGE_FAULTS_MIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pt_regs*, i64, i64)* @do_user_addr_fault to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_user_addr_fault(%struct.pt_regs* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.pt_regs*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.vm_area_struct*, align 8
  %8 = alloca %struct.task_struct*, align 8
  %9 = alloca %struct.mm_struct*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.pt_regs* %0, %struct.pt_regs** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  store i32 0, i32* %11, align 4
  %13 = load i32, i32* @FAULT_FLAG_ALLOW_RETRY, align 4
  %14 = load i32, i32* @FAULT_FLAG_KILLABLE, align 4
  %15 = or i32 %13, %14
  store i32 %15, i32* %12, align 4
  %16 = load %struct.task_struct*, %struct.task_struct** @current, align 8
  store %struct.task_struct* %16, %struct.task_struct** %8, align 8
  %17 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %18 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %17, i32 0, i32 2
  %19 = load %struct.mm_struct*, %struct.mm_struct** %18, align 8
  store %struct.mm_struct* %19, %struct.mm_struct** %9, align 8
  %20 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %21 = load i32, i32* @X86_TRAP_PF, align 4
  %22 = call i32 @kprobe_page_fault(%struct.pt_regs* %20, i32 %21)
  %23 = call i64 @unlikely(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %3
  br label %306

26:                                               ; preds = %3
  %27 = load i64, i64* %5, align 8
  %28 = load i64, i64* @X86_PF_RSVD, align 8
  %29 = and i64 %27, %28
  %30 = trunc i64 %29 to i32
  %31 = call i64 @unlikely(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %26
  %34 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %35 = load i64, i64* %5, align 8
  %36 = load i64, i64* %6, align 8
  %37 = call i32 @pgtable_bad(%struct.pt_regs* %34, i64 %35, i64 %36)
  br label %38

38:                                               ; preds = %33, %26
  %39 = load i32, i32* @X86_FEATURE_SMAP, align 4
  %40 = call i64 @cpu_feature_enabled(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %55

42:                                               ; preds = %38
  %43 = load i64, i64* %5, align 8
  %44 = load i64, i64* @X86_PF_USER, align 8
  %45 = and i64 %43, %44
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %55, label %47

47:                                               ; preds = %42
  %48 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %49 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @X86_EFLAGS_AC, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  %54 = xor i1 %53, true
  br label %55

55:                                               ; preds = %47, %42, %38
  %56 = phi i1 [ false, %42 ], [ false, %38 ], [ %54, %47 ]
  %57 = zext i1 %56 to i32
  %58 = call i64 @unlikely(i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %55
  %61 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %62 = load i64, i64* %5, align 8
  %63 = load i64, i64* %6, align 8
  %64 = call i32 @bad_area_nosemaphore(%struct.pt_regs* %61, i64 %62, i64 %63)
  br label %306

65:                                               ; preds = %55
  %66 = call i64 (...) @faulthandler_disabled()
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %72, label %68

68:                                               ; preds = %65
  %69 = load %struct.mm_struct*, %struct.mm_struct** %9, align 8
  %70 = icmp ne %struct.mm_struct* %69, null
  %71 = xor i1 %70, true
  br label %72

72:                                               ; preds = %68, %65
  %73 = phi i1 [ true, %65 ], [ %71, %68 ]
  %74 = zext i1 %73 to i32
  %75 = call i64 @unlikely(i32 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %82

77:                                               ; preds = %72
  %78 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %79 = load i64, i64* %5, align 8
  %80 = load i64, i64* %6, align 8
  %81 = call i32 @bad_area_nosemaphore(%struct.pt_regs* %78, i64 %79, i64 %80)
  br label %306

82:                                               ; preds = %72
  %83 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %84 = call i64 @user_mode(%struct.pt_regs* %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %91

86:                                               ; preds = %82
  %87 = call i32 (...) @local_irq_enable()
  %88 = load i32, i32* @FAULT_FLAG_USER, align 4
  %89 = load i32, i32* %12, align 4
  %90 = or i32 %89, %88
  store i32 %90, i32* %12, align 4
  br label %101

91:                                               ; preds = %82
  %92 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %93 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @X86_EFLAGS_IF, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %91
  %99 = call i32 (...) @local_irq_enable()
  br label %100

100:                                              ; preds = %98, %91
  br label %101

101:                                              ; preds = %100, %86
  %102 = load i32, i32* @PERF_COUNT_SW_PAGE_FAULTS, align 4
  %103 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %104 = load i64, i64* %6, align 8
  %105 = call i32 @perf_sw_event(i32 %102, i32 1, %struct.pt_regs* %103, i64 %104)
  %106 = load i64, i64* %5, align 8
  %107 = load i64, i64* @X86_PF_WRITE, align 8
  %108 = and i64 %106, %107
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %114

110:                                              ; preds = %101
  %111 = load i32, i32* @FAULT_FLAG_WRITE, align 4
  %112 = load i32, i32* %12, align 4
  %113 = or i32 %112, %111
  store i32 %113, i32* %12, align 4
  br label %114

114:                                              ; preds = %110, %101
  %115 = load i64, i64* %5, align 8
  %116 = load i64, i64* @X86_PF_INSTR, align 8
  %117 = and i64 %115, %116
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %123

119:                                              ; preds = %114
  %120 = load i32, i32* @FAULT_FLAG_INSTRUCTION, align 4
  %121 = load i32, i32* %12, align 4
  %122 = or i32 %121, %120
  store i32 %122, i32* %12, align 4
  br label %123

123:                                              ; preds = %119, %114
  %124 = load %struct.mm_struct*, %struct.mm_struct** %9, align 8
  %125 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %124, i32 0, i32 0
  %126 = call i32 @down_read_trylock(i32* %125)
  %127 = icmp ne i32 %126, 0
  %128 = xor i1 %127, true
  %129 = zext i1 %128 to i32
  %130 = call i64 @unlikely(i32 %129)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %152

132:                                              ; preds = %123
  %133 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %134 = call i64 @user_mode(%struct.pt_regs* %133)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %147, label %136

136:                                              ; preds = %132
  %137 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %138 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = call i32 @search_exception_tables(i32 %139)
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %147, label %142

142:                                              ; preds = %136
  %143 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %144 = load i64, i64* %5, align 8
  %145 = load i64, i64* %6, align 8
  %146 = call i32 @bad_area_nosemaphore(%struct.pt_regs* %143, i64 %144, i64 %145)
  br label %306

147:                                              ; preds = %136, %132
  br label %148

148:                                              ; preds = %250, %147
  %149 = load %struct.mm_struct*, %struct.mm_struct** %9, align 8
  %150 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %149, i32 0, i32 0
  %151 = call i32 @down_read(i32* %150)
  br label %154

152:                                              ; preds = %123
  %153 = call i32 (...) @might_sleep()
  br label %154

154:                                              ; preds = %152, %148
  %155 = load %struct.mm_struct*, %struct.mm_struct** %9, align 8
  %156 = load i64, i64* %6, align 8
  %157 = call %struct.vm_area_struct* @find_vma(%struct.mm_struct* %155, i64 %156)
  store %struct.vm_area_struct* %157, %struct.vm_area_struct** %7, align 8
  %158 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %159 = icmp ne %struct.vm_area_struct* %158, null
  %160 = xor i1 %159, true
  %161 = zext i1 %160 to i32
  %162 = call i64 @unlikely(i32 %161)
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %169

164:                                              ; preds = %154
  %165 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %166 = load i64, i64* %5, align 8
  %167 = load i64, i64* %6, align 8
  %168 = call i32 @bad_area(%struct.pt_regs* %165, i64 %166, i64 %167)
  br label %306

169:                                              ; preds = %154
  %170 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %171 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %170, i32 0, i32 0
  %172 = load i64, i64* %171, align 8
  %173 = load i64, i64* %6, align 8
  %174 = icmp ule i64 %172, %173
  %175 = zext i1 %174 to i32
  %176 = call i64 @likely(i32 %175)
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %178, label %179

178:                                              ; preds = %169
  br label %207

179:                                              ; preds = %169
  %180 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %181 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %180, i32 0, i32 1
  %182 = load i32, i32* %181, align 8
  %183 = load i32, i32* @VM_GROWSDOWN, align 4
  %184 = and i32 %182, %183
  %185 = icmp ne i32 %184, 0
  %186 = xor i1 %185, true
  %187 = zext i1 %186 to i32
  %188 = call i64 @unlikely(i32 %187)
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %190, label %195

190:                                              ; preds = %179
  %191 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %192 = load i64, i64* %5, align 8
  %193 = load i64, i64* %6, align 8
  %194 = call i32 @bad_area(%struct.pt_regs* %191, i64 %192, i64 %193)
  br label %306

195:                                              ; preds = %179
  %196 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %197 = load i64, i64* %6, align 8
  %198 = call i32 @expand_stack(%struct.vm_area_struct* %196, i64 %197)
  %199 = call i64 @unlikely(i32 %198)
  %200 = icmp ne i64 %199, 0
  br i1 %200, label %201, label %206

201:                                              ; preds = %195
  %202 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %203 = load i64, i64* %5, align 8
  %204 = load i64, i64* %6, align 8
  %205 = call i32 @bad_area(%struct.pt_regs* %202, i64 %203, i64 %204)
  br label %306

206:                                              ; preds = %195
  br label %207

207:                                              ; preds = %206, %178
  %208 = load i64, i64* %5, align 8
  %209 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %210 = call i32 @access_error(i64 %208, %struct.vm_area_struct* %209)
  %211 = call i64 @unlikely(i32 %210)
  %212 = icmp ne i64 %211, 0
  br i1 %212, label %213, label %219

213:                                              ; preds = %207
  %214 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %215 = load i64, i64* %5, align 8
  %216 = load i64, i64* %6, align 8
  %217 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %218 = call i32 @bad_area_access_error(%struct.pt_regs* %214, i64 %215, i64 %216, %struct.vm_area_struct* %217)
  br label %306

219:                                              ; preds = %207
  %220 = load %struct.vm_area_struct*, %struct.vm_area_struct** %7, align 8
  %221 = load i64, i64* %6, align 8
  %222 = load i32, i32* %12, align 4
  %223 = call i32 @handle_mm_fault(%struct.vm_area_struct* %220, i64 %221, i32 %222)
  store i32 %223, i32* %10, align 4
  %224 = load i32, i32* %10, align 4
  %225 = load i32, i32* @VM_FAULT_MAJOR, align 4
  %226 = and i32 %224, %225
  %227 = load i32, i32* %11, align 4
  %228 = or i32 %227, %226
  store i32 %228, i32* %11, align 4
  %229 = load i32, i32* %10, align 4
  %230 = load i32, i32* @VM_FAULT_RETRY, align 4
  %231 = and i32 %229, %230
  %232 = call i64 @unlikely(i32 %231)
  %233 = icmp ne i64 %232, 0
  br i1 %233, label %234, label %265

234:                                              ; preds = %219
  %235 = load i32, i32* %12, align 4
  %236 = load i32, i32* @FAULT_FLAG_ALLOW_RETRY, align 4
  %237 = and i32 %235, %236
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %239, label %252

239:                                              ; preds = %234
  %240 = load i32, i32* @FAULT_FLAG_ALLOW_RETRY, align 4
  %241 = xor i32 %240, -1
  %242 = load i32, i32* %12, align 4
  %243 = and i32 %242, %241
  store i32 %243, i32* %12, align 4
  %244 = load i32, i32* @FAULT_FLAG_TRIED, align 4
  %245 = load i32, i32* %12, align 4
  %246 = or i32 %245, %244
  store i32 %246, i32* %12, align 4
  %247 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %248 = call i32 @fatal_signal_pending(%struct.task_struct* %247)
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %251, label %250

250:                                              ; preds = %239
  br label %148

251:                                              ; preds = %239
  br label %252

252:                                              ; preds = %251, %234
  %253 = load i32, i32* %12, align 4
  %254 = load i32, i32* @FAULT_FLAG_USER, align 4
  %255 = and i32 %253, %254
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %257, label %258

257:                                              ; preds = %252
  br label %306

258:                                              ; preds = %252
  %259 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %260 = load i64, i64* %5, align 8
  %261 = load i64, i64* %6, align 8
  %262 = load i32, i32* @SIGBUS, align 4
  %263 = load i32, i32* @BUS_ADRERR, align 4
  %264 = call i32 @no_context(%struct.pt_regs* %259, i64 %260, i64 %261, i32 %262, i32 %263)
  br label %306

265:                                              ; preds = %219
  %266 = load %struct.mm_struct*, %struct.mm_struct** %9, align 8
  %267 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %266, i32 0, i32 0
  %268 = call i32 @up_read(i32* %267)
  %269 = load i32, i32* %10, align 4
  %270 = load i32, i32* @VM_FAULT_ERROR, align 4
  %271 = and i32 %269, %270
  %272 = call i64 @unlikely(i32 %271)
  %273 = icmp ne i64 %272, 0
  br i1 %273, label %274, label %280

274:                                              ; preds = %265
  %275 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %276 = load i64, i64* %5, align 8
  %277 = load i64, i64* %6, align 8
  %278 = load i32, i32* %10, align 4
  %279 = call i32 @mm_fault_error(%struct.pt_regs* %275, i64 %276, i64 %277, i32 %278)
  br label %306

280:                                              ; preds = %265
  %281 = load i32, i32* %11, align 4
  %282 = icmp ne i32 %281, 0
  br i1 %282, label %283, label %292

283:                                              ; preds = %280
  %284 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %285 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %284, i32 0, i32 1
  %286 = load i32, i32* %285, align 4
  %287 = add nsw i32 %286, 1
  store i32 %287, i32* %285, align 4
  %288 = load i32, i32* @PERF_COUNT_SW_PAGE_FAULTS_MAJ, align 4
  %289 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %290 = load i64, i64* %6, align 8
  %291 = call i32 @perf_sw_event(i32 %288, i32 1, %struct.pt_regs* %289, i64 %290)
  br label %301

292:                                              ; preds = %280
  %293 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %294 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %293, i32 0, i32 0
  %295 = load i32, i32* %294, align 8
  %296 = add nsw i32 %295, 1
  store i32 %296, i32* %294, align 8
  %297 = load i32, i32* @PERF_COUNT_SW_PAGE_FAULTS_MIN, align 4
  %298 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %299 = load i64, i64* %6, align 8
  %300 = call i32 @perf_sw_event(i32 %297, i32 1, %struct.pt_regs* %298, i64 %299)
  br label %301

301:                                              ; preds = %292, %283
  %302 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %303 = load i64, i64* %6, align 8
  %304 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %305 = call i32 @check_v8086_mode(%struct.pt_regs* %302, i64 %303, %struct.task_struct* %304)
  br label %306

306:                                              ; preds = %301, %274, %258, %257, %213, %201, %190, %164, %142, %77, %60, %25
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @kprobe_page_fault(%struct.pt_regs*, i32) #1

declare dso_local i32 @pgtable_bad(%struct.pt_regs*, i64, i64) #1

declare dso_local i64 @cpu_feature_enabled(i32) #1

declare dso_local i32 @bad_area_nosemaphore(%struct.pt_regs*, i64, i64) #1

declare dso_local i64 @faulthandler_disabled(...) #1

declare dso_local i64 @user_mode(%struct.pt_regs*) #1

declare dso_local i32 @local_irq_enable(...) #1

declare dso_local i32 @perf_sw_event(i32, i32, %struct.pt_regs*, i64) #1

declare dso_local i32 @down_read_trylock(i32*) #1

declare dso_local i32 @search_exception_tables(i32) #1

declare dso_local i32 @down_read(i32*) #1

declare dso_local i32 @might_sleep(...) #1

declare dso_local %struct.vm_area_struct* @find_vma(%struct.mm_struct*, i64) #1

declare dso_local i32 @bad_area(%struct.pt_regs*, i64, i64) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @expand_stack(%struct.vm_area_struct*, i64) #1

declare dso_local i32 @access_error(i64, %struct.vm_area_struct*) #1

declare dso_local i32 @bad_area_access_error(%struct.pt_regs*, i64, i64, %struct.vm_area_struct*) #1

declare dso_local i32 @handle_mm_fault(%struct.vm_area_struct*, i64, i32) #1

declare dso_local i32 @fatal_signal_pending(%struct.task_struct*) #1

declare dso_local i32 @no_context(%struct.pt_regs*, i64, i64, i32, i32) #1

declare dso_local i32 @up_read(i32*) #1

declare dso_local i32 @mm_fault_error(%struct.pt_regs*, i64, i64, i32) #1

declare dso_local i32 @check_v8086_mode(%struct.pt_regs*, i64, %struct.task_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
