; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_hv_builtin.c_kvmppc_guest_entry_inject_int.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_hv_builtin.c_kvmppc_guest_entry_inject_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i64, i64, %struct.TYPE_5__*, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@BOOK3S_IRQPRIO_EXTERNAL = common dso_local global i32 0, align 4
@SPRN_LPCR = common dso_local global i32 0, align 4
@LPCR_MER_SH = common dso_local global i32 0, align 4
@MSR_EE = common dso_local global i32 0, align 4
@BOOK3S_INTERRUPT_EXTERNAL = common dso_local global i64 0, align 8
@SPRN_DEC = common dso_local global i32 0, align 4
@LPCR_LD = common dso_local global i64 0, align 8
@BOOK3S_INTERRUPT_DECREMENTER = common dso_local global i64 0, align 8
@MSR_TS_S = common dso_local global i64 0, align 8
@SPRN_DPDES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kvmppc_guest_entry_inject_int(%struct.kvm_vcpu* %0) #0 {
  %2 = alloca %struct.kvm_vcpu*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %2, align 8
  store i64 0, i64* %4, align 8
  %9 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %10 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @BOOK3S_IRQPRIO_EXTERNAL, align 4
  %14 = ashr i32 %12, %13
  %15 = and i32 %14, 1
  store i32 %15, i32* %3, align 4
  %16 = load i32, i32* @SPRN_LPCR, align 4
  %17 = call i8* @mfspr(i32 %16)
  %18 = ptrtoint i8* %17 to i64
  store i64 %18, i64* %5, align 8
  %19 = load i32, i32* %3, align 4
  %20 = load i32, i32* @LPCR_MER_SH, align 4
  %21 = shl i32 %19, %20
  %22 = sext i32 %21 to i64
  %23 = load i64, i64* %5, align 8
  %24 = or i64 %23, %22
  store i64 %24, i64* %5, align 8
  %25 = load i32, i32* @SPRN_LPCR, align 4
  %26 = load i64, i64* %5, align 8
  %27 = trunc i64 %26 to i32
  %28 = call i32 @mtspr(i32 %25, i32 %27)
  %29 = call i32 (...) @isync()
  %30 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %31 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 4
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @MSR_EE, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %62

38:                                               ; preds = %1
  %39 = load i32, i32* %3, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %38
  %42 = load i64, i64* @BOOK3S_INTERRUPT_EXTERNAL, align 8
  store i64 %42, i64* %4, align 8
  br label %61

43:                                               ; preds = %38
  %44 = load i32, i32* @SPRN_DEC, align 4
  %45 = call i8* @mfspr(i32 %44)
  %46 = ptrtoint i8* %45 to i64
  store i64 %46, i64* %6, align 8
  %47 = load i64, i64* %5, align 8
  %48 = load i64, i64* @LPCR_LD, align 8
  %49 = and i64 %47, %48
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %55, label %51

51:                                               ; preds = %43
  %52 = load i64, i64* %6, align 8
  %53 = trunc i64 %52 to i32
  %54 = sext i32 %53 to i64
  store i64 %54, i64* %6, align 8
  br label %55

55:                                               ; preds = %51, %43
  %56 = load i64, i64* %6, align 8
  %57 = icmp slt i64 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %55
  %59 = load i64, i64* @BOOK3S_INTERRUPT_DECREMENTER, align 8
  store i64 %59, i64* %4, align 8
  br label %60

60:                                               ; preds = %58, %55
  br label %61

61:                                               ; preds = %60, %41
  br label %62

62:                                               ; preds = %61, %1
  %63 = load i64, i64* %4, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %100

65:                                               ; preds = %62
  %66 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %67 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 4
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = sext i32 %70 to i64
  store i64 %71, i64* %8, align 8
  %72 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %73 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %74 = call i32 @kvmppc_get_pc(%struct.kvm_vcpu* %73)
  %75 = call i32 @kvmppc_set_srr0(%struct.kvm_vcpu* %72, i32 %74)
  %76 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %77 = load i64, i64* %8, align 8
  %78 = call i32 @kvmppc_set_srr1(%struct.kvm_vcpu* %76, i64 %77)
  %79 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %80 = load i64, i64* %4, align 8
  %81 = call i32 @kvmppc_set_pc(%struct.kvm_vcpu* %79, i64 %80)
  %82 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %83 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  store i64 %85, i64* %7, align 8
  %86 = load i64, i64* %8, align 8
  %87 = call i64 @MSR_TM_ACTIVE(i64 %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %65
  %90 = load i64, i64* @MSR_TS_S, align 8
  %91 = load i64, i64* %7, align 8
  %92 = or i64 %91, %90
  store i64 %92, i64* %7, align 8
  br label %93

93:                                               ; preds = %89, %65
  %94 = load i64, i64* %7, align 8
  %95 = trunc i64 %94 to i32
  %96 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %97 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 4
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 0
  store i32 %95, i32* %99, align 8
  br label %100

100:                                              ; preds = %93, %62
  %101 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %102 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 2
  %104 = load i64, i64* %103, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %118

106:                                              ; preds = %100
  %107 = load i32, i32* @SPRN_DPDES, align 4
  %108 = call i32 @mtspr(i32 %107, i32 1)
  %109 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %110 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 3
  %112 = load %struct.TYPE_5__*, %struct.TYPE_5__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %112, i32 0, i32 0
  store i32 1, i32* %113, align 4
  %114 = call i32 (...) @smp_wmb()
  %115 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %116 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 2
  store i64 0, i64* %117, align 8
  br label %118

118:                                              ; preds = %106, %100
  ret void
}

declare dso_local i8* @mfspr(i32) #1

declare dso_local i32 @mtspr(i32, i32) #1

declare dso_local i32 @isync(...) #1

declare dso_local i32 @kvmppc_set_srr0(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @kvmppc_get_pc(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvmppc_set_srr1(%struct.kvm_vcpu*, i64) #1

declare dso_local i32 @kvmppc_set_pc(%struct.kvm_vcpu*, i64) #1

declare dso_local i64 @MSR_TM_ACTIVE(i64) #1

declare dso_local i32 @smp_wmb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
