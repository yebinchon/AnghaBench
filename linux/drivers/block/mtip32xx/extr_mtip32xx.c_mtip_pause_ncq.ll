; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/mtip32xx/extr_mtip32xx.c_mtip_pause_ncq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/mtip32xx/extr_mtip32xx.c_mtip_pause_ncq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtip_port = type { i32, %struct.TYPE_2__*, i8*, i64 }
%struct.TYPE_2__ = type { i32 }
%struct.host_to_dev_fis = type { i32, i32 }

@PORT_TFDATA = common dso_local global i64 0, align 8
@ATA_CMD_SEC_ERASE_PREP = common dso_local global i32 0, align 4
@jiffies = common dso_local global i8* null, align 8
@ATA_CMD_DOWNLOAD_MICRO = common dso_local global i32 0, align 4
@MTIP_PF_DM_ACTIVE_BIT = common dso_local global i32 0, align 4
@ATA_CMD_SEC_ERASE_UNIT = common dso_local global i32 0, align 4
@MTIP_DDF_SEC_LOCK_BIT = common dso_local global i32 0, align 4
@MTIP_DDF_REBUILD_FAILED_BIT = common dso_local global i32 0, align 4
@MTIP_PF_SE_ACTIVE_BIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtip_port*, %struct.host_to_dev_fis*)* @mtip_pause_ncq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtip_pause_ncq(%struct.mtip_port* %0, %struct.host_to_dev_fis* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mtip_port*, align 8
  %5 = alloca %struct.host_to_dev_fis*, align 8
  %6 = alloca i64, align 8
  store %struct.mtip_port* %0, %struct.mtip_port** %4, align 8
  store %struct.host_to_dev_fis* %1, %struct.host_to_dev_fis** %5, align 8
  %7 = load %struct.mtip_port*, %struct.mtip_port** %4, align 8
  %8 = getelementptr inbounds %struct.mtip_port, %struct.mtip_port* %7, i32 0, i32 3
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @PORT_TFDATA, align 8
  %11 = add nsw i64 %9, %10
  %12 = call i64 @readl(i64 %11)
  store i64 %12, i64* %6, align 8
  %13 = load i64, i64* %6, align 8
  %14 = and i64 %13, 1
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %99

17:                                               ; preds = %2
  %18 = load %struct.host_to_dev_fis*, %struct.host_to_dev_fis** %5, align 8
  %19 = getelementptr inbounds %struct.host_to_dev_fis, %struct.host_to_dev_fis* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @ATA_CMD_SEC_ERASE_PREP, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %27

23:                                               ; preds = %17
  %24 = load i8*, i8** @jiffies, align 8
  %25 = load %struct.mtip_port*, %struct.mtip_port** %4, align 8
  %26 = getelementptr inbounds %struct.mtip_port, %struct.mtip_port* %25, i32 0, i32 2
  store i8* %24, i8** %26, align 8
  store i32 1, i32* %3, align 4
  br label %99

27:                                               ; preds = %17
  %28 = load %struct.host_to_dev_fis*, %struct.host_to_dev_fis** %5, align 8
  %29 = getelementptr inbounds %struct.host_to_dev_fis, %struct.host_to_dev_fis* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @ATA_CMD_DOWNLOAD_MICRO, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %46

33:                                               ; preds = %27
  %34 = load %struct.host_to_dev_fis*, %struct.host_to_dev_fis** %5, align 8
  %35 = getelementptr inbounds %struct.host_to_dev_fis, %struct.host_to_dev_fis* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = icmp eq i32 %36, 3
  br i1 %37, label %38, label %46

38:                                               ; preds = %33
  %39 = load i32, i32* @MTIP_PF_DM_ACTIVE_BIT, align 4
  %40 = load %struct.mtip_port*, %struct.mtip_port** %4, align 8
  %41 = getelementptr inbounds %struct.mtip_port, %struct.mtip_port* %40, i32 0, i32 0
  %42 = call i32 @set_bit(i32 %39, i32* %41)
  %43 = load i8*, i8** @jiffies, align 8
  %44 = load %struct.mtip_port*, %struct.mtip_port** %4, align 8
  %45 = getelementptr inbounds %struct.mtip_port, %struct.mtip_port* %44, i32 0, i32 2
  store i8* %43, i8** %45, align 8
  store i32 1, i32* %3, align 4
  br label %99

46:                                               ; preds = %33, %27
  %47 = load %struct.host_to_dev_fis*, %struct.host_to_dev_fis** %5, align 8
  %48 = getelementptr inbounds %struct.host_to_dev_fis, %struct.host_to_dev_fis* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @ATA_CMD_SEC_ERASE_UNIT, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %77, label %52

52:                                               ; preds = %46
  %53 = load %struct.host_to_dev_fis*, %struct.host_to_dev_fis** %5, align 8
  %54 = getelementptr inbounds %struct.host_to_dev_fis, %struct.host_to_dev_fis* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = icmp eq i32 %55, 252
  br i1 %56, label %57, label %96

57:                                               ; preds = %52
  %58 = load %struct.host_to_dev_fis*, %struct.host_to_dev_fis** %5, align 8
  %59 = getelementptr inbounds %struct.host_to_dev_fis, %struct.host_to_dev_fis* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = icmp eq i32 %60, 39
  br i1 %61, label %77, label %62

62:                                               ; preds = %57
  %63 = load %struct.host_to_dev_fis*, %struct.host_to_dev_fis** %5, align 8
  %64 = getelementptr inbounds %struct.host_to_dev_fis, %struct.host_to_dev_fis* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = icmp eq i32 %65, 114
  br i1 %66, label %77, label %67

67:                                               ; preds = %62
  %68 = load %struct.host_to_dev_fis*, %struct.host_to_dev_fis** %5, align 8
  %69 = getelementptr inbounds %struct.host_to_dev_fis, %struct.host_to_dev_fis* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = icmp eq i32 %70, 98
  br i1 %71, label %77, label %72

72:                                               ; preds = %67
  %73 = load %struct.host_to_dev_fis*, %struct.host_to_dev_fis** %5, align 8
  %74 = getelementptr inbounds %struct.host_to_dev_fis, %struct.host_to_dev_fis* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = icmp eq i32 %75, 38
  br i1 %76, label %77, label %96

77:                                               ; preds = %72, %67, %62, %57, %46
  %78 = load i32, i32* @MTIP_DDF_SEC_LOCK_BIT, align 4
  %79 = load %struct.mtip_port*, %struct.mtip_port** %4, align 8
  %80 = getelementptr inbounds %struct.mtip_port, %struct.mtip_port* %79, i32 0, i32 1
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  %83 = call i32 @clear_bit(i32 %78, i32* %82)
  %84 = load i32, i32* @MTIP_DDF_REBUILD_FAILED_BIT, align 4
  %85 = load %struct.mtip_port*, %struct.mtip_port** %4, align 8
  %86 = getelementptr inbounds %struct.mtip_port, %struct.mtip_port* %85, i32 0, i32 1
  %87 = load %struct.TYPE_2__*, %struct.TYPE_2__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 0
  %89 = call i32 @clear_bit(i32 %84, i32* %88)
  %90 = load %struct.mtip_port*, %struct.mtip_port** %4, align 8
  %91 = call i32 @mtip_restart_port(%struct.mtip_port* %90)
  %92 = load i32, i32* @MTIP_PF_SE_ACTIVE_BIT, align 4
  %93 = load %struct.mtip_port*, %struct.mtip_port** %4, align 8
  %94 = getelementptr inbounds %struct.mtip_port, %struct.mtip_port* %93, i32 0, i32 0
  %95 = call i32 @clear_bit(i32 %92, i32* %94)
  store i32 0, i32* %3, align 4
  br label %99

96:                                               ; preds = %72, %52
  br label %97

97:                                               ; preds = %96
  br label %98

98:                                               ; preds = %97
  store i32 0, i32* %3, align 4
  br label %99

99:                                               ; preds = %98, %77, %38, %23, %16
  %100 = load i32, i32* %3, align 4
  ret i32 %100
}

declare dso_local i64 @readl(i64) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @mtip_restart_port(%struct.mtip_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
