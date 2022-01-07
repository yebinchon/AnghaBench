; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_lapic.c_kvm_apic_match_logical_addr.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_lapic.c_kvm_apic_match_logical_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_lapic = type { i32 }

@APIC_LDR = common dso_local global i32 0, align 4
@APIC_DFR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_lapic*, i32)* @kvm_apic_match_logical_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kvm_apic_match_logical_addr(%struct.kvm_lapic* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.kvm_lapic*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.kvm_lapic* %0, %struct.kvm_lapic** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.kvm_lapic*, %struct.kvm_lapic** %4, align 8
  %8 = load i32, i32* %5, align 4
  %9 = call i64 @kvm_apic_broadcast(%struct.kvm_lapic* %7, i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %62

12:                                               ; preds = %2
  %13 = load %struct.kvm_lapic*, %struct.kvm_lapic** %4, align 8
  %14 = load i32, i32* @APIC_LDR, align 4
  %15 = call i32 @kvm_lapic_get_reg(%struct.kvm_lapic* %13, i32 %14)
  store i32 %15, i32* %6, align 4
  %16 = load %struct.kvm_lapic*, %struct.kvm_lapic** %4, align 8
  %17 = call i64 @apic_x2apic_mode(%struct.kvm_lapic* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %34

19:                                               ; preds = %12
  %20 = load i32, i32* %6, align 4
  %21 = ashr i32 %20, 16
  %22 = load i32, i32* %5, align 4
  %23 = ashr i32 %22, 16
  %24 = icmp eq i32 %21, %23
  br i1 %24, label %25, label %31

25:                                               ; preds = %19
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* %5, align 4
  %28 = and i32 %26, %27
  %29 = and i32 %28, 65535
  %30 = icmp ne i32 %29, 0
  br label %31

31:                                               ; preds = %25, %19
  %32 = phi i1 [ false, %19 ], [ %30, %25 ]
  %33 = zext i1 %32 to i32
  store i32 %33, i32* %3, align 4
  br label %62

34:                                               ; preds = %12
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @GET_APIC_LOGICAL_ID(i32 %35)
  store i32 %36, i32* %6, align 4
  %37 = load %struct.kvm_lapic*, %struct.kvm_lapic** %4, align 8
  %38 = load i32, i32* @APIC_DFR, align 4
  %39 = call i32 @kvm_lapic_get_reg(%struct.kvm_lapic* %37, i32 %38)
  switch i32 %39, label %61 [
    i32 128, label %40
    i32 129, label %46
  ]

40:                                               ; preds = %34
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* %5, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  %45 = zext i1 %44 to i32
  store i32 %45, i32* %3, align 4
  br label %62

46:                                               ; preds = %34
  %47 = load i32, i32* %6, align 4
  %48 = ashr i32 %47, 4
  %49 = load i32, i32* %5, align 4
  %50 = ashr i32 %49, 4
  %51 = icmp eq i32 %48, %50
  br i1 %51, label %52, label %58

52:                                               ; preds = %46
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* %5, align 4
  %55 = and i32 %53, %54
  %56 = and i32 %55, 15
  %57 = icmp ne i32 %56, 0
  br label %58

58:                                               ; preds = %52, %46
  %59 = phi i1 [ false, %46 ], [ %57, %52 ]
  %60 = zext i1 %59 to i32
  store i32 %60, i32* %3, align 4
  br label %62

61:                                               ; preds = %34
  store i32 0, i32* %3, align 4
  br label %62

62:                                               ; preds = %61, %58, %40, %31, %11
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local i64 @kvm_apic_broadcast(%struct.kvm_lapic*, i32) #1

declare dso_local i32 @kvm_lapic_get_reg(%struct.kvm_lapic*, i32) #1

declare dso_local i64 @apic_x2apic_mode(%struct.kvm_lapic*) #1

declare dso_local i32 @GET_APIC_LOGICAL_ID(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
