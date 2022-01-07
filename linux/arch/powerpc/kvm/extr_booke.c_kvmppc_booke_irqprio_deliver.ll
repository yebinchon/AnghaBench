; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_booke.c_kvmppc_booke_irqprio_deliver.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_booke.c_kvmppc_booke_irqprio_deliver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i32*, i64, i32, i32, i32, i32, %struct.TYPE_5__, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32 }

@MSR_SF = common dso_local global i32 0, align 4
@MSR_PR = common dso_local global i32 0, align 4
@BOOKE_IRQPRIO_EXTERNAL_LEVEL = common dso_local global i32 0, align 4
@MSR_CE = common dso_local global i32 0, align 4
@MSR_ME = common dso_local global i32 0, align 4
@MSR_DE = common dso_local global i32 0, align 4
@MSR_EE = common dso_local global i32 0, align 4
@CPU_FTR_DEBUG_LVL_EXC = common dso_local global i32 0, align 4
@KVMPPC_EPR_USER = common dso_local global i32 0, align 4
@KVM_REQ_EPR_EXIT = common dso_local global i32 0, align 4
@KVMPPC_EPR_KERNEL = common dso_local global i32 0, align 4
@KVMPPC_IRQ_MPIC = common dso_local global i64 0, align 8
@BOOKE_IRQMASK_CE = common dso_local global i32 0, align 4
@BOOKE_IRQMASK_EE = common dso_local global i32 0, align 4
@MSR_CM = common dso_local global i32 0, align 4
@SPRN_EPCR_ICM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_vcpu*, i32)* @kvmppc_booke_irqprio_deliver to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kvmppc_booke_irqprio_deliver(%struct.kvm_vcpu* %0, i32 %1) #0 {
  %3 = alloca %struct.kvm_vcpu*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %16 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %17 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 9
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %10, align 4
  %22 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %23 = call i32 @kvmppc_get_gpr(%struct.kvm_vcpu* %22, i32 1)
  store i32 %23, i32* %11, align 4
  store i32 0, i32* %13, align 4
  %24 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %25 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 9
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %15, align 4
  %30 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %31 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 9
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @MSR_SF, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %2
  %40 = load i32, i32* %10, align 4
  store i32 %40, i32* %10, align 4
  %41 = load i32, i32* %11, align 4
  store i32 %41, i32* %11, align 4
  br label %42

42:                                               ; preds = %39, %2
  %43 = load i32, i32* %10, align 4
  %44 = load i32, i32* %11, align 4
  %45 = icmp eq i32 %43, %44
  %46 = zext i1 %45 to i32
  store i32 %46, i32* %12, align 4
  %47 = load i32, i32* %12, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %60

49:                                               ; preds = %42
  %50 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %51 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 9
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @MSR_PR, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  %59 = xor i1 %58, true
  br label %60

60:                                               ; preds = %49, %42
  %61 = phi i1 [ false, %42 ], [ %59, %49 ]
  %62 = zext i1 %61 to i32
  store i32 %62, i32* %12, align 4
  %63 = load i32, i32* %4, align 4
  %64 = load i32, i32* @BOOKE_IRQPRIO_EXTERNAL_LEVEL, align 4
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %60
  store i32 143, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %67

67:                                               ; preds = %66, %60
  %68 = load i32, i32* %4, align 4
  %69 = icmp eq i32 %68, 143
  br i1 %69, label %70, label %77

70:                                               ; preds = %67
  %71 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %72 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %70
  store i32 1, i32* %9, align 4
  br label %77

77:                                               ; preds = %76, %70, %67
  %78 = load i32, i32* %4, align 4
  switch i32 %78, label %173 [
    i32 144, label %79
    i32 149, label %79
    i32 154, label %79
    i32 140, label %80
    i32 137, label %80
    i32 139, label %81
    i32 133, label %81
    i32 141, label %81
    i32 151, label %81
    i32 132, label %87
    i32 150, label %87
    i32 147, label %87
    i32 138, label %106
    i32 145, label %124
    i32 142, label %124
    i32 143, label %125
    i32 148, label %125
    i32 146, label %148
  ]

79:                                               ; preds = %77, %77, %77
  store i32 1, i32* %8, align 4
  br label %80

