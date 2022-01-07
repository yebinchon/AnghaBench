; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/kvm/extr_kvm-s390.c_kvm_s390_cpu_feat_init.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/kvm/extr_kvm-s390.c_kvm_s390_cpu_feat_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32*, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32 }
%struct.TYPE_3__ = type { i64, i64, i64, i64, i64, i64, i64, i64, i32 }

@kvm_s390_available_subfunc = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@PTFF_QAF = common dso_local global i32 0, align 4
@CPACF_KMAC = common dso_local global i32 0, align 4
@CPACF_KMC = common dso_local global i32 0, align 4
@CPACF_KM = common dso_local global i32 0, align 4
@CPACF_KIMD = common dso_local global i32 0, align 4
@CPACF_KLMD = common dso_local global i32 0, align 4
@CPACF_PCKMO = common dso_local global i32 0, align 4
@CPACF_KMCTR = common dso_local global i32 0, align 4
@CPACF_KMF = common dso_local global i32 0, align 4
@CPACF_KMO = common dso_local global i32 0, align 4
@CPACF_PCC = common dso_local global i32 0, align 4
@CPACF_PRNO = common dso_local global i32 0, align 4
@CPACF_KMA = common dso_local global i32 0, align 4
@CPACF_KDSA = common dso_local global i32 0, align 4
@INSN_SORTL = common dso_local global i32 0, align 4
@INSN_DFLTCC = common dso_local global i32 0, align 4
@MACHINE_HAS_ESOP = common dso_local global i64 0, align 8
@KVM_S390_VM_CPU_FEAT_ESOP = common dso_local global i32 0, align 4
@sclp = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@nested = common dso_local global i32 0, align 4
@KVM_S390_VM_CPU_FEAT_SIEF2 = common dso_local global i32 0, align 4
@KVM_S390_VM_CPU_FEAT_64BSCAO = common dso_local global i32 0, align 4
@KVM_S390_VM_CPU_FEAT_SIIF = common dso_local global i32 0, align 4
@KVM_S390_VM_CPU_FEAT_GPERE = common dso_local global i32 0, align 4
@KVM_S390_VM_CPU_FEAT_GSLS = common dso_local global i32 0, align 4
@KVM_S390_VM_CPU_FEAT_IB = common dso_local global i32 0, align 4
@KVM_S390_VM_CPU_FEAT_CEI = common dso_local global i32 0, align 4
@KVM_S390_VM_CPU_FEAT_IBS = common dso_local global i32 0, align 4
@KVM_S390_VM_CPU_FEAT_KSS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @kvm_s390_cpu_feat_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kvm_s390_cpu_feat_init() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  br label %2

2:                                                ; preds = %21, %0
  %3 = load i32, i32* %1, align 4
  %4 = icmp slt i32 %3, 256
  br i1 %4, label %5, label %24

5:                                                ; preds = %2
  %6 = load i32, i32* %1, align 4
  %7 = call i64 @plo_test_bit(i32 %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %20

9:                                                ; preds = %5
  %10 = load i32, i32* %1, align 4
  %11 = and i32 %10, 7
  %12 = ashr i32 128, %11
  %13 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @kvm_s390_available_subfunc, i32 0, i32 0), align 8
  %14 = load i32, i32* %1, align 4
  %15 = ashr i32 %14, 3
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32, i32* %13, i64 %16
  %18 = load i32, i32* %17, align 4
  %19 = or i32 %18, %12
  store i32 %19, i32* %17, align 4
  br label %20

20:                                               ; preds = %9, %5
  br label %21

21:                                               ; preds = %20
  %22 = load i32, i32* %1, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %1, align 4
  br label %2

24:                                               ; preds = %2
  %25 = call i64 @test_facility(i32 28)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %24
  %28 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @kvm_s390_available_subfunc, i32 0, i32 16), align 8
  %29 = load i32, i32* @PTFF_QAF, align 4
  %30 = call i32 @ptff(i32 %28, i32 4, i32 %29)
  br label %31

31:                                               ; preds = %27, %24
  %32 = call i64 @test_facility(i32 17)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %55

