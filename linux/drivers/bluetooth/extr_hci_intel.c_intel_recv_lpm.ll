; ModuleID = '/home/carl/AnghaBench/linux/drivers/bluetooth/extr_hci_intel.c_intel_recv_lpm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bluetooth/extr_hci_intel.c_intel_recv_lpm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_dev = type { i32 }
%struct.sk_buff = type { i64 }
%struct.hci_lpm_pkt = type { i32, i32, i32* }
%struct.hci_uart = type { i32, %struct.intel_data* }
%struct.intel_data = type { i32 }

@.str = private unnamed_addr constant [32 x i8] c"Invalid LPM notification packet\00", align 1
@STATE_SUSPENDED = common dso_local global i32 0, align 4
@STATE_LPM_TRANSACTION = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Unknown LPM opcode (%02x)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hci_dev*, %struct.sk_buff*)* @intel_recv_lpm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_recv_lpm(%struct.hci_dev* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.hci_dev*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.hci_lpm_pkt*, align 8
  %6 = alloca %struct.hci_uart*, align 8
  %7 = alloca %struct.intel_data*, align 8
  store %struct.hci_dev* %0, %struct.hci_dev** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %8 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %9 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to i8*
  %12 = bitcast i8* %11 to %struct.hci_lpm_pkt*
  store %struct.hci_lpm_pkt* %12, %struct.hci_lpm_pkt** %5, align 8
  %13 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %14 = call %struct.hci_uart* @hci_get_drvdata(%struct.hci_dev* %13)
  store %struct.hci_uart* %14, %struct.hci_uart** %6, align 8
  %15 = load %struct.hci_uart*, %struct.hci_uart** %6, align 8
  %16 = getelementptr inbounds %struct.hci_uart, %struct.hci_uart* %15, i32 0, i32 1
  %17 = load %struct.intel_data*, %struct.intel_data** %16, align 8
  store %struct.intel_data* %17, %struct.intel_data** %7, align 8
  %18 = load %struct.hci_lpm_pkt*, %struct.hci_lpm_pkt** %5, align 8
  %19 = getelementptr inbounds %struct.hci_lpm_pkt, %struct.hci_lpm_pkt* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  switch i32 %20, label %73 [
    i32 128, label %21
    i32 129, label %41
    i32 130, label %57
  ]

21:                                               ; preds = %2
  %22 = load %struct.hci_lpm_pkt*, %struct.hci_lpm_pkt** %5, align 8
  %23 = getelementptr inbounds %struct.hci_lpm_pkt, %struct.hci_lpm_pkt* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = icmp slt i32 %24, 1
  br i1 %25, label %26, label %33

26:                                               ; preds = %21
  %27 = load %struct.hci_uart*, %struct.hci_uart** %6, align 8
  %28 = getelementptr inbounds %struct.hci_uart, %struct.hci_uart* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = sext i32 %29 to i64
  %31 = inttoptr i64 %30 to %struct.hci_dev*
  %32 = call i32 (%struct.hci_dev*, i8*, ...) @bt_dev_err(%struct.hci_dev* %31, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %79

33:                                               ; preds = %21
  %34 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %35 = load %struct.hci_lpm_pkt*, %struct.hci_lpm_pkt** %5, align 8
  %36 = getelementptr inbounds %struct.hci_lpm_pkt, %struct.hci_lpm_pkt* %35, i32 0, i32 2
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @intel_recv_lpm_notify(%struct.hci_dev* %34, i32 %39)
  br label %79

41:                                               ; preds = %2
  %42 = load i32, i32* @STATE_SUSPENDED, align 4
  %43 = load %struct.intel_data*, %struct.intel_data** %7, align 8
  %44 = getelementptr inbounds %struct.intel_data, %struct.intel_data* %43, i32 0, i32 0
  %45 = call i32 @set_bit(i32 %42, i32* %44)
  %46 = load i32, i32* @STATE_LPM_TRANSACTION, align 4
  %47 = load %struct.intel_data*, %struct.intel_data** %7, align 8
  %48 = getelementptr inbounds %struct.intel_data, %struct.intel_data* %47, i32 0, i32 0
  %49 = call i32 @test_and_clear_bit(i32 %46, i32* %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %41
  %52 = load %struct.intel_data*, %struct.intel_data** %7, align 8
  %53 = getelementptr inbounds %struct.intel_data, %struct.intel_data* %52, i32 0, i32 0
  %54 = load i32, i32* @STATE_LPM_TRANSACTION, align 4
  %55 = call i32 @wake_up_bit(i32* %53, i32 %54)
  br label %56

56:                                               ; preds = %51, %41
  br label %79

57:                                               ; preds = %2
  %58 = load i32, i32* @STATE_SUSPENDED, align 4
  %59 = load %struct.intel_data*, %struct.intel_data** %7, align 8
  %60 = getelementptr inbounds %struct.intel_data, %struct.intel_data* %59, i32 0, i32 0
  %61 = call i32 @clear_bit(i32 %58, i32* %60)
  %62 = load i32, i32* @STATE_LPM_TRANSACTION, align 4
  %63 = load %struct.intel_data*, %struct.intel_data** %7, align 8
  %64 = getelementptr inbounds %struct.intel_data, %struct.intel_data* %63, i32 0, i32 0
  %65 = call i32 @test_and_clear_bit(i32 %62, i32* %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %57
  %68 = load %struct.intel_data*, %struct.intel_data** %7, align 8
  %69 = getelementptr inbounds %struct.intel_data, %struct.intel_data* %68, i32 0, i32 0
  %70 = load i32, i32* @STATE_LPM_TRANSACTION, align 4
  %71 = call i32 @wake_up_bit(i32* %69, i32 %70)
  br label %72

72:                                               ; preds = %67, %57
  br label %79

73:                                               ; preds = %2
  %74 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %75 = load %struct.hci_lpm_pkt*, %struct.hci_lpm_pkt** %5, align 8
  %76 = getelementptr inbounds %struct.hci_lpm_pkt, %struct.hci_lpm_pkt* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = call i32 (%struct.hci_dev*, i8*, ...) @bt_dev_err(%struct.hci_dev* %74, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %77)
  br label %79

79:                                               ; preds = %73, %72, %56, %33, %26
  %80 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %81 = call i32 @kfree_skb(%struct.sk_buff* %80)
  ret i32 0
}

declare dso_local %struct.hci_uart* @hci_get_drvdata(%struct.hci_dev*) #1

declare dso_local i32 @bt_dev_err(%struct.hci_dev*, i8*, ...) #1

declare dso_local i32 @intel_recv_lpm_notify(%struct.hci_dev*, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @wake_up_bit(i32*, i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
