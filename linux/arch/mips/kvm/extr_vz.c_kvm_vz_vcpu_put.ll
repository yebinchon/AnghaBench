; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/kvm/extr_vz.c_kvm_vz_vcpu_put.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/kvm/extr_vz.c_kvm_vz_vcpu_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.kvm_vcpu = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.mips_coproc* }
%struct.mips_coproc = type { i32** }

@current = common dso_local global %struct.TYPE_4__* null, align 8
@PF_VCPU = common dso_local global i32 0, align 4
@cpu_guest_has_contextconfig = common dso_local global i64 0, align 8
@MIPSR6_WIRED_WIRED = common dso_local global i32 0, align 4
@cpu_guest_has_userlocal = common dso_local global i64 0, align 8
@cpu_guest_has_conf1 = common dso_local global i64 0, align 8
@cpu_guest_has_conf2 = common dso_local global i64 0, align 8
@cpu_guest_has_conf3 = common dso_local global i64 0, align 8
@cpu_guest_has_conf4 = common dso_local global i64 0, align 8
@cpu_guest_has_conf5 = common dso_local global i64 0, align 8
@cpu_guest_has_conf6 = common dso_local global i64 0, align 8
@cpu_guest_has_conf7 = common dso_local global i64 0, align 8
@cpu_guest_has_badinstr = common dso_local global i64 0, align 8
@cpu_guest_has_badinstrp = common dso_local global i64 0, align 8
@cpu_guest_has_segments = common dso_local global i64 0, align 8
@cpu_guest_has_htw = common dso_local global i64 0, align 8
@MIPS_CONF3_PW = common dso_local global i32 0, align 4
@cpu_has_guestctl2 = common dso_local global i64 0, align 8
@MIPS_CP0_GUESTCTL2 = common dso_local global i64 0, align 8
@MIPS_CP0_GUESTCTL2_SEL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_vcpu*, i32)* @kvm_vz_vcpu_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kvm_vz_vcpu_put(%struct.kvm_vcpu* %0, i32 %1) #0 {
  %3 = alloca %struct.kvm_vcpu*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mips_coproc*, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %7 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load %struct.mips_coproc*, %struct.mips_coproc** %8, align 8
  store %struct.mips_coproc* %9, %struct.mips_coproc** %5, align 8
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @PF_VCPU, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %18 = call i32 @kvm_vz_vcpu_save_wired(%struct.kvm_vcpu* %17)
  br label %19

19:                                               ; preds = %16, %2
  %20 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %21 = call i32 @kvm_lose_fpu(%struct.kvm_vcpu* %20)
  %22 = load %struct.mips_coproc*, %struct.mips_coproc** %5, align 8
  %23 = call i32 @kvm_save_gc0_index(%struct.mips_coproc* %22)
  %24 = load %struct.mips_coproc*, %struct.mips_coproc** %5, align 8
  %25 = call i32 @kvm_save_gc0_entrylo0(%struct.mips_coproc* %24)
  %26 = load %struct.mips_coproc*, %struct.mips_coproc** %5, align 8
  %27 = call i32 @kvm_save_gc0_entrylo1(%struct.mips_coproc* %26)
  %28 = load %struct.mips_coproc*, %struct.mips_coproc** %5, align 8
  %29 = call i32 @kvm_save_gc0_context(%struct.mips_coproc* %28)
  %30 = load i64, i64* @cpu_guest_has_contextconfig, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %19
  %33 = load %struct.mips_coproc*, %struct.mips_coproc** %5, align 8
  %34 = call i32 @kvm_save_gc0_contextconfig(%struct.mips_coproc* %33)
  br label %35

