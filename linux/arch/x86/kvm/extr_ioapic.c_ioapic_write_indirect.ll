; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_ioapic.c_ioapic_write_indirect.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_ioapic.c_ioapic_write_indirect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_ioapic = type { i32, i32, i32, i32, %union.kvm_ioapic_redirect_entry* }
%union.kvm_ioapic_redirect_entry = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@IOAPIC_NUM_PINS = common dso_local global i32 0, align 4
@IOAPIC_EDGE_TRIG = common dso_local global i32 0, align 4
@KVM_IRQCHIP_IOAPIC = common dso_local global i32 0, align 4
@IOAPIC_LEVEL_TRIG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvm_ioapic*, i32)* @ioapic_write_indirect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ioapic_write_indirect(%struct.kvm_ioapic* %0, i32 %1) #0 {
  %3 = alloca %struct.kvm_ioapic*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %union.kvm_ioapic_redirect_entry*, align 8
  store %struct.kvm_ioapic* %0, %struct.kvm_ioapic** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load %struct.kvm_ioapic*, %struct.kvm_ioapic** %3, align 8
  %12 = getelementptr inbounds %struct.kvm_ioapic, %struct.kvm_ioapic* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  switch i32 %13, label %22 [
    i32 128, label %14
    i32 130, label %15
    i32 129, label %21
  ]

14:                                               ; preds = %2
  br label %137

15:                                               ; preds = %2
  %16 = load i32, i32* %4, align 4
  %17 = ashr i32 %16, 24
  %18 = and i32 %17, 15
  %19 = load %struct.kvm_ioapic*, %struct.kvm_ioapic** %3, align 8
  %20 = getelementptr inbounds %struct.kvm_ioapic, %struct.kvm_ioapic* %19, i32 0, i32 1
  store i32 %18, i32* %20, align 4
  br label %137

21:                                               ; preds = %2
  br label %137

22:                                               ; preds = %2
  %23 = load %struct.kvm_ioapic*, %struct.kvm_ioapic** %3, align 8
  %24 = getelementptr inbounds %struct.kvm_ioapic, %struct.kvm_ioapic* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = sub nsw i32 %25, 16
  %27 = ashr i32 %26, 1
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* @IOAPIC_NUM_PINS, align 4
  %30 = icmp uge i32 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %22
  br label %137

32:                                               ; preds = %22
  %33 = load %struct.kvm_ioapic*, %struct.kvm_ioapic** %3, align 8
  %34 = getelementptr inbounds %struct.kvm_ioapic, %struct.kvm_ioapic* %33, i32 0, i32 4
  %35 = load %union.kvm_ioapic_redirect_entry*, %union.kvm_ioapic_redirect_entry** %34, align 8
  %36 = load i32, i32* %5, align 4
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds %union.kvm_ioapic_redirect_entry, %union.kvm_ioapic_redirect_entry* %35, i64 %37
  store %union.kvm_ioapic_redirect_entry* %38, %union.kvm_ioapic_redirect_entry** %10, align 8
  %39 = load %union.kvm_ioapic_redirect_entry*, %union.kvm_ioapic_redirect_entry** %10, align 8
  %40 = bitcast %union.kvm_ioapic_redirect_entry* %39 to %struct.TYPE_2__*
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %6, align 4
  %43 = load %union.kvm_ioapic_redirect_entry*, %union.kvm_ioapic_redirect_entry** %10, align 8
  %44 = bitcast %union.kvm_ioapic_redirect_entry* %43 to %struct.TYPE_2__*
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %8, align 4
  %47 = load %union.kvm_ioapic_redirect_entry*, %union.kvm_ioapic_redirect_entry** %10, align 8
  %48 = bitcast %union.kvm_ioapic_redirect_entry* %47 to %struct.TYPE_2__*
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %9, align 4
  %51 = load %struct.kvm_ioapic*, %struct.kvm_ioapic** %3, align 8
  %52 = getelementptr inbounds %struct.kvm_ioapic, %struct.kvm_ioapic* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = and i32 %53, 1
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %66

56:                                               ; preds = %32
  %57 = load %union.kvm_ioapic_redirect_entry*, %union.kvm_ioapic_redirect_entry** %10, align 8
  %58 = bitcast %union.kvm_ioapic_redirect_entry* %57 to i32*
  %59 = load i32, i32* %58, align 4
  store i32 %59, i32* %58, align 4
  %60 = load i32, i32* %4, align 4
  %61 = shl i32 %60, 32
  %62 = load %union.kvm_ioapic_redirect_entry*, %union.kvm_ioapic_redirect_entry** %10, align 8
  %63 = bitcast %union.kvm_ioapic_redirect_entry* %62 to i32*
  %64 = load i32, i32* %63, align 4
  %65 = or i32 %64, %61
  store i32 %65, i32* %63, align 4
  br label %78

