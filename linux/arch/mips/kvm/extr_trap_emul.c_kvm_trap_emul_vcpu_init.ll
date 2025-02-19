; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/kvm/extr_trap_emul.c_kvm_trap_emul_vcpu_init.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/kvm/extr_trap_emul.c_kvm_trap_emul_vcpu_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.mm_struct, %struct.mm_struct }
%struct.mm_struct = type { i8* }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_vcpu*)* @kvm_trap_emul_vcpu_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kvm_trap_emul_vcpu_init(%struct.kvm_vcpu* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.kvm_vcpu*, align 8
  %4 = alloca %struct.mm_struct*, align 8
  %5 = alloca %struct.mm_struct*, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %3, align 8
  %6 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %7 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 1
  store %struct.mm_struct* %8, %struct.mm_struct** %4, align 8
  %9 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %10 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  store %struct.mm_struct* %11, %struct.mm_struct** %5, align 8
  %12 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %13 = call i8* @pgd_alloc(%struct.mm_struct* %12)
  %14 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %15 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %14, i32 0, i32 0
  store i8* %13, i8** %15, align 8
  %16 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %17 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %1
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %41

23:                                               ; preds = %1
  %24 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %25 = call i8* @pgd_alloc(%struct.mm_struct* %24)
  %26 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %27 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %26, i32 0, i32 0
  store i8* %25, i8** %27, align 8
  %28 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %29 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %28, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %40, label %32

32:                                               ; preds = %23
  %33 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %34 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %35 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %34, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8
  %37 = call i32 @pgd_free(%struct.mm_struct* %33, i8* %36)
  %38 = load i32, i32* @ENOMEM, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %2, align 4
  br label %41

40:                                               ; preds = %23
  store i32 0, i32* %2, align 4
  br label %41

41:                                               ; preds = %40, %32, %20
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

declare dso_local i8* @pgd_alloc(%struct.mm_struct*) #1

declare dso_local i32 @pgd_free(%struct.mm_struct*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
