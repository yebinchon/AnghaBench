; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_e500mc.c_kvmppc_core_vcpu_put_e500mc.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_e500mc.c_kvmppc_core_vcpu_put_e500mc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i8*, %struct.TYPE_3__*, i8*, i8*, i8* }
%struct.TYPE_3__ = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }

@SPRN_EPLC = common dso_local global i32 0, align 4
@SPRN_EPSC = common dso_local global i32 0, align 4
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
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvm_vcpu*)* @kvmppc_core_vcpu_put_e500mc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kvmppc_core_vcpu_put_e500mc(%struct.kvm_vcpu* %0) #0 {
  %2 = alloca %struct.kvm_vcpu*, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %2, align 8
  %3 = load i32, i32* @SPRN_EPLC, align 4
  %4 = call i8* @mfspr(i32 %3)
  %5 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %6 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 4
  store i8* %4, i8** %7, align 8
  %8 = load i32, i32* @SPRN_EPSC, align 4
  %9 = call i8* @mfspr(i32 %8)
  %10 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %11 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 3
  store i8* %9, i8** %12, align 8
  %13 = load i32, i32* @SPRN_GSPRG0, align 4
  %14 = call i8* @mfspr(i32 %13)
  %15 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %16 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 1
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 7
  store i8* %14, i8** %19, align 8
  %20 = load i32, i32* @SPRN_GSPRG1, align 4
  %21 = call i8* @mfspr(i32 %20)
  %22 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %23 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 1
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 6
  store i8* %21, i8** %26, align 8
  %27 = load i32, i32* @SPRN_GSPRG2, align 4
  %28 = call i8* @mfspr(i32 %27)
  %29 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %30 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 1
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 5
  store i8* %28, i8** %33, align 8
  %34 = load i32, i32* @SPRN_GSPRG3, align 4
  %35 = call i8* @mfspr(i32 %34)
  %36 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %37 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 1
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 4
  store i8* %35, i8** %40, align 8
  %41 = load i32, i32* @SPRN_GSRR0, align 4
  %42 = call i8* @mfspr(i32 %41)
  %43 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %44 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 1
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 3
  store i8* %42, i8** %47, align 8
  %48 = load i32, i32* @SPRN_GSRR1, align 4
  %49 = call i8* @mfspr(i32 %48)
  %50 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %51 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 1
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 2
  store i8* %49, i8** %54, align 8
  %55 = load i32, i32* @SPRN_GEPR, align 4
  %56 = call i8* @mfspr(i32 %55)
  %57 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %58 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 2
  store i8* %56, i8** %59, align 8
  %60 = load i32, i32* @SPRN_GDEAR, align 4
  %61 = call i8* @mfspr(i32 %60)
  %62 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %63 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 1
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 1
  store i8* %61, i8** %66, align 8
  %67 = load i32, i32* @SPRN_GESR, align 4
  %68 = call i8* @mfspr(i32 %67)
  %69 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %70 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 1
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 0
  store i8* %68, i8** %73, align 8
  %74 = load i32, i32* @SPRN_PIR, align 4
  %75 = call i8* @mfspr(i32 %74)
  %76 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %77 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  store i8* %75, i8** %78, align 8
  %79 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %80 = call i32 @kvmppc_booke_vcpu_put(%struct.kvm_vcpu* %79)
  ret void
}

declare dso_local i8* @mfspr(i32) #1

declare dso_local i32 @kvmppc_booke_vcpu_put(%struct.kvm_vcpu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
