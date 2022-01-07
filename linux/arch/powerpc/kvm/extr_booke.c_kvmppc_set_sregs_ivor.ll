; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_booke.c_kvmppc_set_sregs_ivor.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_booke.c_kvmppc_set_sregs_ivor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32* }
%struct.kvm_sregs = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32* }

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
define dso_local i32 @kvmppc_set_sregs_ivor(%struct.kvm_vcpu* %0, %struct.kvm_sregs* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.kvm_vcpu*, align 8
  %5 = alloca %struct.kvm_sregs*, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %4, align 8
  store %struct.kvm_sregs* %1, %struct.kvm_sregs** %5, align 8
  %6 = load %struct.kvm_sregs*, %struct.kvm_sregs** %5, align 8
  %7 = getelementptr inbounds %struct.kvm_sregs, %struct.kvm_sregs* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @KVM_SREGS_E_IVOR, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %224

15:                                               ; preds = %2
  %16 = load %struct.kvm_sregs*, %struct.kvm_sregs** %5, align 8
  %17 = getelementptr inbounds %struct.kvm_sregs, %struct.kvm_sregs* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 1
  %20 = load i32*, i32** %19, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %24 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = load i64, i64* @BOOKE_IRQPRIO_CRITICAL, align 8
  %28 = getelementptr inbounds i32, i32* %26, i64 %27
  store i32 %22, i32* %28, align 4
  %29 = load %struct.kvm_sregs*, %struct.kvm_sregs** %5, align 8
  %30 = getelementptr inbounds %struct.kvm_sregs, %struct.kvm_sregs* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %37 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = load i64, i64* @BOOKE_IRQPRIO_MACHINE_CHECK, align 8
  %41 = getelementptr inbounds i32, i32* %39, i64 %40
  store i32 %35, i32* %41, align 4
  %42 = load %struct.kvm_sregs*, %struct.kvm_sregs** %5, align 8
  %43 = getelementptr inbounds %struct.kvm_sregs, %struct.kvm_sregs* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 1
  %46 = load i32*, i32** %45, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 2
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %50 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = load i64, i64* @BOOKE_IRQPRIO_DATA_STORAGE, align 8
  %54 = getelementptr inbounds i32, i32* %52, i64 %53
  store i32 %48, i32* %54, align 4
  %55 = load %struct.kvm_sregs*, %struct.kvm_sregs** %5, align 8
  %56 = getelementptr inbounds %struct.kvm_sregs, %struct.kvm_sregs* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 1
  %59 = load i32*, i32** %58, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 3
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %63 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = load i64, i64* @BOOKE_IRQPRIO_INST_STORAGE, align 8
  %67 = getelementptr inbounds i32, i32* %65, i64 %66
  store i32 %61, i32* %67, align 4
  %68 = load %struct.kvm_sregs*, %struct.kvm_sregs** %5, align 8
  %69 = getelementptr inbounds %struct.kvm_sregs, %struct.kvm_sregs* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 1
  %72 = load i32*, i32** %71, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 4
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %76 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = load i32*, i32** %77, align 8
  %79 = load i64, i64* @BOOKE_IRQPRIO_EXTERNAL, align 8
  %80 = getelementptr inbounds i32, i32* %78, i64 %79
  store i32 %74, i32* %80, align 4
  %81 = load %struct.kvm_sregs*, %struct.kvm_sregs** %5, align 8
  %82 = getelementptr inbounds %struct.kvm_sregs, %struct.kvm_sregs* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 1
  %85 = load i32*, i32** %84, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 5
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %89 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 0
  %91 = load i32*, i32** %90, align 8
  %92 = load i64, i64* @BOOKE_IRQPRIO_ALIGNMENT, align 8
  %93 = getelementptr inbounds i32, i32* %91, i64 %92
  store i32 %87, i32* %93, align 4
  %94 = load %struct.kvm_sregs*, %struct.kvm_sregs** %5, align 8
  %95 = getelementptr inbounds %struct.kvm_sregs, %struct.kvm_sregs* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 1
  %98 = load i32*, i32** %97, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 6
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %102 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 0
  %104 = load i32*, i32** %103, align 8
  %105 = load i64, i64* @BOOKE_IRQPRIO_PROGRAM, align 8
  %106 = getelementptr inbounds i32, i32* %104, i64 %105
  store i32 %100, i32* %106, align 4
  %107 = load %struct.kvm_sregs*, %struct.kvm_sregs** %5, align 8
  %108 = getelementptr inbounds %struct.kvm_sregs, %struct.kvm_sregs* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 1
  %111 = load i32*, i32** %110, align 8
  %112 = getelementptr inbounds i32, i32* %111, i64 7
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %115 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 0
  %117 = load i32*, i32** %116, align 8
  %118 = load i64, i64* @BOOKE_IRQPRIO_FP_UNAVAIL, align 8
  %119 = getelementptr inbounds i32, i32* %117, i64 %118
  store i32 %113, i32* %119, align 4
  %120 = load %struct.kvm_sregs*, %struct.kvm_sregs** %5, align 8
  %121 = getelementptr inbounds %struct.kvm_sregs, %struct.kvm_sregs* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %122, i32 0, i32 1
  %124 = load i32*, i32** %123, align 8
  %125 = getelementptr inbounds i32, i32* %124, i64 8
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %128 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 0
  %130 = load i32*, i32** %129, align 8
  %131 = load i64, i64* @BOOKE_IRQPRIO_SYSCALL, align 8
  %132 = getelementptr inbounds i32, i32* %130, i64 %131
  store i32 %126, i32* %132, align 4
  %133 = load %struct.kvm_sregs*, %struct.kvm_sregs** %5, align 8
  %134 = getelementptr inbounds %struct.kvm_sregs, %struct.kvm_sregs* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %135, i32 0, i32 1
  %137 = load i32*, i32** %136, align 8
  %138 = getelementptr inbounds i32, i32* %137, i64 9
  %139 = load i32, i32* %138, align 4
  %140 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %141 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %141, i32 0, i32 0
  %143 = load i32*, i32** %142, align 8
  %144 = load i64, i64* @BOOKE_IRQPRIO_AP_UNAVAIL, align 8
  %145 = getelementptr inbounds i32, i32* %143, i64 %144
  store i32 %139, i32* %145, align 4
  %146 = load %struct.kvm_sregs*, %struct.kvm_sregs** %5, align 8
  %147 = getelementptr inbounds %struct.kvm_sregs, %struct.kvm_sregs* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %148, i32 0, i32 1
  %150 = load i32*, i32** %149, align 8
  %151 = getelementptr inbounds i32, i32* %150, i64 10
  %152 = load i32, i32* %151, align 4
  %153 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %154 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %154, i32 0, i32 0
  %156 = load i32*, i32** %155, align 8
  %157 = load i64, i64* @BOOKE_IRQPRIO_DECREMENTER, align 8
  %158 = getelementptr inbounds i32, i32* %156, i64 %157
  store i32 %152, i32* %158, align 4
  %159 = load %struct.kvm_sregs*, %struct.kvm_sregs** %5, align 8
  %160 = getelementptr inbounds %struct.kvm_sregs, %struct.kvm_sregs* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %161, i32 0, i32 1
  %163 = load i32*, i32** %162, align 8
  %164 = getelementptr inbounds i32, i32* %163, i64 11
  %165 = load i32, i32* %164, align 4
  %166 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %167 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %167, i32 0, i32 0
  %169 = load i32*, i32** %168, align 8
  %170 = load i64, i64* @BOOKE_IRQPRIO_FIT, align 8
  %171 = getelementptr inbounds i32, i32* %169, i64 %170
  store i32 %165, i32* %171, align 4
  %172 = load %struct.kvm_sregs*, %struct.kvm_sregs** %5, align 8
  %173 = getelementptr inbounds %struct.kvm_sregs, %struct.kvm_sregs* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %173, i32 0, i32 0
  %175 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %174, i32 0, i32 1
  %176 = load i32*, i32** %175, align 8
  %177 = getelementptr inbounds i32, i32* %176, i64 12
  %178 = load i32, i32* %177, align 4
  %179 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %180 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %179, i32 0, i32 0
  %181 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %180, i32 0, i32 0
  %182 = load i32*, i32** %181, align 8
  %183 = load i64, i64* @BOOKE_IRQPRIO_WATCHDOG, align 8
  %184 = getelementptr inbounds i32, i32* %182, i64 %183
  store i32 %178, i32* %184, align 4
  %185 = load %struct.kvm_sregs*, %struct.kvm_sregs** %5, align 8
  %186 = getelementptr inbounds %struct.kvm_sregs, %struct.kvm_sregs* %185, i32 0, i32 0
  %187 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %186, i32 0, i32 0
  %188 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %187, i32 0, i32 1
  %189 = load i32*, i32** %188, align 8
  %190 = getelementptr inbounds i32, i32* %189, i64 13
  %191 = load i32, i32* %190, align 4
  %192 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %193 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %192, i32 0, i32 0
  %194 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %193, i32 0, i32 0
  %195 = load i32*, i32** %194, align 8
  %196 = load i64, i64* @BOOKE_IRQPRIO_DTLB_MISS, align 8
  %197 = getelementptr inbounds i32, i32* %195, i64 %196
  store i32 %191, i32* %197, align 4
  %198 = load %struct.kvm_sregs*, %struct.kvm_sregs** %5, align 8
  %199 = getelementptr inbounds %struct.kvm_sregs, %struct.kvm_sregs* %198, i32 0, i32 0
  %200 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %199, i32 0, i32 0
  %201 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %200, i32 0, i32 1
  %202 = load i32*, i32** %201, align 8
  %203 = getelementptr inbounds i32, i32* %202, i64 14
  %204 = load i32, i32* %203, align 4
  %205 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %206 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %205, i32 0, i32 0
  %207 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %206, i32 0, i32 0
  %208 = load i32*, i32** %207, align 8
  %209 = load i64, i64* @BOOKE_IRQPRIO_ITLB_MISS, align 8
  %210 = getelementptr inbounds i32, i32* %208, i64 %209
  store i32 %204, i32* %210, align 4
  %211 = load %struct.kvm_sregs*, %struct.kvm_sregs** %5, align 8
  %212 = getelementptr inbounds %struct.kvm_sregs, %struct.kvm_sregs* %211, i32 0, i32 0
  %213 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %212, i32 0, i32 0
  %214 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %213, i32 0, i32 1
  %215 = load i32*, i32** %214, align 8
  %216 = getelementptr inbounds i32, i32* %215, i64 15
  %217 = load i32, i32* %216, align 4
  %218 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %219 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %218, i32 0, i32 0
  %220 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %219, i32 0, i32 0
  %221 = load i32*, i32** %220, align 8
  %222 = load i64, i64* @BOOKE_IRQPRIO_DEBUG, align 8
  %223 = getelementptr inbounds i32, i32* %221, i64 %222
  store i32 %217, i32* %223, align 4
  store i32 0, i32* %3, align 4
  br label %224

224:                                              ; preds = %15, %14
  %225 = load i32, i32* %3, align 4
  ret i32 %225
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
