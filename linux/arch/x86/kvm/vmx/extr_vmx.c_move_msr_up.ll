; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/vmx/extr_vmx.c_move_msr_up.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/vmx/extr_vmx.c_move_msr_up.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vcpu_vmx = type { %struct.shared_msr_entry* }
%struct.shared_msr_entry = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vcpu_vmx*, i32, i32)* @move_msr_up to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @move_msr_up(%struct.vcpu_vmx* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.vcpu_vmx*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.shared_msr_entry, align 4
  store %struct.vcpu_vmx* %0, %struct.vcpu_vmx** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %4, align 8
  %9 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %8, i32 0, i32 0
  %10 = load %struct.shared_msr_entry*, %struct.shared_msr_entry** %9, align 8
  %11 = load i32, i32* %6, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.shared_msr_entry, %struct.shared_msr_entry* %10, i64 %12
  %14 = bitcast %struct.shared_msr_entry* %7 to i8*
  %15 = bitcast %struct.shared_msr_entry* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %14, i8* align 4 %15, i64 4, i1 false)
  %16 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %4, align 8
  %17 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %16, i32 0, i32 0
  %18 = load %struct.shared_msr_entry*, %struct.shared_msr_entry** %17, align 8
  %19 = load i32, i32* %6, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.shared_msr_entry, %struct.shared_msr_entry* %18, i64 %20
  %22 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %4, align 8
  %23 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %22, i32 0, i32 0
  %24 = load %struct.shared_msr_entry*, %struct.shared_msr_entry** %23, align 8
  %25 = load i32, i32* %5, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.shared_msr_entry, %struct.shared_msr_entry* %24, i64 %26
  %28 = bitcast %struct.shared_msr_entry* %21 to i8*
  %29 = bitcast %struct.shared_msr_entry* %27 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %28, i8* align 4 %29, i64 4, i1 false)
  %30 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %4, align 8
  %31 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %30, i32 0, i32 0
  %32 = load %struct.shared_msr_entry*, %struct.shared_msr_entry** %31, align 8
  %33 = load i32, i32* %5, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.shared_msr_entry, %struct.shared_msr_entry* %32, i64 %34
  %36 = bitcast %struct.shared_msr_entry* %35 to i8*
  %37 = bitcast %struct.shared_msr_entry* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %36, i8* align 4 %37, i64 4, i1 false)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
