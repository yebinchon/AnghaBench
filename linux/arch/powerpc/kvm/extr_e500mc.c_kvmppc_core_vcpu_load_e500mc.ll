; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_e500mc.c_kvmppc_core_vcpu_load_e500mc.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_e500mc.c_kvmppc_core_vcpu_load_e500mc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i64, i64, i64, i64, i64*, i64, i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.kvmppc_vcpu_e500 = type { i32 }

@SPRN_LPID = common dso_local global i32 0, align 4
@SPRN_EPCR = common dso_local global i32 0, align 4
@SPRN_GPIR = common dso_local global i32 0, align 4
@SPRN_MSRP = common dso_local global i32 0, align 4
@EPC_EGS = common dso_local global i64 0, align 8
@EPC_ELPID_SHIFT = common dso_local global i64 0, align 8
@SPRN_EPLC = common dso_local global i32 0, align 4
@SPRN_EPSC = common dso_local global i32 0, align 4
@SPRN_GIVPR = common dso_local global i32 0, align 4
@SPRN_GIVOR2 = common dso_local global i32 0, align 4
@BOOKE_IRQPRIO_DATA_STORAGE = common dso_local global i64 0, align 8
@SPRN_GIVOR8 = common dso_local global i32 0, align 4
@BOOKE_IRQPRIO_SYSCALL = common dso_local global i64 0, align 8
@SPRN_GSPRG0 = common dso_local global i32 0, align 4
@SPRN_GSPRG1 = common dso_local global i32 0, align 4
@SPRN_GSPRG2 = common dso_local global i32 0, align 4
@SPRN_GSPRG3 = common dso_local global i32 0, align 4
@SPRN_GSRR0 = common dso_local global i32 0, align 4
@SPRN_GSRR1 = common dso_local global i32 0, align 4
@SPRN_GEPR = common dso_local global i32 0, align 4
@SPRN_GDEAR = common dso_local global i32 0, align 4
@SPRN_GESR = common dso_local global i32 0, align 4
@SPRN_PIR = common dso_local global i32 0, align 4
@last_vcpu_of_lpid = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvm_vcpu*, i32)* @kvmppc_core_vcpu_load_e500mc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kvmppc_core_vcpu_load_e500mc(%struct.kvm_vcpu* %0, i32 %1) #0 {
  %3 = alloca %struct.kvm_vcpu*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.kvmppc_vcpu_e500*, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %7 = call %struct.kvmppc_vcpu_e500* @to_e500(%struct.kvm_vcpu* %6)
  store %struct.kvmppc_vcpu_e500* %7, %struct.kvmppc_vcpu_e500** %5, align 8
  %8 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %9 = load i32, i32* %4, align 4
  %10 = call i32 @kvmppc_booke_vcpu_load(%struct.kvm_vcpu* %8, i32 %9)
  %11 = load i32, i32* @SPRN_LPID, align 4
  %12 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %13 = call i64 @get_lpid(%struct.kvm_vcpu* %12)
  %14 = call i32 @mtspr(i32 %11, i64 %13)
  %15 = load i32, i32* @SPRN_EPCR, align 4
  %16 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %17 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = call i32 @mtspr(i32 %15, i64 %19)
  %21 = load i32, i32* @SPRN_GPIR, align 4
  %22 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %23 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = call i32 @mtspr(i32 %21, i64 %24)
  %26 = load i32, i32* @SPRN_MSRP, align 4
  %27 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %28 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = call i32 @mtspr(i32 %26, i64 %30)
  %32 = load i64, i64* @EPC_EGS, align 8
  %33 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %34 = call i64 @get_lpid(%struct.kvm_vcpu* %33)
  %35 = load i64, i64* @EPC_ELPID_SHIFT, align 8
  %36 = shl i64 %34, %35
  %37 = or i64 %32, %36
  %38 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %39 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 2
  store i64 %37, i64* %40, align 8
  %41 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %42 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %46 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 3
  store i64 %44, i64* %47, align 8
  %48 = load i32, i32* @SPRN_EPLC, align 4
  %49 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %50 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = call i32 @mtspr(i32 %48, i64 %52)
  %54 = load i32, i32* @SPRN_EPSC, align 4
  %55 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %56 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 3
  %58 = load i64, i64* %57, align 8
  %59 = call i32 @mtspr(i32 %54, i64 %58)
  %60 = load i32, i32* @SPRN_GIVPR, align 4
  %61 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %62 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 4
  %64 = load i64, i64* %63, align 8
  %65 = call i32 @mtspr(i32 %60, i64 %64)
  %66 = load i32, i32* @SPRN_GIVOR2, align 4
  %67 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %68 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 5
  %70 = load i64*, i64** %69, align 8
  %71 = load i64, i64* @BOOKE_IRQPRIO_DATA_STORAGE, align 8
  %72 = getelementptr inbounds i64, i64* %70, i64 %71
  %73 = load i64, i64* %72, align 8
  %74 = call i32 @mtspr(i32 %66, i64 %73)
  %75 = load i32, i32* @SPRN_GIVOR8, align 4
  %76 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %77 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 5
  %79 = load i64*, i64** %78, align 8
  %80 = load i64, i64* @BOOKE_IRQPRIO_SYSCALL, align 8
  %81 = getelementptr inbounds i64, i64* %79, i64 %80
  %82 = load i64, i64* %81, align 8
  %83 = call i32 @mtspr(i32 %75, i64 %82)
  %84 = load i32, i32* @SPRN_GSPRG0, align 4
  %85 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %86 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 8
  %88 = load %struct.TYPE_3__*, %struct.TYPE_3__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 7
  %90 = load i64, i64* %89, align 8
  %91 = call i32 @mtspr(i32 %84, i64 %90)
  %92 = load i32, i32* @SPRN_GSPRG1, align 4
  %93 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %94 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 8
  %96 = load %struct.TYPE_3__*, %struct.TYPE_3__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 6
  %98 = load i64, i64* %97, align 8
  %99 = call i32 @mtspr(i32 %92, i64 %98)
  %100 = load i32, i32* @SPRN_GSPRG2, align 4
  %101 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %102 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 8
  %104 = load %struct.TYPE_3__*, %struct.TYPE_3__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 5
  %106 = load i64, i64* %105, align 8
  %107 = call i32 @mtspr(i32 %100, i64 %106)
  %108 = load i32, i32* @SPRN_GSPRG3, align 4
  %109 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %110 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 8
  %112 = load %struct.TYPE_3__*, %struct.TYPE_3__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i32 0, i32 4
  %114 = load i64, i64* %113, align 8
  %115 = call i32 @mtspr(i32 %108, i64 %114)
  %116 = load i32, i32* @SPRN_GSRR0, align 4
  %117 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %118 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %117, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 8
  %120 = load %struct.TYPE_3__*, %struct.TYPE_3__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = call i32 @mtspr(i32 %116, i64 %122)
  %124 = load i32, i32* @SPRN_GSRR1, align 4
  %125 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %126 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %125, i32 0, i32 1
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %126, i32 0, i32 8
  %128 = load %struct.TYPE_3__*, %struct.TYPE_3__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %128, i32 0, i32 1
  %130 = load i64, i64* %129, align 8
  %131 = call i32 @mtspr(i32 %124, i64 %130)
  %132 = load i32, i32* @SPRN_GEPR, align 4
  %133 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %134 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %133, i32 0, i32 1
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i32 0, i32 6
  %136 = load i64, i64* %135, align 8
  %137 = call i32 @mtspr(i32 %132, i64 %136)
  %138 = load i32, i32* @SPRN_GDEAR, align 4
  %139 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %140 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %139, i32 0, i32 1
  %141 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %140, i32 0, i32 8
  %142 = load %struct.TYPE_3__*, %struct.TYPE_3__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %142, i32 0, i32 2
  %144 = load i64, i64* %143, align 8
  %145 = call i32 @mtspr(i32 %138, i64 %144)
  %146 = load i32, i32* @SPRN_GESR, align 4
  %147 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %148 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %147, i32 0, i32 1
  %149 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %148, i32 0, i32 8
  %150 = load %struct.TYPE_3__*, %struct.TYPE_3__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %150, i32 0, i32 3
  %152 = load i64, i64* %151, align 8
  %153 = call i32 @mtspr(i32 %146, i64 %152)
  %154 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %155 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %154, i32 0, i32 1
  %156 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %155, i32 0, i32 7
  %157 = load i64, i64* %156, align 8
  %158 = load i32, i32* @SPRN_PIR, align 4
  %159 = call i64 @mfspr(i32 %158)
  %160 = icmp ne i64 %157, %159
  br i1 %160, label %170, label %161