34:                                               ; preds = %31
  %35 = load i32, i32* @CPACF_KMAC, align 4
  %36 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @kvm_s390_available_subfunc, i32 0, i32 15), align 8
  %37 = inttoptr i64 %36 to i32*
  %38 = call i32 @__cpacf_query(i32 %35, i32* %37)
  %39 = load i32, i32* @CPACF_KMC, align 4
  %40 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @kvm_s390_available_subfunc, i32 0, i32 14), align 8
  %41 = inttoptr i64 %40 to i32*
  %42 = call i32 @__cpacf_query(i32 %39, i32* %41)
  %43 = load i32, i32* @CPACF_KM, align 4
  %44 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @kvm_s390_available_subfunc, i32 0, i32 13), align 8
  %45 = inttoptr i64 %44 to i32*
  %46 = call i32 @__cpacf_query(i32 %43, i32* %45)
  %47 = load i32, i32* @CPACF_KIMD, align 4
  %48 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @kvm_s390_available_subfunc, i32 0, i32 12), align 8
  %49 = inttoptr i64 %48 to i32*
  %50 = call i32 @__cpacf_query(i32 %47, i32* %49)
  %51 = load i32, i32* @CPACF_KLMD, align 4
  %52 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @kvm_s390_available_subfunc, i32 0, i32 11), align 8
  %53 = inttoptr i64 %52 to i32*
  %54 = call i32 @__cpacf_query(i32 %51, i32* %53)
  br label %55

55:                                               ; preds = %34, %31
  %56 = call i64 @test_facility(i32 76)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %55
  %59 = load i32, i32* @CPACF_PCKMO, align 4
  %60 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @kvm_s390_available_subfunc, i32 0, i32 10), align 8
  %61 = inttoptr i64 %60 to i32*
  %62 = call i32 @__cpacf_query(i32 %59, i32* %61)
  br label %63

63:                                               ; preds = %58, %55
  %64 = call i64 @test_facility(i32 77)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %83

66:                                               ; preds = %63
  %67 = load i32, i32* @CPACF_KMCTR, align 4
  %68 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @kvm_s390_available_subfunc, i32 0, i32 9), align 8
  %69 = inttoptr i64 %68 to i32*
  %70 = call i32 @__cpacf_query(i32 %67, i32* %69)
  %71 = load i32, i32* @CPACF_KMF, align 4
  %72 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @kvm_s390_available_subfunc, i32 0, i32 8), align 8
  %73 = inttoptr i64 %72 to i32*
  %74 = call i32 @__cpacf_query(i32 %71, i32* %73)
  %75 = load i32, i32* @CPACF_KMO, align 4
  %76 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @kvm_s390_available_subfunc, i32 0, i32 7), align 8
  %77 = inttoptr i64 %76 to i32*
  %78 = call i32 @__cpacf_query(i32 %75, i32* %77)
  %79 = load i32, i32* @CPACF_PCC, align 4
  %80 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @kvm_s390_available_subfunc, i32 0, i32 6), align 8
  %81 = inttoptr i64 %80 to i32*
  %82 = call i32 @__cpacf_query(i32 %79, i32* %81)
  br label %83

83:                                               ; preds = %66, %63
  %84 = call i64 @test_facility(i32 57)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %91

86:                                               ; preds = %83
  %87 = load i32, i32* @CPACF_PRNO, align 4
  %88 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @kvm_s390_available_subfunc, i32 0, i32 5), align 8
  %89 = inttoptr i64 %88 to i32*
  %90 = call i32 @__cpacf_query(i32 %87, i32* %89)
  br label %91

91:                                               ; preds = %86, %83
  %92 = call i64 @test_facility(i32 146)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %99

94:                                               ; preds = %91
  %95 = load i32, i32* @CPACF_KMA, align 4
  %96 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @kvm_s390_available_subfunc, i32 0, i32 4), align 8
  %97 = inttoptr i64 %96 to i32*
  %98 = call i32 @__cpacf_query(i32 %95, i32* %97)
  br label %99

99:                                               ; preds = %94, %91
  %100 = call i64 @test_facility(i32 155)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %107

102:                                              ; preds = %99
  %103 = load i32, i32* @CPACF_KDSA, align 4
  %104 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @kvm_s390_available_subfunc, i32 0, i32 3), align 8
  %105 = inttoptr i64 %104 to i32*
  %106 = call i32 @__cpacf_query(i32 %103, i32* %105)
  br label %107

107:                                              ; preds = %102, %99
  %108 = call i64 @test_facility(i32 150)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %114

110:                                              ; preds = %107
  %111 = load i32, i32* @INSN_SORTL, align 4
  %112 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @kvm_s390_available_subfunc, i32 0, i32 2), align 4
  %113 = call i32 @__insn32_query(i32 %111, i32 %112)
  br label %114

114:                                              ; preds = %110, %107
  %115 = call i64 @test_facility(i32 151)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %121

