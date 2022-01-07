; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/apic/extr_io_apic.c_mp_map_pin_to_irq.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/apic/extr_io_apic.c_mp_map_pin_to_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.irq_alloc_info = type { i32 }
%struct.mp_chip_data = type { i32 }
%struct.irq_domain = type { i32 }

@ENOSYS = common dso_local global i32 0, align 4
@mp_irqs = common dso_local global %struct.TYPE_2__* null, align 8
@mp_bus_not_pci = common dso_local global i32 0, align 4
@ioapic_mutex = common dso_local global i32 0, align 4
@IOAPIC_MAP_ALLOC = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32, i32, %struct.irq_alloc_info*)* @mp_map_pin_to_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mp_map_pin_to_irq(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, %struct.irq_alloc_info* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.irq_alloc_info*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.irq_alloc_info, align 4
  %17 = alloca %struct.mp_chip_data*, align 8
  %18 = alloca %struct.irq_domain*, align 8
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store %struct.irq_alloc_info* %5, %struct.irq_alloc_info** %13, align 8
  store i32 0, i32* %15, align 4
  %19 = load i32, i32* %10, align 4
  %20 = call %struct.irq_domain* @mp_ioapic_irqdomain(i32 %19)
  store %struct.irq_domain* %20, %struct.irq_domain** %18, align 8
  %21 = load %struct.irq_domain*, %struct.irq_domain** %18, align 8
  %22 = icmp ne %struct.irq_domain* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %6
  %24 = load i32, i32* @ENOSYS, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %7, align 4
  br label %115

26:                                               ; preds = %6
  %27 = load i32, i32* %9, align 4
  %28 = icmp sge i32 %27, 0
  br i1 %28, label %29, label %48

29:                                               ; preds = %26
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mp_irqs, align 8
  %31 = load i32, i32* %9, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @mp_bus_not_pci, align 4
  %37 = call i64 @test_bit(i32 %35, i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %48

39:                                               ; preds = %29
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mp_irqs, align 8
  %41 = load i32, i32* %9, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %14, align 4
  %46 = load i32, i32* %14, align 4
  %47 = call i32 @mp_is_legacy_irq(i32 %46)
  store i32 %47, i32* %15, align 4
  br label %48

48:                                               ; preds = %39, %29, %26
  %49 = call i32 @mutex_lock(i32* @ioapic_mutex)
  %50 = load i32, i32* %12, align 4
  %51 = load i32, i32* @IOAPIC_MAP_ALLOC, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %68, label %54

54:                                               ; preds = %48
  %55 = load i32, i32* %15, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %67, label %57

57:                                               ; preds = %54
  %58 = load %struct.irq_domain*, %struct.irq_domain** %18, align 8
  %59 = load i32, i32* %11, align 4
  %60 = call i32 @irq_find_mapping(%struct.irq_domain* %58, i32 %59)
  store i32 %60, i32* %14, align 4
  %61 = load i32, i32* %14, align 4
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %57
  %64 = load i32, i32* @ENOENT, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %14, align 4
  br label %66

66:                                               ; preds = %63, %57
  br label %67

67:                                               ; preds = %66, %54
  br label %112

68:                                               ; preds = %48
  %69 = load %struct.irq_alloc_info*, %struct.irq_alloc_info** %13, align 8
  %70 = load i32, i32* %8, align 4
  %71 = load i32, i32* %10, align 4
  %72 = load i32, i32* %11, align 4
  %73 = call i32 @ioapic_copy_alloc_attr(%struct.irq_alloc_info* %16, %struct.irq_alloc_info* %69, i32 %70, i32 %71, i32 %72)
  %74 = load i32, i32* %15, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %82

76:                                               ; preds = %68
  %77 = load %struct.irq_domain*, %struct.irq_domain** %18, align 8
  %78 = load i32, i32* %14, align 4
  %79 = load i32, i32* %10, align 4
  %80 = load i32, i32* %11, align 4
  %81 = call i32 @alloc_isa_irq_from_domain(%struct.irq_domain* %77, i32 %78, i32 %79, i32 %80, %struct.irq_alloc_info* %16)
  store i32 %81, i32* %14, align 4
  br label %101

82:                                               ; preds = %68
  %83 = load %struct.irq_domain*, %struct.irq_domain** %18, align 8
  %84 = load i32, i32* %11, align 4
  %85 = call i32 @irq_find_mapping(%struct.irq_domain* %83, i32 %84)
  store i32 %85, i32* %14, align 4
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %92

87:                                               ; preds = %82
  %88 = load %struct.irq_domain*, %struct.irq_domain** %18, align 8
  %89 = load i32, i32* %10, align 4
  %90 = load i32, i32* %8, align 4
  %91 = call i32 @alloc_irq_from_domain(%struct.irq_domain* %88, i32 %89, i32 %90, %struct.irq_alloc_info* %16)
  store i32 %91, i32* %14, align 4
  br label %100

92:                                               ; preds = %82
  %93 = load i32, i32* %14, align 4
  %94 = call i32 @mp_check_pin_attr(i32 %93, %struct.irq_alloc_info* %16)
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %99, label %96

96:                                               ; preds = %92
  %97 = load i32, i32* @EBUSY, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %14, align 4
  br label %99

99:                                               ; preds = %96, %92
  br label %100

100:                                              ; preds = %99, %87
  br label %101

101:                                              ; preds = %100, %76
  %102 = load i32, i32* %14, align 4
  %103 = icmp sge i32 %102, 0
  br i1 %103, label %104, label %111

104:                                              ; preds = %101
  %105 = load i32, i32* %14, align 4
  %106 = call %struct.mp_chip_data* @irq_get_chip_data(i32 %105)
  store %struct.mp_chip_data* %106, %struct.mp_chip_data** %17, align 8
  %107 = load %struct.mp_chip_data*, %struct.mp_chip_data** %17, align 8
  %108 = getelementptr inbounds %struct.mp_chip_data, %struct.mp_chip_data* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %108, align 4
  br label %111

111:                                              ; preds = %104, %101
  br label %112

112:                                              ; preds = %111, %67
  %113 = call i32 @mutex_unlock(i32* @ioapic_mutex)
  %114 = load i32, i32* %14, align 4
  store i32 %114, i32* %7, align 4
  br label %115

115:                                              ; preds = %112, %23
  %116 = load i32, i32* %7, align 4
  ret i32 %116
}

declare dso_local %struct.irq_domain* @mp_ioapic_irqdomain(i32) #1

declare dso_local i64 @test_bit(i32, i32) #1

declare dso_local i32 @mp_is_legacy_irq(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @irq_find_mapping(%struct.irq_domain*, i32) #1

declare dso_local i32 @ioapic_copy_alloc_attr(%struct.irq_alloc_info*, %struct.irq_alloc_info*, i32, i32, i32) #1

declare dso_local i32 @alloc_isa_irq_from_domain(%struct.irq_domain*, i32, i32, i32, %struct.irq_alloc_info*) #1

declare dso_local i32 @alloc_irq_from_domain(%struct.irq_domain*, i32, i32, %struct.irq_alloc_info*) #1

declare dso_local i32 @mp_check_pin_attr(i32, %struct.irq_alloc_info*) #1

declare dso_local %struct.mp_chip_data* @irq_get_chip_data(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
