; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_irq_comm.c_kvm_set_routing_entry.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_irq_comm.c_kvm_set_routing_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm = type { i32 }
%struct.kvm_kernel_irq_routing_entry = type { %struct.TYPE_12__, i32, %struct.TYPE_10__, %struct.TYPE_8__ }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32, i32, i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.kvm_irq_routing_entry = type { i32, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { %struct.TYPE_13__, %struct.TYPE_11__, %struct.TYPE_9__ }
%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_11__ = type { i32, i32, i32 }
%struct.TYPE_9__ = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@PIC_NUM_PINS = common dso_local global i32 0, align 4
@kvm_set_pic_irq = common dso_local global i32 0, align 4
@KVM_IOAPIC_NUM_PINS = common dso_local global i32 0, align 4
@kvm_set_ioapic_irq = common dso_local global i32 0, align 4
@kvm_set_msi = common dso_local global i32 0, align 4
@kvm_hv_set_sint = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kvm_set_routing_entry(%struct.kvm* %0, %struct.kvm_kernel_irq_routing_entry* %1, %struct.kvm_irq_routing_entry* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.kvm*, align 8
  %6 = alloca %struct.kvm_kernel_irq_routing_entry*, align 8
  %7 = alloca %struct.kvm_irq_routing_entry*, align 8
  store %struct.kvm* %0, %struct.kvm** %5, align 8
  store %struct.kvm_kernel_irq_routing_entry* %1, %struct.kvm_kernel_irq_routing_entry** %6, align 8
  store %struct.kvm_irq_routing_entry* %2, %struct.kvm_irq_routing_entry** %7, align 8
  %8 = load %struct.kvm_irq_routing_entry*, %struct.kvm_irq_routing_entry** %7, align 8
  %9 = getelementptr inbounds %struct.kvm_irq_routing_entry, %struct.kvm_irq_routing_entry* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  switch i32 %10, label %139 [
    i32 129, label %11
    i32 128, label %83
    i32 130, label %119
  ]

11:                                               ; preds = %3
  %12 = load %struct.kvm*, %struct.kvm** %5, align 8
  %13 = call i32 @irqchip_split(%struct.kvm* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %11
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %4, align 4
  br label %143

18:                                               ; preds = %11
  %19 = load %struct.kvm_irq_routing_entry*, %struct.kvm_irq_routing_entry** %7, align 8
  %20 = getelementptr inbounds %struct.kvm_irq_routing_entry, %struct.kvm_irq_routing_entry* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.kvm_kernel_irq_routing_entry*, %struct.kvm_kernel_irq_routing_entry** %6, align 8
  %25 = getelementptr inbounds %struct.kvm_kernel_irq_routing_entry, %struct.kvm_kernel_irq_routing_entry* %24, i32 0, i32 3
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  store i32 %23, i32* %26, align 4
  %27 = load %struct.kvm_irq_routing_entry*, %struct.kvm_irq_routing_entry** %7, align 8
  %28 = getelementptr inbounds %struct.kvm_irq_routing_entry, %struct.kvm_irq_routing_entry* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  switch i32 %31, label %71 [
    i32 131, label %32
    i32 132, label %40
    i32 133, label %56
  ]

32:                                               ; preds = %18
  %33 = load i32, i32* @PIC_NUM_PINS, align 4
  %34 = sdiv i32 %33, 2
  %35 = load %struct.kvm_kernel_irq_routing_entry*, %struct.kvm_kernel_irq_routing_entry** %6, align 8
  %36 = getelementptr inbounds %struct.kvm_kernel_irq_routing_entry, %struct.kvm_kernel_irq_routing_entry* %35, i32 0, i32 3
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = add nsw i32 %38, %34
  store i32 %39, i32* %37, align 4
  br label %40

40:                                               ; preds = %18, %32
  %41 = load %struct.kvm_irq_routing_entry*, %struct.kvm_irq_routing_entry** %7, align 8
  %42 = getelementptr inbounds %struct.kvm_irq_routing_entry, %struct.kvm_irq_routing_entry* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @PIC_NUM_PINS, align 4
  %47 = sdiv i32 %46, 2
  %48 = icmp sge i32 %45, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %40
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %4, align 4
  br label %143

52:                                               ; preds = %40
  %53 = load i32, i32* @kvm_set_pic_irq, align 4
  %54 = load %struct.kvm_kernel_irq_routing_entry*, %struct.kvm_kernel_irq_routing_entry** %6, align 8
  %55 = getelementptr inbounds %struct.kvm_kernel_irq_routing_entry, %struct.kvm_kernel_irq_routing_entry* %54, i32 0, i32 1
  store i32 %53, i32* %55, align 4
  br label %74

56:                                               ; preds = %18
  %57 = load %struct.kvm_irq_routing_entry*, %struct.kvm_irq_routing_entry** %7, align 8
  %58 = getelementptr inbounds %struct.kvm_irq_routing_entry, %struct.kvm_irq_routing_entry* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %58, i32 0, i32 2
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @KVM_IOAPIC_NUM_PINS, align 4
  %63 = icmp sge i32 %61, %62
  br i1 %63, label %64, label %67

64:                                               ; preds = %56
  %65 = load i32, i32* @EINVAL, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %4, align 4
  br label %143

67:                                               ; preds = %56
  %68 = load i32, i32* @kvm_set_ioapic_irq, align 4
  %69 = load %struct.kvm_kernel_irq_routing_entry*, %struct.kvm_kernel_irq_routing_entry** %6, align 8
  %70 = getelementptr inbounds %struct.kvm_kernel_irq_routing_entry, %struct.kvm_kernel_irq_routing_entry* %69, i32 0, i32 1
  store i32 %68, i32* %70, align 4
  br label %74

71:                                               ; preds = %18
  %72 = load i32, i32* @EINVAL, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %4, align 4
  br label %143

74:                                               ; preds = %67, %52
  %75 = load %struct.kvm_irq_routing_entry*, %struct.kvm_irq_routing_entry** %7, align 8
  %76 = getelementptr inbounds %struct.kvm_irq_routing_entry, %struct.kvm_irq_routing_entry* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %76, i32 0, i32 2
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.kvm_kernel_irq_routing_entry*, %struct.kvm_kernel_irq_routing_entry** %6, align 8
  %81 = getelementptr inbounds %struct.kvm_kernel_irq_routing_entry, %struct.kvm_kernel_irq_routing_entry* %80, i32 0, i32 3
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 1
  store i32 %79, i32* %82, align 4
  br label %142

83:                                               ; preds = %3
  %84 = load i32, i32* @kvm_set_msi, align 4
  %85 = load %struct.kvm_kernel_irq_routing_entry*, %struct.kvm_kernel_irq_routing_entry** %6, align 8
  %86 = getelementptr inbounds %struct.kvm_kernel_irq_routing_entry, %struct.kvm_kernel_irq_routing_entry* %85, i32 0, i32 1
  store i32 %84, i32* %86, align 4
  %87 = load %struct.kvm_irq_routing_entry*, %struct.kvm_irq_routing_entry** %7, align 8
  %88 = getelementptr inbounds %struct.kvm_irq_routing_entry, %struct.kvm_irq_routing_entry* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.kvm_kernel_irq_routing_entry*, %struct.kvm_kernel_irq_routing_entry** %6, align 8
  %93 = getelementptr inbounds %struct.kvm_kernel_irq_routing_entry, %struct.kvm_kernel_irq_routing_entry* %92, i32 0, i32 2
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 2
  store i32 %91, i32* %94, align 4
  %95 = load %struct.kvm_irq_routing_entry*, %struct.kvm_irq_routing_entry** %7, align 8
  %96 = getelementptr inbounds %struct.kvm_irq_routing_entry, %struct.kvm_irq_routing_entry* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.kvm_kernel_irq_routing_entry*, %struct.kvm_kernel_irq_routing_entry** %6, align 8
  %101 = getelementptr inbounds %struct.kvm_kernel_irq_routing_entry, %struct.kvm_kernel_irq_routing_entry* %100, i32 0, i32 2
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i32 0, i32 1
  store i32 %99, i32* %102, align 4
  %103 = load %struct.kvm_irq_routing_entry*, %struct.kvm_irq_routing_entry** %7, align 8
  %104 = getelementptr inbounds %struct.kvm_irq_routing_entry, %struct.kvm_irq_routing_entry* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.kvm_kernel_irq_routing_entry*, %struct.kvm_kernel_irq_routing_entry** %6, align 8
  %109 = getelementptr inbounds %struct.kvm_kernel_irq_routing_entry, %struct.kvm_kernel_irq_routing_entry* %108, i32 0, i32 2
  %110 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %109, i32 0, i32 0
  store i32 %107, i32* %110, align 4
  %111 = load %struct.kvm*, %struct.kvm** %5, align 8
  %112 = load %struct.kvm_kernel_irq_routing_entry*, %struct.kvm_kernel_irq_routing_entry** %6, align 8
  %113 = call i32 @kvm_msi_route_invalid(%struct.kvm* %111, %struct.kvm_kernel_irq_routing_entry* %112)
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %118

115:                                              ; preds = %83
  %116 = load i32, i32* @EINVAL, align 4
  %117 = sub nsw i32 0, %116
  store i32 %117, i32* %4, align 4
  br label %143

118:                                              ; preds = %83
  br label %142

119:                                              ; preds = %3
  %120 = load i32, i32* @kvm_hv_set_sint, align 4
  %121 = load %struct.kvm_kernel_irq_routing_entry*, %struct.kvm_kernel_irq_routing_entry** %6, align 8
  %122 = getelementptr inbounds %struct.kvm_kernel_irq_routing_entry, %struct.kvm_kernel_irq_routing_entry* %121, i32 0, i32 1
  store i32 %120, i32* %122, align 4
  %123 = load %struct.kvm_irq_routing_entry*, %struct.kvm_irq_routing_entry** %7, align 8
  %124 = getelementptr inbounds %struct.kvm_irq_routing_entry, %struct.kvm_irq_routing_entry* %123, i32 0, i32 1
  %125 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.kvm_kernel_irq_routing_entry*, %struct.kvm_kernel_irq_routing_entry** %6, align 8
  %129 = getelementptr inbounds %struct.kvm_kernel_irq_routing_entry, %struct.kvm_kernel_irq_routing_entry* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %129, i32 0, i32 1
  store i32 %127, i32* %130, align 4
  %131 = load %struct.kvm_irq_routing_entry*, %struct.kvm_irq_routing_entry** %7, align 8
  %132 = getelementptr inbounds %struct.kvm_irq_routing_entry, %struct.kvm_irq_routing_entry* %131, i32 0, i32 1
  %133 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.kvm_kernel_irq_routing_entry*, %struct.kvm_kernel_irq_routing_entry** %6, align 8
  %137 = getelementptr inbounds %struct.kvm_kernel_irq_routing_entry, %struct.kvm_kernel_irq_routing_entry* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %137, i32 0, i32 0
  store i32 %135, i32* %138, align 4
  br label %142

139:                                              ; preds = %3
  %140 = load i32, i32* @EINVAL, align 4
  %141 = sub nsw i32 0, %140
  store i32 %141, i32* %4, align 4
  br label %143

142:                                              ; preds = %119, %118, %74
  store i32 0, i32* %4, align 4
  br label %143

143:                                              ; preds = %142, %139, %115, %71, %64, %49, %15
  %144 = load i32, i32* %4, align 4
  ret i32 %144
}

declare dso_local i32 @irqchip_split(%struct.kvm*) #1

declare dso_local i32 @kvm_msi_route_invalid(%struct.kvm*, %struct.kvm_kernel_irq_routing_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