117:                                              ; preds = %114
  %118 = load i32, i32* @INSN_DFLTCC, align 4
  %119 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @kvm_s390_available_subfunc, i32 0, i32 1), align 8
  %120 = call i32 @__insn32_query(i32 %118, i32 %119)
  br label %121

121:                                              ; preds = %117, %114
  %122 = load i64, i64* @MACHINE_HAS_ESOP, align 8
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %127

124:                                              ; preds = %121
  %125 = load i32, i32* @KVM_S390_VM_CPU_FEAT_ESOP, align 4
  %126 = call i32 @allow_cpu_feat(i32 %125)
  br label %127

127:                                              ; preds = %124, %121
  %128 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @sclp, i32 0, i32 8), align 8
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %142

130:                                              ; preds = %127
  %131 = load i64, i64* @MACHINE_HAS_ESOP, align 8
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %142

133:                                              ; preds = %130
  %134 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @sclp, i32 0, i32 7), align 8
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %142

136:                                              ; preds = %133
  %137 = call i64 @test_facility(i32 3)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %142

139:                                              ; preds = %136
  %140 = load i32, i32* @nested, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %143, label %142

142:                                              ; preds = %139, %136, %133, %130, %127
  br label %193

143:                                              ; preds = %139
  %144 = load i32, i32* @KVM_S390_VM_CPU_FEAT_SIEF2, align 4
  %145 = call i32 @allow_cpu_feat(i32 %144)
  %146 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @sclp, i32 0, i32 7), align 8
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %151

148:                                              ; preds = %143
  %149 = load i32, i32* @KVM_S390_VM_CPU_FEAT_64BSCAO, align 4
  %150 = call i32 @allow_cpu_feat(i32 %149)
  br label %151

151:                                              ; preds = %148, %143
  %152 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @sclp, i32 0, i32 6), align 8
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %157

154:                                              ; preds = %151
  %155 = load i32, i32* @KVM_S390_VM_CPU_FEAT_SIIF, align 4
  %156 = call i32 @allow_cpu_feat(i32 %155)
  br label %157

157:                                              ; preds = %154, %151
  %158 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @sclp, i32 0, i32 5), align 8
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %163

160:                                              ; preds = %157
  %161 = load i32, i32* @KVM_S390_VM_CPU_FEAT_GPERE, align 4
  %162 = call i32 @allow_cpu_feat(i32 %161)
  br label %163

163:                                              ; preds = %160, %157
  %164 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @sclp, i32 0, i32 4), align 8
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %169

166:                                              ; preds = %163
  %167 = load i32, i32* @KVM_S390_VM_CPU_FEAT_GSLS, align 4
  %168 = call i32 @allow_cpu_feat(i32 %167)
  br label %169

169:                                              ; preds = %166, %163
  %170 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @sclp, i32 0, i32 3), align 8
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %175

172:                                              ; preds = %169
  %173 = load i32, i32* @KVM_S390_VM_CPU_FEAT_IB, align 4
  %174 = call i32 @allow_cpu_feat(i32 %173)
  br label %175

175:                                              ; preds = %172, %169
  %176 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @sclp, i32 0, i32 2), align 8
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %178, label %181

178:                                              ; preds = %175
  %179 = load i32, i32* @KVM_S390_VM_CPU_FEAT_CEI, align 4
  %180 = call i32 @allow_cpu_feat(i32 %179)
  br label %181

181:                                              ; preds = %178, %175
  %182 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @sclp, i32 0, i32 1), align 8
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %184, label %187

184:                                              ; preds = %181
  %185 = load i32, i32* @KVM_S390_VM_CPU_FEAT_IBS, align 4
  %186 = call i32 @allow_cpu_feat(i32 %185)
  br label %187

187:                                              ; preds = %184, %181
  %188 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @sclp, i32 0, i32 0), align 8
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %190, label %193

190:                                              ; preds = %187
  %191 = load i32, i32* @KVM_S390_VM_CPU_FEAT_KSS, align 4
  %192 = call i32 @allow_cpu_feat(i32 %191)
  br label %193

193:                                              ; preds = %142, %190, %187
  ret void
}

declare dso_local i64 @plo_test_bit(i32) #1

declare dso_local i64 @test_facility(i32) #1

declare dso_local i32 @ptff(i32, i32, i32) #1

declare dso_local i32 @__cpacf_query(i32, i32*) #1

declare dso_local i32 @__insn32_query(i32, i32) #1

declare dso_local i32 @allow_cpu_feat(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
