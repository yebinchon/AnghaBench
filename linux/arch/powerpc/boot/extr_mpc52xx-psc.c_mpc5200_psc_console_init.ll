; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/boot/extr_mpc52xx-psc.c_mpc5200_psc_console_init.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/boot/extr_mpc52xx-psc.c_mpc5200_psc_console_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.serial_console_data = type { i32, i32, i32, i32 }

@psc = common dso_local global i32 0, align 4
@psc_open = common dso_local global i32 0, align 4
@psc_putc = common dso_local global i32 0, align 4
@psc_getc = common dso_local global i32 0, align 4
@psc_tstc = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mpc5200_psc_console_init(i8* %0, %struct.serial_console_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.serial_console_data*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.serial_console_data* %1, %struct.serial_console_data** %5, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = call i32 @dt_get_virtual_reg(i8* %6, i32* @psc, i32 1)
  %8 = icmp slt i32 %7, 1
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %23

10:                                               ; preds = %2
  %11 = load i32, i32* @psc_open, align 4
  %12 = load %struct.serial_console_data*, %struct.serial_console_data** %5, align 8
  %13 = getelementptr inbounds %struct.serial_console_data, %struct.serial_console_data* %12, i32 0, i32 3
  store i32 %11, i32* %13, align 4
  %14 = load i32, i32* @psc_putc, align 4
  %15 = load %struct.serial_console_data*, %struct.serial_console_data** %5, align 8
  %16 = getelementptr inbounds %struct.serial_console_data, %struct.serial_console_data* %15, i32 0, i32 2
  store i32 %14, i32* %16, align 4
  %17 = load i32, i32* @psc_getc, align 4
  %18 = load %struct.serial_console_data*, %struct.serial_console_data** %5, align 8
  %19 = getelementptr inbounds %struct.serial_console_data, %struct.serial_console_data* %18, i32 0, i32 1
  store i32 %17, i32* %19, align 4
  %20 = load i32, i32* @psc_tstc, align 4
  %21 = load %struct.serial_console_data*, %struct.serial_console_data** %5, align 8
  %22 = getelementptr inbounds %struct.serial_console_data, %struct.serial_console_data* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 4
  store i32 0, i32* %3, align 4
  br label %23

23:                                               ; preds = %10, %9
  %24 = load i32, i32* %3, align 4
  ret i32 %24
}

declare dso_local i32 @dt_get_virtual_reg(i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