66:                                               ; preds = %32
  %67 = load %union.kvm_ioapic_redirect_entry*, %union.kvm_ioapic_redirect_entry** %10, align 8
  %68 = bitcast %union.kvm_ioapic_redirect_entry* %67 to i32*
  %69 = load i32, i32* %68, align 4
  %70 = sext i32 %69 to i64
  %71 = and i64 %70, -4294967296
  %72 = trunc i64 %71 to i32
  store i32 %72, i32* %68, align 4
  %73 = load i32, i32* %4, align 4
  %74 = load %union.kvm_ioapic_redirect_entry*, %union.kvm_ioapic_redirect_entry** %10, align 8
  %75 = bitcast %union.kvm_ioapic_redirect_entry* %74 to i32*
  %76 = load i32, i32* %75, align 4
  %77 = or i32 %76, %73
  store i32 %77, i32* %75, align 4
  br label %78

78:                                               ; preds = %66, %56
  %79 = load i32, i32* %8, align 4
  %80 = load %union.kvm_ioapic_redirect_entry*, %union.kvm_ioapic_redirect_entry** %10, align 8
  %81 = bitcast %union.kvm_ioapic_redirect_entry* %80 to %struct.TYPE_2__*
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 1
  store i32 %79, i32* %82, align 4
  %83 = load i32, i32* %9, align 4
  %84 = load %union.kvm_ioapic_redirect_entry*, %union.kvm_ioapic_redirect_entry** %10, align 8
  %85 = bitcast %union.kvm_ioapic_redirect_entry* %84 to %struct.TYPE_2__*
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 2
  store i32 %83, i32* %86, align 4
  %87 = load %union.kvm_ioapic_redirect_entry*, %union.kvm_ioapic_redirect_entry** %10, align 8
  %88 = bitcast %union.kvm_ioapic_redirect_entry* %87 to %struct.TYPE_2__*
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @IOAPIC_EDGE_TRIG, align 4
  %92 = icmp eq i32 %90, %91
  br i1 %92, label %93, label %97

93:                                               ; preds = %78
  %94 = load %union.kvm_ioapic_redirect_entry*, %union.kvm_ioapic_redirect_entry** %10, align 8
  %95 = bitcast %union.kvm_ioapic_redirect_entry* %94 to %struct.TYPE_2__*
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 1
  store i32 0, i32* %96, align 4
  br label %97

97:                                               ; preds = %93, %78
  %98 = load %union.kvm_ioapic_redirect_entry*, %union.kvm_ioapic_redirect_entry** %10, align 8
  %99 = bitcast %union.kvm_ioapic_redirect_entry* %98 to %struct.TYPE_2__*
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  store i32 %101, i32* %7, align 4
  %102 = load i32, i32* %6, align 4
  %103 = load i32, i32* %7, align 4
  %104 = icmp ne i32 %102, %103
  br i1 %104, label %105, label %113

105:                                              ; preds = %97
  %106 = load %struct.kvm_ioapic*, %struct.kvm_ioapic** %3, align 8
  %107 = getelementptr inbounds %struct.kvm_ioapic, %struct.kvm_ioapic* %106, i32 0, i32 3
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* @KVM_IRQCHIP_IOAPIC, align 4
  %110 = load i32, i32* %5, align 4
  %111 = load i32, i32* %7, align 4
  %112 = call i32 @kvm_fire_mask_notifiers(i32 %108, i32 %109, i32 %110, i32 %111)
  br label %113

113:                                              ; preds = %105, %97
  %114 = load %union.kvm_ioapic_redirect_entry*, %union.kvm_ioapic_redirect_entry** %10, align 8
  %115 = bitcast %union.kvm_ioapic_redirect_entry* %114 to %struct.TYPE_2__*
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i32 0, i32 3
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* @IOAPIC_LEVEL_TRIG, align 4
  %119 = icmp eq i32 %117, %118
  br i1 %119, label %120, label %132

120:                                              ; preds = %113
  %121 = load %struct.kvm_ioapic*, %struct.kvm_ioapic** %3, align 8
  %122 = getelementptr inbounds %struct.kvm_ioapic, %struct.kvm_ioapic* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 8
  %124 = load i32, i32* %5, align 4
  %125 = shl i32 1, %124
  %126 = and i32 %123, %125
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %132

128:                                              ; preds = %120
  %129 = load %struct.kvm_ioapic*, %struct.kvm_ioapic** %3, align 8
  %130 = load i32, i32* %5, align 4
  %131 = call i32 @ioapic_service(%struct.kvm_ioapic* %129, i32 %130, i32 0)
  br label %132

132:                                              ; preds = %128, %120, %113
  %133 = load %struct.kvm_ioapic*, %struct.kvm_ioapic** %3, align 8
  %134 = getelementptr inbounds %struct.kvm_ioapic, %struct.kvm_ioapic* %133, i32 0, i32 3
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @kvm_make_scan_ioapic_request(i32 %135)
  br label %137

137:                                              ; preds = %31, %132, %21, %15, %14
  ret void
}

declare dso_local i32 @kvm_fire_mask_notifiers(i32, i32, i32, i32) #1

declare dso_local i32 @ioapic_service(%struct.kvm_ioapic*, i32, i32) #1

declare dso_local i32 @kvm_make_scan_ioapic_request(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
