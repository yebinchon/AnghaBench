; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/pseries/extr_eeh_pseries.c_pseries_eeh_reset.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/pseries/extr_eeh_pseries.c_pseries_eeh_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eeh_pe = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@ibm_set_slot_reset = common dso_local global i32 0, align 4
@EEH_RESET_FUNDAMENTAL = common dso_local global i32 0, align 4
@EEH_RESET_HOT = common dso_local global i32 0, align 4
@EEH_PE_RST_HOLD_TIME = common dso_local global i32 0, align 4
@EEH_PE_RST_SETTLE_TIME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.eeh_pe*, i32)* @pseries_eeh_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pseries_eeh_reset(%struct.eeh_pe* %0, i32 %1) #0 {
  %3 = alloca %struct.eeh_pe*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.eeh_pe* %0, %struct.eeh_pe** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.eeh_pe*, %struct.eeh_pe** %3, align 8
  %8 = getelementptr inbounds %struct.eeh_pe, %struct.eeh_pe* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  store i32 %9, i32* %5, align 4
  %10 = load %struct.eeh_pe*, %struct.eeh_pe** %3, align 8
  %11 = getelementptr inbounds %struct.eeh_pe, %struct.eeh_pe* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %2
  %15 = load %struct.eeh_pe*, %struct.eeh_pe** %3, align 8
  %16 = getelementptr inbounds %struct.eeh_pe, %struct.eeh_pe* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %5, align 4
  br label %18

18:                                               ; preds = %14, %2
  %19 = load i32, i32* @ibm_set_slot_reset, align 4
  %20 = load i32, i32* %5, align 4
  %21 = load %struct.eeh_pe*, %struct.eeh_pe** %3, align 8
  %22 = getelementptr inbounds %struct.eeh_pe, %struct.eeh_pe* %21, i32 0, i32 2
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @BUID_HI(i32 %25)
  %27 = load %struct.eeh_pe*, %struct.eeh_pe** %3, align 8
  %28 = getelementptr inbounds %struct.eeh_pe, %struct.eeh_pe* %27, i32 0, i32 2
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @BUID_LO(i32 %31)
  %33 = load i32, i32* %4, align 4
  %34 = call i32 @rtas_call(i32 %19, i32 4, i32 1, i32* null, i32 %20, i32 %26, i32 %32, i32 %33)
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* %4, align 4
  %36 = load i32, i32* @EEH_RESET_FUNDAMENTAL, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %59

38:                                               ; preds = %18
  %39 = load i32, i32* %6, align 4
  %40 = icmp eq i32 %39, -8
  br i1 %40, label %41, label %59

41:                                               ; preds = %38
  %42 = load i32, i32* @EEH_RESET_HOT, align 4
  store i32 %42, i32* %4, align 4
  %43 = load i32, i32* @ibm_set_slot_reset, align 4
  %44 = load i32, i32* %5, align 4
  %45 = load %struct.eeh_pe*, %struct.eeh_pe** %3, align 8
  %46 = getelementptr inbounds %struct.eeh_pe, %struct.eeh_pe* %45, i32 0, i32 2
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @BUID_HI(i32 %49)
  %51 = load %struct.eeh_pe*, %struct.eeh_pe** %3, align 8
  %52 = getelementptr inbounds %struct.eeh_pe, %struct.eeh_pe* %51, i32 0, i32 2
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @BUID_LO(i32 %55)
  %57 = load i32, i32* %4, align 4
  %58 = call i32 @rtas_call(i32 %43, i32 4, i32 1, i32* null, i32 %44, i32 %50, i32 %56, i32 %57)
  store i32 %58, i32* %6, align 4
  br label %59

59:                                               ; preds = %41, %38, %18
  %60 = load i32, i32* %4, align 4
  %61 = load i32, i32* @EEH_RESET_FUNDAMENTAL, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %67, label %63

63:                                               ; preds = %59
  %64 = load i32, i32* %4, align 4
  %65 = load i32, i32* @EEH_RESET_HOT, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %67, label %70

67:                                               ; preds = %63, %59
  %68 = load i32, i32* @EEH_PE_RST_HOLD_TIME, align 4
  %69 = call i32 @msleep(i32 %68)
  br label %73

70:                                               ; preds = %63
  %71 = load i32, i32* @EEH_PE_RST_SETTLE_TIME, align 4
  %72 = call i32 @msleep(i32 %71)
  br label %73

73:                                               ; preds = %70, %67
  %74 = load i32, i32* %6, align 4
  ret i32 %74
}

declare dso_local i32 @rtas_call(i32, i32, i32, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @BUID_HI(i32) #1

declare dso_local i32 @BUID_LO(i32) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
