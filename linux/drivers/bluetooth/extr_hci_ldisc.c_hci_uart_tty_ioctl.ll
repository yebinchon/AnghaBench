; ModuleID = '/home/carl/AnghaBench/linux/drivers/bluetooth/extr_hci_ldisc.c_hci_uart_tty_ioctl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bluetooth/extr_hci_ldisc.c_hci_uart_tty_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { %struct.hci_uart* }
%struct.hci_uart = type { i32, i32, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.file = type { i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@EBADF = common dso_local global i32 0, align 4
@HCI_UART_PROTO_SET = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@EUNATCH = common dso_local global i32 0, align 4
@HCI_UART_REGISTERED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty_struct*, %struct.file*, i32, i64)* @hci_uart_tty_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hci_uart_tty_ioctl(%struct.tty_struct* %0, %struct.file* %1, i32 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.tty_struct*, align 8
  %7 = alloca %struct.file*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.hci_uart*, align 8
  %11 = alloca i32, align 4
  store %struct.tty_struct* %0, %struct.tty_struct** %6, align 8
  store %struct.file* %1, %struct.file** %7, align 8
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  %12 = load %struct.tty_struct*, %struct.tty_struct** %6, align 8
  %13 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %12, i32 0, i32 0
  %14 = load %struct.hci_uart*, %struct.hci_uart** %13, align 8
  store %struct.hci_uart* %14, %struct.hci_uart** %10, align 8
  store i32 0, i32* %11, align 4
  %15 = call i32 @BT_DBG(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.hci_uart*, %struct.hci_uart** %10, align 8
  %17 = icmp ne %struct.hci_uart* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %4
  %19 = load i32, i32* @EBADF, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %5, align 4
  br label %103

21:                                               ; preds = %4
  %22 = load i32, i32* %8, align 4
  switch i32 %22, label %95 [
    i32 128, label %23
    i32 130, label %45
    i32 132, label %61
    i32 129, label %77
    i32 131, label %91
  ]

23:                                               ; preds = %21
  %24 = load i32, i32* @HCI_UART_PROTO_SET, align 4
  %25 = load %struct.hci_uart*, %struct.hci_uart** %10, align 8
  %26 = getelementptr inbounds %struct.hci_uart, %struct.hci_uart* %25, i32 0, i32 1
  %27 = call i32 @test_and_set_bit(i32 %24, i32* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %41, label %29

29:                                               ; preds = %23
  %30 = load %struct.hci_uart*, %struct.hci_uart** %10, align 8
  %31 = load i64, i64* %9, align 8
  %32 = call i32 @hci_uart_set_proto(%struct.hci_uart* %30, i64 %31)
  store i32 %32, i32* %11, align 4
  %33 = load i32, i32* %11, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %29
  %36 = load i32, i32* @HCI_UART_PROTO_SET, align 4
  %37 = load %struct.hci_uart*, %struct.hci_uart** %10, align 8
  %38 = getelementptr inbounds %struct.hci_uart, %struct.hci_uart* %37, i32 0, i32 1
  %39 = call i32 @clear_bit(i32 %36, i32* %38)
  br label %40

40:                                               ; preds = %35, %29
  br label %44

41:                                               ; preds = %23
  %42 = load i32, i32* @EBUSY, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %11, align 4
  br label %44

44:                                               ; preds = %41, %40
  br label %101

45:                                               ; preds = %21
  %46 = load i32, i32* @HCI_UART_PROTO_SET, align 4
  %47 = load %struct.hci_uart*, %struct.hci_uart** %10, align 8
  %48 = getelementptr inbounds %struct.hci_uart, %struct.hci_uart* %47, i32 0, i32 1
  %49 = call i32 @test_bit(i32 %46, i32* %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %45
  %52 = load %struct.hci_uart*, %struct.hci_uart** %10, align 8
  %53 = getelementptr inbounds %struct.hci_uart, %struct.hci_uart* %52, i32 0, i32 3
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  store i32 %56, i32* %11, align 4
  br label %60

57:                                               ; preds = %45
  %58 = load i32, i32* @EUNATCH, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %11, align 4
  br label %60

60:                                               ; preds = %57, %51
  br label %101

61:                                               ; preds = %21
  %62 = load i32, i32* @HCI_UART_REGISTERED, align 4
  %63 = load %struct.hci_uart*, %struct.hci_uart** %10, align 8
  %64 = getelementptr inbounds %struct.hci_uart, %struct.hci_uart* %63, i32 0, i32 1
  %65 = call i32 @test_bit(i32 %62, i32* %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %73

67:                                               ; preds = %61
  %68 = load %struct.hci_uart*, %struct.hci_uart** %10, align 8
  %69 = getelementptr inbounds %struct.hci_uart, %struct.hci_uart* %68, i32 0, i32 2
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  store i32 %72, i32* %11, align 4
  br label %76

73:                                               ; preds = %61
  %74 = load i32, i32* @EUNATCH, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %11, align 4
  br label %76

76:                                               ; preds = %73, %67
  br label %101

77:                                               ; preds = %21
  %78 = load i32, i32* @HCI_UART_PROTO_SET, align 4
  %79 = load %struct.hci_uart*, %struct.hci_uart** %10, align 8
  %80 = getelementptr inbounds %struct.hci_uart, %struct.hci_uart* %79, i32 0, i32 1
  %81 = call i32 @test_bit(i32 %78, i32* %80)
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %77
  %84 = load i32, i32* @EBUSY, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %11, align 4
  br label %90

86:                                               ; preds = %77
  %87 = load %struct.hci_uart*, %struct.hci_uart** %10, align 8
  %88 = load i64, i64* %9, align 8
  %89 = call i32 @hci_uart_set_flags(%struct.hci_uart* %87, i64 %88)
  store i32 %89, i32* %11, align 4
  br label %90

90:                                               ; preds = %86, %83
  br label %101

91:                                               ; preds = %21
  %92 = load %struct.hci_uart*, %struct.hci_uart** %10, align 8
  %93 = getelementptr inbounds %struct.hci_uart, %struct.hci_uart* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  store i32 %94, i32* %11, align 4
  br label %101

95:                                               ; preds = %21
  %96 = load %struct.tty_struct*, %struct.tty_struct** %6, align 8
  %97 = load %struct.file*, %struct.file** %7, align 8
  %98 = load i32, i32* %8, align 4
  %99 = load i64, i64* %9, align 8
  %100 = call i32 @n_tty_ioctl_helper(%struct.tty_struct* %96, %struct.file* %97, i32 %98, i64 %99)
  store i32 %100, i32* %11, align 4
  br label %101

101:                                              ; preds = %95, %91, %90, %76, %60, %44
  %102 = load i32, i32* %11, align 4
  store i32 %102, i32* %5, align 4
  br label %103

103:                                              ; preds = %101, %18
  %104 = load i32, i32* %5, align 4
  ret i32 %104
}

declare dso_local i32 @BT_DBG(i8*) #1

declare dso_local i32 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @hci_uart_set_proto(%struct.hci_uart*, i64) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @hci_uart_set_flags(%struct.hci_uart*, i64) #1

declare dso_local i32 @n_tty_ioctl_helper(%struct.tty_struct*, %struct.file*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