80:                                               ; preds = %77, %77, %79
  store i32 1, i32* %7, align 4
  br label %81

81:                                               ; preds = %77, %77, %77, %77, %80
  store i32 1, i32* %5, align 4
  %82 = load i32, i32* @MSR_CE, align 4
  %83 = load i32, i32* @MSR_ME, align 4
  %84 = or i32 %82, %83
  %85 = load i32, i32* @MSR_DE, align 4
  %86 = or i32 %84, %85
  store i32 %86, i32* %6, align 4
  store i32 128, i32* %14, align 4
  br label %173

87:                                               ; preds = %77, %77, %77
  %88 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %89 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 9
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* @MSR_CE, align 4
  %95 = and i32 %93, %94
  store i32 %95, i32* %5, align 4
  %96 = load i32, i32* %5, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %102

98:                                               ; preds = %87
  %99 = load i32, i32* %12, align 4
  %100 = icmp ne i32 %99, 0
  %101 = xor i1 %100, true
  br label %102

102:                                              ; preds = %98, %87
  %103 = phi i1 [ false, %87 ], [ %101, %98 ]
  %104 = zext i1 %103 to i32
  store i32 %104, i32* %5, align 4
  %105 = load i32, i32* @MSR_ME, align 4
  store i32 %105, i32* %6, align 4
  store i32 131, i32* %14, align 4
  br label %173

106:                                              ; preds = %77
  %107 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %108 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 9
  %110 = load %struct.TYPE_4__*, %struct.TYPE_4__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* @MSR_ME, align 4
  %114 = and i32 %112, %113
  store i32 %114, i32* %5, align 4
  %115 = load i32, i32* %5, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %121

117:                                              ; preds = %106
  %118 = load i32, i32* %12, align 4
  %119 = icmp ne i32 %118, 0
  %120 = xor i1 %119, true
  br label %121

121:                                              ; preds = %117, %106
  %122 = phi i1 [ false, %106 ], [ %120, %117 ]
  %123 = zext i1 %122 to i32
  store i32 %123, i32* %5, align 4
  store i32 129, i32* %14, align 4
  br label %173

124:                                              ; preds = %77, %77
  store i32 1, i32* %13, align 4
  br label %125

125:                                              ; preds = %77, %77, %124
  %126 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %127 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i32 0, i32 9
  %129 = load %struct.TYPE_4__*, %struct.TYPE_4__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = load i32, i32* @MSR_EE, align 4
  %133 = and i32 %131, %132
  store i32 %133, i32* %5, align 4
  %134 = load i32, i32* %5, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %140

136:                                              ; preds = %125
  %137 = load i32, i32* %12, align 4
  %138 = icmp ne i32 %137, 0
  %139 = xor i1 %138, true
  br label %140

140:                                              ; preds = %136, %125
  %141 = phi i1 [ false, %125 ], [ %139, %136 ]
  %142 = zext i1 %141 to i32
  store i32 %142, i32* %5, align 4
  %143 = load i32, i32* @MSR_CE, align 4
  %144 = load i32, i32* @MSR_ME, align 4
  %145 = or i32 %143, %144
  %146 = load i32, i32* @MSR_DE, align 4
  %147 = or i32 %145, %146
  store i32 %147, i32* %6, align 4
  store i32 128, i32* %14, align 4
  br label %173

148:                                              ; preds = %77
  %149 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %150 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %150, i32 0, i32 9
  %152 = load %struct.TYPE_4__*, %struct.TYPE_4__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = load i32, i32* @MSR_DE, align 4
  %156 = and i32 %154, %155
  store i32 %156, i32* %5, align 4
  %157 = load i32, i32* %5, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %163

159:                                              ; preds = %148
  %160 = load i32, i32* %12, align 4
  %161 = icmp ne i32 %160, 0
  %162 = xor i1 %161, true
  br label %163

163:                                              ; preds = %159, %148
  %164 = phi i1 [ false, %148 ], [ %162, %159 ]
  %165 = zext i1 %164 to i32
  store i32 %165, i32* %5, align 4
  %166 = load i32, i32* @MSR_ME, align 4
  store i32 %166, i32* %6, align 4
  %167 = load i32, i32* @CPU_FTR_DEBUG_LVL_EXC, align 4
  %168 = call i32 @cpu_has_feature(i32 %167)
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %171