35:                                               ; preds = %32, %19
  %36 = load %struct.mips_coproc*, %struct.mips_coproc** %5, align 8
  %37 = call i32 @kvm_save_gc0_pagemask(%struct.mips_coproc* %36)
  %38 = load %struct.mips_coproc*, %struct.mips_coproc** %5, align 8
  %39 = call i32 @kvm_save_gc0_pagegrain(%struct.mips_coproc* %38)
  %40 = load %struct.mips_coproc*, %struct.mips_coproc** %5, align 8
  %41 = call i32 @kvm_save_gc0_wired(%struct.mips_coproc* %40)
  %42 = load i32, i32* @MIPSR6_WIRED_WIRED, align 4
  %43 = call i32 @clear_gc0_wired(i32 %42)
  %44 = load %struct.mips_coproc*, %struct.mips_coproc** %5, align 8
  %45 = call i32 @kvm_save_gc0_hwrena(%struct.mips_coproc* %44)
  %46 = load %struct.mips_coproc*, %struct.mips_coproc** %5, align 8
  %47 = call i32 @kvm_save_gc0_badvaddr(%struct.mips_coproc* %46)
  %48 = load %struct.mips_coproc*, %struct.mips_coproc** %5, align 8
  %49 = call i32 @kvm_save_gc0_entryhi(%struct.mips_coproc* %48)
  %50 = load %struct.mips_coproc*, %struct.mips_coproc** %5, align 8
  %51 = call i32 @kvm_save_gc0_status(%struct.mips_coproc* %50)
  %52 = load %struct.mips_coproc*, %struct.mips_coproc** %5, align 8
  %53 = call i32 @kvm_save_gc0_intctl(%struct.mips_coproc* %52)
  %54 = load %struct.mips_coproc*, %struct.mips_coproc** %5, align 8
  %55 = call i32 @kvm_save_gc0_epc(%struct.mips_coproc* %54)
  %56 = load %struct.mips_coproc*, %struct.mips_coproc** %5, align 8
  %57 = call i32 (...) @kvm_vz_read_gc0_ebase()
  %58 = call i32 @kvm_write_sw_gc0_ebase(%struct.mips_coproc* %56, i32 %57)
  %59 = load i64, i64* @cpu_guest_has_userlocal, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %35
  %62 = load %struct.mips_coproc*, %struct.mips_coproc** %5, align 8
  %63 = call i32 @kvm_save_gc0_userlocal(%struct.mips_coproc* %62)
  br label %64

64:                                               ; preds = %61, %35
  %65 = load %struct.mips_coproc*, %struct.mips_coproc** %5, align 8
  %66 = call i32 @kvm_save_gc0_config(%struct.mips_coproc* %65)
  %67 = load i64, i64* @cpu_guest_has_conf1, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %64
  %70 = load %struct.mips_coproc*, %struct.mips_coproc** %5, align 8
  %71 = call i32 @kvm_save_gc0_config1(%struct.mips_coproc* %70)
  br label %72

72:                                               ; preds = %69, %64
  %73 = load i64, i64* @cpu_guest_has_conf2, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %72
  %76 = load %struct.mips_coproc*, %struct.mips_coproc** %5, align 8
  %77 = call i32 @kvm_save_gc0_config2(%struct.mips_coproc* %76)
  br label %78

78:                                               ; preds = %75, %72
  %79 = load i64, i64* @cpu_guest_has_conf3, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %78
  %82 = load %struct.mips_coproc*, %struct.mips_coproc** %5, align 8
  %83 = call i32 @kvm_save_gc0_config3(%struct.mips_coproc* %82)
  br label %84

84:                                               ; preds = %81, %78
  %85 = load i64, i64* @cpu_guest_has_conf4, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %84
  %88 = load %struct.mips_coproc*, %struct.mips_coproc** %5, align 8
  %89 = call i32 @kvm_save_gc0_config4(%struct.mips_coproc* %88)
  br label %90

90:                                               ; preds = %87, %84
  %91 = load i64, i64* @cpu_guest_has_conf5, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %90
  %94 = load %struct.mips_coproc*, %struct.mips_coproc** %5, align 8
  %95 = call i32 @kvm_save_gc0_config5(%struct.mips_coproc* %94)
  br label %96

