; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_powerpc.c_kvm_vm_ioctl_get_pvinfo.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_powerpc.c_kvm_vm_ioctl_get_pvinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_ppc_pvinfo = type { i32, i8** }

@KVM_SC_MAGIC_R0 = common dso_local global i32 0, align 4
@KVM_PPC_PVINFO_FLAGS_EV_IDLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_ppc_pvinfo*)* @kvm_vm_ioctl_get_pvinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kvm_vm_ioctl_get_pvinfo(%struct.kvm_ppc_pvinfo* %0) #0 {
  %2 = alloca %struct.kvm_ppc_pvinfo*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.kvm_ppc_pvinfo* %0, %struct.kvm_ppc_pvinfo** %2, align 8
  store i32 1610612736, i32* %3, align 4
  store i32 1006632960, i32* %4, align 4
  store i32 1610612736, i32* %5, align 4
  store i32 1140850690, i32* %6, align 4
  store i32 65535, i32* %7, align 4
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @KVM_SC_MAGIC_R0, align 4
  %10 = ashr i32 %9, 16
  %11 = load i32, i32* %7, align 4
  %12 = and i32 %10, %11
  %13 = or i32 %8, %12
  %14 = call i8* @cpu_to_be32(i32 %13)
  %15 = load %struct.kvm_ppc_pvinfo*, %struct.kvm_ppc_pvinfo** %2, align 8
  %16 = getelementptr inbounds %struct.kvm_ppc_pvinfo, %struct.kvm_ppc_pvinfo* %15, i32 0, i32 1
  %17 = load i8**, i8*** %16, align 8
  %18 = getelementptr inbounds i8*, i8** %17, i64 0
  store i8* %14, i8** %18, align 8
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @KVM_SC_MAGIC_R0, align 4
  %21 = load i32, i32* %7, align 4
  %22 = and i32 %20, %21
  %23 = or i32 %19, %22
  %24 = call i8* @cpu_to_be32(i32 %23)
  %25 = load %struct.kvm_ppc_pvinfo*, %struct.kvm_ppc_pvinfo** %2, align 8
  %26 = getelementptr inbounds %struct.kvm_ppc_pvinfo, %struct.kvm_ppc_pvinfo* %25, i32 0, i32 1
  %27 = load i8**, i8*** %26, align 8
  %28 = getelementptr inbounds i8*, i8** %27, i64 1
  store i8* %24, i8** %28, align 8
  %29 = load i32, i32* %6, align 4
  %30 = call i8* @cpu_to_be32(i32 %29)
  %31 = load %struct.kvm_ppc_pvinfo*, %struct.kvm_ppc_pvinfo** %2, align 8
  %32 = getelementptr inbounds %struct.kvm_ppc_pvinfo, %struct.kvm_ppc_pvinfo* %31, i32 0, i32 1
  %33 = load i8**, i8*** %32, align 8
  %34 = getelementptr inbounds i8*, i8** %33, i64 2
  store i8* %30, i8** %34, align 8
  %35 = load i32, i32* %3, align 4
  %36 = call i8* @cpu_to_be32(i32 %35)
  %37 = load %struct.kvm_ppc_pvinfo*, %struct.kvm_ppc_pvinfo** %2, align 8
  %38 = getelementptr inbounds %struct.kvm_ppc_pvinfo, %struct.kvm_ppc_pvinfo* %37, i32 0, i32 1
  %39 = load i8**, i8*** %38, align 8
  %40 = getelementptr inbounds i8*, i8** %39, i64 3
  store i8* %36, i8** %40, align 8
  %41 = load i32, i32* @KVM_PPC_PVINFO_FLAGS_EV_IDLE, align 4
  %42 = load %struct.kvm_ppc_pvinfo*, %struct.kvm_ppc_pvinfo** %2, align 8
  %43 = getelementptr inbounds %struct.kvm_ppc_pvinfo, %struct.kvm_ppc_pvinfo* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 8
  ret i32 0
}

declare dso_local i8* @cpu_to_be32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
