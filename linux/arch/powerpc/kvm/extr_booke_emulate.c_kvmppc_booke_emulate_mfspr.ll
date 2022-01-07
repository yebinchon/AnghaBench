; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_booke_emulate.c_kvmppc_booke_emulate_mfspr.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_booke_emulate.c_kvmppc_booke_emulate_mfspr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32, i32, %struct.TYPE_5__, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }

@EMULATE_DONE = common dso_local global i32 0, align 4
@DBCR0_EDM = common dso_local global i32 0, align 4
@BOOKE_IRQPRIO_CRITICAL = common dso_local global i64 0, align 8
@BOOKE_IRQPRIO_MACHINE_CHECK = common dso_local global i64 0, align 8
@BOOKE_IRQPRIO_DATA_STORAGE = common dso_local global i64 0, align 8
@BOOKE_IRQPRIO_INST_STORAGE = common dso_local global i64 0, align 8
@BOOKE_IRQPRIO_EXTERNAL = common dso_local global i64 0, align 8
@BOOKE_IRQPRIO_ALIGNMENT = common dso_local global i64 0, align 8
@BOOKE_IRQPRIO_PROGRAM = common dso_local global i64 0, align 8
@BOOKE_IRQPRIO_FP_UNAVAIL = common dso_local global i64 0, align 8
@BOOKE_IRQPRIO_SYSCALL = common dso_local global i64 0, align 8
@BOOKE_IRQPRIO_AP_UNAVAIL = common dso_local global i64 0, align 8
@BOOKE_IRQPRIO_DECREMENTER = common dso_local global i64 0, align 8
@BOOKE_IRQPRIO_FIT = common dso_local global i64 0, align 8
@BOOKE_IRQPRIO_WATCHDOG = common dso_local global i64 0, align 8
@BOOKE_IRQPRIO_DTLB_MISS = common dso_local global i64 0, align 8
@BOOKE_IRQPRIO_ITLB_MISS = common dso_local global i64 0, align 8
@BOOKE_IRQPRIO_DEBUG = common dso_local global i64 0, align 8
@EMULATE_FAIL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kvmppc_booke_emulate_mfspr(%struct.kvm_vcpu* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.kvm_vcpu*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %8 = load i32, i32* @EMULATE_DONE, align 4
  store i32 %8, i32* %7, align 4
  %9 = load i32, i32* %5, align 4
  switch i32 %9, label %290 [
    i32 131, label %10
    i32 157, label %16
    i32 152, label %24
    i32 153, label %32
    i32 165, label %38
    i32 164, label %44
    i32 156, label %50
    i32 155, label %56
    i32 151, label %62
    i32 150, label %69
    i32 163, label %76
    i32 162, label %83
    i32 161, label %90
    i32 160, label %108
    i32 159, label %115
    i32 158, label %122
    i32 128, label %128
    i32 129, label %134
    i32 147, label %140
    i32 146, label %149
    i32 139, label %158
    i32 138, label %167
    i32 137, label %176
    i32 136, label %185
    i32 135, label %194
    i32 134, label %203
    i32 133, label %212
    i32 132, label %221
    i32 145, label %230
    i32 144, label %239
    i32 143, label %248
    i32 142, label %257
    i32 141, label %266
    i32 140, label %275
    i32 130, label %284
  ]

10:                                               ; preds = %3
  %11 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %12 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32*, i32** %6, align 8
  store i32 %14, i32* %15, align 4
  br label %292

16:                                               ; preds = %3
  %17 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %18 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 13
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32*, i32** %6, align 8
  store i32 %22, i32* %23, align 4
  br label %292

24:                                               ; preds = %3
  %25 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %26 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 13
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i32*, i32** %6, align 8
  store i32 %30, i32* %31, align 4
  br label %292

32:                                               ; preds = %3
  %33 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %34 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load i32*, i32** %6, align 8
  store i32 %36, i32* %37, align 4
  br label %292

38:                                               ; preds = %3
  %39 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %40 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = load i32*, i32** %6, align 8
  store i32 %42, i32* %43, align 4
  br label %292

44:                                               ; preds = %3
  %45 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %46 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = load i32*, i32** %6, align 8
  store i32 %48, i32* %49, align 4
  br label %292

50:                                               ; preds = %3
  %51 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %52 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 4
  %54 = load i32, i32* %53, align 8
  %55 = load i32*, i32** %6, align 8
  store i32 %54, i32* %55, align 4
  br label %292

56:                                               ; preds = %3
  %57 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %58 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 5
  %60 = load i32, i32* %59, align 4
  %61 = load i32*, i32** %6, align 8
  store i32 %60, i32* %61, align 4
  br label %292

62:                                               ; preds = %3
  %63 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %64 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 12
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load i32*, i32** %6, align 8
  store i32 %67, i32* %68, align 4
  br label %292

69:                                               ; preds = %3
  %70 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %71 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 12
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load i32*, i32** %6, align 8
  store i32 %74, i32* %75, align 4
  br label %292

76:                                               ; preds = %3
  %77 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %78 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 12
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 4
  %81 = load i32, i32* %80, align 8
  %82 = load i32*, i32** %6, align 8
  store i32 %81, i32* %82, align 4
  br label %292

83:                                               ; preds = %3
  %84 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %85 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 12
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 5
  %88 = load i32, i32* %87, align 4
  %89 = load i32*, i32** %6, align 8
  store i32 %88, i32* %89, align 4
  br label %292

90:                                               ; preds = %3
  %91 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %92 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 12
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 6
  %95 = load i32, i32* %94, align 8
  %96 = load i32*, i32** %6, align 8
  store i32 %95, i32* %96, align 4
  %97 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %98 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %107

101:                                              ; preds = %90
  %102 = load i32*, i32** %6, align 8
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* @DBCR0_EDM, align 4
  %105 = or i32 %103, %104
  %106 = load i32*, i32** %6, align 8
  store i32 %105, i32* %106, align 4
  br label %107

107:                                              ; preds = %101, %90
  br label %292

108:                                              ; preds = %3
  %109 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %110 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 12
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %111, i32 0, i32 7
  %113 = load i32, i32* %112, align 4
  %114 = load i32*, i32** %6, align 8
  store i32 %113, i32* %114, align 4
  br label %292

115:                                              ; preds = %3
  %116 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %117 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 12
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i32 0, i32 8
  %120 = load i32, i32* %119, align 8
  %121 = load i32*, i32** %6, align 8
  store i32 %120, i32* %121, align 4
  br label %292

122:                                              ; preds = %3
  %123 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %124 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 6
  %126 = load i32, i32* %125, align 8
  %127 = load i32*, i32** %6, align 8
  store i32 %126, i32* %127, align 4
  br label %292

128:                                              ; preds = %3
  %129 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %130 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i32 0, i32 7
  %132 = load i32, i32* %131, align 4
  %133 = load i32*, i32** %6, align 8
  store i32 %132, i32* %133, align 4
  br label %292

134:                                              ; preds = %3
  %135 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %136 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %136, i32 0, i32 8
  %138 = load i32, i32* %137, align 8
  %139 = load i32*, i32** %6, align 8
  store i32 %138, i32* %139, align 4
  br label %292

140:                                              ; preds = %3
  %141 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %142 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %142, i32 0, i32 9
  %144 = load i32*, i32** %143, align 8
  %145 = load i64, i64* @BOOKE_IRQPRIO_CRITICAL, align 8
  %146 = getelementptr inbounds i32, i32* %144, i64 %145
  %147 = load i32, i32* %146, align 4
  %148 = load i32*, i32** %6, align 8
  store i32 %147, i32* %148, align 4
  br label %292

149:                                              ; preds = %3
  %150 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %151 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %151, i32 0, i32 9
  %153 = load i32*, i32** %152, align 8
  %154 = load i64, i64* @BOOKE_IRQPRIO_MACHINE_CHECK, align 8
  %155 = getelementptr inbounds i32, i32* %153, i64 %154
  %156 = load i32, i32* %155, align 4
  %157 = load i32*, i32** %6, align 8
  store i32 %156, i32* %157, align 4
  br label %292

158:                                              ; preds = %3
  %159 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %160 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %160, i32 0, i32 9
  %162 = load i32*, i32** %161, align 8
  %163 = load i64, i64* @BOOKE_IRQPRIO_DATA_STORAGE, align 8
  %164 = getelementptr inbounds i32, i32* %162, i64 %163
  %165 = load i32, i32* %164, align 4
  %166 = load i32*, i32** %6, align 8
  store i32 %165, i32* %166, align 4
  br label %292

167:                                              ; preds = %3
  %168 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %169 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %169, i32 0, i32 9
  %171 = load i32*, i32** %170, align 8
  %172 = load i64, i64* @BOOKE_IRQPRIO_INST_STORAGE, align 8
  %173 = getelementptr inbounds i32, i32* %171, i64 %172
  %174 = load i32, i32* %173, align 4
  %175 = load i32*, i32** %6, align 8
  store i32 %174, i32* %175, align 4
  br label %292

176:                                              ; preds = %3
  %177 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %178 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %177, i32 0, i32 0
  %179 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %178, i32 0, i32 9
  %180 = load i32*, i32** %179, align 8
  %181 = load i64, i64* @BOOKE_IRQPRIO_EXTERNAL, align 8
  %182 = getelementptr inbounds i32, i32* %180, i64 %181
  %183 = load i32, i32* %182, align 4
  %184 = load i32*, i32** %6, align 8
  store i32 %183, i32* %184, align 4
  br label %292

185:                                              ; preds = %3
  %186 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %187 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %186, i32 0, i32 0
  %188 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %187, i32 0, i32 9
  %189 = load i32*, i32** %188, align 8
  %190 = load i64, i64* @BOOKE_IRQPRIO_ALIGNMENT, align 8
  %191 = getelementptr inbounds i32, i32* %189, i64 %190
  %192 = load i32, i32* %191, align 4
  %193 = load i32*, i32** %6, align 8
  store i32 %192, i32* %193, align 4
  br label %292

194:                                              ; preds = %3
  %195 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %196 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %195, i32 0, i32 0
  %197 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %196, i32 0, i32 9
  %198 = load i32*, i32** %197, align 8
  %199 = load i64, i64* @BOOKE_IRQPRIO_PROGRAM, align 8
  %200 = getelementptr inbounds i32, i32* %198, i64 %199
  %201 = load i32, i32* %200, align 4
  %202 = load i32*, i32** %6, align 8
  store i32 %201, i32* %202, align 4
  br label %292

203:                                              ; preds = %3
  %204 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %205 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %204, i32 0, i32 0
  %206 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %205, i32 0, i32 9
  %207 = load i32*, i32** %206, align 8
  %208 = load i64, i64* @BOOKE_IRQPRIO_FP_UNAVAIL, align 8
  %209 = getelementptr inbounds i32, i32* %207, i64 %208
  %210 = load i32, i32* %209, align 4
  %211 = load i32*, i32** %6, align 8
  store i32 %210, i32* %211, align 4
  br label %292

212:                                              ; preds = %3
  %213 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %214 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %213, i32 0, i32 0
  %215 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %214, i32 0, i32 9
  %216 = load i32*, i32** %215, align 8
  %217 = load i64, i64* @BOOKE_IRQPRIO_SYSCALL, align 8
  %218 = getelementptr inbounds i32, i32* %216, i64 %217
  %219 = load i32, i32* %218, align 4
  %220 = load i32*, i32** %6, align 8
  store i32 %219, i32* %220, align 4
  br label %292

221:                                              ; preds = %3
  %222 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %223 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %222, i32 0, i32 0
  %224 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %223, i32 0, i32 9
  %225 = load i32*, i32** %224, align 8
  %226 = load i64, i64* @BOOKE_IRQPRIO_AP_UNAVAIL, align 8
  %227 = getelementptr inbounds i32, i32* %225, i64 %226
  %228 = load i32, i32* %227, align 4
  %229 = load i32*, i32** %6, align 8
  store i32 %228, i32* %229, align 4
  br label %292

230:                                              ; preds = %3
  %231 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %232 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %231, i32 0, i32 0
  %233 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %232, i32 0, i32 9
  %234 = load i32*, i32** %233, align 8
  %235 = load i64, i64* @BOOKE_IRQPRIO_DECREMENTER, align 8
  %236 = getelementptr inbounds i32, i32* %234, i64 %235
  %237 = load i32, i32* %236, align 4
  %238 = load i32*, i32** %6, align 8
  store i32 %237, i32* %238, align 4
  br label %292

239:                                              ; preds = %3
  %240 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %241 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %240, i32 0, i32 0
  %242 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %241, i32 0, i32 9
  %243 = load i32*, i32** %242, align 8
  %244 = load i64, i64* @BOOKE_IRQPRIO_FIT, align 8
  %245 = getelementptr inbounds i32, i32* %243, i64 %244
  %246 = load i32, i32* %245, align 4
  %247 = load i32*, i32** %6, align 8
  store i32 %246, i32* %247, align 4
  br label %292

248:                                              ; preds = %3
  %249 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %250 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %249, i32 0, i32 0
  %251 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %250, i32 0, i32 9
  %252 = load i32*, i32** %251, align 8
  %253 = load i64, i64* @BOOKE_IRQPRIO_WATCHDOG, align 8
  %254 = getelementptr inbounds i32, i32* %252, i64 %253
  %255 = load i32, i32* %254, align 4
  %256 = load i32*, i32** %6, align 8
  store i32 %255, i32* %256, align 4
  br label %292

257:                                              ; preds = %3
  %258 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %259 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %258, i32 0, i32 0
  %260 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %259, i32 0, i32 9
  %261 = load i32*, i32** %260, align 8
  %262 = load i64, i64* @BOOKE_IRQPRIO_DTLB_MISS, align 8
  %263 = getelementptr inbounds i32, i32* %261, i64 %262
  %264 = load i32, i32* %263, align 4
  %265 = load i32*, i32** %6, align 8
  store i32 %264, i32* %265, align 4
  br label %292

266:                                              ; preds = %3
  %267 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %268 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %267, i32 0, i32 0
  %269 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %268, i32 0, i32 9
  %270 = load i32*, i32** %269, align 8
  %271 = load i64, i64* @BOOKE_IRQPRIO_ITLB_MISS, align 8
  %272 = getelementptr inbounds i32, i32* %270, i64 %271
  %273 = load i32, i32* %272, align 4
  %274 = load i32*, i32** %6, align 8
  store i32 %273, i32* %274, align 4
  br label %292

275:                                              ; preds = %3
  %276 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %277 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %276, i32 0, i32 0
  %278 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %277, i32 0, i32 9
  %279 = load i32*, i32** %278, align 8
  %280 = load i64, i64* @BOOKE_IRQPRIO_DEBUG, align 8
  %281 = getelementptr inbounds i32, i32* %279, i64 %280
  %282 = load i32, i32* %281, align 4
  %283 = load i32*, i32** %6, align 8
  store i32 %282, i32* %283, align 4
  br label %292

284:                                              ; preds = %3
  %285 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %286 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %285, i32 0, i32 0
  %287 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %286, i32 0, i32 10
  %288 = load i32, i32* %287, align 8
  %289 = load i32*, i32** %6, align 8
  store i32 %288, i32* %289, align 4
  br label %292

290:                                              ; preds = %3
  %291 = load i32, i32* @EMULATE_FAIL, align 4
  store i32 %291, i32* %7, align 4
  br label %292

292:                                              ; preds = %290, %284, %275, %266, %257, %248, %239, %230, %221, %212, %203, %194, %185, %176, %167, %158, %149, %140, %134, %128, %122, %115, %108, %107, %83, %76, %69, %62, %56, %50, %44, %38, %32, %24, %16, %10
  %293 = load i32, i32* %7, align 4
  ret i32 %293
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