96:                                               ; preds = %93, %90
  %97 = load i64, i64* @cpu_guest_has_conf6, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %96
  %100 = load %struct.mips_coproc*, %struct.mips_coproc** %5, align 8
  %101 = call i32 @kvm_save_gc0_config6(%struct.mips_coproc* %100)
  br label %102

102:                                              ; preds = %99, %96
  %103 = load i64, i64* @cpu_guest_has_conf7, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %108

105:                                              ; preds = %102
  %106 = load %struct.mips_coproc*, %struct.mips_coproc** %5, align 8
  %107 = call i32 @kvm_save_gc0_config7(%struct.mips_coproc* %106)
  br label %108

108:                                              ; preds = %105, %102
  %109 = load %struct.mips_coproc*, %struct.mips_coproc** %5, align 8
  %110 = call i32 @kvm_save_gc0_errorepc(%struct.mips_coproc* %109)
  %111 = load i64, i64* @cpu_guest_has_conf4, align 8
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %150

113:                                              ; preds = %108
  %114 = call i64 @cpu_guest_has_kscr(i32 2)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %119

116:                                              ; preds = %113
  %117 = load %struct.mips_coproc*, %struct.mips_coproc** %5, align 8
  %118 = call i32 @kvm_save_gc0_kscratch1(%struct.mips_coproc* %117)
  br label %119

119:                                              ; preds = %116, %113
  %120 = call i64 @cpu_guest_has_kscr(i32 3)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %125

122:                                              ; preds = %119
  %123 = load %struct.mips_coproc*, %struct.mips_coproc** %5, align 8
  %124 = call i32 @kvm_save_gc0_kscratch2(%struct.mips_coproc* %123)
  br label %125

125:                                              ; preds = %122, %119
  %126 = call i64 @cpu_guest_has_kscr(i32 4)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %131

128:                                              ; preds = %125
  %129 = load %struct.mips_coproc*, %struct.mips_coproc** %5, align 8
  %130 = call i32 @kvm_save_gc0_kscratch3(%struct.mips_coproc* %129)
  br label %131

131:                                              ; preds = %128, %125
  %132 = call i64 @cpu_guest_has_kscr(i32 5)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %137

134:                                              ; preds = %131
  %135 = load %struct.mips_coproc*, %struct.mips_coproc** %5, align 8
  %136 = call i32 @kvm_save_gc0_kscratch4(%struct.mips_coproc* %135)
  br label %137

137:                                              ; preds = %134, %131
  %138 = call i64 @cpu_guest_has_kscr(i32 6)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %143

140:                                              ; preds = %137
  %141 = load %struct.mips_coproc*, %struct.mips_coproc** %5, align 8
  %142 = call i32 @kvm_save_gc0_kscratch5(%struct.mips_coproc* %141)
  br label %143

143:                                              ; preds = %140, %137
  %144 = call i64 @cpu_guest_has_kscr(i32 7)
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %149

146:                                              ; preds = %143
  %147 = load %struct.mips_coproc*, %struct.mips_coproc** %5, align 8
  %148 = call i32 @kvm_save_gc0_kscratch6(%struct.mips_coproc* %147)
  br label %149

149:                                              ; preds = %146, %143
  br label %150

150:                                              ; preds = %149, %108
  %151 = load i64, i64* @cpu_guest_has_badinstr, align 8
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %156

153:                                              ; preds = %150
  %154 = load %struct.mips_coproc*, %struct.mips_coproc** %5, align 8
  %155 = call i32 @kvm_save_gc0_badinstr(%struct.mips_coproc* %154)
  br label %156

156:                                              ; preds = %153, %150
  %157 = load i64, i64* @cpu_guest_has_badinstrp, align 8
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %162

159:                                              ; preds = %156
  %160 = load %struct.mips_coproc*, %struct.mips_coproc** %5, align 8
  %161 = call i32 @kvm_save_gc0_badinstrp(%struct.mips_coproc* %160)
  br label %162

