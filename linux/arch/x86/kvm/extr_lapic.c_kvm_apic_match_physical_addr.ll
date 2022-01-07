; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_lapic.c_kvm_apic_match_physical_addr.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_lapic.c_kvm_apic_match_physical_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_lapic = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_lapic*, i32)* @kvm_apic_match_physical_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kvm_apic_match_physical_addr(%struct.kvm_lapic* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.kvm_lapic*, align 8
  %5 = alloca i32, align 4
  store %struct.kvm_lapic* %0, %struct.kvm_lapic** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.kvm_lapic*, %struct.kvm_lapic** %4, align 8
  %7 = load i32, i32* %5, align 4
  %8 = call i64 @kvm_apic_broadcast(%struct.kvm_lapic* %6, i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %37

11:                                               ; preds = %2
  %12 = load %struct.kvm_lapic*, %struct.kvm_lapic** %4, align 8
  %13 = call i64 @apic_x2apic_mode(%struct.kvm_lapic* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %11
  %16 = load i32, i32* %5, align 4
  %17 = load %struct.kvm_lapic*, %struct.kvm_lapic** %4, align 8
  %18 = call i32 @kvm_x2apic_id(%struct.kvm_lapic* %17)
  %19 = icmp eq i32 %16, %18
  %20 = zext i1 %19 to i32
  store i32 %20, i32* %3, align 4
  br label %37

21:                                               ; preds = %11
  %22 = load %struct.kvm_lapic*, %struct.kvm_lapic** %4, align 8
  %23 = call i32 @kvm_x2apic_id(%struct.kvm_lapic* %22)
  %24 = icmp sgt i32 %23, 255
  br i1 %24, label %25, label %31

25:                                               ; preds = %21
  %26 = load i32, i32* %5, align 4
  %27 = load %struct.kvm_lapic*, %struct.kvm_lapic** %4, align 8
  %28 = call i32 @kvm_x2apic_id(%struct.kvm_lapic* %27)
  %29 = icmp eq i32 %26, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %25
  store i32 1, i32* %3, align 4
  br label %37

31:                                               ; preds = %25, %21
  %32 = load i32, i32* %5, align 4
  %33 = load %struct.kvm_lapic*, %struct.kvm_lapic** %4, align 8
  %34 = call i32 @kvm_xapic_id(%struct.kvm_lapic* %33)
  %35 = icmp eq i32 %32, %34
  %36 = zext i1 %35 to i32
  store i32 %36, i32* %3, align 4
  br label %37

37:                                               ; preds = %31, %30, %15, %10
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local i64 @kvm_apic_broadcast(%struct.kvm_lapic*, i32) #1

declare dso_local i64 @apic_x2apic_mode(%struct.kvm_lapic*) #1

declare dso_local i32 @kvm_x2apic_id(%struct.kvm_lapic*) #1

declare dso_local i32 @kvm_xapic_id(%struct.kvm_lapic*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
