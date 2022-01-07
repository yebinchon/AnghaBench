; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_e500_emulate.c_kvmppc_core_emulate_mfspr_e500.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_e500_emulate.c_kvmppc_core_emulate_mfspr_e500.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32*, i32*, i32, i32, i32, i32*, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32 }
%struct.kvmppc_vcpu_e500 = type { i32*, i32, i32, i32, i32, i32 }

@EMULATE_DONE = common dso_local global i32 0, align 4
@VCPU_FTR_MMU_V2 = common dso_local global i32 0, align 4
@EMULATE_FAIL = common dso_local global i32 0, align 4
@BOOKE_IRQPRIO_PERFORMANCE_MONITOR = common dso_local global i64 0, align 8
@BOOKE_IRQPRIO_ALTIVEC_ASSIST = common dso_local global i64 0, align 8
@BOOKE_IRQPRIO_ALTIVEC_UNAVAIL = common dso_local global i64 0, align 8
@BOOKE_IRQPRIO_DBELL = common dso_local global i64 0, align 8
@BOOKE_IRQPRIO_DBELL_CRIT = common dso_local global i64 0, align 8
@BOOKE_IRQPRIO_SPE_FP_DATA = common dso_local global i64 0, align 8
@BOOKE_IRQPRIO_SPE_FP_ROUND = common dso_local global i64 0, align 8
@BOOKE_IRQPRIO_SPE_UNAVAIL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kvmppc_core_emulate_mfspr_e500(%struct.kvm_vcpu* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.kvm_vcpu*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.kvmppc_vcpu_e500*, align 8
  %9 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %10 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %11 = call %struct.kvmppc_vcpu_e500* @to_e500(%struct.kvm_vcpu* %10)
  store %struct.kvmppc_vcpu_e500* %11, %struct.kvmppc_vcpu_e500** %8, align 8
  %12 = load i32, i32* @EMULATE_DONE, align 4
  store i32 %12, i32* %9, align 4
  %13 = load i32, i32* %6, align 4
  switch i32 %13, label %205 [
    i32 136, label %14
    i32 135, label %21
    i32 134, label %28
    i32 145, label %35
    i32 144, label %43
    i32 143, label %51
    i32 142, label %59
    i32 141, label %67
    i32 140, label %75
    i32 139, label %83
    i32 157, label %92
    i32 131, label %98
    i32 129, label %106
    i32 130, label %114
    i32 128, label %129
    i32 147, label %144
    i32 146, label %149
    i32 155, label %154
    i32 154, label %159
    i32 132, label %164
    i32 137, label %169
    i32 138, label %171
    i32 156, label %177
    i32 133, label %190
    i32 150, label %196
  ]

14:                                               ; preds = %3
  %15 = load %struct.kvmppc_vcpu_e500*, %struct.kvmppc_vcpu_e500** %8, align 8
  %16 = getelementptr inbounds %struct.kvmppc_vcpu_e500, %struct.kvmppc_vcpu_e500* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32*, i32** %7, align 8
  store i32 %19, i32* %20, align 4
  br label %210

21:                                               ; preds = %3
  %22 = load %struct.kvmppc_vcpu_e500*, %struct.kvmppc_vcpu_e500** %8, align 8
  %23 = getelementptr inbounds %struct.kvmppc_vcpu_e500, %struct.kvmppc_vcpu_e500* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 1
  %26 = load i32, i32* %25, align 4
  %27 = load i32*, i32** %7, align 8
  store i32 %26, i32* %27, align 4
  br label %210

28:                                               ; preds = %3
  %29 = load %struct.kvmppc_vcpu_e500*, %struct.kvmppc_vcpu_e500** %8, align 8
  %30 = getelementptr inbounds %struct.kvmppc_vcpu_e500, %struct.kvmppc_vcpu_e500* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 2
  %33 = load i32, i32* %32, align 4
  %34 = load i32*, i32** %7, align 8
  store i32 %33, i32* %34, align 4
  br label %210

35:                                               ; preds = %3
  %36 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %37 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 7
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32*, i32** %7, align 8
  store i32 %41, i32* %42, align 4
  br label %210

43:                                               ; preds = %3
  %44 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %45 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 7
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load i32*, i32** %7, align 8
  store i32 %49, i32* %50, align 4
  br label %210

51:                                               ; preds = %3
  %52 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %53 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 7
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = load i32*, i32** %7, align 8
  store i32 %57, i32* %58, align 4
  br label %210

59:                                               ; preds = %3
  %60 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %61 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 7
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 4
  %66 = load i32*, i32** %7, align 8
  store i32 %65, i32* %66, align 4
  br label %210

67:                                               ; preds = %3
  %68 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %69 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 7
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 4
  %73 = load i32, i32* %72, align 4
  %74 = load i32*, i32** %7, align 8
  store i32 %73, i32* %74, align 4
  br label %210

75:                                               ; preds = %3
  %76 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %77 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 7
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 5
  %81 = load i32, i32* %80, align 4
  %82 = load i32*, i32** %7, align 8
  store i32 %81, i32* %82, align 4
  br label %210

83:                                               ; preds = %3
  %84 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %85 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 7
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 4
  %90 = ashr i32 %89, 32
  %91 = load i32*, i32** %7, align 8
  store i32 %90, i32* %91, align 4
  br label %210

92:                                               ; preds = %3
  %93 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %94 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = load i32*, i32** %7, align 8
  store i32 %96, i32* %97, align 4
  br label %210

98:                                               ; preds = %3
  %99 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %100 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 1
  %102 = load i32*, i32** %101, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 0
  %104 = load i32, i32* %103, align 4
  %105 = load i32*, i32** %7, align 8
  store i32 %104, i32* %105, align 4
  br label %210

106:                                              ; preds = %3
  %107 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %108 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 1
  %110 = load i32*, i32** %109, align 8
  %111 = getelementptr inbounds i32, i32* %110, i64 1
  %112 = load i32, i32* %111, align 4
  %113 = load i32*, i32** %7, align 8
  store i32 %112, i32* %113, align 4
  br label %210

114:                                              ; preds = %3
  %115 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %116 = load i32, i32* @VCPU_FTR_MMU_V2, align 4
  %117 = call i32 @has_feature(%struct.kvm_vcpu* %115, i32 %116)
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %121, label %119

119:                                              ; preds = %114
  %120 = load i32, i32* @EMULATE_FAIL, align 4
  store i32 %120, i32* %4, align 4
  br label %212

121:                                              ; preds = %114
  %122 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %123 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 2
  %125 = load i32*, i32** %124, align 8
  %126 = getelementptr inbounds i32, i32* %125, i64 0
  %127 = load i32, i32* %126, align 4
  %128 = load i32*, i32** %7, align 8
  store i32 %127, i32* %128, align 4
  br label %210

129:                                              ; preds = %3
  %130 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %131 = load i32, i32* @VCPU_FTR_MMU_V2, align 4
  %132 = call i32 @has_feature(%struct.kvm_vcpu* %130, i32 %131)
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %136, label %134

134:                                              ; preds = %129
  %135 = load i32, i32* @EMULATE_FAIL, align 4
  store i32 %135, i32* %4, align 4
  br label %212

136:                                              ; preds = %129
  %137 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %138 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %138, i32 0, i32 2
  %140 = load i32*, i32** %139, align 8
  %141 = getelementptr inbounds i32, i32* %140, i64 1
  %142 = load i32, i32* %141, align 4
  %143 = load i32*, i32** %7, align 8
  store i32 %142, i32* %143, align 4
  br label %210

144:                                              ; preds = %3
  %145 = load %struct.kvmppc_vcpu_e500*, %struct.kvmppc_vcpu_e500** %8, align 8
  %146 = getelementptr inbounds %struct.kvmppc_vcpu_e500, %struct.kvmppc_vcpu_e500* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 8
  %148 = load i32*, i32** %7, align 8
  store i32 %147, i32* %148, align 4
  br label %210

149:                                              ; preds = %3
  %150 = load %struct.kvmppc_vcpu_e500*, %struct.kvmppc_vcpu_e500** %8, align 8
  %151 = getelementptr inbounds %struct.kvmppc_vcpu_e500, %struct.kvmppc_vcpu_e500* %150, i32 0, i32 2
  %152 = load i32, i32* %151, align 4
  %153 = load i32*, i32** %7, align 8
  store i32 %152, i32* %153, align 4
  br label %210

154:                                              ; preds = %3
  %155 = load %struct.kvmppc_vcpu_e500*, %struct.kvmppc_vcpu_e500** %8, align 8
  %156 = getelementptr inbounds %struct.kvmppc_vcpu_e500, %struct.kvmppc_vcpu_e500* %155, i32 0, i32 3
  %157 = load i32, i32* %156, align 8
  %158 = load i32*, i32** %7, align 8
  store i32 %157, i32* %158, align 4
  br label %210

159:                                              ; preds = %3
  %160 = load %struct.kvmppc_vcpu_e500*, %struct.kvmppc_vcpu_e500** %8, align 8
  %161 = getelementptr inbounds %struct.kvmppc_vcpu_e500, %struct.kvmppc_vcpu_e500* %160, i32 0, i32 4
  %162 = load i32, i32* %161, align 4
  %163 = load i32*, i32** %7, align 8
  store i32 %162, i32* %163, align 4
  br label %210

164:                                              ; preds = %3
  %165 = load %struct.kvmppc_vcpu_e500*, %struct.kvmppc_vcpu_e500** %8, align 8
  %166 = getelementptr inbounds %struct.kvmppc_vcpu_e500, %struct.kvmppc_vcpu_e500* %165, i32 0, i32 5
  %167 = load i32, i32* %166, align 8
  %168 = load i32*, i32** %7, align 8
  store i32 %167, i32* %168, align 4
  br label %210

169:                                              ; preds = %3
  %170 = load i32*, i32** %7, align 8
  store i32 0, i32* %170, align 4
  br label %210

171:                                              ; preds = %3
  %172 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %173 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %173, i32 0, i32 3
  %175 = load i32, i32* %174, align 8
  %176 = load i32*, i32** %7, align 8
  store i32 %175, i32* %176, align 4
  br label %210

177:                                              ; preds = %3
  %178 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %179 = load i32, i32* @VCPU_FTR_MMU_V2, align 4
  %180 = call i32 @has_feature(%struct.kvm_vcpu* %178, i32 %179)
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %184, label %182

182:                                              ; preds = %177
  %183 = load i32, i32* @EMULATE_FAIL, align 4
  store i32 %183, i32* %4, align 4
  br label %212

184:                                              ; preds = %177
  %185 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %186 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %185, i32 0, i32 0
  %187 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %186, i32 0, i32 4
  %188 = load i32, i32* %187, align 4
  %189 = load i32*, i32** %7, align 8
  store i32 %188, i32* %189, align 4
  br label %210

190:                                              ; preds = %3
  %191 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %192 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %191, i32 0, i32 0
  %193 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %192, i32 0, i32 5
  %194 = load i32, i32* %193, align 8
  %195 = load i32*, i32** %7, align 8
  store i32 %194, i32* %195, align 4
  br label %210

196:                                              ; preds = %3
  %197 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %198 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %197, i32 0, i32 0
  %199 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %198, i32 0, i32 6
  %200 = load i32*, i32** %199, align 8
  %201 = load i64, i64* @BOOKE_IRQPRIO_PERFORMANCE_MONITOR, align 8
  %202 = getelementptr inbounds i32, i32* %200, i64 %201
  %203 = load i32, i32* %202, align 4
  %204 = load i32*, i32** %7, align 8
  store i32 %203, i32* %204, align 4
  br label %210

205:                                              ; preds = %3
  %206 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %207 = load i32, i32* %6, align 4
  %208 = load i32*, i32** %7, align 8
  %209 = call i32 @kvmppc_booke_emulate_mfspr(%struct.kvm_vcpu* %206, i32 %207, i32* %208)
  store i32 %209, i32* %9, align 4
  br label %210

210:                                              ; preds = %205, %196, %190, %184, %171, %169, %164, %159, %154, %149, %144, %136, %121, %106, %98, %92, %83, %75, %67, %59, %51, %43, %35, %28, %21, %14
  %211 = load i32, i32* %9, align 4
  store i32 %211, i32* %4, align 4
  br label %212

212:                                              ; preds = %210, %182, %134, %119
  %213 = load i32, i32* %4, align 4
  ret i32 %213
}

declare dso_local %struct.kvmppc_vcpu_e500* @to_e500(%struct.kvm_vcpu*) #1

declare dso_local i32 @has_feature(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @kvmppc_booke_emulate_mfspr(%struct.kvm_vcpu*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
