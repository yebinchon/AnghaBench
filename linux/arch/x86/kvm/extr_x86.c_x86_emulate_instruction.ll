; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_x86.c_x86_emulate_instruction.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_x86.c_x86_emulate_instruction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64 (%struct.kvm_vcpu*)* }
%struct.kvm_vcpu = type { %struct.TYPE_9__, i32, %struct.TYPE_7__, i64 }
%struct.TYPE_9__ = type { i32, i32, i32, i32, i32, %struct.TYPE_6__, %struct.x86_emulate_ctxt }
%struct.TYPE_6__ = type { i64, i32 }
%struct.x86_emulate_ctxt = type { i32, i32, i32, i32, i64, i32, %struct.TYPE_8__, i64, i32 }
%struct.TYPE_8__ = type { i32, i64 }
%struct.TYPE_7__ = type { i32, i32 }

@EMULTYPE_NO_DECODE = common dso_local global i32 0, align 4
@EMULTYPE_SKIP = common dso_local global i32 0, align 4
@EMULTYPE_TRAP_UD = common dso_local global i32 0, align 4
@EMULATION_OK = common dso_local global i32 0, align 4
@EMULTYPE_TRAP_UD_FORCED = common dso_local global i32 0, align 4
@UD_VECTOR = common dso_local global i32 0, align 4
@EXCPT_TRAP = common dso_local global i64 0, align 8
@EMULTYPE_VMWARE_GP = common dso_local global i32 0, align 4
@GP_VECTOR = common dso_local global i32 0, align 4
@X86_EFLAGS_RF = common dso_local global i32 0, align 4
@EMULATION_INTERCEPTED = common dso_local global i32 0, align 4
@EMULATION_FAILED = common dso_local global i32 0, align 4
@complete_emulated_pio = common dso_local global i32 0, align 4
@complete_emulated_mmio = common dso_local global i32 0, align 4
@EMULATION_RESTART = common dso_local global i32 0, align 4
@kvm_x86_ops = common dso_local global %struct.TYPE_10__* null, align 8
@X86_EFLAGS_IF = common dso_local global i64 0, align 8
@KVM_REQ_EVENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @x86_emulate_instruction(%struct.kvm_vcpu* %0, i64 %1, i32 %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.kvm_vcpu*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.x86_emulate_ctxt*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %7, align 8
  store i64 %1, i64* %8, align 8
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  %17 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %18 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 6
  store %struct.x86_emulate_ctxt* %19, %struct.x86_emulate_ctxt** %13, align 8
  store i32 1, i32* %14, align 4
  %20 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %21 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* %15, align 4
  %24 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %25 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 1
  store i32 1, i32* %26, align 4
  %27 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %28 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 0
  store i32 0, i32* %29, align 8
  %30 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %31 = call i32 @kvm_clear_exception_queue(%struct.kvm_vcpu* %30)
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* @EMULTYPE_NO_DECODE, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %131, label %36

36:                                               ; preds = %5
  %37 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %38 = call i32 @init_emulate_ctxt(%struct.kvm_vcpu* %37)
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* @EMULTYPE_SKIP, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %49, label %43

43:                                               ; preds = %36
  %44 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %45 = call i64 @kvm_vcpu_check_breakpoint(%struct.kvm_vcpu* %44, i32* %12)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %43
  %48 = load i32, i32* %12, align 4
  store i32 %48, i32* %6, align 4
  br label %359

49:                                               ; preds = %43, %36
  %50 = load %struct.x86_emulate_ctxt*, %struct.x86_emulate_ctxt** %13, align 8
  %51 = getelementptr inbounds %struct.x86_emulate_ctxt, %struct.x86_emulate_ctxt* %50, i32 0, i32 7
  store i64 0, i64* %51, align 8
  %52 = load %struct.x86_emulate_ctxt*, %struct.x86_emulate_ctxt** %13, align 8
  %53 = getelementptr inbounds %struct.x86_emulate_ctxt, %struct.x86_emulate_ctxt* %52, i32 0, i32 0
  store i32 0, i32* %53, align 8
  %54 = load %struct.x86_emulate_ctxt*, %struct.x86_emulate_ctxt** %13, align 8
  %55 = getelementptr inbounds %struct.x86_emulate_ctxt, %struct.x86_emulate_ctxt* %54, i32 0, i32 6
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 0
  store i32 -1, i32* %56, align 8
  %57 = load %struct.x86_emulate_ctxt*, %struct.x86_emulate_ctxt** %13, align 8
  %58 = getelementptr inbounds %struct.x86_emulate_ctxt, %struct.x86_emulate_ctxt* %57, i32 0, i32 1
  store i32 0, i32* %58, align 4
  %59 = load i32, i32* %9, align 4
  %60 = load i32, i32* @EMULTYPE_TRAP_UD, align 4
  %61 = and i32 %59, %60
  %62 = load %struct.x86_emulate_ctxt*, %struct.x86_emulate_ctxt** %13, align 8
  %63 = getelementptr inbounds %struct.x86_emulate_ctxt, %struct.x86_emulate_ctxt* %62, i32 0, i32 2
  store i32 %61, i32* %63, align 8
  %64 = load %struct.x86_emulate_ctxt*, %struct.x86_emulate_ctxt** %13, align 8
  %65 = load i8*, i8** %10, align 8
  %66 = load i32, i32* %11, align 4
  %67 = call i32 @x86_decode_insn(%struct.x86_emulate_ctxt* %64, i8* %65, i32 %66)
  store i32 %67, i32* %12, align 4
  %68 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %69 = call i32 @trace_kvm_emulate_insn_start(%struct.kvm_vcpu* %68)
  %70 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %71 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %72, align 4
  %75 = load i32, i32* %12, align 4
  %76 = load i32, i32* @EMULATION_OK, align 4
  %77 = icmp ne i32 %75, %76
  br i1 %77, label %78, label %130

78:                                               ; preds = %49
  %79 = load i32, i32* %9, align 4
  %80 = load i32, i32* @EMULTYPE_TRAP_UD, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %88, label %83

83:                                               ; preds = %78
  %84 = load i32, i32* %9, align 4
  %85 = load i32, i32* @EMULTYPE_TRAP_UD_FORCED, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %92

88:                                               ; preds = %83, %78
  %89 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %90 = load i32, i32* @UD_VECTOR, align 4
  %91 = call i32 @kvm_queue_exception(%struct.kvm_vcpu* %89, i32 %90)
  store i32 1, i32* %6, align 4
  br label %359

92:                                               ; preds = %83
  %93 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %94 = load i64, i64* %8, align 8
  %95 = load i32, i32* %15, align 4
  %96 = load i32, i32* %9, align 4
  %97 = call i64 @reexecute_instruction(%struct.kvm_vcpu* %93, i64 %94, i32 %95, i32 %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %92
  store i32 1, i32* %6, align 4
  br label %359

100:                                              ; preds = %92
  %101 = load %struct.x86_emulate_ctxt*, %struct.x86_emulate_ctxt** %13, align 8
  %102 = getelementptr inbounds %struct.x86_emulate_ctxt, %struct.x86_emulate_ctxt* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %126

105:                                              ; preds = %100
  %106 = load %struct.x86_emulate_ctxt*, %struct.x86_emulate_ctxt** %13, align 8
  %107 = getelementptr inbounds %struct.x86_emulate_ctxt, %struct.x86_emulate_ctxt* %106, i32 0, i32 6
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = load i32, i32* @UD_VECTOR, align 4
  %111 = icmp eq i32 %109, %110
  br i1 %111, label %120, label %112

112:                                              ; preds = %105
  %113 = load %struct.x86_emulate_ctxt*, %struct.x86_emulate_ctxt** %13, align 8
  %114 = getelementptr inbounds %struct.x86_emulate_ctxt, %struct.x86_emulate_ctxt* %113, i32 0, i32 6
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = call i64 @exception_type(i32 %116)
  %118 = load i64, i64* @EXCPT_TRAP, align 8
  %119 = icmp eq i64 %117, %118
  br label %120

120:                                              ; preds = %112, %105
  %121 = phi i1 [ true, %105 ], [ %119, %112 ]
  %122 = zext i1 %121 to i32
  %123 = call i32 @WARN_ON_ONCE(i32 %122)
  %124 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %125 = call i64 @inject_emulated_exception(%struct.kvm_vcpu* %124)
  store i32 1, i32* %6, align 4
  br label %359

126:                                              ; preds = %100
  %127 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %128 = load i32, i32* %9, align 4
  %129 = call i32 @handle_emulation_failure(%struct.kvm_vcpu* %127, i32 %128)
  store i32 %129, i32* %6, align 4
  br label %359

130:                                              ; preds = %49
  br label %131

131:                                              ; preds = %130, %5
  %132 = load i32, i32* %9, align 4
  %133 = load i32, i32* @EMULTYPE_VMWARE_GP, align 4
  %134 = and i32 %132, %133
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %144

136:                                              ; preds = %131
  %137 = load %struct.x86_emulate_ctxt*, %struct.x86_emulate_ctxt** %13, align 8
  %138 = call i32 @is_vmware_backdoor_opcode(%struct.x86_emulate_ctxt* %137)
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %144, label %140

140:                                              ; preds = %136
  %141 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %142 = load i32, i32* @GP_VECTOR, align 4
  %143 = call i32 @kvm_queue_exception_e(%struct.kvm_vcpu* %141, i32 %142, i32 0)
  store i32 1, i32* %6, align 4
  br label %359

144:                                              ; preds = %136, %131
  %145 = load i32, i32* %9, align 4
  %146 = load i32, i32* @EMULTYPE_SKIP, align 4
  %147 = and i32 %145, %146
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %171

149:                                              ; preds = %144
  %150 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %151 = load %struct.x86_emulate_ctxt*, %struct.x86_emulate_ctxt** %13, align 8
  %152 = getelementptr inbounds %struct.x86_emulate_ctxt, %struct.x86_emulate_ctxt* %151, i32 0, i32 8
  %153 = load i32, i32* %152, align 8
  %154 = call i32 @kvm_rip_write(%struct.kvm_vcpu* %150, i32 %153)
  %155 = load %struct.x86_emulate_ctxt*, %struct.x86_emulate_ctxt** %13, align 8
  %156 = getelementptr inbounds %struct.x86_emulate_ctxt, %struct.x86_emulate_ctxt* %155, i32 0, i32 3
  %157 = load i32, i32* %156, align 4
  %158 = load i32, i32* @X86_EFLAGS_RF, align 4
  %159 = and i32 %157, %158
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %170

161:                                              ; preds = %149
  %162 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %163 = load %struct.x86_emulate_ctxt*, %struct.x86_emulate_ctxt** %13, align 8
  %164 = getelementptr inbounds %struct.x86_emulate_ctxt, %struct.x86_emulate_ctxt* %163, i32 0, i32 3
  %165 = load i32, i32* %164, align 4
  %166 = load i32, i32* @X86_EFLAGS_RF, align 4
  %167 = xor i32 %166, -1
  %168 = and i32 %165, %167
  %169 = call i32 @kvm_set_rflags(%struct.kvm_vcpu* %162, i32 %168)
  br label %170

170:                                              ; preds = %161, %149
  store i32 1, i32* %6, align 4
  br label %359

171:                                              ; preds = %144
  %172 = load %struct.x86_emulate_ctxt*, %struct.x86_emulate_ctxt** %13, align 8
  %173 = load i64, i64* %8, align 8
  %174 = load i32, i32* %9, align 4
  %175 = call i64 @retry_instruction(%struct.x86_emulate_ctxt* %172, i64 %173, i32 %174)
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %178

177:                                              ; preds = %171
  store i32 1, i32* %6, align 4
  br label %359

178:                                              ; preds = %171
  %179 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %180 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %179, i32 0, i32 0
  %181 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %180, i32 0, i32 2
  %182 = load i32, i32* %181, align 8
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %190

184:                                              ; preds = %178
  %185 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %186 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %185, i32 0, i32 0
  %187 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %186, i32 0, i32 2
  store i32 0, i32* %187, align 8
  %188 = load %struct.x86_emulate_ctxt*, %struct.x86_emulate_ctxt** %13, align 8
  %189 = call i32 @emulator_invalidate_register_cache(%struct.x86_emulate_ctxt* %188)
  br label %190

190:                                              ; preds = %184, %178
  br label %191

191:                                              ; preds = %280, %190
  %192 = load i64, i64* %8, align 8
  %193 = load %struct.x86_emulate_ctxt*, %struct.x86_emulate_ctxt** %13, align 8
  %194 = getelementptr inbounds %struct.x86_emulate_ctxt, %struct.x86_emulate_ctxt* %193, i32 0, i32 6
  %195 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %194, i32 0, i32 1
  store i64 %192, i64* %195, align 8
  %196 = load %struct.x86_emulate_ctxt*, %struct.x86_emulate_ctxt** %13, align 8
  %197 = call i32 @x86_emulate_insn(%struct.x86_emulate_ctxt* %196)
  store i32 %197, i32* %12, align 4
  %198 = load i32, i32* %12, align 4
  %199 = load i32, i32* @EMULATION_INTERCEPTED, align 4
  %200 = icmp eq i32 %198, %199
  br i1 %200, label %201, label %202

201:                                              ; preds = %191
  store i32 1, i32* %6, align 4
  br label %359

202:                                              ; preds = %191
  %203 = load i32, i32* %12, align 4
  %204 = load i32, i32* @EMULATION_FAILED, align 4
  %205 = icmp eq i32 %203, %204
  br i1 %205, label %206, label %218

206:                                              ; preds = %202
  %207 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %208 = load i64, i64* %8, align 8
  %209 = load i32, i32* %15, align 4
  %210 = load i32, i32* %9, align 4
  %211 = call i64 @reexecute_instruction(%struct.kvm_vcpu* %207, i64 %208, i32 %209, i32 %210)
  %212 = icmp ne i64 %211, 0
  br i1 %212, label %213, label %214

213:                                              ; preds = %206
  store i32 1, i32* %6, align 4
  br label %359

214:                                              ; preds = %206
  %215 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %216 = load i32, i32* %9, align 4
  %217 = call i32 @handle_emulation_failure(%struct.kvm_vcpu* %215, i32 %216)
  store i32 %217, i32* %6, align 4
  br label %359

218:                                              ; preds = %202
  %219 = load %struct.x86_emulate_ctxt*, %struct.x86_emulate_ctxt** %13, align 8
  %220 = getelementptr inbounds %struct.x86_emulate_ctxt, %struct.x86_emulate_ctxt* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 8
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %223, label %230

223:                                              ; preds = %218
  store i32 1, i32* %12, align 4
  %224 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %225 = call i64 @inject_emulated_exception(%struct.kvm_vcpu* %224)
  %226 = icmp ne i64 %225, 0
  br i1 %226, label %227, label %229

227:                                              ; preds = %223
  %228 = load i32, i32* %12, align 4
  store i32 %228, i32* %6, align 4
  br label %359

229:                                              ; preds = %223
  br label %285

230:                                              ; preds = %218
  %231 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %232 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %231, i32 0, i32 0
  %233 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %232, i32 0, i32 5
  %234 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %233, i32 0, i32 0
  %235 = load i64, i64* %234, align 8
  %236 = icmp ne i64 %235, 0
  br i1 %236, label %237, label %255

237:                                              ; preds = %230
  %238 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %239 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %238, i32 0, i32 0
  %240 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %239, i32 0, i32 5
  %241 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %240, i32 0, i32 1
  %242 = load i32, i32* %241, align 8
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %249, label %244

244:                                              ; preds = %237
  %245 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %246 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %245, i32 0, i32 0
  %247 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %246, i32 0, i32 5
  %248 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %247, i32 0, i32 0
  store i64 0, i64* %248, align 8
  br label %254

249:                                              ; preds = %237
  store i32 0, i32* %14, align 4
  %250 = load i32, i32* @complete_emulated_pio, align 4
  %251 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %252 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %251, i32 0, i32 0
  %253 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %252, i32 0, i32 4
  store i32 %250, i32* %253, align 8
  br label %254

254:                                              ; preds = %249, %244
  store i32 0, i32* %12, align 4
  br label %284

255:                                              ; preds = %230
  %256 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %257 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %256, i32 0, i32 3
  %258 = load i64, i64* %257, align 8
  %259 = icmp ne i64 %258, 0
  br i1 %259, label %260, label %276

260:                                              ; preds = %255
  %261 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %262 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %261, i32 0, i32 2
  %263 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %262, i32 0, i32 0
  %264 = load i32, i32* %263, align 4
  %265 = add nsw i32 %264, 1
  store i32 %265, i32* %263, align 4
  %266 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %267 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %266, i32 0, i32 1
  %268 = load i32, i32* %267, align 8
  %269 = icmp ne i32 %268, 0
  br i1 %269, label %271, label %270

270:                                              ; preds = %260
  store i32 0, i32* %14, align 4
  br label %271

271:                                              ; preds = %270, %260
  store i32 0, i32* %12, align 4
  %272 = load i32, i32* @complete_emulated_mmio, align 4
  %273 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %274 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %273, i32 0, i32 0
  %275 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %274, i32 0, i32 4
  store i32 %272, i32* %275, align 8
  br label %283

276:                                              ; preds = %255
  %277 = load i32, i32* %12, align 4
  %278 = load i32, i32* @EMULATION_RESTART, align 4
  %279 = icmp eq i32 %277, %278
  br i1 %279, label %280, label %281

280:                                              ; preds = %276
  br label %191

281:                                              ; preds = %276
  store i32 1, i32* %12, align 4
  br label %282

282:                                              ; preds = %281
  br label %283

283:                                              ; preds = %282, %271
  br label %284

284:                                              ; preds = %283, %254
  br label %285

285:                                              ; preds = %284, %229
  %286 = load i32, i32* %14, align 4
  %287 = icmp ne i32 %286, 0
  br i1 %287, label %288, label %353

288:                                              ; preds = %285
  %289 = load %struct.TYPE_10__*, %struct.TYPE_10__** @kvm_x86_ops, align 8
  %290 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %289, i32 0, i32 0
  %291 = load i64 (%struct.kvm_vcpu*)*, i64 (%struct.kvm_vcpu*)** %290, align 8
  %292 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %293 = call i64 %291(%struct.kvm_vcpu* %292)
  store i64 %293, i64* %16, align 8
  %294 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %295 = load %struct.x86_emulate_ctxt*, %struct.x86_emulate_ctxt** %13, align 8
  %296 = getelementptr inbounds %struct.x86_emulate_ctxt, %struct.x86_emulate_ctxt* %295, i32 0, i32 7
  %297 = load i64, i64* %296, align 8
  %298 = call i32 @toggle_interruptibility(%struct.kvm_vcpu* %294, i64 %297)
  %299 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %300 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %299, i32 0, i32 0
  %301 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %300, i32 0, i32 3
  store i32 0, i32* %301, align 4
  %302 = load %struct.x86_emulate_ctxt*, %struct.x86_emulate_ctxt** %13, align 8
  %303 = getelementptr inbounds %struct.x86_emulate_ctxt, %struct.x86_emulate_ctxt* %302, i32 0, i32 0
  %304 = load i32, i32* %303, align 8
  %305 = icmp ne i32 %304, 0
  br i1 %305, label %306, label %314

306:                                              ; preds = %288
  %307 = load %struct.x86_emulate_ctxt*, %struct.x86_emulate_ctxt** %13, align 8
  %308 = getelementptr inbounds %struct.x86_emulate_ctxt, %struct.x86_emulate_ctxt* %307, i32 0, i32 6
  %309 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %308, i32 0, i32 0
  %310 = load i32, i32* %309, align 8
  %311 = call i64 @exception_type(i32 %310)
  %312 = load i64, i64* @EXCPT_TRAP, align 8
  %313 = icmp eq i64 %311, %312
  br i1 %313, label %314, label %336

314:                                              ; preds = %306, %288
  %315 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %316 = load %struct.x86_emulate_ctxt*, %struct.x86_emulate_ctxt** %13, align 8
  %317 = getelementptr inbounds %struct.x86_emulate_ctxt, %struct.x86_emulate_ctxt* %316, i32 0, i32 5
  %318 = load i32, i32* %317, align 8
  %319 = call i32 @kvm_rip_write(%struct.kvm_vcpu* %315, i32 %318)
  %320 = load i32, i32* %12, align 4
  %321 = icmp ne i32 %320, 0
  br i1 %321, label %322, label %330

322:                                              ; preds = %314
  %323 = load %struct.x86_emulate_ctxt*, %struct.x86_emulate_ctxt** %13, align 8
  %324 = getelementptr inbounds %struct.x86_emulate_ctxt, %struct.x86_emulate_ctxt* %323, i32 0, i32 4
  %325 = load i64, i64* %324, align 8
  %326 = icmp ne i64 %325, 0
  br i1 %326, label %327, label %330

327:                                              ; preds = %322
  %328 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %329 = call i32 @kvm_vcpu_do_singlestep(%struct.kvm_vcpu* %328)
  store i32 %329, i32* %12, align 4
  br label %330

330:                                              ; preds = %327, %322, %314
  %331 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %332 = load %struct.x86_emulate_ctxt*, %struct.x86_emulate_ctxt** %13, align 8
  %333 = getelementptr inbounds %struct.x86_emulate_ctxt, %struct.x86_emulate_ctxt* %332, i32 0, i32 3
  %334 = load i32, i32* %333, align 4
  %335 = call i32 @__kvm_set_rflags(%struct.kvm_vcpu* %331, i32 %334)
  br label %336

336:                                              ; preds = %330, %306
  %337 = load %struct.x86_emulate_ctxt*, %struct.x86_emulate_ctxt** %13, align 8
  %338 = getelementptr inbounds %struct.x86_emulate_ctxt, %struct.x86_emulate_ctxt* %337, i32 0, i32 3
  %339 = load i32, i32* %338, align 4
  %340 = sext i32 %339 to i64
  %341 = load i64, i64* %16, align 8
  %342 = xor i64 %341, -1
  %343 = and i64 %340, %342
  %344 = load i64, i64* @X86_EFLAGS_IF, align 8
  %345 = and i64 %343, %344
  %346 = call i64 @unlikely(i64 %345)
  %347 = icmp ne i64 %346, 0
  br i1 %347, label %348, label %352

348:                                              ; preds = %336
  %349 = load i32, i32* @KVM_REQ_EVENT, align 4
  %350 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %351 = call i32 @kvm_make_request(i32 %349, %struct.kvm_vcpu* %350)
  br label %352

352:                                              ; preds = %348, %336
  br label %357

353:                                              ; preds = %285
  %354 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %355 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %354, i32 0, i32 0
  %356 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %355, i32 0, i32 3
  store i32 1, i32* %356, align 4
  br label %357

357:                                              ; preds = %353, %352
  %358 = load i32, i32* %12, align 4
  store i32 %358, i32* %6, align 4
  br label %359

359:                                              ; preds = %357, %227, %214, %213, %201, %177, %170, %140, %126, %120, %99, %88, %47
  %360 = load i32, i32* %6, align 4
  ret i32 %360
}

declare dso_local i32 @kvm_clear_exception_queue(%struct.kvm_vcpu*) #1

declare dso_local i32 @init_emulate_ctxt(%struct.kvm_vcpu*) #1

declare dso_local i64 @kvm_vcpu_check_breakpoint(%struct.kvm_vcpu*, i32*) #1

declare dso_local i32 @x86_decode_insn(%struct.x86_emulate_ctxt*, i8*, i32) #1

declare dso_local i32 @trace_kvm_emulate_insn_start(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvm_queue_exception(%struct.kvm_vcpu*, i32) #1

declare dso_local i64 @reexecute_instruction(%struct.kvm_vcpu*, i64, i32, i32) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i64 @exception_type(i32) #1

declare dso_local i64 @inject_emulated_exception(%struct.kvm_vcpu*) #1

declare dso_local i32 @handle_emulation_failure(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @is_vmware_backdoor_opcode(%struct.x86_emulate_ctxt*) #1

declare dso_local i32 @kvm_queue_exception_e(%struct.kvm_vcpu*, i32, i32) #1

declare dso_local i32 @kvm_rip_write(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @kvm_set_rflags(%struct.kvm_vcpu*, i32) #1

declare dso_local i64 @retry_instruction(%struct.x86_emulate_ctxt*, i64, i32) #1

declare dso_local i32 @emulator_invalidate_register_cache(%struct.x86_emulate_ctxt*) #1

declare dso_local i32 @x86_emulate_insn(%struct.x86_emulate_ctxt*) #1

declare dso_local i32 @toggle_interruptibility(%struct.kvm_vcpu*, i64) #1

declare dso_local i32 @kvm_vcpu_do_singlestep(%struct.kvm_vcpu*) #1

declare dso_local i32 @__kvm_set_rflags(%struct.kvm_vcpu*, i32) #1

declare dso_local i64 @unlikely(i64) #1

declare dso_local i32 @kvm_make_request(i32, %struct.kvm_vcpu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
