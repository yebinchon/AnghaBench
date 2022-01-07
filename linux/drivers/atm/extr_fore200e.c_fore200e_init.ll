; ModuleID = '/home/carl/AnghaBench/linux/drivers/atm/extr_fore200e.c_fore200e_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/atm/extr_fore200e.c_fore200e_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fore200e = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 (%struct.fore200e*)*, i64 (%struct.fore200e*)* }
%struct.device = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@FORE200E_STATE_COMPLETE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fore200e*, %struct.device*)* @fore200e_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fore200e_init(%struct.fore200e* %0, %struct.device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fore200e*, align 8
  %5 = alloca %struct.device*, align 8
  store %struct.fore200e* %0, %struct.fore200e** %4, align 8
  store %struct.device* %1, %struct.device** %5, align 8
  %6 = load %struct.fore200e*, %struct.fore200e** %4, align 8
  %7 = load %struct.device*, %struct.device** %5, align 8
  %8 = call i64 @fore200e_register(%struct.fore200e* %6, %struct.device* %7)
  %9 = icmp slt i64 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = load i32, i32* @ENODEV, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %3, align 4
  br label %113

13:                                               ; preds = %2
  %14 = load %struct.fore200e*, %struct.fore200e** %4, align 8
  %15 = getelementptr inbounds %struct.fore200e, %struct.fore200e* %14, i32 0, i32 1
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i64 (%struct.fore200e*)*, i64 (%struct.fore200e*)** %17, align 8
  %19 = load %struct.fore200e*, %struct.fore200e** %4, align 8
  %20 = call i64 %18(%struct.fore200e* %19)
  %21 = icmp slt i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %13
  %23 = load i32, i32* @ENODEV, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %113

25:                                               ; preds = %13
  %26 = load %struct.fore200e*, %struct.fore200e** %4, align 8
  %27 = getelementptr inbounds %struct.fore200e, %struct.fore200e* %26, i32 0, i32 1
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  %30 = load i64 (%struct.fore200e*)*, i64 (%struct.fore200e*)** %29, align 8
  %31 = load %struct.fore200e*, %struct.fore200e** %4, align 8
  %32 = call i64 %30(%struct.fore200e* %31)
  %33 = icmp slt i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %25
  %35 = load i32, i32* @ENODEV, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %3, align 4
  br label %113

37:                                               ; preds = %25
  %38 = load %struct.fore200e*, %struct.fore200e** %4, align 8
  %39 = call i64 @fore200e_reset(%struct.fore200e* %38, i32 1)
  %40 = icmp slt i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %37
  %42 = load i32, i32* @ENODEV, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %3, align 4
  br label %113

44:                                               ; preds = %37
  %45 = load %struct.fore200e*, %struct.fore200e** %4, align 8
  %46 = call i64 @fore200e_load_and_start_fw(%struct.fore200e* %45)
  %47 = icmp slt i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %44
  %49 = load i32, i32* @ENODEV, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %3, align 4
  br label %113

51:                                               ; preds = %44
  %52 = load %struct.fore200e*, %struct.fore200e** %4, align 8
  %53 = call i64 @fore200e_initialize(%struct.fore200e* %52)
  %54 = icmp slt i64 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %51
  %56 = load i32, i32* @ENODEV, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %3, align 4
  br label %113

58:                                               ; preds = %51
  %59 = load %struct.fore200e*, %struct.fore200e** %4, align 8
  %60 = call i64 @fore200e_init_cmd_queue(%struct.fore200e* %59)
  %61 = icmp slt i64 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %58
  %63 = load i32, i32* @ENOMEM, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %3, align 4
  br label %113

65:                                               ; preds = %58
  %66 = load %struct.fore200e*, %struct.fore200e** %4, align 8
  %67 = call i64 @fore200e_init_tx_queue(%struct.fore200e* %66)
  %68 = icmp slt i64 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %65
  %70 = load i32, i32* @ENOMEM, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %3, align 4
  br label %113

72:                                               ; preds = %65
  %73 = load %struct.fore200e*, %struct.fore200e** %4, align 8
  %74 = call i64 @fore200e_init_rx_queue(%struct.fore200e* %73)
  %75 = icmp slt i64 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %72
  %77 = load i32, i32* @ENOMEM, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %3, align 4
  br label %113

79:                                               ; preds = %72
  %80 = load %struct.fore200e*, %struct.fore200e** %4, align 8
  %81 = call i64 @fore200e_init_bs_queue(%struct.fore200e* %80)
  %82 = icmp slt i64 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %79
  %84 = load i32, i32* @ENOMEM, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %3, align 4
  br label %113

86:                                               ; preds = %79
  %87 = load %struct.fore200e*, %struct.fore200e** %4, align 8
  %88 = call i64 @fore200e_alloc_rx_buf(%struct.fore200e* %87)
  %89 = icmp slt i64 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %86
  %91 = load i32, i32* @ENOMEM, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %3, align 4
  br label %113

93:                                               ; preds = %86
  %94 = load %struct.fore200e*, %struct.fore200e** %4, align 8
  %95 = call i64 @fore200e_get_esi(%struct.fore200e* %94)
  %96 = icmp slt i64 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %93
  %98 = load i32, i32* @EIO, align 4
  %99 = sub nsw i32 0, %98
  store i32 %99, i32* %3, align 4
  br label %113

100:                                              ; preds = %93
  %101 = load %struct.fore200e*, %struct.fore200e** %4, align 8
  %102 = call i64 @fore200e_irq_request(%struct.fore200e* %101)
  %103 = icmp slt i64 %102, 0
  br i1 %103, label %104, label %107

104:                                              ; preds = %100
  %105 = load i32, i32* @EBUSY, align 4
  %106 = sub nsw i32 0, %105
  store i32 %106, i32* %3, align 4
  br label %113

107:                                              ; preds = %100
  %108 = load %struct.fore200e*, %struct.fore200e** %4, align 8
  %109 = call i32 @fore200e_supply(%struct.fore200e* %108)
  %110 = load i32, i32* @FORE200E_STATE_COMPLETE, align 4
  %111 = load %struct.fore200e*, %struct.fore200e** %4, align 8
  %112 = getelementptr inbounds %struct.fore200e, %struct.fore200e* %111, i32 0, i32 0
  store i32 %110, i32* %112, align 8
  store i32 0, i32* %3, align 4
  br label %113

113:                                              ; preds = %107, %104, %97, %90, %83, %76, %69, %62, %55, %48, %41, %34, %22, %10
  %114 = load i32, i32* %3, align 4
  ret i32 %114
}

declare dso_local i64 @fore200e_register(%struct.fore200e*, %struct.device*) #1

declare dso_local i64 @fore200e_reset(%struct.fore200e*, i32) #1

declare dso_local i64 @fore200e_load_and_start_fw(%struct.fore200e*) #1

declare dso_local i64 @fore200e_initialize(%struct.fore200e*) #1

declare dso_local i64 @fore200e_init_cmd_queue(%struct.fore200e*) #1

declare dso_local i64 @fore200e_init_tx_queue(%struct.fore200e*) #1

declare dso_local i64 @fore200e_init_rx_queue(%struct.fore200e*) #1

declare dso_local i64 @fore200e_init_bs_queue(%struct.fore200e*) #1

declare dso_local i64 @fore200e_alloc_rx_buf(%struct.fore200e*) #1

declare dso_local i64 @fore200e_get_esi(%struct.fore200e*) #1

declare dso_local i64 @fore200e_irq_request(%struct.fore200e*) #1

declare dso_local i32 @fore200e_supply(%struct.fore200e*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
