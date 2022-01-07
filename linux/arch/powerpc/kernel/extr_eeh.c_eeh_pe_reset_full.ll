; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_eeh.c_eeh_pe_reset_full.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_eeh.c_eeh_pe_reset_full.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eeh_pe = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@EEH_PE_RESET = common dso_local global i32 0, align 4
@EEH_PE_CFG_BLOCKED = common dso_local global i32 0, align 4
@EEH_RESET_HOT = common dso_local global i32 0, align 4
@eeh_set_dev_freset = common dso_local global i32 0, align 4
@EEH_RESET_FUNDAMENTAL = common dso_local global i32 0, align 4
@EEH_RESET_DEACTIVATE = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"EEH: Failure %d resetting PHB#%x-PE#%x (attempt %d)\0A\0A\00", align 1
@.str.1 = private unnamed_addr constant [50 x i8] c"EEH: PHB#%x-PE#%x: Successful reset (attempt %d)\0A\00", align 1
@PCI_BUS_RESET_WAIT_MSEC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [48 x i8] c"EEH: Unrecoverable slot failure on PHB#%x-PE#%x\00", align 1
@ENOTRECOVERABLE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [65 x i8] c"EEH: PHB#%x-PE#%x: Slot inactive after reset: 0x%x (attempt %d)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @eeh_pe_reset_full(%struct.eeh_pe* %0, i32 %1) #0 {
  %3 = alloca %struct.eeh_pe*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.eeh_pe* %0, %struct.eeh_pe** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load i32, i32* @EEH_PE_RESET, align 4
  %12 = load i32, i32* @EEH_PE_CFG_BLOCKED, align 4
  %13 = or i32 %11, %12
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* @EEH_RESET_HOT, align 4
  store i32 %14, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %9, align 4
  %15 = load %struct.eeh_pe*, %struct.eeh_pe** %3, align 8
  %16 = load i32, i32* @eeh_set_dev_freset, align 4
  %17 = call i32 @eeh_pe_dev_traverse(%struct.eeh_pe* %15, i32 %16, i32* %7)
  %18 = load i32, i32* %7, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %2
  %21 = load i32, i32* @EEH_RESET_FUNDAMENTAL, align 4
  store i32 %21, i32* %6, align 4
  br label %22

22:                                               ; preds = %20, %2
  %23 = load %struct.eeh_pe*, %struct.eeh_pe** %3, align 8
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @eeh_pe_state_mark(%struct.eeh_pe* %23, i32 %24)
  store i32 0, i32* %8, align 4
  br label %26

26:                                               ; preds = %111, %22
  %27 = load i32, i32* %8, align 4
  %28 = icmp slt i32 %27, 3
  br i1 %28, label %29, label %114

29:                                               ; preds = %26
  %30 = load %struct.eeh_pe*, %struct.eeh_pe** %3, align 8
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* %4, align 4
  %33 = call i32 @eeh_pe_reset(%struct.eeh_pe* %30, i32 %31, i32 %32)
  store i32 %33, i32* %10, align 4
  %34 = load i32, i32* %10, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %41, label %36

36:                                               ; preds = %29
  %37 = load %struct.eeh_pe*, %struct.eeh_pe** %3, align 8
  %38 = load i32, i32* @EEH_RESET_DEACTIVATE, align 4
  %39 = load i32, i32* %4, align 4
  %40 = call i32 @eeh_pe_reset(%struct.eeh_pe* %37, i32 %38, i32 %39)
  store i32 %40, i32* %10, align 4
  br label %41

41:                                               ; preds = %36, %29
  %42 = load i32, i32* %10, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %59

44:                                               ; preds = %41
  %45 = load i32, i32* @EIO, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %10, align 4
  %47 = load i32, i32* %9, align 4
  %48 = load %struct.eeh_pe*, %struct.eeh_pe** %3, align 8
  %49 = getelementptr inbounds %struct.eeh_pe, %struct.eeh_pe* %48, i32 0, i32 1
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.eeh_pe*, %struct.eeh_pe** %3, align 8
  %54 = getelementptr inbounds %struct.eeh_pe, %struct.eeh_pe* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* %8, align 4
  %57 = add nsw i32 %56, 1
  %58 = call i32 (i8*, i32, i32, ...) @pr_warn(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i32 %47, i32 %52, i32 %55, i32 %57)
  br label %111