162:                                              ; preds = %159, %156
  %163 = load i64, i64* @cpu_guest_has_segments, align 8
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %172

165:                                              ; preds = %162
  %166 = load %struct.mips_coproc*, %struct.mips_coproc** %5, align 8
  %167 = call i32 @kvm_save_gc0_segctl0(%struct.mips_coproc* %166)
  %168 = load %struct.mips_coproc*, %struct.mips_coproc** %5, align 8
  %169 = call i32 @kvm_save_gc0_segctl1(%struct.mips_coproc* %168)
  %170 = load %struct.mips_coproc*, %struct.mips_coproc** %5, align 8
  %171 = call i32 @kvm_save_gc0_segctl2(%struct.mips_coproc* %170)
  br label %172

172:                                              ; preds = %165, %162
  %173 = load i64, i64* @cpu_guest_has_htw, align 8
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %190

175:                                              ; preds = %172
  %176 = load %struct.mips_coproc*, %struct.mips_coproc** %5, align 8
  %177 = call i32 @kvm_read_sw_gc0_config3(%struct.mips_coproc* %176)
  %178 = load i32, i32* @MIPS_CONF3_PW, align 4
  %179 = and i32 %177, %178
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %190

181:                                              ; preds = %175
  %182 = load %struct.mips_coproc*, %struct.mips_coproc** %5, align 8
  %183 = call i32 @kvm_save_gc0_pwbase(%struct.mips_coproc* %182)
  %184 = load %struct.mips_coproc*, %struct.mips_coproc** %5, align 8
  %185 = call i32 @kvm_save_gc0_pwfield(%struct.mips_coproc* %184)
  %186 = load %struct.mips_coproc*, %struct.mips_coproc** %5, align 8
  %187 = call i32 @kvm_save_gc0_pwsize(%struct.mips_coproc* %186)
  %188 = load %struct.mips_coproc*, %struct.mips_coproc** %5, align 8
  %189 = call i32 @kvm_save_gc0_pwctl(%struct.mips_coproc* %188)
  br label %190

190:                                              ; preds = %181, %175, %172
  %191 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %192 = call i32 @kvm_vz_save_timer(%struct.kvm_vcpu* %191)
  %193 = load i64, i64* @cpu_has_guestctl2, align 8
  %194 = icmp ne i64 %193, 0
  br i1 %194, label %195, label %205

195:                                              ; preds = %190
  %196 = call i32 (...) @read_c0_guestctl2()
  %197 = load %struct.mips_coproc*, %struct.mips_coproc** %5, align 8
  %198 = getelementptr inbounds %struct.mips_coproc, %struct.mips_coproc* %197, i32 0, i32 0
  %199 = load i32**, i32*** %198, align 8
  %200 = load i64, i64* @MIPS_CP0_GUESTCTL2, align 8
  %201 = getelementptr inbounds i32*, i32** %199, i64 %200
  %202 = load i32*, i32** %201, align 8
  %203 = load i64, i64* @MIPS_CP0_GUESTCTL2_SEL, align 8
  %204 = getelementptr inbounds i32, i32* %202, i64 %203
  store i32 %196, i32* %204, align 4
  br label %205

205:                                              ; preds = %195, %190
  ret i32 0
}

