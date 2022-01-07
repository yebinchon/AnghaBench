; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_booke.c_kvmppc_get_sregs_ivor.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_booke.c_kvmppc_get_sregs_ivor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32* }
%struct.kvm_sregs = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32*, i32 }

@KVM_SREGS_E_IVOR = common dso_local global i32 0, align 4
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

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kvmppc_get_sregs_ivor(%struct.kvm_vcpu* %0, %struct.kvm_sregs* %1) #0 {
  %3 = alloca %struct.kvm_vcpu*, align 8
  %4 = alloca %struct.kvm_sregs*, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %3, align 8
  store %struct.kvm_sregs* %1, %struct.kvm_sregs** %4, align 8
  %5 = load i32, i32* @KVM_SREGS_E_IVOR, align 4
  %6 = load %struct.kvm_sregs*, %struct.kvm_sregs** %4, align 8
  %7 = getelementptr inbounds %struct.kvm_sregs, %struct.kvm_sregs* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = or i32 %10, %5
  store i32 %11, i32* %9, align 8
  %12 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %13 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = load i64, i64* @BOOKE_IRQPRIO_CRITICAL, align 8
  %17 = getelementptr inbounds i32, i32* %15, i64 %16
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.kvm_sregs*, %struct.kvm_sregs** %4, align 8
  %20 = getelementptr inbounds %struct.kvm_sregs, %struct.kvm_sregs* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 0
  store i32 %18, i32* %24, align 4
  %25 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %26 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = load i64, i64* @BOOKE_IRQPRIO_MACHINE_CHECK, align 8
  %30 = getelementptr inbounds i32, i32* %28, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.kvm_sregs*, %struct.kvm_sregs** %4, align 8
  %33 = getelementptr inbounds %struct.kvm_sregs, %struct.kvm_sregs* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 1
  store i32 %31, i32* %37, align 4
  %38 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %39 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = load i64, i64* @BOOKE_IRQPRIO_DATA_STORAGE, align 8
  %43 = getelementptr inbounds i32, i32* %41, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.kvm_sregs*, %struct.kvm_sregs** %4, align 8
  %46 = getelementptr inbounds %struct.kvm_sregs, %struct.kvm_sregs* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 2
  store i32 %44, i32* %50, align 4
  %51 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %52 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = load i64, i64* @BOOKE_IRQPRIO_INST_STORAGE, align 8
  %56 = getelementptr inbounds i32, i32* %54, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.kvm_sregs*, %struct.kvm_sregs** %4, align 8
  %59 = getelementptr inbounds %struct.kvm_sregs, %struct.kvm_sregs* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 3
  store i32 %57, i32* %63, align 4
  %64 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %65 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = load i64, i64* @BOOKE_IRQPRIO_EXTERNAL, align 8
  %69 = getelementptr inbounds i32, i32* %67, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.kvm_sregs*, %struct.kvm_sregs** %4, align 8
  %72 = getelementptr inbounds %struct.kvm_sregs, %struct.kvm_sregs* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = load i32*, i32** %74, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 4
  store i32 %70, i32* %76, align 4
  %77 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %78 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 0
  %80 = load i32*, i32** %79, align 8
  %81 = load i64, i64* @BOOKE_IRQPRIO_ALIGNMENT, align 8
  %82 = getelementptr inbounds i32, i32* %80, i64 %81
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.kvm_sregs*, %struct.kvm_sregs** %4, align 8
  %85 = getelementptr inbounds %struct.kvm_sregs, %struct.kvm_sregs* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  %88 = load i32*, i32** %87, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 5
  store i32 %83, i32* %89, align 4
  %90 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %91 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 0
  %93 = load i32*, i32** %92, align 8
  %94 = load i64, i64* @BOOKE_IRQPRIO_PROGRAM, align 8
  %95 = getelementptr inbounds i32, i32* %93, i64 %94
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.kvm_sregs*, %struct.kvm_sregs** %4, align 8
  %98 = getelementptr inbounds %struct.kvm_sregs, %struct.kvm_sregs* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 0
  %101 = load i32*, i32** %100, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 6
  store i32 %96, i32* %102, align 4
  %103 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %104 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 0
  %106 = load i32*, i32** %105, align 8
  %107 = load i64, i64* @BOOKE_IRQPRIO_FP_UNAVAIL, align 8
  %108 = getelementptr inbounds i32, i32* %106, i64 %107
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.kvm_sregs*, %struct.kvm_sregs** %4, align 8
  %111 = getelementptr inbounds %struct.kvm_sregs, %struct.kvm_sregs* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 0
  %114 = load i32*, i32** %113, align 8
  %115 = getelementptr inbounds i32, i32* %114, i64 7
  store i32 %109, i32* %115, align 4
  %116 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %117 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 0
  %119 = load i32*, i32** %118, align 8
  %120 = load i64, i64* @BOOKE_IRQPRIO_SYSCALL, align 8
  %121 = getelementptr inbounds i32, i32* %119, i64 %120
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.kvm_sregs*, %struct.kvm_sregs** %4, align 8
  %124 = getelementptr inbounds %struct.kvm_sregs, %struct.kvm_sregs* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 0
  %127 = load i32*, i32** %126, align 8
  %128 = getelementptr inbounds i32, i32* %127, i64 8
  store i32 %122, i32* %128, align 4
  %129 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %130 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i32 0, i32 0
  %132 = load i32*, i32** %131, align 8
  %133 = load i64, i64* @BOOKE_IRQPRIO_AP_UNAVAIL, align 8
  %134 = getelementptr inbounds i32, i32* %132, i64 %133
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.kvm_sregs*, %struct.kvm_sregs** %4, align 8
  %137 = getelementptr inbounds %struct.kvm_sregs, %struct.kvm_sregs* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %138, i32 0, i32 0
  %140 = load i32*, i32** %139, align 8
  %141 = getelementptr inbounds i32, i32* %140, i64 9
  store i32 %135, i32* %141, align 4
  %142 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %143 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %143, i32 0, i32 0
  %145 = load i32*, i32** %144, align 8
  %146 = load i64, i64* @BOOKE_IRQPRIO_DECREMENTER, align 8
  %147 = getelementptr inbounds i32, i32* %145, i64 %146
  %148 = load i32, i32* %147, align 4
  %149 = load %struct.kvm_sregs*, %struct.kvm_sregs** %4, align 8
  %150 = getelementptr inbounds %struct.kvm_sregs, %struct.kvm_sregs* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %151, i32 0, i32 0
  %153 = load i32*, i32** %152, align 8
  %154 = getelementptr inbounds i32, i32* %153, i64 10
  store i32 %148, i32* %154, align 4
  %155 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %156 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %156, i32 0, i32 0
  %158 = load i32*, i32** %157, align 8
  %159 = load i64, i64* @BOOKE_IRQPRIO_FIT, align 8
  %160 = getelementptr inbounds i32, i32* %158, i64 %159
  %161 = load i32, i32* %160, align 4
  %162 = load %struct.kvm_sregs*, %struct.kvm_sregs** %4, align 8
  %163 = getelementptr inbounds %struct.kvm_sregs, %struct.kvm_sregs* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %164, i32 0, i32 0
  %166 = load i32*, i32** %165, align 8
  %167 = getelementptr inbounds i32, i32* %166, i64 11
  store i32 %161, i32* %167, align 4
  %168 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %169 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %169, i32 0, i32 0
  %171 = load i32*, i32** %170, align 8
  %172 = load i64, i64* @BOOKE_IRQPRIO_WATCHDOG, align 8
  %173 = getelementptr inbounds i32, i32* %171, i64 %172
  %174 = load i32, i32* %173, align 4
  %175 = load %struct.kvm_sregs*, %struct.kvm_sregs** %4, align 8
  %176 = getelementptr inbounds %struct.kvm_sregs, %struct.kvm_sregs* %175, i32 0, i32 0
  %177 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %176, i32 0, i32 0
  %178 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %177, i32 0, i32 0
  %179 = load i32*, i32** %178, align 8
  %180 = getelementptr inbounds i32, i32* %179, i64 12
  store i32 %174, i32* %180, align 4
  %181 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %182 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %181, i32 0, i32 0
  %183 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %182, i32 0, i32 0
  %184 = load i32*, i32** %183, align 8
  %185 = load i64, i64* @BOOKE_IRQPRIO_DTLB_MISS, align 8
  %186 = getelementptr inbounds i32, i32* %184, i64 %185
  %187 = load i32, i32* %186, align 4
  %188 = load %struct.kvm_sregs*, %struct.kvm_sregs** %4, align 8
  %189 = getelementptr inbounds %struct.kvm_sregs, %struct.kvm_sregs* %188, i32 0, i32 0
  %190 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %189, i32 0, i32 0
  %191 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %190, i32 0, i32 0
  %192 = load i32*, i32** %191, align 8
  %193 = getelementptr inbounds i32, i32* %192, i64 13
  store i32 %187, i32* %193, align 4
  %194 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %195 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %194, i32 0, i32 0
  %196 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %195, i32 0, i32 0
  %197 = load i32*, i32** %196, align 8
  %198 = load i64, i64* @BOOKE_IRQPRIO_ITLB_MISS, align 8
  %199 = getelementptr inbounds i32, i32* %197, i64 %198
  %200 = load i32, i32* %199, align 4
  %201 = load %struct.kvm_sregs*, %struct.kvm_sregs** %4, align 8
  %202 = getelementptr inbounds %struct.kvm_sregs, %struct.kvm_sregs* %201, i32 0, i32 0
  %203 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %202, i32 0, i32 0
  %204 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %203, i32 0, i32 0
  %205 = load i32*, i32** %204, align 8
  %206 = getelementptr inbounds i32, i32* %205, i64 14
  store i32 %200, i32* %206, align 4
  %207 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %208 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %207, i32 0, i32 0
  %209 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %208, i32 0, i32 0
  %210 = load i32*, i32** %209, align 8
  %211 = load i64, i64* @BOOKE_IRQPRIO_DEBUG, align 8
  %212 = getelementptr inbounds i32, i32* %210, i64 %211
  %213 = load i32, i32* %212, align 4
  %214 = load %struct.kvm_sregs*, %struct.kvm_sregs** %4, align 8
  %215 = getelementptr inbounds %struct.kvm_sregs, %struct.kvm_sregs* %214, i32 0, i32 0
  %216 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %215, i32 0, i32 0
  %217 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %216, i32 0, i32 0
  %218 = load i32*, i32** %217, align 8
  %219 = getelementptr inbounds i32, i32* %218, i64 15
  store i32 %213, i32* %219, align 4
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
