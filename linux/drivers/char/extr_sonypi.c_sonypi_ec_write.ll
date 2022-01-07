; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/extr_sonypi.c_sonypi_ec_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/extr_sonypi.c_sonypi_ec_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SONYPI_CST_IOPORT = common dso_local global i32 0, align 4
@ITERATIONS_LONG = common dso_local global i32 0, align 4
@SONYPI_DATA_IOPORT = common dso_local global i32 0, align 4
@SONYPI_ACPI_ACTIVE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @sonypi_ec_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sonypi_ec_write(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* @SONYPI_CST_IOPORT, align 4
  %6 = call i32 @inb_p(i32 %5)
  %7 = and i32 %6, 3
  %8 = load i32, i32* @ITERATIONS_LONG, align 4
  %9 = call i32 @wait_on_command(i32 1, i32 %7, i32 %8)
  %10 = load i32, i32* @SONYPI_CST_IOPORT, align 4
  %11 = call i32 @outb_p(i32 129, i32 %10)
  %12 = load i32, i32* @SONYPI_CST_IOPORT, align 4
  %13 = call i32 @inb_p(i32 %12)
  %14 = and i32 %13, 2
  %15 = load i32, i32* @ITERATIONS_LONG, align 4
  %16 = call i32 @wait_on_command(i32 0, i32 %14, i32 %15)
  %17 = load i32, i32* %3, align 4
  %18 = load i32, i32* @SONYPI_DATA_IOPORT, align 4
  %19 = call i32 @outb_p(i32 %17, i32 %18)
  %20 = load i32, i32* @SONYPI_CST_IOPORT, align 4
  %21 = call i32 @inb_p(i32 %20)
  %22 = and i32 %21, 2
  %23 = load i32, i32* @ITERATIONS_LONG, align 4
  %24 = call i32 @wait_on_command(i32 0, i32 %22, i32 %23)
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* @SONYPI_DATA_IOPORT, align 4
  %27 = call i32 @outb_p(i32 %25, i32 %26)
  %28 = load i32, i32* @SONYPI_CST_IOPORT, align 4
  %29 = call i32 @inb_p(i32 %28)
  %30 = and i32 %29, 2
  %31 = load i32, i32* @ITERATIONS_LONG, align 4
  %32 = call i32 @wait_on_command(i32 0, i32 %30, i32 %31)
  ret i32 0
}

declare dso_local i32 @wait_on_command(i32, i32, i32) #1

declare dso_local i32 @inb_p(i32) #1

declare dso_local i32 @outb_p(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
