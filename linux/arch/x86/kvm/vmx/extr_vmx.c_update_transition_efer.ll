; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/vmx/extr_vmx.c_update_transition_efer.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/vmx/extr_vmx.c_update_transition_efer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vcpu_vmx = type { %struct.TYPE_6__*, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@enable_ept = common dso_local global i64 0, align 8
@EFER_NX = common dso_local global i32 0, align 4
@EFER_SCE = common dso_local global i32 0, align 4
@host_efer = common dso_local global i32 0, align 4
@EFER_LMA = common dso_local global i32 0, align 4
@EFER_LME = common dso_local global i32 0, align 4
@MSR_EFER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vcpu_vmx*, i32)* @update_transition_efer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @update_transition_efer(%struct.vcpu_vmx* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vcpu_vmx*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.vcpu_vmx* %0, %struct.vcpu_vmx** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %4, align 8
  %9 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %13 = load i64, i64* @enable_ept, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @EFER_NX, align 4
  %17 = load i32, i32* %6, align 4
  %18 = or i32 %17, %16
  store i32 %18, i32* %6, align 4
  br label %19

19:                                               ; preds = %15, %2
  %20 = load i32, i32* @EFER_SCE, align 4
  %21 = load i32, i32* %7, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %7, align 4
  %23 = call i64 (...) @cpu_has_load_ia32_efer()
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %39, label %25

25:                                               ; preds = %19
  %26 = load i64, i64* @enable_ept, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %64

28:                                               ; preds = %25
  %29 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %4, align 8
  %30 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @host_efer, align 4
  %35 = xor i32 %33, %34
  %36 = load i32, i32* @EFER_NX, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %64

39:                                               ; preds = %28, %19
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* @EFER_LMA, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %49, label %44

44:                                               ; preds = %39
  %45 = load i32, i32* @EFER_LME, align 4
  %46 = xor i32 %45, -1
  %47 = load i32, i32* %6, align 4
  %48 = and i32 %47, %46
  store i32 %48, i32* %6, align 4
  br label %49

49:                                               ; preds = %44, %39
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* @host_efer, align 4
  %52 = icmp ne i32 %50, %51
  br i1 %52, label %53, label %59

53:                                               ; preds = %49
  %54 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %4, align 8
  %55 = load i32, i32* @MSR_EFER, align 4
  %56 = load i32, i32* %6, align 4
  %57 = load i32, i32* @host_efer, align 4
  %58 = call i32 @add_atomic_switch_msr(%struct.vcpu_vmx* %54, i32 %55, i32 %56, i32 %57, i32 0)
  br label %63

59:                                               ; preds = %49
  %60 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %4, align 8
  %61 = load i32, i32* @MSR_EFER, align 4
  %62 = call i32 @clear_atomic_switch_msr(%struct.vcpu_vmx* %60, i32 %61)
  br label %63

63:                                               ; preds = %59, %53
  store i32 0, i32* %3, align 4
  br label %94

64:                                               ; preds = %28, %25
  %65 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %4, align 8
  %66 = load i32, i32* @MSR_EFER, align 4
  %67 = call i32 @clear_atomic_switch_msr(%struct.vcpu_vmx* %65, i32 %66)
  %68 = load i32, i32* %7, align 4
  %69 = xor i32 %68, -1
  %70 = load i32, i32* %6, align 4
  %71 = and i32 %70, %69
  store i32 %71, i32* %6, align 4
  %72 = load i32, i32* @host_efer, align 4
  %73 = load i32, i32* %7, align 4
  %74 = and i32 %72, %73
  %75 = load i32, i32* %6, align 4
  %76 = or i32 %75, %74
  store i32 %76, i32* %6, align 4
  %77 = load i32, i32* %6, align 4
  %78 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %4, align 8
  %79 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %78, i32 0, i32 0
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %79, align 8
  %81 = load i32, i32* %5, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 0
  store i32 %77, i32* %84, align 4
  %85 = load i32, i32* %7, align 4
  %86 = xor i32 %85, -1
  %87 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %4, align 8
  %88 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %87, i32 0, i32 0
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %88, align 8
  %90 = load i32, i32* %5, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 1
  store i32 %86, i32* %93, align 4
  store i32 1, i32* %3, align 4
  br label %94

94:                                               ; preds = %64, %63
  %95 = load i32, i32* %3, align 4
  ret i32 %95
}

declare dso_local i64 @cpu_has_load_ia32_efer(...) #1

declare dso_local i32 @add_atomic_switch_msr(%struct.vcpu_vmx*, i32, i32, i32, i32) #1

declare dso_local i32 @clear_atomic_switch_msr(%struct.vcpu_vmx*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
