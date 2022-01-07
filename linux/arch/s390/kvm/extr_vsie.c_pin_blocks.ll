; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/kvm/extr_vsie.c_pin_blocks.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/kvm/extr_vsie.c_pin_blocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32 }
%struct.vsie_page = type { i32, i32, i32, i32, i32, %struct.kvm_s390_sie_block, %struct.kvm_s390_sie_block* }
%struct.kvm_s390_sie_block = type { i64, i64, i64, i32, i64, i32, i32, i64, i32, i64 }

@KVM_S390_VM_CPU_FEAT_64BSCAO = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@PAGE_MASK = common dso_local global i32 0, align 4
@ECB_TE = common dso_local global i32 0, align 4
@ECA_VX = common dso_local global i32 0, align 4
@ECD_HOSTREGMGMT = common dso_local global i32 0, align 4
@ECB3_RI = common dso_local global i32 0, align 4
@ECB_GS = common dso_local global i32 0, align 4
@ECD_ETOKENF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_vcpu*, %struct.vsie_page*)* @pin_blocks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pin_blocks(%struct.kvm_vcpu* %0, %struct.vsie_page* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.kvm_vcpu*, align 8
  %5 = alloca %struct.vsie_page*, align 8
  %6 = alloca %struct.kvm_s390_sie_block*, align 8
  %7 = alloca %struct.kvm_s390_sie_block*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %4, align 8
  store %struct.vsie_page* %1, %struct.vsie_page** %5, align 8
  %12 = load %struct.vsie_page*, %struct.vsie_page** %5, align 8
  %13 = getelementptr inbounds %struct.vsie_page, %struct.vsie_page* %12, i32 0, i32 6
  %14 = load %struct.kvm_s390_sie_block*, %struct.kvm_s390_sie_block** %13, align 8
  store %struct.kvm_s390_sie_block* %14, %struct.kvm_s390_sie_block** %6, align 8
  %15 = load %struct.vsie_page*, %struct.vsie_page** %5, align 8
  %16 = getelementptr inbounds %struct.vsie_page, %struct.vsie_page* %15, i32 0, i32 5
  store %struct.kvm_s390_sie_block* %16, %struct.kvm_s390_sie_block** %7, align 8
  store i32 0, i32* %10, align 4
  %17 = load %struct.kvm_s390_sie_block*, %struct.kvm_s390_sie_block** %6, align 8
  %18 = getelementptr inbounds %struct.kvm_s390_sie_block, %struct.kvm_s390_sie_block* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = call i32 @READ_ONCE(i64 %19)
  %21 = sext i32 %20 to i64
  %22 = and i64 %21, -16
  %23 = trunc i64 %22 to i32
  store i32 %23, i32* %9, align 4
  %24 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %25 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @KVM_S390_VM_CPU_FEAT_64BSCAO, align 4
  %28 = call i64 @test_kvm_cpu_feat(i32 %26, i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %38

30:                                               ; preds = %2
  %31 = load %struct.kvm_s390_sie_block*, %struct.kvm_s390_sie_block** %6, align 8
  %32 = getelementptr inbounds %struct.kvm_s390_sie_block, %struct.kvm_s390_sie_block* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = call i32 @READ_ONCE(i64 %33)
  %35 = shl i32 %34, 32
  %36 = load i32, i32* %9, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %9, align 4
  br label %38

38:                                               ; preds = %30, %2
  %39 = load i32, i32* %9, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %116

41:                                               ; preds = %38
  %42 = load i32, i32* %9, align 4
  %43 = load i32, i32* @PAGE_SIZE, align 4
  %44 = mul nsw i32 2, %43
  %45 = icmp slt i32 %42, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %41
  %47 = load %struct.kvm_s390_sie_block*, %struct.kvm_s390_sie_block** %7, align 8
  %48 = call i32 @set_validity_icpt(%struct.kvm_s390_sie_block* %47, i32 56)
  store i32 %48, i32* %10, align 4
  br label %78

49:                                               ; preds = %41
  %50 = load i32, i32* %9, align 4
  %51 = sext i32 %50 to i64
  %52 = and i64 %51, -8192
  %53 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %54 = call i32 @kvm_s390_get_prefix(%struct.kvm_vcpu* %53)
  %55 = sext i32 %54 to i64
  %56 = icmp eq i64 %52, %55
  br i1 %56, label %57, label %60

57:                                               ; preds = %49
  %58 = load %struct.kvm_s390_sie_block*, %struct.kvm_s390_sie_block** %7, align 8
  %59 = call i32 @set_validity_icpt(%struct.kvm_s390_sie_block* %58, i32 17)
  store i32 %59, i32* %10, align 4
  br label %77

60:                                               ; preds = %49
  %61 = load i32, i32* %9, align 4
  %62 = load i32, i32* @PAGE_MASK, align 4
  %63 = and i32 %61, %62
  %64 = sext i32 %63 to i64
  %65 = load i32, i32* %9, align 4
  %66 = sext i32 %65 to i64
  %67 = add i64 %66, 4
  %68 = sub i64 %67, 1
  %69 = load i32, i32* @PAGE_MASK, align 4
  %70 = sext i32 %69 to i64
  %71 = and i64 %68, %70
  %72 = icmp ne i64 %64, %71
  br i1 %72, label %73, label %76

73:                                               ; preds = %60
  %74 = load %struct.kvm_s390_sie_block*, %struct.kvm_s390_sie_block** %7, align 8
  %75 = call i32 @set_validity_icpt(%struct.kvm_s390_sie_block* %74, i32 59)
  store i32 %75, i32* %10, align 4
  br label %76

76:                                               ; preds = %73, %60
  br label %77

77:                                               ; preds = %76, %57
  br label %78

78:                                               ; preds = %77, %46
  %79 = load i32, i32* %10, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %93, label %81

81:                                               ; preds = %78
  %82 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %83 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* %9, align 4
  %86 = call i32 @pin_guest_page(i32 %84, i32 %85, i64* %8)
  store i32 %86, i32* %10, align 4
  %87 = load i32, i32* %10, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %81
  %90 = load %struct.kvm_s390_sie_block*, %struct.kvm_s390_sie_block** %7, align 8
  %91 = call i32 @set_validity_icpt(%struct.kvm_s390_sie_block* %90, i32 52)
  store i32 %91, i32* %10, align 4
  br label %92

92:                                               ; preds = %89, %81
  br label %93

93:                                               ; preds = %92, %78
  %94 = load i32, i32* %10, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %93
  br label %338

97:                                               ; preds = %93
  %98 = load i32, i32* %9, align 4
  %99 = load %struct.vsie_page*, %struct.vsie_page** %5, align 8
  %100 = getelementptr inbounds %struct.vsie_page, %struct.vsie_page* %99, i32 0, i32 0
  store i32 %98, i32* %100, align 8
  %101 = load i64, i64* %8, align 8
  %102 = trunc i64 %101 to i32
  %103 = ashr i32 %102, 32
  %104 = sext i32 %103 to i64
  %105 = inttoptr i64 %104 to i8*
  %106 = ptrtoint i8* %105 to i64
  %107 = load %struct.kvm_s390_sie_block*, %struct.kvm_s390_sie_block** %7, align 8
  %108 = getelementptr inbounds %struct.kvm_s390_sie_block, %struct.kvm_s390_sie_block* %107, i32 0, i32 1
  store i64 %106, i64* %108, align 8
  %109 = load i64, i64* %8, align 8
  %110 = trunc i64 %109 to i32
  %111 = sext i32 %110 to i64
  %112 = inttoptr i64 %111 to i8*
  %113 = ptrtoint i8* %112 to i64
  %114 = load %struct.kvm_s390_sie_block*, %struct.kvm_s390_sie_block** %7, align 8
  %115 = getelementptr inbounds %struct.kvm_s390_sie_block, %struct.kvm_s390_sie_block* %114, i32 0, i32 0
  store i64 %113, i64* %115, align 8
  br label %116

116:                                              ; preds = %97, %38
  %117 = load %struct.kvm_s390_sie_block*, %struct.kvm_s390_sie_block** %6, align 8
  %118 = getelementptr inbounds %struct.kvm_s390_sie_block, %struct.kvm_s390_sie_block* %117, i32 0, i32 2
  %119 = load i64, i64* %118, align 8
  %120 = call i32 @READ_ONCE(i64 %119)
  %121 = sext i32 %120 to i64
  %122 = and i64 %121, -256
  %123 = trunc i64 %122 to i32
  store i32 %123, i32* %9, align 4
  %124 = load i32, i32* %9, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %159

126:                                              ; preds = %116
  %127 = load %struct.kvm_s390_sie_block*, %struct.kvm_s390_sie_block** %7, align 8
  %128 = getelementptr inbounds %struct.kvm_s390_sie_block, %struct.kvm_s390_sie_block* %127, i32 0, i32 3
  %129 = load i32, i32* %128, align 8
  %130 = load i32, i32* @ECB_TE, align 4
  %131 = and i32 %129, %130
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %159

133:                                              ; preds = %126
  %134 = load i32, i32* %9, align 4
  %135 = load i32, i32* @PAGE_SIZE, align 4
  %136 = mul nsw i32 2, %135
  %137 = icmp slt i32 %134, %136
  br i1 %137, label %138, label %141

138:                                              ; preds = %133
  %139 = load %struct.kvm_s390_sie_block*, %struct.kvm_s390_sie_block** %7, align 8
  %140 = call i32 @set_validity_icpt(%struct.kvm_s390_sie_block* %139, i32 128)
  store i32 %140, i32* %10, align 4
  br label %338

141:                                              ; preds = %133
  %142 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %143 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = load i32, i32* %9, align 4
  %146 = call i32 @pin_guest_page(i32 %144, i32 %145, i64* %8)
  store i32 %146, i32* %10, align 4
  %147 = load i32, i32* %10, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %152

149:                                              ; preds = %141
  %150 = load %struct.kvm_s390_sie_block*, %struct.kvm_s390_sie_block** %7, align 8
  %151 = call i32 @set_validity_icpt(%struct.kvm_s390_sie_block* %150, i32 128)
  store i32 %151, i32* %10, align 4
  br label %338

152:                                              ; preds = %141
  %153 = load i32, i32* %9, align 4
  %154 = load %struct.vsie_page*, %struct.vsie_page** %5, align 8
  %155 = getelementptr inbounds %struct.vsie_page, %struct.vsie_page* %154, i32 0, i32 1
  store i32 %153, i32* %155, align 4
  %156 = load i64, i64* %8, align 8
  %157 = load %struct.kvm_s390_sie_block*, %struct.kvm_s390_sie_block** %7, align 8
  %158 = getelementptr inbounds %struct.kvm_s390_sie_block, %struct.kvm_s390_sie_block* %157, i32 0, i32 2
  store i64 %156, i64* %158, align 8
  br label %159

159:                                              ; preds = %152, %126, %116
  %160 = load %struct.kvm_s390_sie_block*, %struct.kvm_s390_sie_block** %6, align 8
  %161 = getelementptr inbounds %struct.kvm_s390_sie_block, %struct.kvm_s390_sie_block* %160, i32 0, i32 4
  %162 = load i64, i64* %161, align 8
  %163 = call i32 @READ_ONCE(i64 %162)
  %164 = sext i32 %163 to i64
  %165 = and i64 %164, -512
  %166 = trunc i64 %165 to i32
  store i32 %166, i32* %9, align 4
  %167 = load i32, i32* %9, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %209

169:                                              ; preds = %159
  %170 = load %struct.kvm_s390_sie_block*, %struct.kvm_s390_sie_block** %7, align 8
  %171 = getelementptr inbounds %struct.kvm_s390_sie_block, %struct.kvm_s390_sie_block* %170, i32 0, i32 5
  %172 = load i32, i32* %171, align 8
  %173 = load i32, i32* @ECA_VX, align 4
  %174 = and i32 %172, %173
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %209

176:                                              ; preds = %169
  %177 = load %struct.kvm_s390_sie_block*, %struct.kvm_s390_sie_block** %7, align 8
  %178 = getelementptr inbounds %struct.kvm_s390_sie_block, %struct.kvm_s390_sie_block* %177, i32 0, i32 6
  %179 = load i32, i32* %178, align 4
  %180 = load i32, i32* @ECD_HOSTREGMGMT, align 4
  %181 = and i32 %179, %180
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %209, label %183

183:                                              ; preds = %176
  %184 = load i32, i32* %9, align 4
  %185 = load i32, i32* @PAGE_SIZE, align 4
  %186 = mul nsw i32 2, %185
  %187 = icmp slt i32 %184, %186
  br i1 %187, label %188, label %191

188:                                              ; preds = %183
  %189 = load %struct.kvm_s390_sie_block*, %struct.kvm_s390_sie_block** %7, align 8
  %190 = call i32 @set_validity_icpt(%struct.kvm_s390_sie_block* %189, i32 4880)
  store i32 %190, i32* %10, align 4
  br label %338

191:                                              ; preds = %183
  %192 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %193 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 4
  %195 = load i32, i32* %9, align 4
  %196 = call i32 @pin_guest_page(i32 %194, i32 %195, i64* %8)
  store i32 %196, i32* %10, align 4
  %197 = load i32, i32* %10, align 4
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %202

199:                                              ; preds = %191
  %200 = load %struct.kvm_s390_sie_block*, %struct.kvm_s390_sie_block** %7, align 8
  %201 = call i32 @set_validity_icpt(%struct.kvm_s390_sie_block* %200, i32 4880)
  store i32 %201, i32* %10, align 4
  br label %338

202:                                              ; preds = %191
  %203 = load i32, i32* %9, align 4
  %204 = load %struct.vsie_page*, %struct.vsie_page** %5, align 8
  %205 = getelementptr inbounds %struct.vsie_page, %struct.vsie_page* %204, i32 0, i32 2
  store i32 %203, i32* %205, align 8
  %206 = load i64, i64* %8, align 8
  %207 = load %struct.kvm_s390_sie_block*, %struct.kvm_s390_sie_block** %7, align 8
  %208 = getelementptr inbounds %struct.kvm_s390_sie_block, %struct.kvm_s390_sie_block* %207, i32 0, i32 4
  store i64 %206, i64* %208, align 8
  br label %209

209:                                              ; preds = %202, %176, %169, %159
  %210 = load %struct.kvm_s390_sie_block*, %struct.kvm_s390_sie_block** %6, align 8
  %211 = getelementptr inbounds %struct.kvm_s390_sie_block, %struct.kvm_s390_sie_block* %210, i32 0, i32 7
  %212 = load i64, i64* %211, align 8
  %213 = call i32 @READ_ONCE(i64 %212)
  %214 = sext i32 %213 to i64
  %215 = and i64 %214, -64
  %216 = trunc i64 %215 to i32
  store i32 %216, i32* %9, align 4
  %217 = load i32, i32* %9, align 4
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %252

219:                                              ; preds = %209
  %220 = load %struct.kvm_s390_sie_block*, %struct.kvm_s390_sie_block** %7, align 8
  %221 = getelementptr inbounds %struct.kvm_s390_sie_block, %struct.kvm_s390_sie_block* %220, i32 0, i32 8
  %222 = load i32, i32* %221, align 8
  %223 = load i32, i32* @ECB3_RI, align 4
  %224 = and i32 %222, %223
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %226, label %252

226:                                              ; preds = %219
  %227 = load i32, i32* %9, align 4
  %228 = load i32, i32* @PAGE_SIZE, align 4
  %229 = mul nsw i32 2, %228
  %230 = icmp slt i32 %227, %229
  br i1 %230, label %231, label %234

231:                                              ; preds = %226
  %232 = load %struct.kvm_s390_sie_block*, %struct.kvm_s390_sie_block** %7, align 8
  %233 = call i32 @set_validity_icpt(%struct.kvm_s390_sie_block* %232, i32 67)
  store i32 %233, i32* %10, align 4
  br label %338

234:                                              ; preds = %226
  %235 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %236 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %235, i32 0, i32 0
  %237 = load i32, i32* %236, align 4
  %238 = load i32, i32* %9, align 4
  %239 = call i32 @pin_guest_page(i32 %237, i32 %238, i64* %8)
  store i32 %239, i32* %10, align 4
  %240 = load i32, i32* %10, align 4
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %242, label %245

242:                                              ; preds = %234
  %243 = load %struct.kvm_s390_sie_block*, %struct.kvm_s390_sie_block** %7, align 8
  %244 = call i32 @set_validity_icpt(%struct.kvm_s390_sie_block* %243, i32 67)
  store i32 %244, i32* %10, align 4
  br label %338

245:                                              ; preds = %234
  %246 = load i32, i32* %9, align 4
  %247 = load %struct.vsie_page*, %struct.vsie_page** %5, align 8
  %248 = getelementptr inbounds %struct.vsie_page, %struct.vsie_page* %247, i32 0, i32 3
  store i32 %246, i32* %248, align 4
  %249 = load i64, i64* %8, align 8
  %250 = load %struct.kvm_s390_sie_block*, %struct.kvm_s390_sie_block** %7, align 8
  %251 = getelementptr inbounds %struct.kvm_s390_sie_block, %struct.kvm_s390_sie_block* %250, i32 0, i32 7
  store i64 %249, i64* %251, align 8
  br label %252

252:                                              ; preds = %245, %219, %209
  %253 = load %struct.kvm_s390_sie_block*, %struct.kvm_s390_sie_block** %7, align 8
  %254 = getelementptr inbounds %struct.kvm_s390_sie_block, %struct.kvm_s390_sie_block* %253, i32 0, i32 3
  %255 = load i32, i32* %254, align 8
  %256 = load i32, i32* @ECB_GS, align 4
  %257 = and i32 %255, %256
  %258 = icmp ne i32 %257, 0
  br i1 %258, label %259, label %266

259:                                              ; preds = %252
  %260 = load %struct.kvm_s390_sie_block*, %struct.kvm_s390_sie_block** %7, align 8
  %261 = getelementptr inbounds %struct.kvm_s390_sie_block, %struct.kvm_s390_sie_block* %260, i32 0, i32 6
  %262 = load i32, i32* %261, align 4
  %263 = load i32, i32* @ECD_HOSTREGMGMT, align 4
  %264 = and i32 %262, %263
  %265 = icmp ne i32 %264, 0
  br i1 %265, label %266, label %273

266:                                              ; preds = %259, %252
  %267 = load %struct.kvm_s390_sie_block*, %struct.kvm_s390_sie_block** %7, align 8
  %268 = getelementptr inbounds %struct.kvm_s390_sie_block, %struct.kvm_s390_sie_block* %267, i32 0, i32 6
  %269 = load i32, i32* %268, align 4
  %270 = load i32, i32* @ECD_ETOKENF, align 4
  %271 = and i32 %269, %270
  %272 = icmp ne i32 %271, 0
  br i1 %272, label %273, label %337

273:                                              ; preds = %266, %259
  %274 = load %struct.kvm_s390_sie_block*, %struct.kvm_s390_sie_block** %6, align 8
  %275 = getelementptr inbounds %struct.kvm_s390_sie_block, %struct.kvm_s390_sie_block* %274, i32 0, i32 9
  %276 = load i64, i64* %275, align 8
  %277 = call i32 @READ_ONCE(i64 %276)
  %278 = sext i32 %277 to i64
  %279 = and i64 %278, -16
  %280 = trunc i64 %279 to i32
  store i32 %280, i32* %9, align 4
  %281 = load %struct.kvm_s390_sie_block*, %struct.kvm_s390_sie_block** %6, align 8
  %282 = getelementptr inbounds %struct.kvm_s390_sie_block, %struct.kvm_s390_sie_block* %281, i32 0, i32 9
  %283 = load i64, i64* %282, align 8
  %284 = call i32 @READ_ONCE(i64 %283)
  %285 = sext i32 %284 to i64
  %286 = and i64 %285, 15
  store i64 %286, i64* %11, align 8
  %287 = load i32, i32* %9, align 4
  %288 = icmp ne i32 %287, 0
  br i1 %288, label %289, label %294

289:                                              ; preds = %273
  %290 = load i32, i32* %9, align 4
  %291 = load i32, i32* @PAGE_SIZE, align 4
  %292 = mul nsw i32 2, %291
  %293 = icmp slt i32 %290, %292
  br i1 %293, label %294, label %297

294:                                              ; preds = %289, %273
  %295 = load %struct.kvm_s390_sie_block*, %struct.kvm_s390_sie_block** %7, align 8
  %296 = call i32 @set_validity_icpt(%struct.kvm_s390_sie_block* %295, i32 4272)
  store i32 %296, i32* %10, align 4
  br label %338

297:                                              ; preds = %289
  %298 = load i64, i64* %11, align 8
  %299 = icmp ult i64 %298, 6
  br i1 %299, label %303, label %300

300:                                              ; preds = %297
  %301 = load i64, i64* %11, align 8
  %302 = icmp ugt i64 %301, 12
  br i1 %302, label %303, label %306

303:                                              ; preds = %300, %297
  %304 = load %struct.kvm_s390_sie_block*, %struct.kvm_s390_sie_block** %7, align 8
  %305 = call i32 @set_validity_icpt(%struct.kvm_s390_sie_block* %304, i32 4273)
  store i32 %305, i32* %10, align 4
  br label %338

306:                                              ; preds = %300
  %307 = load i32, i32* %9, align 4
  %308 = load i64, i64* %11, align 8
  %309 = trunc i64 %308 to i32
  %310 = shl i32 1, %309
  %311 = sub nsw i32 %310, 1
  %312 = and i32 %307, %311
  %313 = icmp ne i32 %312, 0
  br i1 %313, label %314, label %317

314:                                              ; preds = %306
  %315 = load %struct.kvm_s390_sie_block*, %struct.kvm_s390_sie_block** %7, align 8
  %316 = call i32 @set_validity_icpt(%struct.kvm_s390_sie_block* %315, i32 4274)
  store i32 %316, i32* %10, align 4
  br label %338

317:                                              ; preds = %306
  %318 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %319 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %318, i32 0, i32 0
  %320 = load i32, i32* %319, align 4
  %321 = load i32, i32* %9, align 4
  %322 = call i32 @pin_guest_page(i32 %320, i32 %321, i64* %8)
  store i32 %322, i32* %10, align 4
  %323 = load i32, i32* %10, align 4
  %324 = icmp ne i32 %323, 0
  br i1 %324, label %325, label %328

325:                                              ; preds = %317
  %326 = load %struct.kvm_s390_sie_block*, %struct.kvm_s390_sie_block** %7, align 8
  %327 = call i32 @set_validity_icpt(%struct.kvm_s390_sie_block* %326, i32 4272)
  store i32 %327, i32* %10, align 4
  br label %338

328:                                              ; preds = %317
  %329 = load i32, i32* %9, align 4
  %330 = load %struct.vsie_page*, %struct.vsie_page** %5, align 8
  %331 = getelementptr inbounds %struct.vsie_page, %struct.vsie_page* %330, i32 0, i32 4
  store i32 %329, i32* %331, align 8
  %332 = load i64, i64* %8, align 8
  %333 = load i64, i64* %11, align 8
  %334 = or i64 %332, %333
  %335 = load %struct.kvm_s390_sie_block*, %struct.kvm_s390_sie_block** %7, align 8
  %336 = getelementptr inbounds %struct.kvm_s390_sie_block, %struct.kvm_s390_sie_block* %335, i32 0, i32 9
  store i64 %334, i64* %336, align 8
  br label %337

337:                                              ; preds = %328, %266
  store i32 0, i32* %3, align 4
  br label %343

338:                                              ; preds = %325, %314, %303, %294, %242, %231, %199, %188, %149, %138, %96
  %339 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %340 = load %struct.vsie_page*, %struct.vsie_page** %5, align 8
  %341 = call i32 @unpin_blocks(%struct.kvm_vcpu* %339, %struct.vsie_page* %340)
  %342 = load i32, i32* %10, align 4
  store i32 %342, i32* %3, align 4
  br label %343

343:                                              ; preds = %338, %337
  %344 = load i32, i32* %3, align 4
  ret i32 %344
}

declare dso_local i32 @READ_ONCE(i64) #1

declare dso_local i64 @test_kvm_cpu_feat(i32, i32) #1

declare dso_local i32 @set_validity_icpt(%struct.kvm_s390_sie_block*, i32) #1

declare dso_local i32 @kvm_s390_get_prefix(%struct.kvm_vcpu*) #1

declare dso_local i32 @pin_guest_page(i32, i32, i64*) #1

declare dso_local i32 @unpin_blocks(%struct.kvm_vcpu*, %struct.vsie_page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
