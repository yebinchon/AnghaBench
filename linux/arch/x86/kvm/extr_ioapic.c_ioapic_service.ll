; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_ioapic.c_ioapic_service.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_ioapic.c_ioapic_service.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_ioapic = type { i32, i32, %struct.TYPE_3__, %union.kvm_ioapic_redirect_entry* }
%struct.TYPE_3__ = type { i32, i32 }
%union.kvm_ioapic_redirect_entry = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i32, i32, i32, i32, i32, i64 }
%struct.kvm_lapic_irq = type { i64, i32, i32, i32, i64, i32, i32, i32 }

@IOAPIC_LEVEL_TRIG = common dso_local global i64 0, align 8
@IOAPIC_EDGE_TRIG = common dso_local global i64 0, align 8
@RTC_GSI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_ioapic*, i32, i32)* @ioapic_service to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ioapic_service(%struct.kvm_ioapic* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.kvm_ioapic*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %union.kvm_ioapic_redirect_entry*, align 8
  %9 = alloca %struct.kvm_lapic_irq, align 8
  %10 = alloca i32, align 4
  store %struct.kvm_ioapic* %0, %struct.kvm_ioapic** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load %struct.kvm_ioapic*, %struct.kvm_ioapic** %5, align 8
  %12 = getelementptr inbounds %struct.kvm_ioapic, %struct.kvm_ioapic* %11, i32 0, i32 3
  %13 = load %union.kvm_ioapic_redirect_entry*, %union.kvm_ioapic_redirect_entry** %12, align 8
  %14 = load i32, i32* %6, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %union.kvm_ioapic_redirect_entry, %union.kvm_ioapic_redirect_entry* %13, i64 %15
  store %union.kvm_ioapic_redirect_entry* %16, %union.kvm_ioapic_redirect_entry** %8, align 8
  %17 = load %union.kvm_ioapic_redirect_entry*, %union.kvm_ioapic_redirect_entry** %8, align 8
  %18 = bitcast %union.kvm_ioapic_redirect_entry* %17 to %struct.TYPE_4__*
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 6
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %35, label %22

22:                                               ; preds = %3
  %23 = load %union.kvm_ioapic_redirect_entry*, %union.kvm_ioapic_redirect_entry** %8, align 8
  %24 = bitcast %union.kvm_ioapic_redirect_entry* %23 to %struct.TYPE_4__*
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @IOAPIC_LEVEL_TRIG, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %36

29:                                               ; preds = %22
  %30 = load %union.kvm_ioapic_redirect_entry*, %union.kvm_ioapic_redirect_entry** %8, align 8
  %31 = bitcast %union.kvm_ioapic_redirect_entry* %30 to %struct.TYPE_4__*
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %29, %3
  store i32 -1, i32* %4, align 4
  br label %128

36:                                               ; preds = %29, %22
  %37 = load %union.kvm_ioapic_redirect_entry*, %union.kvm_ioapic_redirect_entry** %8, align 8
  %38 = bitcast %union.kvm_ioapic_redirect_entry* %37 to %struct.TYPE_4__*
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 5
  %40 = load i32, i32* %39, align 8
  %41 = getelementptr inbounds %struct.kvm_lapic_irq, %struct.kvm_lapic_irq* %9, i32 0, i32 7
  store i32 %40, i32* %41, align 8
  %42 = load %union.kvm_ioapic_redirect_entry*, %union.kvm_ioapic_redirect_entry** %8, align 8
  %43 = bitcast %union.kvm_ioapic_redirect_entry* %42 to %struct.TYPE_4__*
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 4
  %45 = load i32, i32* %44, align 4
  %46 = getelementptr inbounds %struct.kvm_lapic_irq, %struct.kvm_lapic_irq* %9, i32 0, i32 6
  store i32 %45, i32* %46, align 4
  %47 = load %union.kvm_ioapic_redirect_entry*, %union.kvm_ioapic_redirect_entry** %8, align 8
  %48 = bitcast %union.kvm_ioapic_redirect_entry* %47 to %struct.TYPE_4__*
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 8
  %51 = getelementptr inbounds %struct.kvm_lapic_irq, %struct.kvm_lapic_irq* %9, i32 0, i32 5
  store i32 %50, i32* %51, align 8
  %52 = load %union.kvm_ioapic_redirect_entry*, %union.kvm_ioapic_redirect_entry** %8, align 8
  %53 = bitcast %union.kvm_ioapic_redirect_entry* %52 to %struct.TYPE_4__*
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = getelementptr inbounds %struct.kvm_lapic_irq, %struct.kvm_lapic_irq* %9, i32 0, i32 0
  store i64 %55, i64* %56, align 8
  %57 = load %union.kvm_ioapic_redirect_entry*, %union.kvm_ioapic_redirect_entry** %8, align 8
  %58 = bitcast %union.kvm_ioapic_redirect_entry* %57 to %struct.TYPE_4__*
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = shl i32 %60, 8
  %62 = getelementptr inbounds %struct.kvm_lapic_irq, %struct.kvm_lapic_irq* %9, i32 0, i32 1
  store i32 %61, i32* %62, align 8
  %63 = getelementptr inbounds %struct.kvm_lapic_irq, %struct.kvm_lapic_irq* %9, i32 0, i32 2
  store i32 1, i32* %63, align 4
  %64 = getelementptr inbounds %struct.kvm_lapic_irq, %struct.kvm_lapic_irq* %9, i32 0, i32 4
  store i64 0, i64* %64, align 8
  %65 = getelementptr inbounds %struct.kvm_lapic_irq, %struct.kvm_lapic_irq* %9, i32 0, i32 3
  store i32 0, i32* %65, align 8
  %66 = getelementptr inbounds %struct.kvm_lapic_irq, %struct.kvm_lapic_irq* %9, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @IOAPIC_EDGE_TRIG, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %77

70:                                               ; preds = %36
  %71 = load i32, i32* %6, align 4
  %72 = shl i32 1, %71
  %73 = load %struct.kvm_ioapic*, %struct.kvm_ioapic** %5, align 8
  %74 = getelementptr inbounds %struct.kvm_ioapic, %struct.kvm_ioapic* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = or i32 %75, %72
  store i32 %76, i32* %74, align 8
  br label %77

77:                                               ; preds = %70, %36
  %78 = load i32, i32* %6, align 4
  %79 = load i32, i32* @RTC_GSI, align 4
  %80 = icmp eq i32 %78, %79
  br i1 %80, label %81, label %109

81:                                               ; preds = %77
  %82 = load i32, i32* %7, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %109

84:                                               ; preds = %81
  %85 = load %struct.kvm_ioapic*, %struct.kvm_ioapic** %5, align 8
  %86 = getelementptr inbounds %struct.kvm_ioapic, %struct.kvm_ioapic* %85, i32 0, i32 2
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = icmp ne i32 %88, 0
  %90 = zext i1 %89 to i32
  %91 = call i32 @BUG_ON(i32 %90)
  %92 = load %struct.kvm_ioapic*, %struct.kvm_ioapic** %5, align 8
  %93 = getelementptr inbounds %struct.kvm_ioapic, %struct.kvm_ioapic* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.kvm_ioapic*, %struct.kvm_ioapic** %5, align 8
  %96 = getelementptr inbounds %struct.kvm_ioapic, %struct.kvm_ioapic* %95, i32 0, i32 2
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 1
  %98 = call i32 @kvm_irq_delivery_to_apic(i32 %94, i32* null, %struct.kvm_lapic_irq* %9, i32* %97)
  store i32 %98, i32* %10, align 4
  %99 = load i32, i32* %10, align 4
  %100 = icmp slt i32 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %84
  br label %104

102:                                              ; preds = %84
  %103 = load i32, i32* %10, align 4
  br label %104

104:                                              ; preds = %102, %101
  %105 = phi i32 [ 0, %101 ], [ %103, %102 ]
  %106 = load %struct.kvm_ioapic*, %struct.kvm_ioapic** %5, align 8
  %107 = getelementptr inbounds %struct.kvm_ioapic, %struct.kvm_ioapic* %106, i32 0, i32 2
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i32 0, i32 0
  store i32 %105, i32* %108, align 8
  br label %114

109:                                              ; preds = %81, %77
  %110 = load %struct.kvm_ioapic*, %struct.kvm_ioapic** %5, align 8
  %111 = getelementptr inbounds %struct.kvm_ioapic, %struct.kvm_ioapic* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @kvm_irq_delivery_to_apic(i32 %112, i32* null, %struct.kvm_lapic_irq* %9, i32* null)
  store i32 %113, i32* %10, align 4
  br label %114

114:                                              ; preds = %109, %104
  %115 = load i32, i32* %10, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %126

117:                                              ; preds = %114
  %118 = getelementptr inbounds %struct.kvm_lapic_irq, %struct.kvm_lapic_irq* %9, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = load i64, i64* @IOAPIC_LEVEL_TRIG, align 8
  %121 = icmp eq i64 %119, %120
  br i1 %121, label %122, label %126

122:                                              ; preds = %117
  %123 = load %union.kvm_ioapic_redirect_entry*, %union.kvm_ioapic_redirect_entry** %8, align 8
  %124 = bitcast %union.kvm_ioapic_redirect_entry* %123 to %struct.TYPE_4__*
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i32 0, i32 1
  store i32 1, i32* %125, align 8
  br label %126

126:                                              ; preds = %122, %117, %114
  %127 = load i32, i32* %10, align 4
  store i32 %127, i32* %4, align 4
  br label %128

128:                                              ; preds = %126, %35
  %129 = load i32, i32* %4, align 4
  ret i32 %129
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @kvm_irq_delivery_to_apic(i32, i32*, %struct.kvm_lapic_irq*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
