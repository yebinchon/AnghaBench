; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_hv.c_kvmppc_pseries_do_hcall.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_hv.c_kvmppc_pseries_do_hcall.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_8__, %struct.TYPE_9__* }
%struct.TYPE_8__ = type { i32, i64, %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { i32* }
%struct.TYPE_9__ = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }

@H_SUCCESS = common dso_local global i64 0, align 8
@MAX_HCALL_OPCODE = common dso_local global i64 0, align 8
@RESUME_HOST = common dso_local global i32 0, align 4
@H_PARAMETER = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i32 0, align 4
@H_TOO_HARD = common dso_local global i64 0, align 8
@H_NOT_AVAILABLE = common dso_local global i64 0, align 8
@RESUME_GUEST = common dso_local global i32 0, align 4
@H_HARDWARE = common dso_local global i64 0, align 8
@H_FUNCTION = common dso_local global i64 0, align 8
@H_INTERRUPT = common dso_local global i64 0, align 8
@EINTR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kvmppc_pseries_do_hcall(%struct.kvm_vcpu* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.kvm_vcpu*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.kvm_vcpu*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %3, align 8
  %11 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %12 = call i8* @kvmppc_get_gpr(%struct.kvm_vcpu* %11, i32 3)
  %13 = ptrtoint i8* %12 to i64
  store i64 %13, i64* %4, align 8
  %14 = load i64, i64* @H_SUCCESS, align 8
  store i64 %14, i64* %6, align 8
  %15 = load i64, i64* %4, align 8
  %16 = load i64, i64* @MAX_HCALL_OPCODE, align 8
  %17 = icmp ule i64 %15, %16
  br i1 %17, label %18, label %31

18:                                               ; preds = %1
  %19 = load i64, i64* %4, align 8
  %20 = udiv i64 %19, 4
  %21 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %22 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %21, i32 0, i32 1
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @test_bit(i64 %20, i32 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %18
  %30 = load i32, i32* @RESUME_HOST, align 4
  store i32 %30, i32* %2, align 4
  br label %298

31:                                               ; preds = %18, %1
  %32 = load i64, i64* %4, align 8
  switch i64 %32, label %288 [
    i64 153, label %33
    i64 141, label %34
    i64 152, label %61
    i64 137, label %90
    i64 136, label %99
    i64 144, label %136
    i64 143, label %145
    i64 134, label %154
    i64 129, label %171
    i64 150, label %171
    i64 148, label %171
    i64 146, label %171
    i64 145, label %171
    i64 128, label %171
    i64 135, label %187
    i64 132, label %192
    i64 138, label %199
    i64 133, label %211
    i64 149, label %222
    i64 130, label %257
    i64 151, label %268
    i64 142, label %279
  ]

33:                                               ; preds = %31
  br label %290

34:                                               ; preds = %31
  %35 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %36 = call i8* @kvmppc_get_gpr(%struct.kvm_vcpu* %35, i32 4)
  %37 = ptrtoint i8* %36 to i64
  store i64 %37, i64* %5, align 8
  %38 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %39 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %38, i32 0, i32 1
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %39, align 8
  %41 = load i64, i64* %5, align 8
  %42 = call %struct.kvm_vcpu* @kvmppc_find_vcpu(%struct.TYPE_9__* %40, i64 %41)
  store %struct.kvm_vcpu* %42, %struct.kvm_vcpu** %8, align 8
  %43 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %8, align 8
  %44 = icmp ne %struct.kvm_vcpu* %43, null
  br i1 %44, label %47, label %45

45:                                               ; preds = %34
  %46 = load i64, i64* @H_PARAMETER, align 8
  store i64 %46, i64* %6, align 8
  br label %290

47:                                               ; preds = %34
  %48 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %8, align 8
  %49 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 0
  store i32 1, i32* %50, align 8
  %51 = call i32 (...) @smp_mb()
  %52 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %8, align 8
  %53 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 8
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %47
  %58 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %8, align 8
  %59 = call i32 @kvmppc_fast_vcpu_kick_hv(%struct.kvm_vcpu* %58)
  br label %60

60:                                               ; preds = %57, %47
  br label %290

61:                                               ; preds = %31
  %62 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %63 = call i8* @kvmppc_get_gpr(%struct.kvm_vcpu* %62, i32 4)
  %64 = ptrtoint i8* %63 to i64
  store i64 %64, i64* %5, align 8
  %65 = load i64, i64* %5, align 8
  %66 = icmp eq i64 %65, -1
  br i1 %66, label %67, label %68

67:                                               ; preds = %61
  br label %290

68:                                               ; preds = %61
  %69 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %70 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %69, i32 0, i32 1
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %70, align 8
  %72 = load i64, i64* %5, align 8
  %73 = call %struct.kvm_vcpu* @kvmppc_find_vcpu(%struct.TYPE_9__* %71, i64 %72)
  store %struct.kvm_vcpu* %73, %struct.kvm_vcpu** %8, align 8
  %74 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %8, align 8
  %75 = icmp ne %struct.kvm_vcpu* %74, null
  br i1 %75, label %78, label %76

76:                                               ; preds = %68
  %77 = load i64, i64* @H_PARAMETER, align 8
  store i64 %77, i64* %6, align 8
  br label %290

78:                                               ; preds = %68
  %79 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %80 = call i8* @kvmppc_get_gpr(%struct.kvm_vcpu* %79, i32 5)
  %81 = ptrtoint i8* %80 to i32
  store i32 %81, i32* %7, align 4
  %82 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %8, align 8
  %83 = call i32 @kvmppc_get_yield_count(%struct.kvm_vcpu* %82)
  %84 = load i32, i32* %7, align 4
  %85 = icmp ne i32 %83, %84
  br i1 %85, label %86, label %87

86:                                               ; preds = %78
  br label %290

87:                                               ; preds = %78
  %88 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %8, align 8
  %89 = call i32 @kvm_arch_vcpu_yield_to(%struct.kvm_vcpu* %88)
  br label %290

90:                                               ; preds = %31
  %91 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %92 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %93 = call i8* @kvmppc_get_gpr(%struct.kvm_vcpu* %92, i32 4)
  %94 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %95 = call i8* @kvmppc_get_gpr(%struct.kvm_vcpu* %94, i32 5)
  %96 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %97 = call i8* @kvmppc_get_gpr(%struct.kvm_vcpu* %96, i32 6)
  %98 = call i64 @do_h_register_vpa(%struct.kvm_vcpu* %91, i8* %93, i8* %95, i8* %97)
  store i64 %98, i64* %6, align 8
  br label %290

99:                                               ; preds = %31
  %100 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %101 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %100, i32 0, i32 1
  %102 = load %struct.TYPE_9__*, %struct.TYPE_9__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 0
  %105 = call i32 @list_empty(i32* %104)
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %109

107:                                              ; preds = %99
  %108 = load i32, i32* @RESUME_HOST, align 4
  store i32 %108, i32* %2, align 4
  br label %298

109:                                              ; preds = %99
  %110 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %111 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %110, i32 0, i32 1
  %112 = load %struct.TYPE_9__*, %struct.TYPE_9__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %112, i32 0, i32 0
  %114 = call i32 @srcu_read_lock(i32* %113)
  store i32 %114, i32* %9, align 4
  %115 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %116 = call i32 @kvmppc_rtas_hcall(%struct.kvm_vcpu* %115)
  store i32 %116, i32* %10, align 4
  %117 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %118 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %117, i32 0, i32 1
  %119 = load %struct.TYPE_9__*, %struct.TYPE_9__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %119, i32 0, i32 0
  %121 = load i32, i32* %9, align 4
  %122 = call i32 @srcu_read_unlock(i32* %120, i32 %121)
  %123 = load i32, i32* %10, align 4
  %124 = load i32, i32* @ENOENT, align 4
  %125 = sub nsw i32 0, %124
  %126 = icmp eq i32 %123, %125
  br i1 %126, label %127, label %129

127:                                              ; preds = %109
  %128 = load i32, i32* @RESUME_HOST, align 4
  store i32 %128, i32* %2, align 4
  br label %298

129:                                              ; preds = %109
  %130 = load i32, i32* %10, align 4
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %132, label %133

132:                                              ; preds = %129
  br label %290

133:                                              ; preds = %129
  br label %134

134:                                              ; preds = %133
  %135 = load i32, i32* %10, align 4
  store i32 %135, i32* %2, align 4
  br label %298

136:                                              ; preds = %31
  %137 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %138 = call i64 @kvmppc_h_logical_ci_load(%struct.kvm_vcpu* %137)
  store i64 %138, i64* %6, align 8
  %139 = load i64, i64* %6, align 8
  %140 = load i64, i64* @H_TOO_HARD, align 8
  %141 = icmp eq i64 %139, %140
  br i1 %141, label %142, label %144

142:                                              ; preds = %136
  %143 = load i32, i32* @RESUME_HOST, align 4
  store i32 %143, i32* %2, align 4
  br label %298

144:                                              ; preds = %136
  br label %290

145:                                              ; preds = %31
  %146 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %147 = call i64 @kvmppc_h_logical_ci_store(%struct.kvm_vcpu* %146)
  store i64 %147, i64* %6, align 8
  %148 = load i64, i64* %6, align 8
  %149 = load i64, i64* @H_TOO_HARD, align 8
  %150 = icmp eq i64 %148, %149
  br i1 %150, label %151, label %153

151:                                              ; preds = %145
  %152 = load i32, i32* @RESUME_HOST, align 4
  store i32 %152, i32* %2, align 4
  br label %298

153:                                              ; preds = %145
  br label %290

154:                                              ; preds = %31
  %155 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %156 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %157 = call i8* @kvmppc_get_gpr(%struct.kvm_vcpu* %156, i32 4)
  %158 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %159 = call i8* @kvmppc_get_gpr(%struct.kvm_vcpu* %158, i32 5)
  %160 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %161 = call i8* @kvmppc_get_gpr(%struct.kvm_vcpu* %160, i32 6)
  %162 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %163 = call i8* @kvmppc_get_gpr(%struct.kvm_vcpu* %162, i32 7)
  %164 = call i64 @kvmppc_h_set_mode(%struct.kvm_vcpu* %155, i8* %157, i8* %159, i8* %161, i8* %163)
  store i64 %164, i64* %6, align 8
  %165 = load i64, i64* %6, align 8
  %166 = load i64, i64* @H_TOO_HARD, align 8
  %167 = icmp eq i64 %165, %166
  br i1 %167, label %168, label %170

168:                                              ; preds = %154
  %169 = load i32, i32* @RESUME_HOST, align 4
  store i32 %169, i32* %2, align 4
  br label %298

170:                                              ; preds = %154
  br label %290

171:                                              ; preds = %31, %31, %31, %31, %31, %31
  %172 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %173 = call i32 @kvmppc_xics_enabled(%struct.kvm_vcpu* %172)
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %185

175:                                              ; preds = %171
  %176 = call i32 (...) @xics_on_xive()
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %181

178:                                              ; preds = %175
  %179 = load i64, i64* @H_NOT_AVAILABLE, align 8
  store i64 %179, i64* %6, align 8
  %180 = load i32, i32* @RESUME_GUEST, align 4
  store i32 %180, i32* %2, align 4
  br label %298

181:                                              ; preds = %175
  %182 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %183 = load i64, i64* %4, align 8
  %184 = call i64 @kvmppc_xics_hcall(%struct.kvm_vcpu* %182, i64 %183)
  store i64 %184, i64* %6, align 8
  br label %290

185:                                              ; preds = %171
  %186 = load i32, i32* @RESUME_HOST, align 4
  store i32 %186, i32* %2, align 4
  br label %298

187:                                              ; preds = %31
  %188 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %189 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %190 = call i8* @kvmppc_get_gpr(%struct.kvm_vcpu* %189, i32 4)
  %191 = call i64 @kvmppc_h_set_dabr(%struct.kvm_vcpu* %188, i8* %190)
  store i64 %191, i64* %6, align 8
  br label %290

192:                                              ; preds = %31
  %193 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %194 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %195 = call i8* @kvmppc_get_gpr(%struct.kvm_vcpu* %194, i32 4)
  %196 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %197 = call i8* @kvmppc_get_gpr(%struct.kvm_vcpu* %196, i32 5)
  %198 = call i64 @kvmppc_h_set_xdabr(%struct.kvm_vcpu* %193, i8* %195, i8* %197)
  store i64 %198, i64* %6, align 8
  br label %290

199:                                              ; preds = %31
  %200 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %201 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %200, i32 0, i32 0
  %202 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %201, i32 0, i32 2
  %203 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %202, i32 0, i32 0
  %204 = load i32*, i32** %203, align 8
  %205 = getelementptr inbounds i32, i32* %204, i64 4
  %206 = call i32 @powernv_get_random_long(i32* %205)
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %210, label %208

208:                                              ; preds = %199
  %209 = load i64, i64* @H_HARDWARE, align 8
  store i64 %209, i64* %6, align 8
  br label %210

210:                                              ; preds = %208, %199
  br label %290

211:                                              ; preds = %31
  %212 = load i64, i64* @H_FUNCTION, align 8
  store i64 %212, i64* %6, align 8
  %213 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %214 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %213, i32 0, i32 1
  %215 = load %struct.TYPE_9__*, %struct.TYPE_9__** %214, align 8
  %216 = call i32 @nesting_enabled(%struct.TYPE_9__* %215)
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %221

218:                                              ; preds = %211
  %219 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %220 = call i64 @kvmhv_set_partition_table(%struct.kvm_vcpu* %219)
  store i64 %220, i64* %6, align 8
  br label %221

221:                                              ; preds = %218, %211
  br label %290

222:                                              ; preds = %31
  %223 = load i64, i64* @H_FUNCTION, align 8
  store i64 %223, i64* %6, align 8
  %224 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %225 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %224, i32 0, i32 1
  %226 = load %struct.TYPE_9__*, %struct.TYPE_9__** %225, align 8
  %227 = call i32 @nesting_enabled(%struct.TYPE_9__* %226)
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %230, label %229

229:                                              ; preds = %222
  br label %290

230:                                              ; preds = %222
  %231 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %232 = call i64 @kvmhv_enter_nested_guest(%struct.kvm_vcpu* %231)
  store i64 %232, i64* %6, align 8
  %233 = load i64, i64* %6, align 8
  %234 = load i64, i64* @H_INTERRUPT, align 8
  %235 = icmp eq i64 %233, %234
  br i1 %235, label %236, label %244

236:                                              ; preds = %230
  %237 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %238 = call i32 @kvmppc_set_gpr(%struct.kvm_vcpu* %237, i32 3, i64 0)
  %239 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %240 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %239, i32 0, i32 0
  %241 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %240, i32 0, i32 1
  store i64 0, i64* %241, align 8
  %242 = load i32, i32* @EINTR, align 4
  %243 = sub nsw i32 0, %242
  store i32 %243, i32* %2, align 4
  br label %298

244:                                              ; preds = %230
  %245 = load i64, i64* %6, align 8
  %246 = load i64, i64* @H_TOO_HARD, align 8
  %247 = icmp eq i64 %245, %246
  br i1 %247, label %248, label %255

248:                                              ; preds = %244
  %249 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %250 = call i32 @kvmppc_set_gpr(%struct.kvm_vcpu* %249, i32 3, i64 0)
  %251 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %252 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %251, i32 0, i32 0
  %253 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %252, i32 0, i32 1
  store i64 0, i64* %253, align 8
  %254 = load i32, i32* @RESUME_HOST, align 4
  store i32 %254, i32* %2, align 4
  br label %298

255:                                              ; preds = %244
  br label %256

256:                                              ; preds = %255
  br label %290

257:                                              ; preds = %31
  %258 = load i64, i64* @H_FUNCTION, align 8
  store i64 %258, i64* %6, align 8
  %259 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %260 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %259, i32 0, i32 1
  %261 = load %struct.TYPE_9__*, %struct.TYPE_9__** %260, align 8
  %262 = call i32 @nesting_enabled(%struct.TYPE_9__* %261)
  %263 = icmp ne i32 %262, 0
  br i1 %263, label %264, label %267

264:                                              ; preds = %257
  %265 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %266 = call i64 @kvmhv_do_nested_tlbie(%struct.kvm_vcpu* %265)
  store i64 %266, i64* %6, align 8
  br label %267

267:                                              ; preds = %264, %257
  br label %290

268:                                              ; preds = %31
  %269 = load i64, i64* @H_FUNCTION, align 8
  store i64 %269, i64* %6, align 8
  %270 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %271 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %270, i32 0, i32 1
  %272 = load %struct.TYPE_9__*, %struct.TYPE_9__** %271, align 8
  %273 = call i32 @nesting_enabled(%struct.TYPE_9__* %272)
  %274 = icmp ne i32 %273, 0
  br i1 %274, label %275, label %278

275:                                              ; preds = %268
  %276 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %277 = call i64 @kvmhv_copy_tofrom_guest_nested(%struct.kvm_vcpu* %276)
  store i64 %277, i64* %6, align 8
  br label %278

278:                                              ; preds = %275, %268
  br label %290

279:                                              ; preds = %31
  %280 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %281 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %282 = call i8* @kvmppc_get_gpr(%struct.kvm_vcpu* %281, i32 4)
  %283 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %284 = call i8* @kvmppc_get_gpr(%struct.kvm_vcpu* %283, i32 5)
  %285 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %286 = call i8* @kvmppc_get_gpr(%struct.kvm_vcpu* %285, i32 6)
  %287 = call i64 @kvmppc_h_page_init(%struct.kvm_vcpu* %280, i8* %282, i8* %284, i8* %286)
  store i64 %287, i64* %6, align 8
  br label %290

288:                                              ; preds = %31
  %289 = load i32, i32* @RESUME_HOST, align 4
  store i32 %289, i32* %2, align 4
  br label %298

290:                                              ; preds = %279, %278, %267, %256, %229, %221, %210, %192, %187, %181, %170, %153, %144, %132, %90, %87, %86, %76, %67, %60, %45, %33
  %291 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %292 = load i64, i64* %6, align 8
  %293 = call i32 @kvmppc_set_gpr(%struct.kvm_vcpu* %291, i32 3, i64 %292)
  %294 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %295 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %294, i32 0, i32 0
  %296 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %295, i32 0, i32 1
  store i64 0, i64* %296, align 8
  %297 = load i32, i32* @RESUME_GUEST, align 4
  store i32 %297, i32* %2, align 4
  br label %298

298:                                              ; preds = %290, %288, %248, %236, %185, %178, %168, %151, %142, %134, %127, %107, %29
  %299 = load i32, i32* %2, align 4
  ret i32 %299
}

declare dso_local i8* @kvmppc_get_gpr(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @test_bit(i64, i32) #1

declare dso_local %struct.kvm_vcpu* @kvmppc_find_vcpu(%struct.TYPE_9__*, i64) #1

declare dso_local i32 @smp_mb(...) #1

declare dso_local i32 @kvmppc_fast_vcpu_kick_hv(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvmppc_get_yield_count(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvm_arch_vcpu_yield_to(%struct.kvm_vcpu*) #1

declare dso_local i64 @do_h_register_vpa(%struct.kvm_vcpu*, i8*, i8*, i8*) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @srcu_read_lock(i32*) #1

declare dso_local i32 @kvmppc_rtas_hcall(%struct.kvm_vcpu*) #1

declare dso_local i32 @srcu_read_unlock(i32*, i32) #1

declare dso_local i64 @kvmppc_h_logical_ci_load(%struct.kvm_vcpu*) #1

declare dso_local i64 @kvmppc_h_logical_ci_store(%struct.kvm_vcpu*) #1

declare dso_local i64 @kvmppc_h_set_mode(%struct.kvm_vcpu*, i8*, i8*, i8*, i8*) #1

declare dso_local i32 @kvmppc_xics_enabled(%struct.kvm_vcpu*) #1

declare dso_local i32 @xics_on_xive(...) #1

declare dso_local i64 @kvmppc_xics_hcall(%struct.kvm_vcpu*, i64) #1

declare dso_local i64 @kvmppc_h_set_dabr(%struct.kvm_vcpu*, i8*) #1

declare dso_local i64 @kvmppc_h_set_xdabr(%struct.kvm_vcpu*, i8*, i8*) #1

declare dso_local i32 @powernv_get_random_long(i32*) #1

declare dso_local i32 @nesting_enabled(%struct.TYPE_9__*) #1

declare dso_local i64 @kvmhv_set_partition_table(%struct.kvm_vcpu*) #1

declare dso_local i64 @kvmhv_enter_nested_guest(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvmppc_set_gpr(%struct.kvm_vcpu*, i32, i64) #1

declare dso_local i64 @kvmhv_do_nested_tlbie(%struct.kvm_vcpu*) #1

declare dso_local i64 @kvmhv_copy_tofrom_guest_nested(%struct.kvm_vcpu*) #1

declare dso_local i64 @kvmppc_h_page_init(%struct.kvm_vcpu*, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