170:                                              ; preds = %163
  store i32 130, i32* %14, align 4
  br label %172

171:                                              ; preds = %163
  store i32 131, i32* %14, align 4
  br label %172

172:                                              ; preds = %171, %170
  br label %173

173:                                              ; preds = %77, %172, %140, %121, %102, %81
  %174 = load i32, i32* %5, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %323

176:                                              ; preds = %173
  %177 = load i32, i32* %14, align 4
  switch i32 %177, label %234 [
    i32 128, label %178
    i32 131, label %192
    i32 130, label %206
    i32 129, label %220
  ]

178:                                              ; preds = %176
  %179 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %180 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %181 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %180, i32 0, i32 0
  %182 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %181, i32 0, i32 8
  %183 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 8
  %185 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %186 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %185, i32 0, i32 0
  %187 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %186, i32 0, i32 9
  %188 = load %struct.TYPE_4__*, %struct.TYPE_4__** %187, align 8
  %189 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %188, i32 0, i32 1
  %190 = load i32, i32* %189, align 4
  %191 = call i32 @set_guest_srr(%struct.kvm_vcpu* %179, i32 %184, i32 %190)
  br label %234

192:                                              ; preds = %176
  %193 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %194 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %195 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %194, i32 0, i32 0
  %196 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %195, i32 0, i32 8
  %197 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 8
  %199 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %200 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %199, i32 0, i32 0
  %201 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %200, i32 0, i32 9
  %202 = load %struct.TYPE_4__*, %struct.TYPE_4__** %201, align 8
  %203 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %202, i32 0, i32 1
  %204 = load i32, i32* %203, align 4
  %205 = call i32 @set_guest_csrr(%struct.kvm_vcpu* %193, i32 %198, i32 %204)
  br label %234

206:                                              ; preds = %176
  %207 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %208 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %209 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %208, i32 0, i32 0
  %210 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %209, i32 0, i32 8
  %211 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 8
  %213 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %214 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %213, i32 0, i32 0
  %215 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %214, i32 0, i32 9
  %216 = load %struct.TYPE_4__*, %struct.TYPE_4__** %215, align 8
  %217 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %216, i32 0, i32 1
  %218 = load i32, i32* %217, align 4
  %219 = call i32 @set_guest_dsrr(%struct.kvm_vcpu* %207, i32 %212, i32 %218)
  br label %234

220:                                              ; preds = %176
  %221 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %222 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %223 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %222, i32 0, i32 0
  %224 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %223, i32 0, i32 8
  %225 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %224, i32 0, i32 0
  %226 = load i32, i32* %225, align 8
  %227 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %228 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %227, i32 0, i32 0
  %229 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %228, i32 0, i32 9
  %230 = load %struct.TYPE_4__*, %struct.TYPE_4__** %229, align 8
  %231 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %230, i32 0, i32 1
  %232 = load i32, i32* %231, align 4
  %233 = call i32 @set_guest_mcsrr(%struct.kvm_vcpu* %221, i32 %226, i32 %232)
  br label %234

234:                                              ; preds = %176, %220, %206, %192, %178
  %235 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %236 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %235, i32 0, i32 0
  %237 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %236, i32 0, i32 1
  %238 = load i32, i32* %237, align 4
  %239 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %240 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %239, i32 0, i32 0
  %241 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %240, i32 0, i32 2
  %242 = load i32*, i32** %241, align 8
  %243 = load i32, i32* %4, align 4
  %244 = zext i32 %243 to i64
  %245 = getelementptr inbounds i32, i32* %242, i64 %244
  %246 = load i32, i32* %245, align 4
  %247 = or i32 %238, %246
  %248 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %249 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %248, i32 0, i32 0
  %250 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %249, i32 0, i32 8
  %251 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %250, i32 0, i32 0
  store i32 %247, i32* %251, align 8
  %252 = load i32, i32* %7, align 4
  %253 = icmp eq i32 %252, 1
  br i1 %253, label %254, label %261

254:                                              ; preds = %234
  %255 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %256 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %257 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %256, i32 0, i32 0
  %258 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %257, i32 0, i32 7
  %259 = load i32, i32* %258, align 4
  %260 = call i32 @kvmppc_set_esr(%struct.kvm_vcpu* %255, i32 %259)
  br label %261

