; ModuleID = '/home/carl/AnghaBench/linux/drivers/bluetooth/extr_btrtl.c_rtl_read_rom_version.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bluetooth/extr_btrtl.c_rtl_read_rom_version.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_dev = type { i32 }
%struct.rtl_rom_version_evt = type { i32, i32 }
%struct.sk_buff = type { i32, i64 }

@HCI_INIT_TIMEOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Read ROM version failed (%ld)\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"version event length mismatch\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"rom_version status=%x version=%x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hci_dev*, i32*)* @rtl_read_rom_version to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtl_read_rom_version(%struct.hci_dev* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hci_dev*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.rtl_rom_version_evt*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  store %struct.hci_dev* %0, %struct.hci_dev** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %9 = load i32, i32* @HCI_INIT_TIMEOUT, align 4
  %10 = call %struct.sk_buff* @__hci_cmd_sync(%struct.hci_dev* %8, i32 64621, i32 0, i32* null, i32 %9)
  store %struct.sk_buff* %10, %struct.sk_buff** %7, align 8
  %11 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %12 = call i64 @IS_ERR(%struct.sk_buff* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %21

14:                                               ; preds = %2
  %15 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %16 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %17 = call i32 @PTR_ERR(%struct.sk_buff* %16)
  %18 = call i32 (%struct.hci_dev*, i8*, ...) @rtl_dev_err(%struct.hci_dev* %15, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %20 = call i32 @PTR_ERR(%struct.sk_buff* %19)
  store i32 %20, i32* %3, align 4
  br label %53

21:                                               ; preds = %2
  %22 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %23 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = sext i32 %24 to i64
  %26 = icmp ne i64 %25, 8
  br i1 %26, label %27, label %34

27:                                               ; preds = %21
  %28 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %29 = call i32 (%struct.hci_dev*, i8*, ...) @rtl_dev_err(%struct.hci_dev* %28, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %30 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %31 = call i32 @kfree_skb(%struct.sk_buff* %30)
  %32 = load i32, i32* @EIO, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %53

34:                                               ; preds = %21
  %35 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %36 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = inttoptr i64 %37 to %struct.rtl_rom_version_evt*
  store %struct.rtl_rom_version_evt* %38, %struct.rtl_rom_version_evt** %6, align 8
  %39 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %40 = load %struct.rtl_rom_version_evt*, %struct.rtl_rom_version_evt** %6, align 8
  %41 = getelementptr inbounds %struct.rtl_rom_version_evt, %struct.rtl_rom_version_evt* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.rtl_rom_version_evt*, %struct.rtl_rom_version_evt** %6, align 8
  %44 = getelementptr inbounds %struct.rtl_rom_version_evt, %struct.rtl_rom_version_evt* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @rtl_dev_info(%struct.hci_dev* %39, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %42, i32 %45)
  %47 = load %struct.rtl_rom_version_evt*, %struct.rtl_rom_version_evt** %6, align 8
  %48 = getelementptr inbounds %struct.rtl_rom_version_evt, %struct.rtl_rom_version_evt* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32*, i32** %5, align 8
  store i32 %49, i32* %50, align 4
  %51 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %52 = call i32 @kfree_skb(%struct.sk_buff* %51)
  store i32 0, i32* %3, align 4
  br label %53

53:                                               ; preds = %34, %27, %14
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local %struct.sk_buff* @__hci_cmd_sync(%struct.hci_dev*, i32, i32, i32*, i32) #1

declare dso_local i64 @IS_ERR(%struct.sk_buff*) #1

declare dso_local i32 @rtl_dev_err(%struct.hci_dev*, i8*, ...) #1

declare dso_local i32 @PTR_ERR(%struct.sk_buff*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @rtl_dev_info(%struct.hci_dev*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
