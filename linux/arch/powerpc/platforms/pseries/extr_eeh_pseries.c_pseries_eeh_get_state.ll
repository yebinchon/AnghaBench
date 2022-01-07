; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/pseries/extr_eeh_pseries.c_pseries_eeh_get_state.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/pseries/extr_eeh_pseries.c_pseries_eeh_get_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eeh_pe = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@ibm_read_slot_reset_state2 = common dso_local global i64 0, align 8
@RTAS_UNKNOWN_SERVICE = common dso_local global i64 0, align 8
@ibm_read_slot_reset_state = common dso_local global i64 0, align 8
@EEH_STATE_NOT_SUPPORT = common dso_local global i32 0, align 4
@EEH_STATE_MMIO_ACTIVE = common dso_local global i32 0, align 4
@EEH_STATE_DMA_ACTIVE = common dso_local global i32 0, align 4
@EEH_STATE_RESET_ACTIVE = common dso_local global i32 0, align 4
@EEH_STATE_MMIO_ENABLED = common dso_local global i32 0, align 4
@EEH_STATE_UNAVAILABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.eeh_pe*, i32*)* @pseries_eeh_get_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pseries_eeh_get_state(%struct.eeh_pe* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.eeh_pe*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [4 x i32], align 16
  %9 = alloca i32, align 4
  store %struct.eeh_pe* %0, %struct.eeh_pe** %4, align 8
  store i32* %1, i32** %5, align 8
  %10 = load %struct.eeh_pe*, %struct.eeh_pe** %4, align 8
  %11 = getelementptr inbounds %struct.eeh_pe, %struct.eeh_pe* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %6, align 4
  %13 = load %struct.eeh_pe*, %struct.eeh_pe** %4, align 8
  %14 = getelementptr inbounds %struct.eeh_pe, %struct.eeh_pe* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %2
  %18 = load %struct.eeh_pe*, %struct.eeh_pe** %4, align 8
  %19 = getelementptr inbounds %struct.eeh_pe, %struct.eeh_pe* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %6, align 4
  br label %21

21:                                               ; preds = %17, %2
  %22 = load i64, i64* @ibm_read_slot_reset_state2, align 8
  %23 = load i64, i64* @RTAS_UNKNOWN_SERVICE, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %42

25:                                               ; preds = %21
  %26 = load i64, i64* @ibm_read_slot_reset_state2, align 8
  %27 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  %28 = load i32, i32* %6, align 4
  %29 = load %struct.eeh_pe*, %struct.eeh_pe** %4, align 8
  %30 = getelementptr inbounds %struct.eeh_pe, %struct.eeh_pe* %29, i32 0, i32 2
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @BUID_HI(i32 %33)
  %35 = load %struct.eeh_pe*, %struct.eeh_pe** %4, align 8
  %36 = getelementptr inbounds %struct.eeh_pe, %struct.eeh_pe* %35, i32 0, i32 2
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @BUID_LO(i32 %39)
  %41 = call i32 @rtas_call(i64 %26, i32 3, i32 4, i32* %27, i32 %28, i32 %34, i32 %40)
  store i32 %41, i32* %7, align 4
  br label %67

42:                                               ; preds = %21
  %43 = load i64, i64* @ibm_read_slot_reset_state, align 8
  %44 = load i64, i64* @RTAS_UNKNOWN_SERVICE, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %46, label %64

46:                                               ; preds = %42
  %47 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 2
  store i32 0, i32* %47, align 8
  %48 = load i64, i64* @ibm_read_slot_reset_state, align 8
  %49 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  %50 = load i32, i32* %6, align 4
  %51 = load %struct.eeh_pe*, %struct.eeh_pe** %4, align 8
  %52 = getelementptr inbounds %struct.eeh_pe, %struct.eeh_pe* %51, i32 0, i32 2
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @BUID_HI(i32 %55)
  %57 = load %struct.eeh_pe*, %struct.eeh_pe** %4, align 8
  %58 = getelementptr inbounds %struct.eeh_pe, %struct.eeh_pe* %57, i32 0, i32 2
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @BUID_LO(i32 %61)
  %63 = call i32 @rtas_call(i64 %48, i32 3, i32 3, i32* %49, i32 %50, i32 %56, i32 %62)
  store i32 %63, i32* %7, align 4
  br label %66

64:                                               ; preds = %42
  %65 = load i32, i32* @EEH_STATE_NOT_SUPPORT, align 4
  store i32 %65, i32* %3, align 4
  br label %114

66:                                               ; preds = %46
  br label %67

67:                                               ; preds = %66, %25
  %68 = load i32, i32* %7, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %67
  %71 = load i32, i32* %7, align 4
  store i32 %71, i32* %3, align 4
  br label %114

72:                                               ; preds = %67
  %73 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 1
  %74 = load i32, i32* %73, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %78, label %76

76:                                               ; preds = %72
  %77 = load i32, i32* @EEH_STATE_NOT_SUPPORT, align 4
  store i32 %77, i32* %3, align 4
  br label %114

78:                                               ; preds = %72
  %79 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  %80 = load i32, i32* %79, align 16
  switch i32 %80, label %110 [
    i32 0, label %81
    i32 1, label %85
    i32 2, label %91
    i32 4, label %92
    i32 5, label %94
  ]

81:                                               ; preds = %78
  %82 = load i32, i32* @EEH_STATE_MMIO_ACTIVE, align 4
  %83 = load i32, i32* @EEH_STATE_DMA_ACTIVE, align 4
  %84 = or i32 %82, %83
  store i32 %84, i32* %9, align 4
  br label %112

85:                                               ; preds = %78
  %86 = load i32, i32* @EEH_STATE_RESET_ACTIVE, align 4
  %87 = load i32, i32* @EEH_STATE_MMIO_ACTIVE, align 4
  %88 = or i32 %86, %87
  %89 = load i32, i32* @EEH_STATE_DMA_ACTIVE, align 4
  %90 = or i32 %88, %89
  store i32 %90, i32* %9, align 4
  br label %112

91:                                               ; preds = %78
  store i32 0, i32* %9, align 4
  br label %112

92:                                               ; preds = %78
  %93 = load i32, i32* @EEH_STATE_MMIO_ENABLED, align 4
  store i32 %93, i32* %9, align 4
  br label %112

94:                                               ; preds = %78
  %95 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 2
  %96 = load i32, i32* %95, align 8
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %107

98:                                               ; preds = %94
  %99 = load i32*, i32** %5, align 8
  %100 = icmp ne i32* %99, null
  br i1 %100, label %101, label %105

101:                                              ; preds = %98
  %102 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 2
  %103 = load i32, i32* %102, align 8
  %104 = load i32*, i32** %5, align 8
  store i32 %103, i32* %104, align 4
  br label %105

105:                                              ; preds = %101, %98
  %106 = load i32, i32* @EEH_STATE_UNAVAILABLE, align 4
  store i32 %106, i32* %9, align 4
  br label %109

107:                                              ; preds = %94
  %108 = load i32, i32* @EEH_STATE_NOT_SUPPORT, align 4
  store i32 %108, i32* %9, align 4
  br label %109

109:                                              ; preds = %107, %105
  br label %112

110:                                              ; preds = %78
  %111 = load i32, i32* @EEH_STATE_NOT_SUPPORT, align 4
  store i32 %111, i32* %9, align 4
  br label %112

112:                                              ; preds = %110, %109, %92, %91, %85, %81
  %113 = load i32, i32* %9, align 4
  store i32 %113, i32* %3, align 4
  br label %114

114:                                              ; preds = %112, %76, %70, %64
  %115 = load i32, i32* %3, align 4
  ret i32 %115
}

declare dso_local i32 @rtas_call(i64, i32, i32, i32*, i32, i32, i32) #1

declare dso_local i32 @BUID_HI(i32) #1

declare dso_local i32 @BUID_LO(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
