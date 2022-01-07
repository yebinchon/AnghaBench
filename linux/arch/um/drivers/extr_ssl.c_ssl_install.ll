; ModuleID = '/home/carl/AnghaBench/linux/arch/um/drivers/extr_ssl.c_ssl_install.c'
source_filename = "/home/carl/AnghaBench/linux/arch/um/drivers/extr_ssl.c_ssl_install.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_driver = type { i32 }
%struct.tty_struct = type { i64 }

@serial_lines = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty_driver*, %struct.tty_struct*)* @ssl_install to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ssl_install(%struct.tty_driver* %0, %struct.tty_struct* %1) #0 {
  %3 = alloca %struct.tty_driver*, align 8
  %4 = alloca %struct.tty_struct*, align 8
  store %struct.tty_driver* %0, %struct.tty_driver** %3, align 8
  store %struct.tty_struct* %1, %struct.tty_struct** %4, align 8
  %5 = load %struct.tty_driver*, %struct.tty_driver** %3, align 8
  %6 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %7 = load i32*, i32** @serial_lines, align 8
  %8 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %9 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = getelementptr inbounds i32, i32* %7, i64 %10
  %12 = call i32 @line_install(%struct.tty_driver* %5, %struct.tty_struct* %6, i32* %11)
  ret i32 %12
}

declare dso_local i32 @line_install(%struct.tty_driver*, %struct.tty_struct*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