261:                                              ; preds = %254, %234
  %262 = load i32, i32* %8, align 4
  %263 = icmp eq i32 %262, 1
  br i1 %263, label %264, label %271

264:                                              ; preds = %261
  %265 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %266 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %267 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %266, i32 0, i32 0
  %268 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %267, i32 0, i32 6
  %269 = load i32, i32* %268, align 8
  %270 = call i32 @kvmppc_set_dar(%struct.kvm_vcpu* %265, i32 %269)
  br label %271

271:                                              ; preds = %264, %261
  %272 = load i32, i32* %9, align 4
  %273 = icmp eq i32 %272, 1
  br i1 %273, label %274, label %307

274:                                              ; preds = %271
  %275 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %276 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %275, i32 0, i32 0
  %277 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %276, i32 0, i32 0
  %278 = load i32, i32* %277, align 8
  %279 = load i32, i32* @KVMPPC_EPR_USER, align 4
  %280 = and i32 %278, %279
  %281 = icmp ne i32 %280, 0
  br i1 %281, label %282, label %286

282:                                              ; preds = %274
  %283 = load i32, i32* @KVM_REQ_EPR_EXIT, align 4
  %284 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %285 = call i32 @kvm_make_request(i32 %283, %struct.kvm_vcpu* %284)
  br label %306

286:                                              ; preds = %274
  %287 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %288 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %287, i32 0, i32 0
  %289 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %288, i32 0, i32 0
  %290 = load i32, i32* %289, align 8
  %291 = load i32, i32* @KVMPPC_EPR_KERNEL, align 4
  %292 = and i32 %290, %291
  %293 = icmp ne i32 %292, 0
  br i1 %293, label %294, label %305

294:                                              ; preds = %286
  %295 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %296 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %295, i32 0, i32 0
  %297 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %296, i32 0, i32 3
  %298 = load i64, i64* %297, align 8
  %299 = load i64, i64* @KVMPPC_IRQ_MPIC, align 8
  %300 = icmp ne i64 %298, %299
  %301 = zext i1 %300 to i32
  %302 = call i32 @BUG_ON(i32 %301)
  %303 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %304 = call i32 @kvmppc_mpic_set_epr(%struct.kvm_vcpu* %303)
  br label %305

305:                                              ; preds = %294, %286
  br label %306

306:                                              ; preds = %305, %282
  br label %307

307:                                              ; preds = %306, %271
  %308 = load i32, i32* %6, align 4
  %309 = load i32, i32* %15, align 4
  %310 = and i32 %309, %308
  store i32 %310, i32* %15, align 4
  %311 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %312 = load i32, i32* %15, align 4
  %313 = call i32 @kvmppc_set_msr(%struct.kvm_vcpu* %311, i32 %312)
  %314 = load i32, i32* %13, align 4
  %315 = icmp ne i32 %314, 0
  br i1 %315, label %322, label %316

316:                                              ; preds = %307
  %317 = load i32, i32* %4, align 4
  %318 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %319 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %318, i32 0, i32 0
  %320 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %319, i32 0, i32 5
  %321 = call i32 @clear_bit(i32 %317, i32* %320)
  br label %322

322:                                              ; preds = %316, %307
  br label %323

323:                                              ; preds = %322, %173
  %324 = load i32, i32* %5, align 4
  ret i32 %324
}

declare dso_local i32 @kvmppc_get_gpr(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @cpu_has_feature(i32) #1

declare dso_local i32 @set_guest_srr(%struct.kvm_vcpu*, i32, i32) #1

declare dso_local i32 @set_guest_csrr(%struct.kvm_vcpu*, i32, i32) #1

declare dso_local i32 @set_guest_dsrr(%struct.kvm_vcpu*, i32, i32) #1

declare dso_local i32 @set_guest_mcsrr(%struct.kvm_vcpu*, i32, i32) #1

declare dso_local i32 @kvmppc_set_esr(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @kvmppc_set_dar(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @kvm_make_request(i32, %struct.kvm_vcpu*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @kvmppc_mpic_set_epr(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvmppc_set_msr(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
