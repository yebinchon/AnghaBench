; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/vmx/extr_vmx.c_vmx_rtit_ctl_check.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/vmx/extr_vmx.c_vmx_rtit_ctl_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32 }
%struct.vcpu_vmx = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@RTIT_CTL_TRACEEN = common dso_local global i32 0, align 4
@RTIT_CTL_TOPA = common dso_local global i32 0, align 4
@RTIT_CTL_FABRIC_EN = common dso_local global i32 0, align 4
@PT_CAP_single_range_output = common dso_local global i32 0, align 4
@PT_CAP_mtc_periods = common dso_local global i32 0, align 4
@PT_CAP_mtc = common dso_local global i32 0, align 4
@RTIT_CTL_MTC_RANGE = common dso_local global i32 0, align 4
@RTIT_CTL_MTC_RANGE_OFFSET = common dso_local global i32 0, align 4
@PT_CAP_cycle_thresholds = common dso_local global i32 0, align 4
@PT_CAP_psb_cyc = common dso_local global i32 0, align 4
@RTIT_CTL_CYC_THRESH = common dso_local global i32 0, align 4
@RTIT_CTL_CYC_THRESH_OFFSET = common dso_local global i32 0, align 4
@PT_CAP_psb_periods = common dso_local global i32 0, align 4
@RTIT_CTL_PSB_FREQ = common dso_local global i32 0, align 4
@RTIT_CTL_PSB_FREQ_OFFSET = common dso_local global i32 0, align 4
@RTIT_CTL_ADDR0 = common dso_local global i32 0, align 4
@RTIT_CTL_ADDR0_OFFSET = common dso_local global i32 0, align 4
@RTIT_CTL_ADDR1 = common dso_local global i32 0, align 4
@RTIT_CTL_ADDR1_OFFSET = common dso_local global i32 0, align 4
@RTIT_CTL_ADDR2 = common dso_local global i32 0, align 4
@RTIT_CTL_ADDR2_OFFSET = common dso_local global i32 0, align 4
@RTIT_CTL_ADDR3 = common dso_local global i32 0, align 4
@RTIT_CTL_ADDR3_OFFSET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_vcpu*, i32)* @vmx_rtit_ctl_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmx_rtit_ctl_check(%struct.kvm_vcpu* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.kvm_vcpu*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.vcpu_vmx*, align 8
  %7 = alloca i64, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %9 = call %struct.vcpu_vmx* @to_vmx(%struct.kvm_vcpu* %8)
  store %struct.vcpu_vmx* %9, %struct.vcpu_vmx** %6, align 8
  %10 = load i32, i32* %5, align 4
  %11 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %6, align 8
  %12 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = and i32 %10, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %210

18:                                               ; preds = %2
  %19 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %6, align 8
  %20 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 3
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @RTIT_CTL_TRACEEN, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %40

27:                                               ; preds = %18
  %28 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %6, align 8
  %29 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 3
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %5, align 4
  %34 = xor i32 %32, %33
  %35 = load i32, i32* @RTIT_CTL_TRACEEN, align 4
  %36 = xor i32 %35, -1
  %37 = and i32 %34, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %27
  store i32 1, i32* %3, align 4
  br label %210

40:                                               ; preds = %27, %18
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* @RTIT_CTL_TRACEEN, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %64

45:                                               ; preds = %40
  %46 = load i32, i32* %5, align 4
  %47 = load i32, i32* @RTIT_CTL_TOPA, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %64, label %50

50:                                               ; preds = %45
  %51 = load i32, i32* %5, align 4
  %52 = load i32, i32* @RTIT_CTL_FABRIC_EN, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %64, label %55

55:                                               ; preds = %50
  %56 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %6, align 8
  %57 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @PT_CAP_single_range_output, align 4
  %61 = call i64 @intel_pt_validate_cap(i32 %59, i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %64, label %63

63:                                               ; preds = %55
  store i32 1, i32* %3, align 4
  br label %210

64:                                               ; preds = %55, %50, %45, %40
  %65 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %6, align 8
  %66 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @PT_CAP_mtc_periods, align 4
  %70 = call i64 @intel_pt_validate_cap(i32 %68, i32 %69)
  store i64 %70, i64* %7, align 8
  %71 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %6, align 8
  %72 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @PT_CAP_mtc, align 4
  %76 = call i64 @intel_pt_validate_cap(i32 %74, i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %87

78:                                               ; preds = %64
  %79 = load i32, i32* %5, align 4
  %80 = load i32, i32* @RTIT_CTL_MTC_RANGE, align 4
  %81 = and i32 %79, %80
  %82 = load i32, i32* @RTIT_CTL_MTC_RANGE_OFFSET, align 4
  %83 = ashr i32 %81, %82
  %84 = call i32 @test_bit(i32 %83, i64* %7)
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %87, label %86

86:                                               ; preds = %78
  store i32 1, i32* %3, align 4
  br label %210

87:                                               ; preds = %78, %64
  %88 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %6, align 8
  %89 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @PT_CAP_cycle_thresholds, align 4
  %93 = call i64 @intel_pt_validate_cap(i32 %91, i32 %92)
  store i64 %93, i64* %7, align 8
  %94 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %6, align 8
  %95 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* @PT_CAP_psb_cyc, align 4
  %99 = call i64 @intel_pt_validate_cap(i32 %97, i32 %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %110

101:                                              ; preds = %87
  %102 = load i32, i32* %5, align 4
  %103 = load i32, i32* @RTIT_CTL_CYC_THRESH, align 4
  %104 = and i32 %102, %103
  %105 = load i32, i32* @RTIT_CTL_CYC_THRESH_OFFSET, align 4
  %106 = ashr i32 %104, %105
  %107 = call i32 @test_bit(i32 %106, i64* %7)
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %110, label %109

109:                                              ; preds = %101
  store i32 1, i32* %3, align 4
  br label %210

110:                                              ; preds = %101, %87
  %111 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %6, align 8
  %112 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* @PT_CAP_psb_periods, align 4
  %116 = call i64 @intel_pt_validate_cap(i32 %114, i32 %115)
  store i64 %116, i64* %7, align 8
  %117 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %6, align 8
  %118 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* @PT_CAP_psb_cyc, align 4
  %122 = call i64 @intel_pt_validate_cap(i32 %120, i32 %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %133

124:                                              ; preds = %110
  %125 = load i32, i32* %5, align 4
  %126 = load i32, i32* @RTIT_CTL_PSB_FREQ, align 4
  %127 = and i32 %125, %126
  %128 = load i32, i32* @RTIT_CTL_PSB_FREQ_OFFSET, align 4
  %129 = ashr i32 %127, %128
  %130 = call i32 @test_bit(i32 %129, i64* %7)
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %133, label %132

132:                                              ; preds = %124
  store i32 1, i32* %3, align 4
  br label %210

133:                                              ; preds = %124, %110
  %134 = load i32, i32* %5, align 4
  %135 = load i32, i32* @RTIT_CTL_ADDR0, align 4
  %136 = and i32 %134, %135
  %137 = load i32, i32* @RTIT_CTL_ADDR0_OFFSET, align 4
  %138 = ashr i32 %136, %137
  %139 = sext i32 %138 to i64
  store i64 %139, i64* %7, align 8
  %140 = load i64, i64* %7, align 8
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %148

142:                                              ; preds = %133
  %143 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %6, align 8
  %144 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = icmp slt i32 %146, 1
  br i1 %147, label %151, label %148

148:                                              ; preds = %142, %133
  %149 = load i64, i64* %7, align 8
  %150 = icmp ugt i64 %149, 2
  br i1 %150, label %151, label %152

151:                                              ; preds = %148, %142
  store i32 1, i32* %3, align 4
  br label %210

152:                                              ; preds = %148
  %153 = load i32, i32* %5, align 4
  %154 = load i32, i32* @RTIT_CTL_ADDR1, align 4
  %155 = and i32 %153, %154
  %156 = load i32, i32* @RTIT_CTL_ADDR1_OFFSET, align 4
  %157 = ashr i32 %155, %156
  %158 = sext i32 %157 to i64
  store i64 %158, i64* %7, align 8
  %159 = load i64, i64* %7, align 8
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %167

161:                                              ; preds = %152
  %162 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %6, align 8
  %163 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  %166 = icmp slt i32 %165, 2
  br i1 %166, label %170, label %167

167:                                              ; preds = %161, %152
  %168 = load i64, i64* %7, align 8
  %169 = icmp ugt i64 %168, 2
  br i1 %169, label %170, label %171

170:                                              ; preds = %167, %161
  store i32 1, i32* %3, align 4
  br label %210

171:                                              ; preds = %167
  %172 = load i32, i32* %5, align 4
  %173 = load i32, i32* @RTIT_CTL_ADDR2, align 4
  %174 = and i32 %172, %173
  %175 = load i32, i32* @RTIT_CTL_ADDR2_OFFSET, align 4
  %176 = ashr i32 %174, %175
  %177 = sext i32 %176 to i64
  store i64 %177, i64* %7, align 8
  %178 = load i64, i64* %7, align 8
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %180, label %186

180:                                              ; preds = %171
  %181 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %6, align 8
  %182 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %181, i32 0, i32 0
  %183 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 4
  %185 = icmp slt i32 %184, 3
  br i1 %185, label %189, label %186

186:                                              ; preds = %180, %171
  %187 = load i64, i64* %7, align 8
  %188 = icmp ugt i64 %187, 2
  br i1 %188, label %189, label %190

189:                                              ; preds = %186, %180
  store i32 1, i32* %3, align 4
  br label %210

190:                                              ; preds = %186
  %191 = load i32, i32* %5, align 4
  %192 = load i32, i32* @RTIT_CTL_ADDR3, align 4
  %193 = and i32 %191, %192
  %194 = load i32, i32* @RTIT_CTL_ADDR3_OFFSET, align 4
  %195 = ashr i32 %193, %194
  %196 = sext i32 %195 to i64
  store i64 %196, i64* %7, align 8
  %197 = load i64, i64* %7, align 8
  %198 = icmp ne i64 %197, 0
  br i1 %198, label %199, label %205

199:                                              ; preds = %190
  %200 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %6, align 8
  %201 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %200, i32 0, i32 0
  %202 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %201, i32 0, i32 1
  %203 = load i32, i32* %202, align 4
  %204 = icmp slt i32 %203, 4
  br i1 %204, label %208, label %205

205:                                              ; preds = %199, %190
  %206 = load i64, i64* %7, align 8
  %207 = icmp ugt i64 %206, 2
  br i1 %207, label %208, label %209

208:                                              ; preds = %205, %199
  store i32 1, i32* %3, align 4
  br label %210

209:                                              ; preds = %205
  store i32 0, i32* %3, align 4
  br label %210

210:                                              ; preds = %209, %208, %189, %170, %151, %132, %109, %86, %63, %39, %17
  %211 = load i32, i32* %3, align 4
  ret i32 %211
}

declare dso_local %struct.vcpu_vmx* @to_vmx(%struct.kvm_vcpu*) #1

declare dso_local i64 @intel_pt_validate_cap(i32, i32) #1

declare dso_local i32 @test_bit(i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
