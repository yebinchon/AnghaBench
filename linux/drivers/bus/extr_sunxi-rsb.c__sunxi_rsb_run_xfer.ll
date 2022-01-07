; ModuleID = '/home/carl/AnghaBench/linux/drivers/bus/extr_sunxi-rsb.c__sunxi_rsb_run_xfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bus/extr_sunxi-rsb.c__sunxi_rsb_run_xfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sunxi_rsb = type { i32, i32, i64, i32 }

@RSB_CTRL = common dso_local global i64 0, align 8
@RSB_CTRL_START_TRANS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"RSB transfer still in progress\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@RSB_INTS_LOAD_BSY = common dso_local global i32 0, align 4
@RSB_INTS_TRANS_ERR = common dso_local global i32 0, align 4
@RSB_INTS_TRANS_OVER = common dso_local global i32 0, align 4
@RSB_INTE = common dso_local global i64 0, align 8
@RSB_CTRL_GLOBAL_INT_ENB = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"RSB timeout\0A\00", align 1
@RSB_CTRL_ABORT_TRANS = common dso_local global i32 0, align 4
@RSB_INTS = common dso_local global i64 0, align 8
@ETIMEDOUT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"RSB busy\0A\00", align 1
@RSB_INTS_TRANS_ERR_ACK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [16 x i8] c"RSB slave nack\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@RSB_INTS_TRANS_ERR_DATA = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [25 x i8] c"RSB transfer data error\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sunxi_rsb*)* @_sunxi_rsb_run_xfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_sunxi_rsb_run_xfer(%struct.sunxi_rsb* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sunxi_rsb*, align 8
  store %struct.sunxi_rsb* %0, %struct.sunxi_rsb** %3, align 8
  %4 = load %struct.sunxi_rsb*, %struct.sunxi_rsb** %3, align 8
  %5 = getelementptr inbounds %struct.sunxi_rsb, %struct.sunxi_rsb* %4, i32 0, i32 2
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @RSB_CTRL, align 8
  %8 = add nsw i64 %6, %7
  %9 = call i32 @readl(i64 %8)
  %10 = load i32, i32* @RSB_CTRL_START_TRANS, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %20

13:                                               ; preds = %1
  %14 = load %struct.sunxi_rsb*, %struct.sunxi_rsb** %3, align 8
  %15 = getelementptr inbounds %struct.sunxi_rsb, %struct.sunxi_rsb* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @dev_dbg(i32 %16, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* @EBUSY, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %126

20:                                               ; preds = %1
  %21 = load %struct.sunxi_rsb*, %struct.sunxi_rsb** %3, align 8
  %22 = getelementptr inbounds %struct.sunxi_rsb, %struct.sunxi_rsb* %21, i32 0, i32 3
  %23 = call i32 @reinit_completion(i32* %22)
  %24 = load i32, i32* @RSB_INTS_LOAD_BSY, align 4
  %25 = load i32, i32* @RSB_INTS_TRANS_ERR, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @RSB_INTS_TRANS_OVER, align 4
  %28 = or i32 %26, %27
  %29 = load %struct.sunxi_rsb*, %struct.sunxi_rsb** %3, align 8
  %30 = getelementptr inbounds %struct.sunxi_rsb, %struct.sunxi_rsb* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @RSB_INTE, align 8
  %33 = add nsw i64 %31, %32
  %34 = call i32 @writel(i32 %28, i64 %33)
  %35 = load i32, i32* @RSB_CTRL_START_TRANS, align 4
  %36 = load i32, i32* @RSB_CTRL_GLOBAL_INT_ENB, align 4
  %37 = or i32 %35, %36
  %38 = load %struct.sunxi_rsb*, %struct.sunxi_rsb** %3, align 8
  %39 = getelementptr inbounds %struct.sunxi_rsb, %struct.sunxi_rsb* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @RSB_CTRL, align 8
  %42 = add nsw i64 %40, %41
  %43 = call i32 @writel(i32 %37, i64 %42)
  %44 = load %struct.sunxi_rsb*, %struct.sunxi_rsb** %3, align 8
  %45 = getelementptr inbounds %struct.sunxi_rsb, %struct.sunxi_rsb* %44, i32 0, i32 3
  %46 = call i32 @msecs_to_jiffies(i32 100)
  %47 = call i32 @wait_for_completion_io_timeout(i32* %45, i32 %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %75, label %49

49:                                               ; preds = %20
  %50 = load %struct.sunxi_rsb*, %struct.sunxi_rsb** %3, align 8
  %51 = getelementptr inbounds %struct.sunxi_rsb, %struct.sunxi_rsb* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @dev_dbg(i32 %52, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %54 = load i32, i32* @RSB_CTRL_ABORT_TRANS, align 4
  %55 = load %struct.sunxi_rsb*, %struct.sunxi_rsb** %3, align 8
  %56 = getelementptr inbounds %struct.sunxi_rsb, %struct.sunxi_rsb* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @RSB_CTRL, align 8
  %59 = add nsw i64 %57, %58
  %60 = call i32 @writel(i32 %54, i64 %59)
  %61 = load %struct.sunxi_rsb*, %struct.sunxi_rsb** %3, align 8
  %62 = getelementptr inbounds %struct.sunxi_rsb, %struct.sunxi_rsb* %61, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @RSB_INTS, align 8
  %65 = add nsw i64 %63, %64
  %66 = call i32 @readl(i64 %65)
  %67 = load %struct.sunxi_rsb*, %struct.sunxi_rsb** %3, align 8
  %68 = getelementptr inbounds %struct.sunxi_rsb, %struct.sunxi_rsb* %67, i32 0, i32 2
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @RSB_INTS, align 8
  %71 = add nsw i64 %69, %70
  %72 = call i32 @writel(i32 %66, i64 %71)
  %73 = load i32, i32* @ETIMEDOUT, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %2, align 4
  br label %126

75:                                               ; preds = %20
  %76 = load %struct.sunxi_rsb*, %struct.sunxi_rsb** %3, align 8
  %77 = getelementptr inbounds %struct.sunxi_rsb, %struct.sunxi_rsb* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* @RSB_INTS_LOAD_BSY, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %89

82:                                               ; preds = %75
  %83 = load %struct.sunxi_rsb*, %struct.sunxi_rsb** %3, align 8
  %84 = getelementptr inbounds %struct.sunxi_rsb, %struct.sunxi_rsb* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @dev_dbg(i32 %85, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %87 = load i32, i32* @EBUSY, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %2, align 4
  br label %126

89:                                               ; preds = %75
  %90 = load %struct.sunxi_rsb*, %struct.sunxi_rsb** %3, align 8
  %91 = getelementptr inbounds %struct.sunxi_rsb, %struct.sunxi_rsb* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* @RSB_INTS_TRANS_ERR, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %125

96:                                               ; preds = %89
  %97 = load %struct.sunxi_rsb*, %struct.sunxi_rsb** %3, align 8
  %98 = getelementptr inbounds %struct.sunxi_rsb, %struct.sunxi_rsb* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* @RSB_INTS_TRANS_ERR_ACK, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %110

103:                                              ; preds = %96
  %104 = load %struct.sunxi_rsb*, %struct.sunxi_rsb** %3, align 8
  %105 = getelementptr inbounds %struct.sunxi_rsb, %struct.sunxi_rsb* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @dev_dbg(i32 %106, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  %108 = load i32, i32* @EINVAL, align 4
  %109 = sub nsw i32 0, %108
  store i32 %109, i32* %2, align 4
  br label %126

110:                                              ; preds = %96
  %111 = load %struct.sunxi_rsb*, %struct.sunxi_rsb** %3, align 8
  %112 = getelementptr inbounds %struct.sunxi_rsb, %struct.sunxi_rsb* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = load i32, i32* @RSB_INTS_TRANS_ERR_DATA, align 4
  %115 = and i32 %113, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %124

117:                                              ; preds = %110
  %118 = load %struct.sunxi_rsb*, %struct.sunxi_rsb** %3, align 8
  %119 = getelementptr inbounds %struct.sunxi_rsb, %struct.sunxi_rsb* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @dev_dbg(i32 %120, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  %122 = load i32, i32* @EIO, align 4
  %123 = sub nsw i32 0, %122
  store i32 %123, i32* %2, align 4
  br label %126

124:                                              ; preds = %110
  br label %125

125:                                              ; preds = %124, %89
  store i32 0, i32* %2, align 4
  br label %126

126:                                              ; preds = %125, %117, %103, %82, %49, %13
  %127 = load i32, i32* %2, align 4
  ret i32 %127
}

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @reinit_completion(i32*) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @wait_for_completion_io_timeout(i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
