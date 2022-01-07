; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/apic/extr_io_apic.c_alloc_irq_from_domain.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/apic/extr_io_apic.c_alloc_irq_from_domain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.irq_domain = type { i32 }
%struct.irq_alloc_info = type { i32 }

@ioapics = common dso_local global %struct.TYPE_4__* null, align 8
@ioapic_initialized = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"ioapic: unknown irqdomain type %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.irq_domain*, i32, i32, %struct.irq_alloc_info*)* @alloc_irq_from_domain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alloc_irq_from_domain(%struct.irq_domain* %0, i32 %1, i32 %2, %struct.irq_alloc_info* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.irq_domain*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.irq_alloc_info*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.irq_domain* %0, %struct.irq_domain** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.irq_alloc_info* %3, %struct.irq_alloc_info** %9, align 8
  store i32 0, i32* %10, align 4
  store i32 -1, i32* %11, align 4
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ioapics, align 8
  %14 = load i32, i32* %7, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i64 %15
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %12, align 4
  %20 = load i32, i32* %12, align 4
  switch i32 %20, label %36 [
    i32 129, label %21
    i32 128, label %33
    i32 130, label %35
  ]

21:                                               ; preds = %4
  %22 = load i32, i32* @ioapic_initialized, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %21
  %25 = load i32, i32* %8, align 4
  %26 = call i32 (...) @nr_legacy_irqs()
  %27 = icmp sge i32 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %24, %21
  %29 = load i32, i32* %8, align 4
  store i32 %29, i32* %11, align 4
  br label %30

30:                                               ; preds = %28, %24
  %31 = load i32, i32* %11, align 4
  %32 = call i32 @mp_is_legacy_irq(i32 %31)
  store i32 %32, i32* %10, align 4
  br label %39

33:                                               ; preds = %4
  %34 = load i32, i32* %8, align 4
  store i32 %34, i32* %11, align 4
  br label %39

35:                                               ; preds = %4
  br label %39

36:                                               ; preds = %4
  %37 = load i32, i32* %12, align 4
  %38 = call i32 @WARN(i32 1, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %37)
  store i32 -1, i32* %5, align 4
  br label %47

39:                                               ; preds = %35, %33, %30
  %40 = load %struct.irq_domain*, %struct.irq_domain** %6, align 8
  %41 = load i32, i32* %11, align 4
  %42 = load %struct.irq_alloc_info*, %struct.irq_alloc_info** %9, align 8
  %43 = call i32 @ioapic_alloc_attr_node(%struct.irq_alloc_info* %42)
  %44 = load %struct.irq_alloc_info*, %struct.irq_alloc_info** %9, align 8
  %45 = load i32, i32* %10, align 4
  %46 = call i32 @__irq_domain_alloc_irqs(%struct.irq_domain* %40, i32 %41, i32 1, i32 %43, %struct.irq_alloc_info* %44, i32 %45, i32* null)
  store i32 %46, i32* %5, align 4
  br label %47

47:                                               ; preds = %39, %36
  %48 = load i32, i32* %5, align 4
  ret i32 %48
}

declare dso_local i32 @nr_legacy_irqs(...) #1

declare dso_local i32 @mp_is_legacy_irq(i32) #1

declare dso_local i32 @WARN(i32, i8*, i32) #1

declare dso_local i32 @__irq_domain_alloc_irqs(%struct.irq_domain*, i32, i32, i32, %struct.irq_alloc_info*, i32, i32*) #1

declare dso_local i32 @ioapic_alloc_attr_node(%struct.irq_alloc_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