declare dso_local i32 @kvm_vz_vcpu_save_wired(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvm_lose_fpu(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvm_save_gc0_index(%struct.mips_coproc*) #1

declare dso_local i32 @kvm_save_gc0_entrylo0(%struct.mips_coproc*) #1

declare dso_local i32 @kvm_save_gc0_entrylo1(%struct.mips_coproc*) #1

declare dso_local i32 @kvm_save_gc0_context(%struct.mips_coproc*) #1

declare dso_local i32 @kvm_save_gc0_contextconfig(%struct.mips_coproc*) #1

declare dso_local i32 @kvm_save_gc0_pagemask(%struct.mips_coproc*) #1

declare dso_local i32 @kvm_save_gc0_pagegrain(%struct.mips_coproc*) #1

declare dso_local i32 @kvm_save_gc0_wired(%struct.mips_coproc*) #1

declare dso_local i32 @clear_gc0_wired(i32) #1

declare dso_local i32 @kvm_save_gc0_hwrena(%struct.mips_coproc*) #1

declare dso_local i32 @kvm_save_gc0_badvaddr(%struct.mips_coproc*) #1

declare dso_local i32 @kvm_save_gc0_entryhi(%struct.mips_coproc*) #1

declare dso_local i32 @kvm_save_gc0_status(%struct.mips_coproc*) #1

declare dso_local i32 @kvm_save_gc0_intctl(%struct.mips_coproc*) #1

declare dso_local i32 @kvm_save_gc0_epc(%struct.mips_coproc*) #1

declare dso_local i32 @kvm_write_sw_gc0_ebase(%struct.mips_coproc*, i32) #1

declare dso_local i32 @kvm_vz_read_gc0_ebase(...) #1

declare dso_local i32 @kvm_save_gc0_userlocal(%struct.mips_coproc*) #1

declare dso_local i32 @kvm_save_gc0_config(%struct.mips_coproc*) #1

declare dso_local i32 @kvm_save_gc0_config1(%struct.mips_coproc*) #1

declare dso_local i32 @kvm_save_gc0_config2(%struct.mips_coproc*) #1

declare dso_local i32 @kvm_save_gc0_config3(%struct.mips_coproc*) #1

declare dso_local i32 @kvm_save_gc0_config4(%struct.mips_coproc*) #1

declare dso_local i32 @kvm_save_gc0_config5(%struct.mips_coproc*) #1

declare dso_local i32 @kvm_save_gc0_config6(%struct.mips_coproc*) #1

declare dso_local i32 @kvm_save_gc0_config7(%struct.mips_coproc*) #1

declare dso_local i32 @kvm_save_gc0_errorepc(%struct.mips_coproc*) #1

declare dso_local i64 @cpu_guest_has_kscr(i32) #1

declare dso_local i32 @kvm_save_gc0_kscratch1(%struct.mips_coproc*) #1

declare dso_local i32 @kvm_save_gc0_kscratch2(%struct.mips_coproc*) #1

declare dso_local i32 @kvm_save_gc0_kscratch3(%struct.mips_coproc*) #1

declare dso_local i32 @kvm_save_gc0_kscratch4(%struct.mips_coproc*) #1

declare dso_local i32 @kvm_save_gc0_kscratch5(%struct.mips_coproc*) #1

declare dso_local i32 @kvm_save_gc0_kscratch6(%struct.mips_coproc*) #1

declare dso_local i32 @kvm_save_gc0_badinstr(%struct.mips_coproc*) #1

declare dso_local i32 @kvm_save_gc0_badinstrp(%struct.mips_coproc*) #1

declare dso_local i32 @kvm_save_gc0_segctl0(%struct.mips_coproc*) #1

declare dso_local i32 @kvm_save_gc0_segctl1(%struct.mips_coproc*) #1

declare dso_local i32 @kvm_save_gc0_segctl2(%struct.mips_coproc*) #1

declare dso_local i32 @kvm_read_sw_gc0_config3(%struct.mips_coproc*) #1

declare dso_local i32 @kvm_save_gc0_pwbase(%struct.mips_coproc*) #1

declare dso_local i32 @kvm_save_gc0_pwfield(%struct.mips_coproc*) #1

declare dso_local i32 @kvm_save_gc0_pwsize(%struct.mips_coproc*) #1

declare dso_local i32 @kvm_save_gc0_pwctl(%struct.mips_coproc*) #1

declare dso_local i32 @kvm_vz_save_timer(%struct.kvm_vcpu*) #1

declare dso_local i32 @read_c0_guestctl2(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
