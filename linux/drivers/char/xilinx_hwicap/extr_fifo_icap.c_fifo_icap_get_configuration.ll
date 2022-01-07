; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/xilinx_hwicap/extr_fifo_icap.c_fifo_icap_get_configuration.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/xilinx_hwicap/extr_fifo_icap.c_fifo_icap_get_configuration.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hwicap_drvdata = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"fifo_get_configuration\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@XHI_MAX_READ_TRANSACTION_WORDS = common dso_local global i64 0, align 8
@XHI_MAX_RETRIES = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"done fifo_get_configuration\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fifo_icap_get_configuration(%struct.hwicap_drvdata* %0, i64* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hwicap_drvdata*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.hwicap_drvdata* %0, %struct.hwicap_drvdata** %5, align 8
  store i64* %1, i64** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 0, i64* %8, align 8
  store i64 0, i64* %9, align 8
  %13 = load i64*, i64** %6, align 8
  store i64* %13, i64** %10, align 8
  %14 = load %struct.hwicap_drvdata*, %struct.hwicap_drvdata** %5, align 8
  %15 = getelementptr inbounds %struct.hwicap_drvdata, %struct.hwicap_drvdata* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @dev_dbg(i32 %16, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %18 = load %struct.hwicap_drvdata*, %struct.hwicap_drvdata** %5, align 8
  %19 = call i64 @fifo_icap_busy(%struct.hwicap_drvdata* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %3
  %22 = load i32, i32* @EBUSY, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %92

24:                                               ; preds = %3
  %25 = load i64, i64* %7, align 8
  store i64 %25, i64* %11, align 8
  br label %26

26:                                               ; preds = %86, %24
  %27 = load i64, i64* %11, align 8
  %28 = icmp sgt i64 %27, 0
  br i1 %28, label %29, label %87

29:                                               ; preds = %26
  %30 = load i64, i64* %11, align 8
  store i64 %30, i64* %12, align 8
  %31 = load i64, i64* %12, align 8
  %32 = load i64, i64* @XHI_MAX_READ_TRANSACTION_WORDS, align 8
  %33 = icmp sgt i64 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %29
  %35 = load i64, i64* @XHI_MAX_READ_TRANSACTION_WORDS, align 8
  store i64 %35, i64* %12, align 8
  br label %36

36:                                               ; preds = %34, %29
  %37 = load i64, i64* %12, align 8
  %38 = load i64, i64* %11, align 8
  %39 = sub nsw i64 %38, %37
  store i64 %39, i64* %11, align 8
  %40 = load %struct.hwicap_drvdata*, %struct.hwicap_drvdata** %5, align 8
  %41 = load i64, i64* %12, align 8
  %42 = call i32 @fifo_icap_set_read_size(%struct.hwicap_drvdata* %40, i64 %41)
  %43 = load %struct.hwicap_drvdata*, %struct.hwicap_drvdata** %5, align 8
  %44 = call i32 @fifo_icap_start_readback(%struct.hwicap_drvdata* %43)
  br label %45

45:                                               ; preds = %85, %36
  %46 = load i64, i64* %12, align 8
  %47 = icmp sgt i64 %46, 0
  br i1 %47, label %48, label %86

48:                                               ; preds = %45
  br label %49

49:                                               ; preds = %63, %48
  %50 = load i64, i64* %8, align 8
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %52, label %64

52:                                               ; preds = %49
  %53 = load %struct.hwicap_drvdata*, %struct.hwicap_drvdata** %5, align 8
  %54 = call i64 @fifo_icap_read_fifo_occupancy(%struct.hwicap_drvdata* %53)
  store i64 %54, i64* %8, align 8
  %55 = load i64, i64* %9, align 8
  %56 = add nsw i64 %55, 1
  store i64 %56, i64* %9, align 8
  %57 = load i64, i64* %9, align 8
  %58 = load i64, i64* @XHI_MAX_RETRIES, align 8
  %59 = icmp sgt i64 %57, %58
  br i1 %59, label %60, label %63

60:                                               ; preds = %52
  %61 = load i32, i32* @EIO, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %4, align 4
  br label %92

63:                                               ; preds = %52
  br label %49

64:                                               ; preds = %49
  %65 = load i64, i64* %8, align 8
  %66 = load i64, i64* %12, align 8
  %67 = icmp sgt i64 %65, %66
  br i1 %67, label %68, label %70

68:                                               ; preds = %64
  %69 = load i64, i64* %12, align 8
  store i64 %69, i64* %8, align 8
  br label %70

70:                                               ; preds = %68, %64
  %71 = load i64, i64* %8, align 8
  %72 = load i64, i64* %12, align 8
  %73 = sub nsw i64 %72, %71
  store i64 %73, i64* %12, align 8
  br label %74

74:                                               ; preds = %77, %70
  %75 = load i64, i64* %8, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %85

77:                                               ; preds = %74
  %78 = load %struct.hwicap_drvdata*, %struct.hwicap_drvdata** %5, align 8
  %79 = call i32 @fifo_icap_fifo_read(%struct.hwicap_drvdata* %78)
  %80 = sext i32 %79 to i64
  %81 = load i64*, i64** %10, align 8
  %82 = getelementptr inbounds i64, i64* %81, i32 1
  store i64* %82, i64** %10, align 8
  store i64 %80, i64* %81, align 8
  %83 = load i64, i64* %8, align 8
  %84 = add nsw i64 %83, -1
  store i64 %84, i64* %8, align 8
  br label %74

85:                                               ; preds = %74
  br label %45

86:                                               ; preds = %45
  br label %26

87:                                               ; preds = %26
  %88 = load %struct.hwicap_drvdata*, %struct.hwicap_drvdata** %5, align 8
  %89 = getelementptr inbounds %struct.hwicap_drvdata, %struct.hwicap_drvdata* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @dev_dbg(i32 %90, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %92

92:                                               ; preds = %87, %60, %21
  %93 = load i32, i32* %4, align 4
  ret i32 %93
}

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i64 @fifo_icap_busy(%struct.hwicap_drvdata*) #1

declare dso_local i32 @fifo_icap_set_read_size(%struct.hwicap_drvdata*, i64) #1

declare dso_local i32 @fifo_icap_start_readback(%struct.hwicap_drvdata*) #1

declare dso_local i64 @fifo_icap_read_fifo_occupancy(%struct.hwicap_drvdata*) #1

declare dso_local i32 @fifo_icap_fifo_read(%struct.hwicap_drvdata*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