59:                                               ; preds = %41
  %60 = load i32, i32* %8, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %74

62:                                               ; preds = %59
  %63 = load %struct.eeh_pe*, %struct.eeh_pe** %3, align 8
  %64 = getelementptr inbounds %struct.eeh_pe, %struct.eeh_pe* %63, i32 0, i32 1
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.eeh_pe*, %struct.eeh_pe** %3, align 8
  %69 = getelementptr inbounds %struct.eeh_pe, %struct.eeh_pe* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* %8, align 4
  %72 = add nsw i32 %71, 1
  %73 = call i32 (i8*, i32, i32, ...) @pr_warn(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i32 %67, i32 %70, i32 %72)
  br label %74

74:                                               ; preds = %62, %59
  %75 = load %struct.eeh_pe*, %struct.eeh_pe** %3, align 8
  %76 = load i32, i32* @PCI_BUS_RESET_WAIT_MSEC, align 4
  %77 = call i32 @eeh_wait_state(%struct.eeh_pe* %75, i32 %76)
  store i32 %77, i32* %9, align 4
  %78 = load i32, i32* %9, align 4
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %80, label %92

80:                                               ; preds = %74
  %81 = load %struct.eeh_pe*, %struct.eeh_pe** %3, align 8
  %82 = getelementptr inbounds %struct.eeh_pe, %struct.eeh_pe* %81, i32 0, i32 1
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.eeh_pe*, %struct.eeh_pe** %3, align 8
  %87 = getelementptr inbounds %struct.eeh_pe, %struct.eeh_pe* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = call i32 (i8*, i32, i32, ...) @pr_warn(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0), i32 %85, i32 %88)
  %90 = load i32, i32* @ENOTRECOVERABLE, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %10, align 4
  br label %114

92:                                               ; preds = %74
  %93 = load i32, i32* %9, align 4
  %94 = call i64 @eeh_state_active(i32 %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %92
  br label %114

97:                                               ; preds = %92
  %98 = load %struct.eeh_pe*, %struct.eeh_pe** %3, align 8
  %99 = getelementptr inbounds %struct.eeh_pe, %struct.eeh_pe* %98, i32 0, i32 1
  %100 = load %struct.TYPE_2__*, %struct.TYPE_2__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.eeh_pe*, %struct.eeh_pe** %3, align 8
  %104 = getelementptr inbounds %struct.eeh_pe, %struct.eeh_pe* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = load i32, i32* %9, align 4
  %107 = load i32, i32* %8, align 4
  %108 = add nsw i32 %107, 1
  %109 = call i32 (i8*, i32, i32, ...) @pr_warn(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.3, i64 0, i64 0), i32 %102, i32 %105, i32 %106, i32 %108)
  br label %110

110:                                              ; preds = %97
  br label %111

111:                                              ; preds = %110, %44
  %112 = load i32, i32* %8, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %8, align 4
  br label %26

114:                                              ; preds = %96, %80, %26
  %115 = load i32, i32* %4, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %120, label %117

117:                                              ; preds = %114
  %118 = load %struct.eeh_pe*, %struct.eeh_pe** %3, align 8
  %119 = call i32 @eeh_pe_refreeze_passed(%struct.eeh_pe* %118)
  br label %120

120:                                              ; preds = %117, %114
  %121 = load %struct.eeh_pe*, %struct.eeh_pe** %3, align 8
  %122 = load i32, i32* %5, align 4
  %123 = call i32 @eeh_pe_state_clear(%struct.eeh_pe* %121, i32 %122, i32 1)
  %124 = load i32, i32* %10, align 4
  ret i32 %124
}

declare dso_local i32 @eeh_pe_dev_traverse(%struct.eeh_pe*, i32, i32*) #1

declare dso_local i32 @eeh_pe_state_mark(%struct.eeh_pe*, i32) #1

declare dso_local i32 @eeh_pe_reset(%struct.eeh_pe*, i32, i32) #1

declare dso_local i32 @pr_warn(i8*, i32, i32, ...) #1

declare dso_local i32 @eeh_wait_state(%struct.eeh_pe*, i32) #1

declare dso_local i64 @eeh_state_active(i32) #1

declare dso_local i32 @eeh_pe_refreeze_passed(%struct.eeh_pe*) #1

declare dso_local i32 @eeh_pe_state_clear(%struct.eeh_pe*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
