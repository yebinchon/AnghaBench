; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_hv.c_kvmppc_core_init_vm_hv.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_hv.c_kvmppc_core_init_vm_hv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.kvm = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i64, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32*, i8*, i8*, i32, i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@CPU_FTR_ARCH_300 = common dso_local global i32 0, align 4
@default_enabled_hcalls = common dso_local global i32 0, align 4
@SPRN_SDR1 = common dso_local global i32 0, align 4
@CPU_FTR_HVMODE = common dso_local global i32 0, align 4
@SPRN_LPID = common dso_local global i32 0, align 4
@SPRN_LPCR = common dso_local global i32 0, align 4
@LPCR_PECE = common dso_local global i64 0, align 8
@LPCR_LPES = common dso_local global i64 0, align 8
@LPCR_DPFD_SH = common dso_local global i64 0, align 8
@LPCR_HDICE = common dso_local global i64 0, align 8
@LPCR_VPM0 = common dso_local global i64 0, align 8
@LPCR_VPM1 = common dso_local global i64 0, align 8
@SLB_VSID_B_1T = common dso_local global i32 0, align 4
@VRMA_VSID = common dso_local global i32 0, align 4
@SLB_VSID_SHIFT_1T = common dso_local global i32 0, align 4
@CPU_FTR_ARCH_207S = common dso_local global i32 0, align 4
@LPCR_ONL = common dso_local global i64 0, align 8
@LPCR_HVICE = common dso_local global i64 0, align 8
@LPCR_HEIC = common dso_local global i64 0, align 8
@LPCR_UPRT = common dso_local global i64 0, align 8
@LPCR_GTSE = common dso_local global i64 0, align 8
@LPCR_HR = common dso_local global i64 0, align 8
@POWER9_TLB_SETS_RADIX = common dso_local global i32 0, align 4
@POWER9_TLB_SETS_HASH = common dso_local global i32 0, align 4
@POWER8_TLB_SETS = common dso_local global i32 0, align 4
@POWER7_TLB_SETS = common dso_local global i32 0, align 4
@indep_threads_mode = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"KVM: Ignoring indep_threads_mode=N in nested hypervisor\0A\00", align 1
@threads_per_subcore = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"vm%d\00", align 1
@current = common dso_local global %struct.TYPE_4__* null, align 8
@kvm_debugfs_dir = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm*)* @kvmppc_core_init_vm_hv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kvmppc_core_init_vm_hv(%struct.kvm* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.kvm*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca [32 x i8], align 16
  %7 = alloca i32, align 4
  store %struct.kvm* %0, %struct.kvm** %3, align 8
  %8 = load %struct.kvm*, %struct.kvm** %3, align 8
  %9 = getelementptr inbounds %struct.kvm, %struct.kvm* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 16
  %11 = call i32 @mutex_init(i32* %10)
  %12 = call i64 (...) @kvmppc_alloc_lpid()
  store i64 %12, i64* %5, align 8
  %13 = load i64, i64* %5, align 8
  %14 = icmp slt i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %260

18:                                               ; preds = %1
  %19 = load i64, i64* %5, align 8
  %20 = load %struct.kvm*, %struct.kvm** %3, align 8
  %21 = getelementptr inbounds %struct.kvm, %struct.kvm* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  store i64 %19, i64* %22, align 8
  %23 = call i32 (...) @kvmppc_alloc_host_rm_ops()
  %24 = load %struct.kvm*, %struct.kvm** %3, align 8
  %25 = call i32 @kvmhv_vm_nested_init(%struct.kvm* %24)
  %26 = load i32, i32* @CPU_FTR_ARCH_300, align 4
  %27 = call i64 @cpu_has_feature(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %34, label %29

29:                                               ; preds = %18
  %30 = load %struct.kvm*, %struct.kvm** %3, align 8
  %31 = getelementptr inbounds %struct.kvm, %struct.kvm* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 15
  %33 = call i32 @cpumask_setall(i32* %32)
  br label %34

34:                                               ; preds = %29, %18
  %35 = load %struct.kvm*, %struct.kvm** %3, align 8
  %36 = getelementptr inbounds %struct.kvm, %struct.kvm* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 14
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @default_enabled_hcalls, align 4
  %40 = call i32 @memcpy(i32 %38, i32 %39, i32 4)
  %41 = load i32, i32* @CPU_FTR_ARCH_300, align 4
  %42 = call i64 @cpu_has_feature(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %50, label %44

44:                                               ; preds = %34
  %45 = load i32, i32* @SPRN_SDR1, align 4
  %46 = call i8* @mfspr(i32 %45)
  %47 = load %struct.kvm*, %struct.kvm** %3, align 8
  %48 = getelementptr inbounds %struct.kvm, %struct.kvm* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 13
  store i8* %46, i8** %49, align 8
  br label %50

50:                                               ; preds = %44, %34
  %51 = load i32, i32* @CPU_FTR_HVMODE, align 4
  %52 = call i64 @cpu_has_feature(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %71

54:                                               ; preds = %50
  %55 = load i32, i32* @SPRN_LPID, align 4
  %56 = call i8* @mfspr(i32 %55)
  %57 = load %struct.kvm*, %struct.kvm** %3, align 8
  %58 = getelementptr inbounds %struct.kvm, %struct.kvm* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 12
  store i8* %56, i8** %59, align 8
  %60 = load i32, i32* @SPRN_LPCR, align 4
  %61 = call i8* @mfspr(i32 %60)
  %62 = ptrtoint i8* %61 to i64
  store i64 %62, i64* %4, align 8
  %63 = load %struct.kvm*, %struct.kvm** %3, align 8
  %64 = getelementptr inbounds %struct.kvm, %struct.kvm* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 1
  store i64 %62, i64* %65, align 8
  %66 = load i64, i64* @LPCR_PECE, align 8
  %67 = load i64, i64* @LPCR_LPES, align 8
  %68 = or i64 %66, %67
  %69 = load i64, i64* %4, align 8
  %70 = and i64 %69, %68
  store i64 %70, i64* %4, align 8
  br label %72

71:                                               ; preds = %50
  store i64 0, i64* %4, align 8
  br label %72

72:                                               ; preds = %71, %54
  %73 = load i64, i64* @LPCR_DPFD_SH, align 8
  %74 = shl i64 4, %73
  %75 = load i64, i64* @LPCR_HDICE, align 8
  %76 = or i64 %74, %75
  %77 = load i64, i64* @LPCR_VPM0, align 8
  %78 = or i64 %76, %77
  %79 = load i64, i64* @LPCR_VPM1, align 8
  %80 = or i64 %78, %79
  %81 = load i64, i64* %4, align 8
  %82 = or i64 %81, %80
  store i64 %82, i64* %4, align 8
  %83 = load i32, i32* @SLB_VSID_B_1T, align 4
  %84 = load i32, i32* @VRMA_VSID, align 4
  %85 = load i32, i32* @SLB_VSID_SHIFT_1T, align 4
  %86 = shl i32 %84, %85
  %87 = or i32 %83, %86
  %88 = load %struct.kvm*, %struct.kvm** %3, align 8
  %89 = getelementptr inbounds %struct.kvm, %struct.kvm* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 2
  store i32 %87, i32* %90, align 8
  %91 = load i32, i32* @CPU_FTR_ARCH_207S, align 4
  %92 = call i64 @cpu_has_feature(i32 %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %98

94:                                               ; preds = %72
  %95 = load i64, i64* @LPCR_ONL, align 8
  %96 = load i64, i64* %4, align 8
  %97 = or i64 %96, %95
  store i64 %97, i64* %4, align 8
  br label %98

98:                                               ; preds = %94, %72
  %99 = load i32, i32* @CPU_FTR_ARCH_300, align 4
  %100 = call i64 @cpu_has_feature(i32 %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %119

102:                                              ; preds = %98
  %103 = load i64, i64* @LPCR_VPM0, align 8
  %104 = xor i64 %103, -1
  %105 = load i64, i64* %4, align 8
  %106 = and i64 %105, %104
  store i64 %106, i64* %4, align 8
  %107 = load i64, i64* @LPCR_HVICE, align 8
  %108 = load i64, i64* @LPCR_HEIC, align 8
  %109 = or i64 %107, %108
  %110 = load i64, i64* %4, align 8
  %111 = or i64 %110, %109
  store i64 %111, i64* %4, align 8
  %112 = call i64 (...) @xics_on_xive()
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %118

114:                                              ; preds = %102
  %115 = load i64, i64* @LPCR_LPES, align 8
  %116 = load i64, i64* %4, align 8
  %117 = or i64 %116, %115
  store i64 %117, i64* %4, align 8
  br label %118

118:                                              ; preds = %114, %102
  br label %119

119:                                              ; preds = %118, %98
  %120 = call i64 (...) @radix_enabled()
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %154

122:                                              ; preds = %119
  %123 = load %struct.kvm*, %struct.kvm** %3, align 8
  %124 = getelementptr inbounds %struct.kvm, %struct.kvm* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %124, i32 0, i32 3
  store i32 1, i32* %125, align 4
  %126 = load %struct.kvm*, %struct.kvm** %3, align 8
  %127 = getelementptr inbounds %struct.kvm, %struct.kvm* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %127, i32 0, i32 4
  store i32 1, i32* %128, align 8
  %129 = load i64, i64* @LPCR_VPM1, align 8
  %130 = xor i64 %129, -1
  %131 = load i64, i64* %4, align 8
  %132 = and i64 %131, %130
  store i64 %132, i64* %4, align 8
  %133 = load i64, i64* @LPCR_UPRT, align 8
  %134 = load i64, i64* @LPCR_GTSE, align 8
  %135 = or i64 %133, %134
  %136 = load i64, i64* @LPCR_HR, align 8
  %137 = or i64 %135, %136
  %138 = load i64, i64* %4, align 8
  %139 = or i64 %138, %137
  store i64 %139, i64* %4, align 8
  %140 = load %struct.kvm*, %struct.kvm** %3, align 8
  %141 = call i32 @kvmppc_init_vm_radix(%struct.kvm* %140)
  store i32 %141, i32* %7, align 4
  %142 = load i32, i32* %7, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %151

144:                                              ; preds = %122
  %145 = load %struct.kvm*, %struct.kvm** %3, align 8
  %146 = getelementptr inbounds %struct.kvm, %struct.kvm* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = call i32 @kvmppc_free_lpid(i64 %148)
  %150 = load i32, i32* %7, align 4
  store i32 %150, i32* %2, align 4
  br label %260

151:                                              ; preds = %122
  %152 = load %struct.kvm*, %struct.kvm** %3, align 8
  %153 = call i32 @kvmppc_setup_partition_table(%struct.kvm* %152)
  br label %154

154:                                              ; preds = %151, %119
  %155 = load i64, i64* %4, align 8
  %156 = load %struct.kvm*, %struct.kvm** %3, align 8
  %157 = getelementptr inbounds %struct.kvm, %struct.kvm* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %157, i32 0, i32 5
  store i64 %155, i64* %158, align 8
  %159 = load %struct.kvm*, %struct.kvm** %3, align 8
  %160 = getelementptr inbounds %struct.kvm, %struct.kvm* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %160, i32 0, i32 11
  store i32* null, i32** %161, align 8
  %162 = call i64 (...) @radix_enabled()
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %169

164:                                              ; preds = %154
  %165 = load i32, i32* @POWER9_TLB_SETS_RADIX, align 4
  %166 = load %struct.kvm*, %struct.kvm** %3, align 8
  %167 = getelementptr inbounds %struct.kvm, %struct.kvm* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %167, i32 0, i32 10
  store i32 %165, i32* %168, align 8
  br label %194

169:                                              ; preds = %154
  %170 = load i32, i32* @CPU_FTR_ARCH_300, align 4
  %171 = call i64 @cpu_has_feature(i32 %170)
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %178

173:                                              ; preds = %169
  %174 = load i32, i32* @POWER9_TLB_SETS_HASH, align 4
  %175 = load %struct.kvm*, %struct.kvm** %3, align 8
  %176 = getelementptr inbounds %struct.kvm, %struct.kvm* %175, i32 0, i32 0
  %177 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %176, i32 0, i32 10
  store i32 %174, i32* %177, align 8
  br label %193

178:                                              ; preds = %169
  %179 = load i32, i32* @CPU_FTR_ARCH_207S, align 4
  %180 = call i64 @cpu_has_feature(i32 %179)
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %182, label %187

182:                                              ; preds = %178
  %183 = load i32, i32* @POWER8_TLB_SETS, align 4
  %184 = load %struct.kvm*, %struct.kvm** %3, align 8
  %185 = getelementptr inbounds %struct.kvm, %struct.kvm* %184, i32 0, i32 0
  %186 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %185, i32 0, i32 10
  store i32 %183, i32* %186, align 8
  br label %192

187:                                              ; preds = %178
  %188 = load i32, i32* @POWER7_TLB_SETS, align 4
  %189 = load %struct.kvm*, %struct.kvm** %3, align 8
  %190 = getelementptr inbounds %struct.kvm, %struct.kvm* %189, i32 0, i32 0
  %191 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %190, i32 0, i32 10
  store i32 %188, i32* %191, align 8
  br label %192

192:                                              ; preds = %187, %182
  br label %193

193:                                              ; preds = %192, %173
  br label %194

194:                                              ; preds = %193, %164
  %195 = load i32, i32* @CPU_FTR_ARCH_300, align 4
  %196 = call i64 @cpu_has_feature(i32 %195)
  %197 = icmp ne i64 %196, 0
  br i1 %197, label %198, label %216

198:                                              ; preds = %194
  %199 = load i32, i32* @indep_threads_mode, align 4
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %210, label %201

201:                                              ; preds = %198
  %202 = load i32, i32* @CPU_FTR_HVMODE, align 4
  %203 = call i64 @cpu_has_feature(i32 %202)
  %204 = icmp ne i64 %203, 0
  br i1 %204, label %210, label %205

205:                                              ; preds = %201
  %206 = call i32 @pr_warn(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0))
  %207 = load %struct.kvm*, %struct.kvm** %3, align 8
  %208 = getelementptr inbounds %struct.kvm, %struct.kvm* %207, i32 0, i32 0
  %209 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %208, i32 0, i32 6
  store i32 1, i32* %209, align 8
  br label %215

210:                                              ; preds = %201, %198
  %211 = load i32, i32* @indep_threads_mode, align 4
  %212 = load %struct.kvm*, %struct.kvm** %3, align 8
  %213 = getelementptr inbounds %struct.kvm, %struct.kvm* %212, i32 0, i32 0
  %214 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %213, i32 0, i32 6
  store i32 %211, i32* %214, align 8
  br label %215

215:                                              ; preds = %210, %205
  br label %216

216:                                              ; preds = %215, %194
  %217 = load %struct.kvm*, %struct.kvm** %3, align 8
  %218 = getelementptr inbounds %struct.kvm, %struct.kvm* %217, i32 0, i32 0
  %219 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %218, i32 0, i32 6
  %220 = load i32, i32* %219, align 8
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %224, label %222

222:                                              ; preds = %216
  %223 = call i32 (...) @kvm_hv_vm_activated()
  br label %224

224:                                              ; preds = %222, %216
  %225 = load i32, i32* @CPU_FTR_ARCH_300, align 4
  %226 = call i64 @cpu_has_feature(i32 %225)
  %227 = icmp ne i64 %226, 0
  br i1 %227, label %233, label %228

228:                                              ; preds = %224
  %229 = load i32, i32* @threads_per_subcore, align 4
  %230 = load %struct.kvm*, %struct.kvm** %3, align 8
  %231 = getelementptr inbounds %struct.kvm, %struct.kvm* %230, i32 0, i32 0
  %232 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %231, i32 0, i32 7
  store i32 %229, i32* %232, align 4
  br label %237

233:                                              ; preds = %224
  %234 = load %struct.kvm*, %struct.kvm** %3, align 8
  %235 = getelementptr inbounds %struct.kvm, %struct.kvm* %234, i32 0, i32 0
  %236 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %235, i32 0, i32 7
  store i32 1, i32* %236, align 4
  br label %237

237:                                              ; preds = %233, %228
  %238 = load %struct.kvm*, %struct.kvm** %3, align 8
  %239 = getelementptr inbounds %struct.kvm, %struct.kvm* %238, i32 0, i32 0
  %240 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %239, i32 0, i32 8
  store i32 1, i32* %240, align 8
  %241 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 0
  %242 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %243 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %242, i32 0, i32 0
  %244 = load i32, i32* %243, align 4
  %245 = call i32 @snprintf(i8* %241, i32 32, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %244)
  %246 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 0
  %247 = load i32, i32* @kvm_debugfs_dir, align 4
  %248 = call i32 @debugfs_create_dir(i8* %246, i32 %247)
  %249 = load %struct.kvm*, %struct.kvm** %3, align 8
  %250 = getelementptr inbounds %struct.kvm, %struct.kvm* %249, i32 0, i32 0
  %251 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %250, i32 0, i32 9
  store i32 %248, i32* %251, align 4
  %252 = load %struct.kvm*, %struct.kvm** %3, align 8
  %253 = call i32 @kvmppc_mmu_debugfs_init(%struct.kvm* %252)
  %254 = call i64 (...) @radix_enabled()
  %255 = icmp ne i64 %254, 0
  br i1 %255, label %256, label %259

256:                                              ; preds = %237
  %257 = load %struct.kvm*, %struct.kvm** %3, align 8
  %258 = call i32 @kvmhv_radix_debugfs_init(%struct.kvm* %257)
  br label %259

259:                                              ; preds = %256, %237
  store i32 0, i32* %2, align 4
  br label %260

260:                                              ; preds = %259, %144, %15
  %261 = load i32, i32* %2, align 4
  ret i32 %261
}

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i64 @kvmppc_alloc_lpid(...) #1

declare dso_local i32 @kvmppc_alloc_host_rm_ops(...) #1

declare dso_local i32 @kvmhv_vm_nested_init(%struct.kvm*) #1

declare dso_local i64 @cpu_has_feature(i32) #1

declare dso_local i32 @cpumask_setall(i32*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i8* @mfspr(i32) #1

declare dso_local i64 @xics_on_xive(...) #1

declare dso_local i64 @radix_enabled(...) #1

declare dso_local i32 @kvmppc_init_vm_radix(%struct.kvm*) #1

declare dso_local i32 @kvmppc_free_lpid(i64) #1

declare dso_local i32 @kvmppc_setup_partition_table(%struct.kvm*) #1

declare dso_local i32 @pr_warn(i8*) #1

declare dso_local i32 @kvm_hv_vm_activated(...) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @debugfs_create_dir(i8*, i32) #1

declare dso_local i32 @kvmppc_mmu_debugfs_init(%struct.kvm*) #1

declare dso_local i32 @kvmhv_radix_debugfs_init(%struct.kvm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
