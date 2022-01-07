; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_eeh.c_eeh_pe_get_state.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_eeh.c_eeh_pe_get_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 (%struct.eeh_pe*, i32*)* }
%struct.eeh_pe = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@eeh_ops = common dso_local global %struct.TYPE_4__* null, align 8
@ENOENT = common dso_local global i32 0, align 4
@EEH_PE_REMOVED = common dso_local global i32 0, align 4
@EEH_PE_ISOLATED = common dso_local global i32 0, align 4
@EEH_PE_RECOVERING = common dso_local global i32 0, align 4
@EEH_PE_STATE_UNAVAIL = common dso_local global i32 0, align 4
@EEH_STATE_RESET_ACTIVE = common dso_local global i32 0, align 4
@EEH_STATE_DMA_ENABLED = common dso_local global i32 0, align 4
@EEH_STATE_MMIO_ENABLED = common dso_local global i32 0, align 4
@EEH_PE_STATE_RESET = common dso_local global i32 0, align 4
@EEH_PE_STATE_NORMAL = common dso_local global i32 0, align 4
@EEH_PE_STATE_STOPPED_IO_DMA = common dso_local global i32 0, align 4
@EEH_PE_STATE_STOPPED_DMA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @eeh_pe_get_state(%struct.eeh_pe* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.eeh_pe*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.eeh_pe* %0, %struct.eeh_pe** %3, align 8
  store i32 0, i32* %5, align 4
  %9 = load %struct.eeh_pe*, %struct.eeh_pe** %3, align 8
  %10 = icmp ne %struct.eeh_pe* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* @ENODEV, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %2, align 4
  br label %112

14:                                               ; preds = %1
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** @eeh_ops, align 8
  %16 = icmp ne %struct.TYPE_4__* %15, null
  br i1 %16, label %17, label %22

17:                                               ; preds = %14
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** @eeh_ops, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32 (%struct.eeh_pe*, i32*)*, i32 (%struct.eeh_pe*, i32*)** %19, align 8
  %21 = icmp ne i32 (%struct.eeh_pe*, i32*)* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %17, %14
  %23 = load i32, i32* @ENOENT, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %112

25:                                               ; preds = %17
  %26 = load %struct.eeh_pe*, %struct.eeh_pe** %3, align 8
  %27 = getelementptr inbounds %struct.eeh_pe, %struct.eeh_pe* %26, i32 0, i32 1
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = icmp ne %struct.TYPE_3__* %28, null
  br i1 %29, label %30, label %50

30:                                               ; preds = %25
  %31 = load %struct.eeh_pe*, %struct.eeh_pe** %3, align 8
  %32 = getelementptr inbounds %struct.eeh_pe, %struct.eeh_pe* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @EEH_PE_REMOVED, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %50, label %37

37:                                               ; preds = %30
  %38 = load %struct.eeh_pe*, %struct.eeh_pe** %3, align 8
  %39 = getelementptr inbounds %struct.eeh_pe, %struct.eeh_pe* %38, i32 0, i32 1
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @EEH_PE_ISOLATED, align 4
  %44 = load i32, i32* @EEH_PE_RECOVERING, align 4
  %45 = or i32 %43, %44
  %46 = and i32 %42, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %37
  %49 = load i32, i32* @EEH_PE_STATE_UNAVAIL, align 4
  store i32 %49, i32* %2, align 4
  br label %112

50:                                               ; preds = %37, %30, %25
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** @eeh_ops, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i32 (%struct.eeh_pe*, i32*)*, i32 (%struct.eeh_pe*, i32*)** %52, align 8
  %54 = load %struct.eeh_pe*, %struct.eeh_pe** %3, align 8
  %55 = call i32 %53(%struct.eeh_pe* %54, i32* null)
  store i32 %55, i32* %4, align 4
  %56 = load i32, i32* %4, align 4
  %57 = load i32, i32* @EEH_STATE_RESET_ACTIVE, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  %60 = xor i1 %59, true
  %61 = xor i1 %60, true
  %62 = zext i1 %61 to i32
  store i32 %62, i32* %6, align 4
  %63 = load i32, i32* %4, align 4
  %64 = load i32, i32* @EEH_STATE_DMA_ENABLED, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  %67 = xor i1 %66, true
  %68 = xor i1 %67, true
  %69 = zext i1 %68 to i32
  store i32 %69, i32* %7, align 4
  %70 = load i32, i32* %4, align 4
  %71 = load i32, i32* @EEH_STATE_MMIO_ENABLED, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  %74 = xor i1 %73, true
  %75 = xor i1 %74, true
  %76 = zext i1 %75 to i32
  store i32 %76, i32* %8, align 4
  %77 = load i32, i32* %6, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %50
  %80 = load i32, i32* @EEH_PE_STATE_RESET, align 4
  store i32 %80, i32* %5, align 4
  br label %110

81:                                               ; preds = %50
  %82 = load i32, i32* %7, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %89

84:                                               ; preds = %81
  %85 = load i32, i32* %8, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %84
  %88 = load i32, i32* @EEH_PE_STATE_NORMAL, align 4
  store i32 %88, i32* %5, align 4
  br label %109

89:                                               ; preds = %84, %81
  %90 = load i32, i32* %7, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %97, label %92

92:                                               ; preds = %89
  %93 = load i32, i32* %8, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %97, label %95

95:                                               ; preds = %92
  %96 = load i32, i32* @EEH_PE_STATE_STOPPED_IO_DMA, align 4
  store i32 %96, i32* %5, align 4
  br label %108

97:                                               ; preds = %92, %89
  %98 = load i32, i32* %7, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %105, label %100

100:                                              ; preds = %97
  %101 = load i32, i32* %8, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %100
  %104 = load i32, i32* @EEH_PE_STATE_STOPPED_DMA, align 4
  store i32 %104, i32* %5, align 4
  br label %107

105:                                              ; preds = %100, %97
  %106 = load i32, i32* @EEH_PE_STATE_UNAVAIL, align 4
  store i32 %106, i32* %5, align 4
  br label %107

107:                                              ; preds = %105, %103
  br label %108

108:                                              ; preds = %107, %95
  br label %109

109:                                              ; preds = %108, %87
  br label %110

110:                                              ; preds = %109, %79
  %111 = load i32, i32* %5, align 4
  store i32 %111, i32* %2, align 4
  br label %112

112:                                              ; preds = %110, %48, %22, %11
  %113 = load i32, i32* %2, align 4
  ret i32 %113
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
