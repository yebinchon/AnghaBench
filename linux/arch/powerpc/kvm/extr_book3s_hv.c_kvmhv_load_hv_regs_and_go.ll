; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_hv.c_kvmhv_load_hv_regs_and_go.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_hv.c_kvmhv_load_hv_regs_and_go.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32, i64 }
%struct.kvm_vcpu = type { %struct.TYPE_11__*, %struct.TYPE_8__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, i32, i32, i64, i32, %struct.TYPE_7__, %struct.kvmppc_vcore* }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, i32 }
%struct.kvmppc_vcore = type { i32, i32, i32, i32, i32 }

@SPRN_HFSCR = common dso_local global i32 0, align 4
@SPRN_CIABR = common dso_local global i32 0, align 4
@SPRN_DAWR = common dso_local global i32 0, align 4
@SPRN_DAWRX = common dso_local global i32 0, align 4
@SPRN_PSSCR = common dso_local global i32 0, align 4
@SPRN_PID = common dso_local global i32 0, align 4
@BOOK3S_INTERRUPT_HV_DECREMENTER = common dso_local global i32 0, align 4
@SPRN_HDEC = common dso_local global i32 0, align 4
@SPRN_TBU40 = common dso_local global i32 0, align 4
@SPRN_PCR = common dso_local global i32 0, align 4
@PCR_MASK = common dso_local global i32 0, align 4
@SPRN_DPDES = common dso_local global i32 0, align 4
@SPRN_VTB = common dso_local global i32 0, align 4
@SPRN_PURR = common dso_local global i32 0, align 4
@local_paca = common dso_local global %struct.TYPE_12__* null, align 8
@SPRN_SPURR = common dso_local global i32 0, align 4
@SPRN_IC = common dso_local global i32 0, align 4
@PSSCR_EC = common dso_local global i64 0, align 8
@PSSCR_FAKE_SUSPEND_LG = common dso_local global i64 0, align 8
@SPRN_SPRG0 = common dso_local global i32 0, align 4
@SPRN_SPRG1 = common dso_local global i32 0, align 4
@SPRN_SPRG2 = common dso_local global i32 0, align 4
@SPRN_SPRG3 = common dso_local global i32 0, align 4
@SPRN_AMOR = common dso_local global i32 0, align 4
@SPRN_LPCR = common dso_local global i32 0, align 4
@SPRN_SRR0 = common dso_local global i32 0, align 4
@SPRN_SRR1 = common dso_local global i32 0, align 4
@PSSCR_GUEST_VIS = common dso_local global i32 0, align 4
@SPRN_LPID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_vcpu*, i32, i64)* @kvmhv_load_hv_regs_and_go to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kvmhv_load_hv_regs_and_go(%struct.kvm_vcpu* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.kvm_vcpu*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.kvmppc_vcore*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %22 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %23 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 10
  %25 = load %struct.kvmppc_vcore*, %struct.kvmppc_vcore** %24, align 8
  store %struct.kvmppc_vcore* %25, %struct.kvmppc_vcore** %8, align 8
  %26 = load i32, i32* @SPRN_HFSCR, align 4
  %27 = call i32 @mfspr(i32 %26)
  %28 = sext i32 %27 to i64
  store i64 %28, i64* %14, align 8
  %29 = load i32, i32* @SPRN_CIABR, align 4
  %30 = call i32 @mfspr(i32 %29)
  %31 = sext i32 %30 to i64
  store i64 %31, i64* %15, align 8
  %32 = load i32, i32* @SPRN_DAWR, align 4
  %33 = call i32 @mfspr(i32 %32)
  %34 = sext i32 %33 to i64
  store i64 %34, i64* %16, align 8
  %35 = load i32, i32* @SPRN_DAWRX, align 4
  %36 = call i32 @mfspr(i32 %35)
  %37 = sext i32 %36 to i64
  store i64 %37, i64* %17, align 8
  %38 = load i32, i32* @SPRN_PSSCR, align 4
  %39 = call i32 @mfspr(i32 %38)
  %40 = sext i32 %39 to i64
  store i64 %40, i64* %18, align 8
  %41 = load i32, i32* @SPRN_PID, align 4
  %42 = call i32 @mfspr(i32 %41)
  %43 = sext i32 %42 to i64
  store i64 %43, i64* %19, align 8
  %44 = load i32, i32* %6, align 4
  %45 = call i32 (...) @mftb()
  %46 = sub nsw i32 %44, %45
  %47 = sext i32 %46 to i64
  store i64 %47, i64* %9, align 8
  %48 = load i64, i64* %9, align 8
  %49 = icmp slt i64 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %3
  %51 = load i32, i32* @BOOK3S_INTERRUPT_HV_DECREMENTER, align 4
  store i32 %51, i32* %4, align 4
  br label %420

52:                                               ; preds = %3
  %53 = load i32, i32* @SPRN_HDEC, align 4
  %54 = load i64, i64* %9, align 8
  %55 = trunc i64 %54 to i32
  %56 = call i32 @mtspr(i32 %53, i32 %55)
  %57 = load %struct.kvmppc_vcore*, %struct.kvmppc_vcore** %8, align 8
  %58 = getelementptr inbounds %struct.kvmppc_vcore, %struct.kvmppc_vcore* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %87

61:                                               ; preds = %52
  %62 = call i32 (...) @mftb()
  %63 = load %struct.kvmppc_vcore*, %struct.kvmppc_vcore** %8, align 8
  %64 = getelementptr inbounds %struct.kvmppc_vcore, %struct.kvmppc_vcore* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = add nsw i32 %62, %65
  store i32 %66, i32* %20, align 4
  %67 = load i32, i32* @SPRN_TBU40, align 4
  %68 = load i32, i32* %20, align 4
  %69 = call i32 @mtspr(i32 %67, i32 %68)
  %70 = call i32 (...) @mftb()
  store i32 %70, i32* %10, align 4
  %71 = load i32, i32* %10, align 4
  %72 = and i32 %71, 16777215
  %73 = load i32, i32* %20, align 4
  %74 = and i32 %73, 16777215
  %75 = icmp slt i32 %72, %74
  br i1 %75, label %76, label %81

76:                                               ; preds = %61
  %77 = load i32, i32* @SPRN_TBU40, align 4
  %78 = load i32, i32* %20, align 4
  %79 = add nsw i32 %78, 16777216
  %80 = call i32 @mtspr(i32 %77, i32 %79)
  br label %81

81:                                               ; preds = %76, %61
  %82 = load %struct.kvmppc_vcore*, %struct.kvmppc_vcore** %8, align 8
  %83 = getelementptr inbounds %struct.kvmppc_vcore, %struct.kvmppc_vcore* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.kvmppc_vcore*, %struct.kvmppc_vcore** %8, align 8
  %86 = getelementptr inbounds %struct.kvmppc_vcore, %struct.kvmppc_vcore* %85, i32 0, i32 1
  store i32 %84, i32* %86, align 4
  br label %87

87:                                               ; preds = %81, %52
  %88 = load %struct.kvmppc_vcore*, %struct.kvmppc_vcore** %8, align 8
  %89 = getelementptr inbounds %struct.kvmppc_vcore, %struct.kvmppc_vcore* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %100

92:                                               ; preds = %87
  %93 = load i32, i32* @SPRN_PCR, align 4
  %94 = load %struct.kvmppc_vcore*, %struct.kvmppc_vcore** %8, align 8
  %95 = getelementptr inbounds %struct.kvmppc_vcore, %struct.kvmppc_vcore* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* @PCR_MASK, align 4
  %98 = or i32 %96, %97
  %99 = call i32 @mtspr(i32 %93, i32 %98)
  br label %100

100:                                              ; preds = %92, %87
  %101 = load i32, i32* @SPRN_DPDES, align 4
  %102 = load %struct.kvmppc_vcore*, %struct.kvmppc_vcore** %8, align 8
  %103 = getelementptr inbounds %struct.kvmppc_vcore, %struct.kvmppc_vcore* %102, i32 0, i32 3
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @mtspr(i32 %101, i32 %104)
  %106 = load i32, i32* @SPRN_VTB, align 4
  %107 = load %struct.kvmppc_vcore*, %struct.kvmppc_vcore** %8, align 8
  %108 = getelementptr inbounds %struct.kvmppc_vcore, %struct.kvmppc_vcore* %107, i32 0, i32 4
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @mtspr(i32 %106, i32 %109)
  %111 = load i32, i32* @SPRN_PURR, align 4
  %112 = call i32 @mfspr(i32 %111)
  %113 = load %struct.TYPE_12__*, %struct.TYPE_12__** @local_paca, align 8
  %114 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %114, i32 0, i32 0
  store i32 %112, i32* %115, align 8
  %116 = load i32, i32* @SPRN_SPURR, align 4
  %117 = call i32 @mfspr(i32 %116)
  %118 = load %struct.TYPE_12__*, %struct.TYPE_12__** @local_paca, align 8
  %119 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %119, i32 0, i32 1
  store i32 %117, i32* %120, align 4
  %121 = load i32, i32* @SPRN_PURR, align 4
  %122 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %123 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %122, i32 0, i32 1
  %124 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = call i32 @mtspr(i32 %121, i32 %125)
  %127 = load i32, i32* @SPRN_SPURR, align 4
  %128 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %129 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %128, i32 0, i32 1
  %130 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @mtspr(i32 %127, i32 %131)
  %133 = call i64 (...) @dawr_enabled()
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %148

135:                                              ; preds = %100
  %136 = load i32, i32* @SPRN_DAWR, align 4
  %137 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %138 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %137, i32 0, i32 1
  %139 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %138, i32 0, i32 2
  %140 = load i32, i32* %139, align 8
  %141 = call i32 @mtspr(i32 %136, i32 %140)
  %142 = load i32, i32* @SPRN_DAWRX, align 4
  %143 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %144 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %143, i32 0, i32 1
  %145 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %144, i32 0, i32 3
  %146 = load i32, i32* %145, align 4
  %147 = call i32 @mtspr(i32 %142, i32 %146)
  br label %148

148:                                              ; preds = %135, %100
  %149 = load i32, i32* @SPRN_CIABR, align 4
  %150 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %151 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %150, i32 0, i32 1
  %152 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %151, i32 0, i32 4
  %153 = load i32, i32* %152, align 8
  %154 = call i32 @mtspr(i32 %149, i32 %153)
  %155 = load i32, i32* @SPRN_IC, align 4
  %156 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %157 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %156, i32 0, i32 1
  %158 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %157, i32 0, i32 5
  %159 = load i32, i32* %158, align 4
  %160 = call i32 @mtspr(i32 %155, i32 %159)
  %161 = load i32, i32* @SPRN_PID, align 4
  %162 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %163 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %162, i32 0, i32 1
  %164 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %163, i32 0, i32 6
  %165 = load i32, i32* %164, align 8
  %166 = call i32 @mtspr(i32 %161, i32 %165)
  %167 = load i32, i32* @SPRN_PSSCR, align 4
  %168 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %169 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %168, i32 0, i32 1
  %170 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %169, i32 0, i32 7
  %171 = load i64, i64* %170, align 8
  %172 = load i64, i64* @PSSCR_EC, align 8
  %173 = or i64 %171, %172
  %174 = load %struct.TYPE_12__*, %struct.TYPE_12__** @local_paca, align 8
  %175 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %174, i32 0, i32 0
  %176 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %175, i32 0, i32 2
  %177 = load i64, i64* %176, align 8
  %178 = load i64, i64* @PSSCR_FAKE_SUSPEND_LG, align 8
  %179 = shl i64 %177, %178
  %180 = or i64 %173, %179
  %181 = trunc i64 %180 to i32
  %182 = call i32 @mtspr(i32 %167, i32 %181)
  %183 = load i32, i32* @SPRN_HFSCR, align 4
  %184 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %185 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %184, i32 0, i32 1
  %186 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %185, i32 0, i32 8
  %187 = load i32, i32* %186, align 8
  %188 = call i32 @mtspr(i32 %183, i32 %187)
  %189 = load i32, i32* @SPRN_SPRG0, align 4
  %190 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %191 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %190, i32 0, i32 1
  %192 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %191, i32 0, i32 9
  %193 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 4
  %195 = call i32 @mtspr(i32 %189, i32 %194)
  %196 = load i32, i32* @SPRN_SPRG1, align 4
  %197 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %198 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %197, i32 0, i32 1
  %199 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %198, i32 0, i32 9
  %200 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %199, i32 0, i32 1
  %201 = load i32, i32* %200, align 4
  %202 = call i32 @mtspr(i32 %196, i32 %201)
  %203 = load i32, i32* @SPRN_SPRG2, align 4
  %204 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %205 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %204, i32 0, i32 1
  %206 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %205, i32 0, i32 9
  %207 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %206, i32 0, i32 2
  %208 = load i32, i32* %207, align 4
  %209 = call i32 @mtspr(i32 %203, i32 %208)
  %210 = load i32, i32* @SPRN_SPRG3, align 4
  %211 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %212 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %211, i32 0, i32 1
  %213 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %212, i32 0, i32 9
  %214 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %213, i32 0, i32 3
  %215 = load i32, i32* %214, align 4
  %216 = call i32 @mtspr(i32 %210, i32 %215)
  %217 = load i32, i32* @SPRN_AMOR, align 4
  %218 = call i32 @mtspr(i32 %217, i32 -1)
  %219 = load i32, i32* @SPRN_LPCR, align 4
  %220 = load i64, i64* %7, align 8
  %221 = trunc i64 %220 to i32
  %222 = call i32 @mtspr(i32 %219, i32 %221)
  %223 = call i32 (...) @isync()
  %224 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %225 = call i32 @kvmppc_xive_push_vcpu(%struct.kvm_vcpu* %224)
  %226 = load i32, i32* @SPRN_SRR0, align 4
  %227 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %228 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %227, i32 0, i32 1
  %229 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %228, i32 0, i32 9
  %230 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %229, i32 0, i32 4
  %231 = load i32, i32* %230, align 4
  %232 = call i32 @mtspr(i32 %226, i32 %231)
  %233 = load i32, i32* @SPRN_SRR1, align 4
  %234 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %235 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %234, i32 0, i32 1
  %236 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %235, i32 0, i32 9
  %237 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %236, i32 0, i32 5
  %238 = load i32, i32* %237, align 4
  %239 = call i32 @mtspr(i32 %233, i32 %238)
  %240 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %241 = call i32 @__kvmhv_vcpu_entry_p9(%struct.kvm_vcpu* %240)
  store i32 %241, i32* %13, align 4
  %242 = load i32, i32* @SPRN_PURR, align 4
  %243 = call i32 @mfspr(i32 %242)
  store i32 %243, i32* %11, align 4
  %244 = load i32, i32* @SPRN_SPURR, align 4
  %245 = call i32 @mfspr(i32 %244)
  store i32 %245, i32* %12, align 4
  %246 = load i32, i32* @SPRN_PURR, align 4
  %247 = load %struct.TYPE_12__*, %struct.TYPE_12__** @local_paca, align 8
  %248 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %247, i32 0, i32 0
  %249 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %248, i32 0, i32 0
  %250 = load i32, i32* %249, align 8
  %251 = load i32, i32* %11, align 4
  %252 = add nsw i32 %250, %251
  %253 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %254 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %253, i32 0, i32 1
  %255 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %254, i32 0, i32 0
  %256 = load i32, i32* %255, align 8
  %257 = sub nsw i32 %252, %256
  %258 = call i32 @mtspr(i32 %246, i32 %257)
  %259 = load i32, i32* @SPRN_SPURR, align 4
  %260 = load %struct.TYPE_12__*, %struct.TYPE_12__** @local_paca, align 8
  %261 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %260, i32 0, i32 0
  %262 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %261, i32 0, i32 1
  %263 = load i32, i32* %262, align 4
  %264 = load i32, i32* %12, align 4
  %265 = add nsw i32 %263, %264
  %266 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %267 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %266, i32 0, i32 1
  %268 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %267, i32 0, i32 1
  %269 = load i32, i32* %268, align 4
  %270 = sub nsw i32 %265, %269
  %271 = call i32 @mtspr(i32 %259, i32 %270)
  %272 = load i32, i32* %11, align 4
  %273 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %274 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %273, i32 0, i32 1
  %275 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %274, i32 0, i32 0
  store i32 %272, i32* %275, align 8
  %276 = load i32, i32* %12, align 4
  %277 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %278 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %277, i32 0, i32 1
  %279 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %278, i32 0, i32 1
  store i32 %276, i32* %279, align 4
  %280 = load i32, i32* @SPRN_IC, align 4
  %281 = call i32 @mfspr(i32 %280)
  %282 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %283 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %282, i32 0, i32 1
  %284 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %283, i32 0, i32 5
  store i32 %281, i32* %284, align 4
  %285 = load i32, i32* @SPRN_PID, align 4
  %286 = call i32 @mfspr(i32 %285)
  %287 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %288 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %287, i32 0, i32 1
  %289 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %288, i32 0, i32 6
  store i32 %286, i32* %289, align 8
  %290 = load i32, i32* @SPRN_PSSCR, align 4
  %291 = call i32 @mfspr(i32 %290)
  %292 = load i32, i32* @PSSCR_GUEST_VIS, align 4
  %293 = and i32 %291, %292
  %294 = sext i32 %293 to i64
  %295 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %296 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %295, i32 0, i32 1
  %297 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %296, i32 0, i32 7
  store i64 %294, i64* %297, align 8
  %298 = load i32, i32* @SPRN_SPRG0, align 4
  %299 = call i32 @mfspr(i32 %298)
  %300 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %301 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %300, i32 0, i32 1
  %302 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %301, i32 0, i32 9
  %303 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %302, i32 0, i32 0
  store i32 %299, i32* %303, align 4
  %304 = load i32, i32* @SPRN_SPRG1, align 4
  %305 = call i32 @mfspr(i32 %304)
  %306 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %307 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %306, i32 0, i32 1
  %308 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %307, i32 0, i32 9
  %309 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %308, i32 0, i32 1
  store i32 %305, i32* %309, align 4
  %310 = load i32, i32* @SPRN_SPRG2, align 4
  %311 = call i32 @mfspr(i32 %310)
  %312 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %313 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %312, i32 0, i32 1
  %314 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %313, i32 0, i32 9
  %315 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %314, i32 0, i32 2
  store i32 %311, i32* %315, align 4
  %316 = load i32, i32* @SPRN_SPRG3, align 4
  %317 = call i32 @mfspr(i32 %316)
  %318 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %319 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %318, i32 0, i32 1
  %320 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %319, i32 0, i32 9
  %321 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %320, i32 0, i32 3
  store i32 %317, i32* %321, align 4
  %322 = load i32, i32* @SPRN_PSSCR, align 4
  %323 = load i64, i64* %18, align 8
  %324 = load %struct.TYPE_12__*, %struct.TYPE_12__** @local_paca, align 8
  %325 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %324, i32 0, i32 0
  %326 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %325, i32 0, i32 2
  %327 = load i64, i64* %326, align 8
  %328 = load i64, i64* @PSSCR_FAKE_SUSPEND_LG, align 8
  %329 = shl i64 %327, %328
  %330 = or i64 %323, %329
  %331 = trunc i64 %330 to i32
  %332 = call i32 @mtspr(i32 %322, i32 %331)
  %333 = load i32, i32* @SPRN_HFSCR, align 4
  %334 = load i64, i64* %14, align 8
  %335 = trunc i64 %334 to i32
  %336 = call i32 @mtspr(i32 %333, i32 %335)
  %337 = load i32, i32* @SPRN_CIABR, align 4
  %338 = load i64, i64* %15, align 8
  %339 = trunc i64 %338 to i32
  %340 = call i32 @mtspr(i32 %337, i32 %339)
  %341 = load i32, i32* @SPRN_DAWR, align 4
  %342 = load i64, i64* %16, align 8
  %343 = trunc i64 %342 to i32
  %344 = call i32 @mtspr(i32 %341, i32 %343)
  %345 = load i32, i32* @SPRN_DAWRX, align 4
  %346 = load i64, i64* %17, align 8
  %347 = trunc i64 %346 to i32
  %348 = call i32 @mtspr(i32 %345, i32 %347)
  %349 = load i32, i32* @SPRN_PID, align 4
  %350 = load i64, i64* %19, align 8
  %351 = trunc i64 %350 to i32
  %352 = call i32 @mtspr(i32 %349, i32 %351)
  call void asm sideeffect "eieio; tlbsync; ptesync", "~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !2
  %353 = load i32, i32* @SPRN_LPID, align 4
  %354 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %355 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %354, i32 0, i32 0
  %356 = load %struct.TYPE_11__*, %struct.TYPE_11__** %355, align 8
  %357 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %356, i32 0, i32 0
  %358 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %357, i32 0, i32 0
  %359 = load i32, i32* %358, align 4
  %360 = call i32 @mtspr(i32 %353, i32 %359)
  %361 = call i32 (...) @isync()
  %362 = load i32, i32* @SPRN_DPDES, align 4
  %363 = call i32 @mfspr(i32 %362)
  %364 = load %struct.kvmppc_vcore*, %struct.kvmppc_vcore** %8, align 8
  %365 = getelementptr inbounds %struct.kvmppc_vcore, %struct.kvmppc_vcore* %364, i32 0, i32 3
  store i32 %363, i32* %365, align 4
  %366 = load i32, i32* @SPRN_VTB, align 4
  %367 = call i32 @mfspr(i32 %366)
  %368 = load %struct.kvmppc_vcore*, %struct.kvmppc_vcore** %8, align 8
  %369 = getelementptr inbounds %struct.kvmppc_vcore, %struct.kvmppc_vcore* %368, i32 0, i32 4
  store i32 %367, i32* %369, align 4
  %370 = load i32, i32* @SPRN_DPDES, align 4
  %371 = call i32 @mtspr(i32 %370, i32 0)
  %372 = load %struct.kvmppc_vcore*, %struct.kvmppc_vcore** %8, align 8
  %373 = getelementptr inbounds %struct.kvmppc_vcore, %struct.kvmppc_vcore* %372, i32 0, i32 2
  %374 = load i32, i32* %373, align 4
  %375 = icmp ne i32 %374, 0
  br i1 %375, label %376, label %380

376:                                              ; preds = %148
  %377 = load i32, i32* @SPRN_PCR, align 4
  %378 = load i32, i32* @PCR_MASK, align 4
  %379 = call i32 @mtspr(i32 %377, i32 %378)
  br label %380

380:                                              ; preds = %376, %148
  %381 = load %struct.kvmppc_vcore*, %struct.kvmppc_vcore** %8, align 8
  %382 = getelementptr inbounds %struct.kvmppc_vcore, %struct.kvmppc_vcore* %381, i32 0, i32 1
  %383 = load i32, i32* %382, align 4
  %384 = icmp ne i32 %383, 0
  br i1 %384, label %385, label %408

385:                                              ; preds = %380
  %386 = call i32 (...) @mftb()
  %387 = load %struct.kvmppc_vcore*, %struct.kvmppc_vcore** %8, align 8
  %388 = getelementptr inbounds %struct.kvmppc_vcore, %struct.kvmppc_vcore* %387, i32 0, i32 1
  %389 = load i32, i32* %388, align 4
  %390 = sub nsw i32 %386, %389
  store i32 %390, i32* %21, align 4
  %391 = load i32, i32* @SPRN_TBU40, align 4
  %392 = load i32, i32* %21, align 4
  %393 = call i32 @mtspr(i32 %391, i32 %392)
  %394 = call i32 (...) @mftb()
  store i32 %394, i32* %10, align 4
  %395 = load i32, i32* %10, align 4
  %396 = and i32 %395, 16777215
  %397 = load i32, i32* %21, align 4
  %398 = and i32 %397, 16777215
  %399 = icmp slt i32 %396, %398
  br i1 %399, label %400, label %405

400:                                              ; preds = %385
  %401 = load i32, i32* @SPRN_TBU40, align 4
  %402 = load i32, i32* %21, align 4
  %403 = add nsw i32 %402, 16777216
  %404 = call i32 @mtspr(i32 %401, i32 %403)
  br label %405

405:                                              ; preds = %400, %385
  %406 = load %struct.kvmppc_vcore*, %struct.kvmppc_vcore** %8, align 8
  %407 = getelementptr inbounds %struct.kvmppc_vcore, %struct.kvmppc_vcore* %406, i32 0, i32 1
  store i32 0, i32* %407, align 4
  br label %408

408:                                              ; preds = %405, %380
  %409 = load i32, i32* @SPRN_HDEC, align 4
  %410 = call i32 @mtspr(i32 %409, i32 2147483647)
  %411 = load i32, i32* @SPRN_LPCR, align 4
  %412 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %413 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %412, i32 0, i32 0
  %414 = load %struct.TYPE_11__*, %struct.TYPE_11__** %413, align 8
  %415 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %414, i32 0, i32 0
  %416 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %415, i32 0, i32 1
  %417 = load i32, i32* %416, align 4
  %418 = call i32 @mtspr(i32 %411, i32 %417)
  %419 = load i32, i32* %13, align 4
  store i32 %419, i32* %4, align 4
  br label %420

420:                                              ; preds = %408, %50
  %421 = load i32, i32* %4, align 4
  ret i32 %421
}

declare dso_local i32 @mfspr(i32) #1

declare dso_local i32 @mftb(...) #1

declare dso_local i32 @mtspr(i32, i32) #1

declare dso_local i64 @dawr_enabled(...) #1

declare dso_local i32 @isync(...) #1

declare dso_local i32 @kvmppc_xive_push_vcpu(%struct.kvm_vcpu*) #1

declare dso_local i32 @__kvmhv_vcpu_entry_p9(%struct.kvm_vcpu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 4552}
