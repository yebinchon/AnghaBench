; ModuleID = '/home/carl/AnghaBench/linux/arch/um/drivers/extr_line.c_line_activate.c'
source_filename = "/home/carl/AnghaBench/linux/arch/um/drivers/extr_line.c_line_activate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_port = type { i32 }
%struct.tty_struct = type { %struct.TYPE_2__, %struct.line* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.line = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty_port*, %struct.tty_struct*)* @line_activate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @line_activate(%struct.tty_port* %0, %struct.tty_struct* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tty_port*, align 8
  %5 = alloca %struct.tty_struct*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.line*, align 8
  store %struct.tty_port* %0, %struct.tty_port** %4, align 8
  store %struct.tty_struct* %1, %struct.tty_struct** %5, align 8
  %8 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %9 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %8, i32 0, i32 1
  %10 = load %struct.line*, %struct.line** %9, align 8
  store %struct.line* %10, %struct.line** %7, align 8
  %11 = load %struct.line*, %struct.line** %7, align 8
  %12 = call i32 @enable_chan(%struct.line* %11)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* %6, align 4
  store i32 %16, i32* %3, align 4
  br label %39

17:                                               ; preds = %2
  %18 = load %struct.line*, %struct.line** %7, align 8
  %19 = getelementptr inbounds %struct.line, %struct.line* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %30, label %22

22:                                               ; preds = %17
  %23 = load %struct.line*, %struct.line** %7, align 8
  %24 = getelementptr inbounds %struct.line, %struct.line* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.tty_port*, %struct.tty_port** %4, align 8
  %27 = call i32 @chan_enable_winch(i32 %25, %struct.tty_port* %26)
  %28 = load %struct.line*, %struct.line** %7, align 8
  %29 = getelementptr inbounds %struct.line, %struct.line* %28, i32 0, i32 0
  store i32 1, i32* %29, align 4
  br label %30

30:                                               ; preds = %22, %17
  %31 = load %struct.line*, %struct.line** %7, align 8
  %32 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %33 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  %35 = load %struct.tty_struct*, %struct.tty_struct** %5, align 8
  %36 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = call i32 @chan_window_size(%struct.line* %31, i32* %34, i32* %37)
  store i32 0, i32* %3, align 4
  br label %39

39:                                               ; preds = %30, %15
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local i32 @enable_chan(%struct.line*) #1

declare dso_local i32 @chan_enable_winch(i32, %struct.tty_port*) #1

declare dso_local i32 @chan_window_size(%struct.line*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