161:                                              ; preds = %2
  %162 = load i32*, i32** @last_vcpu_of_lpid, align 8
  %163 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %164 = call i64 @get_lpid(%struct.kvm_vcpu* %163)
  %165 = getelementptr inbounds i32, i32* %162, i64 %164
  %166 = load i32, i32* %165, align 4
  %167 = call %struct.kvm_vcpu* @__this_cpu_read(i32 %166)
  %168 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %169 = icmp ne %struct.kvm_vcpu* %167, %168
  br i1 %169, label %170, label %180

170:                                              ; preds = %161, %2
  %171 = load %struct.kvmppc_vcpu_e500*, %struct.kvmppc_vcpu_e500** %5, align 8
  %172 = call i32 @kvmppc_e500_tlbil_all(%struct.kvmppc_vcpu_e500* %171)
  %173 = load i32*, i32** @last_vcpu_of_lpid, align 8
  %174 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %175 = call i64 @get_lpid(%struct.kvm_vcpu* %174)
  %176 = getelementptr inbounds i32, i32* %173, i64 %175
  %177 = load i32, i32* %176, align 4
  %178 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %179 = call i32 @__this_cpu_write(i32 %177, %struct.kvm_vcpu* %178)
  br label %180

180:                                              ; preds = %170, %161
  ret void
}

declare dso_local %struct.kvmppc_vcpu_e500* @to_e500(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvmppc_booke_vcpu_load(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @mtspr(i32, i64) #1

declare dso_local i64 @get_lpid(%struct.kvm_vcpu*) #1

declare dso_local i64 @mfspr(i32) #1

declare dso_local %struct.kvm_vcpu* @__this_cpu_read(i32) #1

declare dso_local i32 @kvmppc_e500_tlbil_all(%struct.kvmppc_vcpu_e500*) #1

declare dso_local i32 @__this_cpu_write(i32, %struct.kvm_vcpu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
