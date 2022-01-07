; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/vmx/extr_vmx.c_find_msr_entry.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/vmx/extr_vmx.c_find_msr_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.shared_msr_entry = type { i32 }
%struct.vcpu_vmx = type { %struct.shared_msr_entry* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.shared_msr_entry* @find_msr_entry(%struct.vcpu_vmx* %0, i32 %1) #0 {
  %3 = alloca %struct.shared_msr_entry*, align 8
  %4 = alloca %struct.vcpu_vmx*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.vcpu_vmx* %0, %struct.vcpu_vmx** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %4, align 8
  %8 = load i32, i32* %5, align 4
  %9 = call i32 @__find_msr_index(%struct.vcpu_vmx* %7, i32 %8)
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp sge i32 %10, 0
  br i1 %11, label %12, label %19

12:                                               ; preds = %2
  %13 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %4, align 8
  %14 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %13, i32 0, i32 0
  %15 = load %struct.shared_msr_entry*, %struct.shared_msr_entry** %14, align 8
  %16 = load i32, i32* %6, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.shared_msr_entry, %struct.shared_msr_entry* %15, i64 %17
  store %struct.shared_msr_entry* %18, %struct.shared_msr_entry** %3, align 8
  br label %20

19:                                               ; preds = %2
  store %struct.shared_msr_entry* null, %struct.shared_msr_entry** %3, align 8
  br label %20

20:                                               ; preds = %19, %12
  %21 = load %struct.shared_msr_entry*, %struct.shared_msr_entry** %3, align 8
  ret %struct.shared_msr_entry* %21
}

declare dso_local i32 @__find_msr_index(%struct.vcpu_vmx*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
