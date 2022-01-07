; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/vmx/extr_nested.h_nested_read_cr0.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/vmx/extr_nested.h_nested_read_cr0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmcs12 = type { i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.vmcs12*)* @nested_read_cr0 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @nested_read_cr0(%struct.vmcs12* %0) #0 {
  %2 = alloca %struct.vmcs12*, align 8
  store %struct.vmcs12* %0, %struct.vmcs12** %2, align 8
  %3 = load %struct.vmcs12*, %struct.vmcs12** %2, align 8
  %4 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load %struct.vmcs12*, %struct.vmcs12** %2, align 8
  %7 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %6, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = xor i64 %8, -1
  %10 = and i64 %5, %9
  %11 = load %struct.vmcs12*, %struct.vmcs12** %2, align 8
  %12 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %11, i32 0, i32 2
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.vmcs12*, %struct.vmcs12** %2, align 8
  %15 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = and i64 %13, %16
  %18 = or i64 %10, %17
  ret i64 %18
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
