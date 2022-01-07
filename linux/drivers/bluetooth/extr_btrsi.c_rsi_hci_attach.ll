; ModuleID = '/home/carl/AnghaBench/linux/drivers/bluetooth/extr_btrsi.c_rsi_hci_attach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bluetooth/extr_btrsi.c_rsi_hci_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rsi_proto_ops = type { i64 (i8*)*, i32 (i8*, %struct.rsi_hci_adapter*)* }
%struct.rsi_hci_adapter = type opaque
%struct.rsi_hci_adapter.0 = type { %struct.hci_dev*, %struct.rsi_proto_ops*, i8* }
%struct.hci_dev = type { i32, i32, i32, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Failed to alloc HCI device\00", align 1
@RSI_HOST_INTF_SDIO = common dso_local global i64 0, align 8
@HCI_SDIO = common dso_local global i32 0, align 4
@HCI_USB = common dso_local global i32 0, align 4
@HCI_PRIMARY = common dso_local global i32 0, align 4
@rsi_hci_open = common dso_local global i32 0, align 4
@rsi_hci_close = common dso_local global i32 0, align 4
@rsi_hci_flush = common dso_local global i32 0, align 4
@rsi_hci_send_pkt = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"HCI registration failed with errcode %d\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.rsi_proto_ops*)* @rsi_hci_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rsi_hci_attach(i8* %0, %struct.rsi_proto_ops* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.rsi_proto_ops*, align 8
  %6 = alloca %struct.rsi_hci_adapter.0*, align 8
  %7 = alloca %struct.hci_dev*, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.rsi_proto_ops* %1, %struct.rsi_proto_ops** %5, align 8
  store %struct.rsi_hci_adapter.0* null, %struct.rsi_hci_adapter.0** %6, align 8
  store i32 0, i32* %8, align 4
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.rsi_hci_adapter.0* @kzalloc(i32 24, i32 %9)
  store %struct.rsi_hci_adapter.0* %10, %struct.rsi_hci_adapter.0** %6, align 8
  %11 = load %struct.rsi_hci_adapter.0*, %struct.rsi_hci_adapter.0** %6, align 8
  %12 = icmp ne %struct.rsi_hci_adapter.0* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %90

16:                                               ; preds = %2
  %17 = load i8*, i8** %4, align 8
  %18 = load %struct.rsi_hci_adapter.0*, %struct.rsi_hci_adapter.0** %6, align 8
  %19 = getelementptr inbounds %struct.rsi_hci_adapter.0, %struct.rsi_hci_adapter.0* %18, i32 0, i32 2
  store i8* %17, i8** %19, align 8
  %20 = load %struct.rsi_proto_ops*, %struct.rsi_proto_ops** %5, align 8
  %21 = getelementptr inbounds %struct.rsi_proto_ops, %struct.rsi_proto_ops* %20, i32 0, i32 1
  %22 = load i32 (i8*, %struct.rsi_hci_adapter*)*, i32 (i8*, %struct.rsi_hci_adapter*)** %21, align 8
  %23 = load i8*, i8** %4, align 8
  %24 = load %struct.rsi_hci_adapter.0*, %struct.rsi_hci_adapter.0** %6, align 8
  %25 = bitcast %struct.rsi_hci_adapter.0* %24 to %struct.rsi_hci_adapter*
  %26 = call i32 %22(i8* %23, %struct.rsi_hci_adapter* %25)
  %27 = load %struct.rsi_proto_ops*, %struct.rsi_proto_ops** %5, align 8
  %28 = load %struct.rsi_hci_adapter.0*, %struct.rsi_hci_adapter.0** %6, align 8
  %29 = getelementptr inbounds %struct.rsi_hci_adapter.0, %struct.rsi_hci_adapter.0* %28, i32 0, i32 1
  store %struct.rsi_proto_ops* %27, %struct.rsi_proto_ops** %29, align 8
  %30 = call %struct.hci_dev* (...) @hci_alloc_dev()
  store %struct.hci_dev* %30, %struct.hci_dev** %7, align 8
  %31 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %32 = icmp ne %struct.hci_dev* %31, null
  br i1 %32, label %35, label %33

33:                                               ; preds = %16
  %34 = call i32 (i8*, ...) @BT_ERR(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %83

35:                                               ; preds = %16
  %36 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %37 = load %struct.rsi_hci_adapter.0*, %struct.rsi_hci_adapter.0** %6, align 8
  %38 = getelementptr inbounds %struct.rsi_hci_adapter.0, %struct.rsi_hci_adapter.0* %37, i32 0, i32 0
  store %struct.hci_dev* %36, %struct.hci_dev** %38, align 8
  %39 = load %struct.rsi_proto_ops*, %struct.rsi_proto_ops** %5, align 8
  %40 = getelementptr inbounds %struct.rsi_proto_ops, %struct.rsi_proto_ops* %39, i32 0, i32 0
  %41 = load i64 (i8*)*, i64 (i8*)** %40, align 8
  %42 = load i8*, i8** %4, align 8
  %43 = call i64 %41(i8* %42)
  %44 = load i64, i64* @RSI_HOST_INTF_SDIO, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %50

46:                                               ; preds = %35
  %47 = load i32, i32* @HCI_SDIO, align 4
  %48 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %49 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %48, i32 0, i32 5
  store i32 %47, i32* %49, align 4
  br label %54

50:                                               ; preds = %35
  %51 = load i32, i32* @HCI_USB, align 4
  %52 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %53 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %52, i32 0, i32 5
  store i32 %51, i32* %53, align 4
  br label %54

54:                                               ; preds = %50, %46
  %55 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %56 = load %struct.rsi_hci_adapter.0*, %struct.rsi_hci_adapter.0** %6, align 8
  %57 = call i32 @hci_set_drvdata(%struct.hci_dev* %55, %struct.rsi_hci_adapter.0* %56)
  %58 = load i32, i32* @HCI_PRIMARY, align 4
  %59 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %60 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %59, i32 0, i32 4
  store i32 %58, i32* %60, align 4
  %61 = load i32, i32* @rsi_hci_open, align 4
  %62 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %63 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %62, i32 0, i32 3
  store i32 %61, i32* %63, align 4
  %64 = load i32, i32* @rsi_hci_close, align 4
  %65 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %66 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %65, i32 0, i32 2
  store i32 %64, i32* %66, align 4
  %67 = load i32, i32* @rsi_hci_flush, align 4
  %68 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %69 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %68, i32 0, i32 1
  store i32 %67, i32* %69, align 4
  %70 = load i32, i32* @rsi_hci_send_pkt, align 4
  %71 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %72 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %71, i32 0, i32 0
  store i32 %70, i32* %72, align 4
  %73 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %74 = call i32 @hci_register_dev(%struct.hci_dev* %73)
  store i32 %74, i32* %8, align 4
  %75 = load i32, i32* %8, align 4
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %77, label %82

77:                                               ; preds = %54
  %78 = load i32, i32* %8, align 4
  %79 = call i32 (i8*, ...) @BT_ERR(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %78)
  %80 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  %81 = call i32 @hci_free_dev(%struct.hci_dev* %80)
  br label %83

82:                                               ; preds = %54
  store i32 0, i32* %3, align 4
  br label %90

83:                                               ; preds = %77, %33
  %84 = load %struct.rsi_hci_adapter.0*, %struct.rsi_hci_adapter.0** %6, align 8
  %85 = getelementptr inbounds %struct.rsi_hci_adapter.0, %struct.rsi_hci_adapter.0* %84, i32 0, i32 0
  store %struct.hci_dev* null, %struct.hci_dev** %85, align 8
  %86 = load %struct.rsi_hci_adapter.0*, %struct.rsi_hci_adapter.0** %6, align 8
  %87 = call i32 @kfree(%struct.rsi_hci_adapter.0* %86)
  %88 = load i32, i32* @EINVAL, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %3, align 4
  br label %90

90:                                               ; preds = %83, %82, %13
  %91 = load i32, i32* %3, align 4
  ret i32 %91
}

declare dso_local %struct.rsi_hci_adapter.0* @kzalloc(i32, i32) #1

declare dso_local %struct.hci_dev* @hci_alloc_dev(...) #1

declare dso_local i32 @BT_ERR(i8*, ...) #1

declare dso_local i32 @hci_set_drvdata(%struct.hci_dev*, %struct.rsi_hci_adapter.0*) #1

declare dso_local i32 @hci_register_dev(%struct.hci_dev*) #1

declare dso_local i32 @hci_free_dev(%struct.hci_dev*) #1

declare dso_local i32 @kfree(%struct.rsi_hci_adapter.0*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
