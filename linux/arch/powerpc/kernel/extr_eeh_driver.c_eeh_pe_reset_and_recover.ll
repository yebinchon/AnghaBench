; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_eeh_driver.c_eeh_pe_reset_and_recover.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_eeh_driver.c_eeh_pe_reset_and_recover.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eeh_pe = type { i32 }

@EEH_PE_RECOVERING = common dso_local global i32 0, align 4
@eeh_dev_save_state = common dso_local global i32 0, align 4
@eeh_dev_restore_state = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @eeh_pe_reset_and_recover(%struct.eeh_pe* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.eeh_pe*, align 8
  %4 = alloca i32, align 4
  store %struct.eeh_pe* %0, %struct.eeh_pe** %3, align 8
  %5 = load %struct.eeh_pe*, %struct.eeh_pe** %3, align 8
  %6 = getelementptr inbounds %struct.eeh_pe, %struct.eeh_pe* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @EEH_PE_RECOVERING, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %45

12:                                               ; preds = %1
  %13 = load %struct.eeh_pe*, %struct.eeh_pe** %3, align 8
  %14 = load i32, i32* @EEH_PE_RECOVERING, align 4
  %15 = call i32 @eeh_pe_state_mark(%struct.eeh_pe* %13, i32 %14)
  %16 = load %struct.eeh_pe*, %struct.eeh_pe** %3, align 8
  %17 = load i32, i32* @eeh_dev_save_state, align 4
  %18 = call i32 @eeh_pe_dev_traverse(%struct.eeh_pe* %16, i32 %17, i32* null)
  %19 = load %struct.eeh_pe*, %struct.eeh_pe** %3, align 8
  %20 = call i32 @eeh_pe_reset_full(%struct.eeh_pe* %19, i32 1)
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* %4, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %12
  %24 = load %struct.eeh_pe*, %struct.eeh_pe** %3, align 8
  %25 = load i32, i32* @EEH_PE_RECOVERING, align 4
  %26 = call i32 @eeh_pe_state_clear(%struct.eeh_pe* %24, i32 %25, i32 1)
  %27 = load i32, i32* %4, align 4
  store i32 %27, i32* %2, align 4
  br label %45

28:                                               ; preds = %12
  %29 = load %struct.eeh_pe*, %struct.eeh_pe** %3, align 8
  %30 = call i32 @eeh_clear_pe_frozen_state(%struct.eeh_pe* %29, i32 1)
  store i32 %30, i32* %4, align 4
  %31 = load i32, i32* %4, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %28
  %34 = load %struct.eeh_pe*, %struct.eeh_pe** %3, align 8
  %35 = load i32, i32* @EEH_PE_RECOVERING, align 4
  %36 = call i32 @eeh_pe_state_clear(%struct.eeh_pe* %34, i32 %35, i32 1)
  %37 = load i32, i32* %4, align 4
  store i32 %37, i32* %2, align 4
  br label %45

38:                                               ; preds = %28
  %39 = load %struct.eeh_pe*, %struct.eeh_pe** %3, align 8
  %40 = load i32, i32* @eeh_dev_restore_state, align 4
  %41 = call i32 @eeh_pe_dev_traverse(%struct.eeh_pe* %39, i32 %40, i32* null)
  %42 = load %struct.eeh_pe*, %struct.eeh_pe** %3, align 8
  %43 = load i32, i32* @EEH_PE_RECOVERING, align 4
  %44 = call i32 @eeh_pe_state_clear(%struct.eeh_pe* %42, i32 %43, i32 1)
  store i32 0, i32* %2, align 4
  br label %45

45:                                               ; preds = %38, %33, %23, %11
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

declare dso_local i32 @eeh_pe_state_mark(%struct.eeh_pe*, i32) #1

declare dso_local i32 @eeh_pe_dev_traverse(%struct.eeh_pe*, i32, i32*) #1

declare dso_local i32 @eeh_pe_reset_full(%struct.eeh_pe*, i32) #1

declare dso_local i32 @eeh_pe_state_clear(%struct.eeh_pe*, i32, i32) #1

declare dso_local i32 @eeh_clear_pe_frozen_state(%struct.eeh_pe*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
