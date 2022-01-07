; ModuleID = '/home/carl/AnghaBench/linux/arch/um/drivers/extr_line.c_line_write_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/arch/um/drivers/extr_line.c_line_write_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.chan = type { %struct.line* }
%struct.line = type { i32, i32, i32, i32, i32 }

@IRQ_NONE = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @line_write_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @line_write_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.chan*, align 8
  %7 = alloca %struct.line*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.chan*
  store %struct.chan* %10, %struct.chan** %6, align 8
  %11 = load %struct.chan*, %struct.chan** %6, align 8
  %12 = getelementptr inbounds %struct.chan, %struct.chan* %11, i32 0, i32 0
  %13 = load %struct.line*, %struct.line** %12, align 8
  store %struct.line* %13, %struct.line** %7, align 8
  %14 = load %struct.line*, %struct.line** %7, align 8
  %15 = getelementptr inbounds %struct.line, %struct.line* %14, i32 0, i32 1
  %16 = call i32 @spin_lock(i32* %15)
  %17 = load %struct.line*, %struct.line** %7, align 8
  %18 = call i32 @flush_buffer(%struct.line* %17)
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %2
  %22 = load %struct.line*, %struct.line** %7, align 8
  %23 = getelementptr inbounds %struct.line, %struct.line* %22, i32 0, i32 1
  %24 = call i32 @spin_unlock(i32* %23)
  %25 = load i32, i32* @IRQ_NONE, align 4
  store i32 %25, i32* %3, align 4
  br label %54

26:                                               ; preds = %2
  %27 = load i32, i32* %8, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %45

29:                                               ; preds = %26
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* @EAGAIN, align 4
  %32 = sub nsw i32 0, %31
  %33 = icmp ne i32 %30, %32
  br i1 %33, label %34, label %45

34:                                               ; preds = %29
  %35 = load %struct.line*, %struct.line** %7, align 8
  %36 = getelementptr inbounds %struct.line, %struct.line* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.line*, %struct.line** %7, align 8
  %39 = getelementptr inbounds %struct.line, %struct.line* %38, i32 0, i32 4
  store i32 %37, i32* %39, align 4
  %40 = load %struct.line*, %struct.line** %7, align 8
  %41 = getelementptr inbounds %struct.line, %struct.line* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.line*, %struct.line** %7, align 8
  %44 = getelementptr inbounds %struct.line, %struct.line* %43, i32 0, i32 3
  store i32 %42, i32* %44, align 4
  br label %45

45:                                               ; preds = %34, %29, %26
  br label %46

46:                                               ; preds = %45
  %47 = load %struct.line*, %struct.line** %7, align 8
  %48 = getelementptr inbounds %struct.line, %struct.line* %47, i32 0, i32 1
  %49 = call i32 @spin_unlock(i32* %48)
  %50 = load %struct.line*, %struct.line** %7, align 8
  %51 = getelementptr inbounds %struct.line, %struct.line* %50, i32 0, i32 0
  %52 = call i32 @tty_port_tty_wakeup(i32* %51)
  %53 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %53, i32* %3, align 4
  br label %54

54:                                               ; preds = %46, %21
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @flush_buffer(%struct.line*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @tty_port_tty_wakeup(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
