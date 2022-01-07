; ModuleID = '/home/carl/AnghaBench/linux/arch/um/drivers/extr_line.c_line_setup_irq.c'
source_filename = "/home/carl/AnghaBench/linux/arch/um/drivers/extr_line.c_line_setup_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.line = type { %struct.line_driver* }
%struct.line_driver = type { i32, i32, i32, i32 }

@IRQ_READ = common dso_local global i32 0, align 4
@line_interrupt = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@IRQ_WRITE = common dso_local global i32 0, align 4
@line_write_interrupt = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @line_setup_irq(i32 %0, i32 %1, i32 %2, %struct.line* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.line*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.line_driver*, align 8
  %13 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store %struct.line* %3, %struct.line** %10, align 8
  store i8* %4, i8** %11, align 8
  %14 = load %struct.line*, %struct.line** %10, align 8
  %15 = getelementptr inbounds %struct.line, %struct.line* %14, i32 0, i32 0
  %16 = load %struct.line_driver*, %struct.line_driver** %15, align 8
  store %struct.line_driver* %16, %struct.line_driver** %12, align 8
  store i32 0, i32* %13, align 4
  %17 = load i32, i32* %8, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %32

19:                                               ; preds = %5
  %20 = load %struct.line_driver*, %struct.line_driver** %12, align 8
  %21 = getelementptr inbounds %struct.line_driver, %struct.line_driver* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* @IRQ_READ, align 4
  %25 = load i32, i32* @line_interrupt, align 4
  %26 = load i32, i32* @IRQF_SHARED, align 4
  %27 = load %struct.line_driver*, %struct.line_driver** %12, align 8
  %28 = getelementptr inbounds %struct.line_driver, %struct.line_driver* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = load i8*, i8** %11, align 8
  %31 = call i32 @um_request_irq(i32 %22, i32 %23, i32 %24, i32 %25, i32 %26, i32 %29, i8* %30)
  store i32 %31, i32* %13, align 4
  br label %32

32:                                               ; preds = %19, %5
  %33 = load i32, i32* %13, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %32
  %36 = load i32, i32* %13, align 4
  store i32 %36, i32* %6, align 4
  br label %55

37:                                               ; preds = %32
  %38 = load i32, i32* %9, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %53

40:                                               ; preds = %37
  %41 = load %struct.line_driver*, %struct.line_driver** %12, align 8
  %42 = getelementptr inbounds %struct.line_driver, %struct.line_driver* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* @IRQ_WRITE, align 4
  %46 = load i32, i32* @line_write_interrupt, align 4
  %47 = load i32, i32* @IRQF_SHARED, align 4
  %48 = load %struct.line_driver*, %struct.line_driver** %12, align 8
  %49 = getelementptr inbounds %struct.line_driver, %struct.line_driver* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i8*, i8** %11, align 8
  %52 = call i32 @um_request_irq(i32 %43, i32 %44, i32 %45, i32 %46, i32 %47, i32 %50, i8* %51)
  store i32 %52, i32* %13, align 4
  br label %53

53:                                               ; preds = %40, %37
  %54 = load i32, i32* %13, align 4
  store i32 %54, i32* %6, align 4
  br label %55

55:                                               ; preds = %53, %35
  %56 = load i32, i32* %6, align 4
  ret i32 %56
}

declare dso_local i32 @um_request_irq(i32, i32, i32, i32, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
