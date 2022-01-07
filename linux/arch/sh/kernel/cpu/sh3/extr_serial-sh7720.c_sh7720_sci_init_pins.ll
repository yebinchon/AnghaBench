; ModuleID = '/home/carl/AnghaBench/linux/arch/sh/kernel/cpu/sh3/extr_serial-sh7720.c_sh7720_sci_init_pins.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sh/kernel/cpu/sh3/extr_serial-sh7720.c_sh7720_sci_init_pins.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32 }

@CRTSCTS = common dso_local global i32 0, align 4
@PORT_PTCR = common dso_local global i32 0, align 4
@PORT_PVCR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*, i32)* @sh7720_sci_init_pins to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sh7720_sci_init_pins(%struct.uart_port* %0, i32 %1) #0 {
  %3 = alloca %struct.uart_port*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i16, align 2
  store %struct.uart_port* %0, %struct.uart_port** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* @CRTSCTS, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %40

10:                                               ; preds = %2
  %11 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %12 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp eq i32 %13, -1539112960
  br i1 %14, label %15, label %24

15:                                               ; preds = %10
  %16 = load i32, i32* @PORT_PTCR, align 4
  %17 = call zeroext i16 @__raw_readw(i32 %16)
  store i16 %17, i16* %5, align 2
  %18 = load i16, i16* %5, align 2
  %19 = zext i16 %18 to i32
  %20 = and i32 %19, 64515
  %21 = trunc i32 %20 to i16
  %22 = load i32, i32* @PORT_PTCR, align 4
  %23 = call i32 @__raw_writew(i16 zeroext %21, i32 %22)
  br label %39

24:                                               ; preds = %10
  %25 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %26 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp eq i32 %27, -1539080192
  br i1 %28, label %29, label %38

29:                                               ; preds = %24
  %30 = load i32, i32* @PORT_PVCR, align 4
  %31 = call zeroext i16 @__raw_readw(i32 %30)
  store i16 %31, i16* %5, align 2
  %32 = load i16, i16* %5, align 2
  %33 = zext i16 %32 to i32
  %34 = and i32 %33, 64515
  %35 = trunc i32 %34 to i16
  %36 = load i32, i32* @PORT_PVCR, align 4
  %37 = call i32 @__raw_writew(i16 zeroext %35, i32 %36)
  br label %38

38:                                               ; preds = %29, %24
  br label %39

39:                                               ; preds = %38, %15
  br label %70

40:                                               ; preds = %2
  %41 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %42 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = icmp eq i32 %43, -1539112960
  br i1 %44, label %45, label %54

45:                                               ; preds = %40
  %46 = load i32, i32* @PORT_PTCR, align 4
  %47 = call zeroext i16 @__raw_readw(i32 %46)
  store i16 %47, i16* %5, align 2
  %48 = load i16, i16* %5, align 2
  %49 = zext i16 %48 to i32
  %50 = and i32 %49, 65475
  %51 = trunc i32 %50 to i16
  %52 = load i32, i32* @PORT_PTCR, align 4
  %53 = call i32 @__raw_writew(i16 zeroext %51, i32 %52)
  br label %69

54:                                               ; preds = %40
  %55 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %56 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = icmp eq i32 %57, -1539080192
  br i1 %58, label %59, label %68

59:                                               ; preds = %54
  %60 = load i32, i32* @PORT_PVCR, align 4
  %61 = call zeroext i16 @__raw_readw(i32 %60)
  store i16 %61, i16* %5, align 2
  %62 = load i16, i16* %5, align 2
  %63 = zext i16 %62 to i32
  %64 = and i32 %63, 65475
  %65 = trunc i32 %64 to i16
  %66 = load i32, i32* @PORT_PVCR, align 4
  %67 = call i32 @__raw_writew(i16 zeroext %65, i32 %66)
  br label %68

68:                                               ; preds = %59, %54
  br label %69

69:                                               ; preds = %68, %45
  br label %70

70:                                               ; preds = %69, %39
  ret void
}

declare dso_local zeroext i16 @__raw_readw(i32) #1

declare dso_local i32 @__raw_writew(i16 zeroext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
