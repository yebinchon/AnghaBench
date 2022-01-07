; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_mpic.c_mpic_set_default_irq_routing.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_mpic.c_mpic_set_default_irq_routing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.openpic = type { i32 }
%struct.kvm_irq_routing_entry = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.openpic*)* @mpic_set_default_irq_routing to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpic_set_default_irq_routing(%struct.openpic* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.openpic*, align 8
  %4 = alloca %struct.kvm_irq_routing_entry*, align 8
  store %struct.openpic* %0, %struct.openpic** %3, align 8
  %5 = load i32, i32* @GFP_KERNEL, align 4
  %6 = call %struct.kvm_irq_routing_entry* @kzalloc(i32 4, i32 %5)
  store %struct.kvm_irq_routing_entry* %6, %struct.kvm_irq_routing_entry** %4, align 8
  %7 = load %struct.kvm_irq_routing_entry*, %struct.kvm_irq_routing_entry** %4, align 8
  %8 = icmp ne %struct.kvm_irq_routing_entry* %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* @ENOMEM, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %2, align 4
  br label %20

12:                                               ; preds = %1
  %13 = load %struct.openpic*, %struct.openpic** %3, align 8
  %14 = getelementptr inbounds %struct.openpic, %struct.openpic* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.kvm_irq_routing_entry*, %struct.kvm_irq_routing_entry** %4, align 8
  %17 = call i32 @kvm_set_irq_routing(i32 %15, %struct.kvm_irq_routing_entry* %16, i32 0, i32 0)
  %18 = load %struct.kvm_irq_routing_entry*, %struct.kvm_irq_routing_entry** %4, align 8
  %19 = call i32 @kfree(%struct.kvm_irq_routing_entry* %18)
  store i32 0, i32* %2, align 4
  br label %20

20:                                               ; preds = %12, %9
  %21 = load i32, i32* %2, align 4
  ret i32 %21
}

declare dso_local %struct.kvm_irq_routing_entry* @kzalloc(i32, i32) #1

declare dso_local i32 @kvm_set_irq_routing(i32, %struct.kvm_irq_routing_entry*, i32, i32) #1

declare dso_local i32 @kfree(%struct.kvm_irq_routing_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
