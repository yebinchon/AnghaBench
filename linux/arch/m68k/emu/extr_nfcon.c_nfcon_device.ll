; ModuleID = '/home/carl/AnghaBench/linux/arch/m68k/emu/extr_nfcon.c_nfcon_device.c'
source_filename = "/home/carl/AnghaBench/linux/arch/m68k/emu/extr_nfcon.c_nfcon_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_driver = type { i32 }
%struct.console = type { i32 }

@CON_ENABLED = common dso_local global i32 0, align 4
@nfcon_tty_driver = common dso_local global %struct.tty_driver* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.tty_driver* (%struct.console*, i32*)* @nfcon_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.tty_driver* @nfcon_device(%struct.console* %0, i32* %1) #0 {
  %3 = alloca %struct.console*, align 8
  %4 = alloca i32*, align 8
  store %struct.console* %0, %struct.console** %3, align 8
  store i32* %1, i32** %4, align 8
  %5 = load i32*, i32** %4, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.console*, %struct.console** %3, align 8
  %7 = getelementptr inbounds %struct.console, %struct.console* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @CON_ENABLED, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load %struct.tty_driver*, %struct.tty_driver** @nfcon_tty_driver, align 8
  br label %15

14:                                               ; preds = %2
  br label %15

15:                                               ; preds = %14, %12
  %16 = phi %struct.tty_driver* [ %13, %12 ], [ null, %14 ]
  ret %struct.tty_driver* %16
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
