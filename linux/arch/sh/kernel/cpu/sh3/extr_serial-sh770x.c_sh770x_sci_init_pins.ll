; ModuleID = '/home/carl/AnghaBench/linux/arch/sh/kernel/cpu/sh3/extr_serial-sh770x.c_sh770x_sci_init_pins.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sh/kernel/cpu/sh3/extr_serial-sh770x.c_sh770x_sci_init_pins.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32 }

@SCPCR = common dso_local global i32 0, align 4
@CRTSCTS = common dso_local global i32 0, align 4
@SCPDR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*, i32)* @sh770x_sci_init_pins to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sh770x_sci_init_pins(%struct.uart_port* %0, i32 %1) #0 {
  %3 = alloca %struct.uart_port*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i16, align 2
  store %struct.uart_port* %0, %struct.uart_port** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* @SCPCR, align 4
  %7 = call zeroext i16 @__raw_readw(i32 %6)
  store i16 %7, i16* %5, align 2
  %8 = load i16, i16* %5, align 2
  %9 = zext i16 %8 to i32
  %10 = and i32 %9, 4047
  %11 = trunc i32 %10 to i16
  %12 = load i32, i32* @SCPCR, align 4
  %13 = call i32 @__raw_writew(i16 zeroext %11, i32 %12)
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @CRTSCTS, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %36, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* @SCPCR, align 4
  %20 = call zeroext i16 @__raw_readw(i32 %19)
  store i16 %20, i16* %5, align 2
  %21 = load i16, i16* %5, align 2
  %22 = zext i16 %21 to i32
  %23 = and i32 %22, 4047
  %24 = or i32 %23, 4096
  %25 = trunc i32 %24 to i16
  %26 = load i32, i32* @SCPCR, align 4
  %27 = call i32 @__raw_writew(i16 zeroext %25, i32 %26)
  %28 = load i32, i32* @SCPDR, align 4
  %29 = call zeroext i16 @__raw_readb(i32 %28)
  store i16 %29, i16* %5, align 2
  %30 = load i16, i16* %5, align 2
  %31 = zext i16 %30 to i32
  %32 = and i32 %31, 191
  %33 = trunc i32 %32 to i16
  %34 = load i32, i32* @SCPDR, align 4
  %35 = call i32 @__raw_writeb(i16 zeroext %33, i32 %34)
  br label %36

36:                                               ; preds = %18, %2
  ret void
}

declare dso_local zeroext i16 @__raw_readw(i32) #1

declare dso_local i32 @__raw_writew(i16 zeroext, i32) #1

declare dso_local zeroext i16 @__raw_readb(i32) #1

declare dso_local i32 @__raw_writeb(i16 zeroext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
