; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s.c_kvmppc_xlate.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s.c_kvmppc_xlate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 (%struct.kvm_vcpu.0*, i32, %struct.kvmppc_pte*, i32, i32)* }
%struct.kvm_vcpu.0 = type opaque
%struct.kvmppc_pte = type { i32, i32, i32, i32, i32, i32 }

@XLATE_DATA = common dso_local global i32 0, align 4
@XLATE_WRITE = common dso_local global i32 0, align 4
@MSR_DR = common dso_local global i32 0, align 4
@MSR_IR = common dso_local global i32 0, align 4
@KVM_PAM = common dso_local global i32 0, align 4
@VSID_REAL = common dso_local global i32 0, align 4
@BOOK3S_HFLAG_SPLIT_HACK = common dso_local global i32 0, align 4
@SPLIT_HACK_MASK = common dso_local global i32 0, align 4
@SPLIT_HACK_OFFS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kvmppc_xlate(%struct.kvm_vcpu* %0, i32 %1, i32 %2, i32 %3, %struct.kvmppc_pte* %4) #0 {
  %6 = alloca %struct.kvm_vcpu*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.kvmppc_pte*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store %struct.kvmppc_pte* %4, %struct.kvmppc_pte** %10, align 8
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* @XLATE_DATA, align 4
  %17 = icmp eq i32 %15, %16
  %18 = zext i1 %17 to i32
  store i32 %18, i32* %11, align 4
  %19 = load i32, i32* %9, align 4
  %20 = load i32, i32* @XLATE_WRITE, align 4
  %21 = icmp eq i32 %19, %20
  %22 = zext i1 %21 to i32
  store i32 %22, i32* %12, align 4
  %23 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %24 = call i32 @kvmppc_get_msr(%struct.kvm_vcpu* %23)
  %25 = load i32, i32* %11, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %5
  %28 = load i32, i32* @MSR_DR, align 4
  br label %31

29:                                               ; preds = %5
  %30 = load i32, i32* @MSR_IR, align 4
  br label %31

31:                                               ; preds = %29, %27
  %32 = phi i32 [ %28, %27 ], [ %30, %29 ]
  %33 = and i32 %24, %32
  store i32 %33, i32* %13, align 4
  %34 = load i32, i32* %13, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %49

36:                                               ; preds = %31
  %37 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %38 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i32 (%struct.kvm_vcpu.0*, i32, %struct.kvmppc_pte*, i32, i32)*, i32 (%struct.kvm_vcpu.0*, i32, %struct.kvmppc_pte*, i32, i32)** %40, align 8
  %42 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %43 = bitcast %struct.kvm_vcpu* %42 to %struct.kvm_vcpu.0*
  %44 = load i32, i32* %7, align 4
  %45 = load %struct.kvmppc_pte*, %struct.kvmppc_pte** %10, align 8
  %46 = load i32, i32* %11, align 4
  %47 = load i32, i32* %12, align 4
  %48 = call i32 %41(%struct.kvm_vcpu.0* %43, i32 %44, %struct.kvmppc_pte* %45, i32 %46, i32 %47)
  store i32 %48, i32* %14, align 4
  br label %104

49:                                               ; preds = %31
  %50 = load i32, i32* %7, align 4
  %51 = load %struct.kvmppc_pte*, %struct.kvmppc_pte** %10, align 8
  %52 = getelementptr inbounds %struct.kvmppc_pte, %struct.kvmppc_pte* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 4
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* @KVM_PAM, align 4
  %55 = and i32 %53, %54
  %56 = load %struct.kvmppc_pte*, %struct.kvmppc_pte** %10, align 8
  %57 = getelementptr inbounds %struct.kvmppc_pte, %struct.kvmppc_pte* %56, i32 0, i32 1
  store i32 %55, i32* %57, align 4
  %58 = load i32, i32* @VSID_REAL, align 4
  %59 = load i32, i32* %7, align 4
  %60 = ashr i32 %59, 12
  %61 = or i32 %58, %60
  %62 = load %struct.kvmppc_pte*, %struct.kvmppc_pte** %10, align 8
  %63 = getelementptr inbounds %struct.kvmppc_pte, %struct.kvmppc_pte* %62, i32 0, i32 2
  store i32 %61, i32* %63, align 4
  %64 = load %struct.kvmppc_pte*, %struct.kvmppc_pte** %10, align 8
  %65 = getelementptr inbounds %struct.kvmppc_pte, %struct.kvmppc_pte* %64, i32 0, i32 3
  store i32 1, i32* %65, align 4
  %66 = load %struct.kvmppc_pte*, %struct.kvmppc_pte** %10, align 8
  %67 = getelementptr inbounds %struct.kvmppc_pte, %struct.kvmppc_pte* %66, i32 0, i32 4
  store i32 1, i32* %67, align 4
  %68 = load %struct.kvmppc_pte*, %struct.kvmppc_pte** %10, align 8
  %69 = getelementptr inbounds %struct.kvmppc_pte, %struct.kvmppc_pte* %68, i32 0, i32 5
  store i32 1, i32* %69, align 4
  store i32 0, i32* %14, align 4
  %70 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %71 = call i32 @kvmppc_get_msr(%struct.kvm_vcpu* %70)
  %72 = load i32, i32* @MSR_IR, align 4
  %73 = load i32, i32* @MSR_DR, align 4
  %74 = or i32 %72, %73
  %75 = and i32 %71, %74
  %76 = load i32, i32* @MSR_DR, align 4
  %77 = icmp eq i32 %75, %76
  br i1 %77, label %78, label %103

78:                                               ; preds = %49
  %79 = load i32, i32* %11, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %103, label %81

81:                                               ; preds = %78
  %82 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %83 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* @BOOK3S_HFLAG_SPLIT_HACK, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %102

89:                                               ; preds = %81
  %90 = load i32, i32* %7, align 4
  %91 = load i32, i32* @SPLIT_HACK_MASK, align 4
  %92 = and i32 %90, %91
  %93 = load i32, i32* @SPLIT_HACK_OFFS, align 4
  %94 = icmp eq i32 %92, %93
  br i1 %94, label %95, label %102

95:                                               ; preds = %89
  %96 = load i32, i32* @SPLIT_HACK_MASK, align 4
  %97 = xor i32 %96, -1
  %98 = load %struct.kvmppc_pte*, %struct.kvmppc_pte** %10, align 8
  %99 = getelementptr inbounds %struct.kvmppc_pte, %struct.kvmppc_pte* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = and i32 %100, %97
  store i32 %101, i32* %99, align 4
  br label %102

102:                                              ; preds = %95, %89, %81
  br label %103

103:                                              ; preds = %102, %78, %49
  br label %104

104:                                              ; preds = %103, %36
  %105 = load i32, i32* %14, align 4
  ret i32 %105
}

declare dso_local i32 @kvmppc_get_msr(%struct.kvm_vcpu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
