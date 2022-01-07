; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_booke.c_kvmppc_vcpu_run.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_booke.c_kvmppc_vcpu_run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { %struct.debug_reg }
%struct.debug_reg = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.kvm_run = type { i32 }
%struct.kvm_vcpu = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, %struct.debug_reg, i32 }

@KVM_EXIT_INTERNAL_ERROR = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_8__* null, align 8
@OUTSIDE_GUEST_MODE = common dso_local global i32 0, align 4
@CPU_FTR_ALTIVEC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kvmppc_vcpu_run(%struct.kvm_run* %0, %struct.kvm_vcpu* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.kvm_run*, align 8
  %5 = alloca %struct.kvm_vcpu*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.debug_reg, align 4
  store %struct.kvm_run* %0, %struct.kvm_run** %4, align 8
  store %struct.kvm_vcpu* %1, %struct.kvm_vcpu** %5, align 8
  %9 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %10 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %20, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @KVM_EXIT_INTERNAL_ERROR, align 4
  %16 = load %struct.kvm_run*, %struct.kvm_run** %4, align 8
  %17 = getelementptr inbounds %struct.kvm_run, %struct.kvm_run* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 4
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %70

20:                                               ; preds = %2
  %21 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %22 = call i32 @kvmppc_prepare_to_enter(%struct.kvm_vcpu* %21)
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %7, align 4
  %24 = icmp sle i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %20
  %26 = load i32, i32* %7, align 4
  store i32 %26, i32* %6, align 4
  br label %65

27:                                               ; preds = %20
  %28 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %29 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 1
  %31 = bitcast %struct.debug_reg* %8 to i8*
  %32 = bitcast %struct.debug_reg* %30 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %31, i8* align 4 %32, i64 4, i1 false)
  %33 = call i32 @switch_booke_debug_regs(%struct.debug_reg* %8)
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** @current, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = bitcast %struct.debug_reg* %8 to i8*
  %38 = bitcast %struct.debug_reg* %36 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %37, i8* align 8 %38, i64 4, i1 false)
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** @current, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  %42 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %43 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 1
  %45 = bitcast %struct.debug_reg* %41 to i8*
  %46 = bitcast %struct.debug_reg* %44 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %45, i8* align 4 %46, i64 4, i1 false)
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** @current, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 1
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %53 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  store i32 %51, i32* %54, align 4
  %55 = call i32 (...) @kvmppc_fix_ee_before_entry()
  %56 = load %struct.kvm_run*, %struct.kvm_run** %4, align 8
  %57 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %58 = call i32 @__kvmppc_vcpu_run(%struct.kvm_run* %56, %struct.kvm_vcpu* %57)
  store i32 %58, i32* %6, align 4
  %59 = call i32 @switch_booke_debug_regs(%struct.debug_reg* %8)
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** @current, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 0
  %63 = bitcast %struct.debug_reg* %62 to i8*
  %64 = bitcast %struct.debug_reg* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %63, i8* align 4 %64, i64 4, i1 false)
  br label %65

65:                                               ; preds = %27, %25
  %66 = load i32, i32* @OUTSIDE_GUEST_MODE, align 4
  %67 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %68 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 4
  %69 = load i32, i32* %6, align 4
  store i32 %69, i32* %3, align 4
  br label %70

70:                                               ; preds = %65, %14
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local i32 @kvmppc_prepare_to_enter(%struct.kvm_vcpu*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @switch_booke_debug_regs(%struct.debug_reg*) #1

declare dso_local i32 @kvmppc_fix_ee_before_entry(...) #1

declare dso_local i32 @__kvmppc_vcpu_run(%struct.kvm_run*, %struct.kvm_vcpu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
