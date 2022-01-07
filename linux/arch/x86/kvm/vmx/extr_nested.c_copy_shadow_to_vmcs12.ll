; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/vmx/extr_nested.c_copy_shadow_to_vmcs12.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/vmx/extr_nested.c_copy_shadow_to_vmcs12.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.shadow_vmcs_field = type { i32, i32 }
%struct.vcpu_vmx = type { %struct.TYPE_3__*, i32, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { %struct.vmcs* }
%struct.vmcs = type { i32 }
%struct.TYPE_4__ = type { %struct.vmcs* }
%struct.vmcs12 = type { i32 }

@max_shadow_read_write_fields = common dso_local global i32 0, align 4
@shadow_read_write_fields = common dso_local global %struct.shadow_vmcs_field* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vcpu_vmx*)* @copy_shadow_to_vmcs12 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @copy_shadow_to_vmcs12(%struct.vcpu_vmx* %0) #0 {
  %2 = alloca %struct.vcpu_vmx*, align 8
  %3 = alloca %struct.vmcs*, align 8
  %4 = alloca %struct.vmcs12*, align 8
  %5 = alloca %struct.shadow_vmcs_field, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.vcpu_vmx* %0, %struct.vcpu_vmx** %2, align 8
  %8 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %2, align 8
  %9 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %8, i32 0, i32 2
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load %struct.vmcs*, %struct.vmcs** %10, align 8
  store %struct.vmcs* %11, %struct.vmcs** %3, align 8
  %12 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %2, align 8
  %13 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %12, i32 0, i32 1
  %14 = call %struct.vmcs12* @get_vmcs12(i32* %13)
  store %struct.vmcs12* %14, %struct.vmcs12** %4, align 8
  %15 = load %struct.vmcs*, %struct.vmcs** %3, align 8
  %16 = icmp ne %struct.vmcs* %15, null
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  %19 = call i64 @WARN_ON(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %1
  br label %60

22:                                               ; preds = %1
  %23 = call i32 (...) @preempt_disable()
  %24 = load %struct.vmcs*, %struct.vmcs** %3, align 8
  %25 = call i32 @vmcs_load(%struct.vmcs* %24)
  store i32 0, i32* %7, align 4
  br label %26

26:                                               ; preds = %47, %22
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* @max_shadow_read_write_fields, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %50

30:                                               ; preds = %26
  %31 = load %struct.shadow_vmcs_field*, %struct.shadow_vmcs_field** @shadow_read_write_fields, align 8
  %32 = load i32, i32* %7, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.shadow_vmcs_field, %struct.shadow_vmcs_field* %31, i64 %33
  %35 = bitcast %struct.shadow_vmcs_field* %5 to i8*
  %36 = bitcast %struct.shadow_vmcs_field* %34 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %35, i8* align 4 %36, i64 8, i1 false)
  %37 = getelementptr inbounds %struct.shadow_vmcs_field, %struct.shadow_vmcs_field* %5, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i64 @__vmcs_readl(i32 %38)
  store i64 %39, i64* %6, align 8
  %40 = load %struct.vmcs12*, %struct.vmcs12** %4, align 8
  %41 = getelementptr inbounds %struct.shadow_vmcs_field, %struct.shadow_vmcs_field* %5, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = getelementptr inbounds %struct.shadow_vmcs_field, %struct.shadow_vmcs_field* %5, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i64, i64* %6, align 8
  %46 = call i32 @vmcs12_write_any(%struct.vmcs12* %40, i32 %42, i32 %44, i64 %45)
  br label %47

47:                                               ; preds = %30
  %48 = load i32, i32* %7, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %7, align 4
  br label %26

50:                                               ; preds = %26
  %51 = load %struct.vmcs*, %struct.vmcs** %3, align 8
  %52 = call i32 @vmcs_clear(%struct.vmcs* %51)
  %53 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %2, align 8
  %54 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %53, i32 0, i32 0
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  %57 = load %struct.vmcs*, %struct.vmcs** %56, align 8
  %58 = call i32 @vmcs_load(%struct.vmcs* %57)
  %59 = call i32 (...) @preempt_enable()
  br label %60

60:                                               ; preds = %50, %21
  ret void
}

declare dso_local %struct.vmcs12* @get_vmcs12(i32*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @preempt_disable(...) #1

declare dso_local i32 @vmcs_load(%struct.vmcs*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @__vmcs_readl(i32) #1

declare dso_local i32 @vmcs12_write_any(%struct.vmcs12*, i32, i32, i64) #1

declare dso_local i32 @vmcs_clear(%struct.vmcs*) #1

declare dso_local i32 @preempt_enable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
