; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_libahci.c_ahci_do_softreset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_libahci.c_ahci_do_softreset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_link = type { i32, %struct.ata_port* }
%struct.ata_port = type { %struct.ahci_port_priv*, %struct.TYPE_2__* }
%struct.ahci_port_priv = type { i64 }
%struct.TYPE_2__ = type { %struct.ahci_host_priv* }
%struct.ahci_host_priv = type { i32 }
%struct.ata_taskfile = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"ENTER\0A\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"failed to reset engine (errno=%d)\0A\00", align 1
@jiffies = common dso_local global i64 0, align 8
@ATA_SRST = common dso_local global i32 0, align 4
@AHCI_CMD_RESET = common dso_local global i32 0, align 4
@AHCI_CMD_CLR_BUSY = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [15 x i8] c"1st FIS failed\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@AHCI_HFLAG_SRST_TOUT_IS_OFFLINE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [39 x i8] c"device not ready, treating as offline\0A\00", align 1
@ATA_DEV_NONE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [17 x i8] c"device not ready\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"EXIT, class=%u\0A\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"softreset failed (%s)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ahci_do_softreset(%struct.ata_link* %0, i32* %1, i32 %2, i64 %3, i32 (%struct.ata_link*)* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ata_link*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32 (%struct.ata_link*)*, align 8
  %12 = alloca %struct.ata_port*, align 8
  %13 = alloca %struct.ahci_host_priv*, align 8
  %14 = alloca %struct.ahci_port_priv*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca %struct.ata_taskfile, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.ata_link* %0, %struct.ata_link** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i64 %3, i64* %10, align 8
  store i32 (%struct.ata_link*)* %4, i32 (%struct.ata_link*)** %11, align 8
  %21 = load %struct.ata_link*, %struct.ata_link** %7, align 8
  %22 = getelementptr inbounds %struct.ata_link, %struct.ata_link* %21, i32 0, i32 1
  %23 = load %struct.ata_port*, %struct.ata_port** %22, align 8
  store %struct.ata_port* %23, %struct.ata_port** %12, align 8
  %24 = load %struct.ata_port*, %struct.ata_port** %12, align 8
  %25 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %24, i32 0, i32 1
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load %struct.ahci_host_priv*, %struct.ahci_host_priv** %27, align 8
  store %struct.ahci_host_priv* %28, %struct.ahci_host_priv** %13, align 8
  %29 = load %struct.ata_port*, %struct.ata_port** %12, align 8
  %30 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %29, i32 0, i32 0
  %31 = load %struct.ahci_port_priv*, %struct.ahci_port_priv** %30, align 8
  store %struct.ahci_port_priv* %31, %struct.ahci_port_priv** %14, align 8
  store i8* null, i8** %15, align 8
  store i32 0, i32* %19, align 4
  %32 = call i32 (i8*, ...) @DPRINTK(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %33 = load %struct.ata_port*, %struct.ata_port** %12, align 8
  %34 = call i32 @ahci_kick_engine(%struct.ata_port* %33)
  store i32 %34, i32* %20, align 4
  %35 = load i32, i32* %20, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %46

37:                                               ; preds = %5
  %38 = load i32, i32* %20, align 4
  %39 = load i32, i32* @EOPNOTSUPP, align 4
  %40 = sub nsw i32 0, %39
  %41 = icmp ne i32 %38, %40
  br i1 %41, label %42, label %46

42:                                               ; preds = %37
  %43 = load %struct.ata_link*, %struct.ata_link** %7, align 8
  %44 = load i32, i32* %20, align 4
  %45 = call i32 @ata_link_warn(%struct.ata_link* %43, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %44)
  br label %46

46:                                               ; preds = %42, %37, %5
  %47 = load %struct.ata_link*, %struct.ata_link** %7, align 8
  %48 = call i32 @ata_is_host_link(%struct.ata_link* %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %58, label %50

50:                                               ; preds = %46
  %51 = load %struct.ahci_port_priv*, %struct.ahci_port_priv** %14, align 8
  %52 = getelementptr inbounds %struct.ahci_port_priv, %struct.ahci_port_priv* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %50
  %56 = load %struct.ata_port*, %struct.ata_port** %12, align 8
  %57 = call i32 @ahci_disable_fbs(%struct.ata_port* %56)
  store i32 1, i32* %19, align 4
  br label %58

58:                                               ; preds = %55, %50, %46
  %59 = load %struct.ata_link*, %struct.ata_link** %7, align 8
  %60 = getelementptr inbounds %struct.ata_link, %struct.ata_link* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @ata_tf_init(i32 %61, %struct.ata_taskfile* %18)
  store i64 0, i64* %17, align 8
  %63 = load i64, i64* @jiffies, align 8
  store i64 %63, i64* %16, align 8
  %64 = load i64, i64* %10, align 8
  %65 = load i64, i64* %16, align 8
  %66 = call i64 @time_after(i64 %64, i64 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %58
  %69 = load i64, i64* %10, align 8
  %70 = load i64, i64* %16, align 8
  %71 = sub i64 %69, %70
  %72 = call i64 @jiffies_to_msecs(i64 %71)
  store i64 %72, i64* %17, align 8
  br label %73

73:                                               ; preds = %68, %58
  %74 = load i32, i32* @ATA_SRST, align 4
  %75 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %18, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = or i32 %76, %74
  store i32 %77, i32* %75, align 4
  %78 = load %struct.ata_port*, %struct.ata_port** %12, align 8
  %79 = load i32, i32* %9, align 4
  %80 = load i32, i32* @AHCI_CMD_RESET, align 4
  %81 = load i32, i32* @AHCI_CMD_CLR_BUSY, align 4
  %82 = or i32 %80, %81
  %83 = load i64, i64* %17, align 8
  %84 = call i64 @ahci_exec_polled_cmd(%struct.ata_port* %78, i32 %79, %struct.ata_taskfile* %18, i32 0, i32 %82, i64 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %73
  %87 = load i32, i32* @EIO, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %20, align 4
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8** %15, align 8
  br label %139

89:                                               ; preds = %73
  %90 = load %struct.ata_port*, %struct.ata_port** %12, align 8
  %91 = call i32 @ata_msleep(%struct.ata_port* %90, i32 1)
  %92 = load i32, i32* @ATA_SRST, align 4
  %93 = xor i32 %92, -1
  %94 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %18, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = and i32 %95, %93
  store i32 %96, i32* %94, align 4
  %97 = load %struct.ata_port*, %struct.ata_port** %12, align 8
  %98 = load i32, i32* %9, align 4
  %99 = call i64 @ahci_exec_polled_cmd(%struct.ata_port* %97, i32 %98, %struct.ata_taskfile* %18, i32 0, i32 0, i64 0)
  %100 = load %struct.ata_link*, %struct.ata_link** %7, align 8
  %101 = load i64, i64* %10, align 8
  %102 = load i32 (%struct.ata_link*)*, i32 (%struct.ata_link*)** %11, align 8
  %103 = call i32 @ata_wait_after_reset(%struct.ata_link* %100, i64 %101, i32 (%struct.ata_link*)* %102)
  store i32 %103, i32* %20, align 4
  %104 = load i32, i32* %20, align 4
  %105 = load i32, i32* @EBUSY, align 4
  %106 = sub nsw i32 0, %105
  %107 = icmp eq i32 %104, %106
  br i1 %107, label %108, label %120

108:                                              ; preds = %89
  %109 = load %struct.ahci_host_priv*, %struct.ahci_host_priv** %13, align 8
  %110 = getelementptr inbounds %struct.ahci_host_priv, %struct.ahci_host_priv* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* @AHCI_HFLAG_SRST_TOUT_IS_OFFLINE, align 4
  %113 = and i32 %111, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %120

115:                                              ; preds = %108
  %116 = load %struct.ata_link*, %struct.ata_link** %7, align 8
  %117 = call i32 @ata_link_info(%struct.ata_link* %116, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0))
  %118 = load i32, i32* @ATA_DEV_NONE, align 4
  %119 = load i32*, i32** %8, align 8
  store i32 %118, i32* %119, align 4
  br label %129

120:                                              ; preds = %108, %89
  %121 = load i32, i32* %20, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %120
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i8** %15, align 8
  br label %139

124:                                              ; preds = %120
  %125 = load %struct.ata_port*, %struct.ata_port** %12, align 8
  %126 = call i32 @ahci_dev_classify(%struct.ata_port* %125)
  %127 = load i32*, i32** %8, align 8
  store i32 %126, i32* %127, align 4
  br label %128

128:                                              ; preds = %124
  br label %129

129:                                              ; preds = %128, %115
  %130 = load i32, i32* %19, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %135

132:                                              ; preds = %129
  %133 = load %struct.ata_port*, %struct.ata_port** %12, align 8
  %134 = call i32 @ahci_enable_fbs(%struct.ata_port* %133)
  br label %135

135:                                              ; preds = %132, %129
  %136 = load i32*, i32** %8, align 8
  %137 = load i32, i32* %136, align 4
  %138 = call i32 (i8*, ...) @DPRINTK(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32 %137)
  store i32 0, i32* %6, align 4
  br label %144

139:                                              ; preds = %123, %86
  %140 = load %struct.ata_link*, %struct.ata_link** %7, align 8
  %141 = load i8*, i8** %15, align 8
  %142 = call i32 @ata_link_err(%struct.ata_link* %140, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0), i8* %141)
  %143 = load i32, i32* %20, align 4
  store i32 %143, i32* %6, align 4
  br label %144

144:                                              ; preds = %139, %135
  %145 = load i32, i32* %6, align 4
  ret i32 %145
}

declare dso_local i32 @DPRINTK(i8*, ...) #1

declare dso_local i32 @ahci_kick_engine(%struct.ata_port*) #1

declare dso_local i32 @ata_link_warn(%struct.ata_link*, i8*, i32) #1

declare dso_local i32 @ata_is_host_link(%struct.ata_link*) #1

declare dso_local i32 @ahci_disable_fbs(%struct.ata_port*) #1

declare dso_local i32 @ata_tf_init(i32, %struct.ata_taskfile*) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i64 @jiffies_to_msecs(i64) #1

declare dso_local i64 @ahci_exec_polled_cmd(%struct.ata_port*, i32, %struct.ata_taskfile*, i32, i32, i64) #1

declare dso_local i32 @ata_msleep(%struct.ata_port*, i32) #1

declare dso_local i32 @ata_wait_after_reset(%struct.ata_link*, i64, i32 (%struct.ata_link*)*) #1

declare dso_local i32 @ata_link_info(%struct.ata_link*, i8*) #1

declare dso_local i32 @ahci_dev_classify(%struct.ata_port*) #1

declare dso_local i32 @ahci_enable_fbs(%struct.ata_port*) #1

declare dso_local i32 @ata_link_err(%struct.ata_link*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
