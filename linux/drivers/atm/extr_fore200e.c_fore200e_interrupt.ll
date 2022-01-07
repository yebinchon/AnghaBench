; ModuleID = '/home/carl/AnghaBench/linux/drivers/atm/extr_fore200e.c_fore200e_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/atm/extr_fore200e.c_fore200e_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fore200e = type { %struct.TYPE_3__*, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i64 (%struct.fore200e*)*, i32 (%struct.fore200e*)* }
%struct.TYPE_4__ = type { i32 }
%struct.atm_dev = type { i32 }

@.str = private unnamed_addr constant [38 x i8] c"interrupt NOT triggered by device %d\0A\00", align 1
@IRQ_NONE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"interrupt triggered by device %d\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @fore200e_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fore200e_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.fore200e*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %7 = load i8*, i8** %5, align 8
  %8 = bitcast i8* %7 to %struct.atm_dev*
  %9 = call %struct.fore200e* @FORE200E_DEV(%struct.atm_dev* %8)
  store %struct.fore200e* %9, %struct.fore200e** %6, align 8
  %10 = load %struct.fore200e*, %struct.fore200e** %6, align 8
  %11 = getelementptr inbounds %struct.fore200e, %struct.fore200e* %10, i32 0, i32 0
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i64 (%struct.fore200e*)*, i64 (%struct.fore200e*)** %13, align 8
  %15 = load %struct.fore200e*, %struct.fore200e** %6, align 8
  %16 = call i64 %14(%struct.fore200e* %15)
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %26

18:                                               ; preds = %2
  %19 = load %struct.fore200e*, %struct.fore200e** %6, align 8
  %20 = getelementptr inbounds %struct.fore200e, %struct.fore200e* %19, i32 0, i32 3
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @DPRINTK(i32 3, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %23)
  %25 = load i32, i32* @IRQ_NONE, align 4
  store i32 %25, i32* %3, align 4
  br label %43

26:                                               ; preds = %2
  %27 = load %struct.fore200e*, %struct.fore200e** %6, align 8
  %28 = getelementptr inbounds %struct.fore200e, %struct.fore200e* %27, i32 0, i32 3
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @DPRINTK(i32 3, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %31)
  %33 = load %struct.fore200e*, %struct.fore200e** %6, align 8
  %34 = call i32 @fore200e_irq(%struct.fore200e* %33)
  %35 = load %struct.fore200e*, %struct.fore200e** %6, align 8
  %36 = getelementptr inbounds %struct.fore200e, %struct.fore200e* %35, i32 0, i32 0
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 1
  %39 = load i32 (%struct.fore200e*)*, i32 (%struct.fore200e*)** %38, align 8
  %40 = load %struct.fore200e*, %struct.fore200e** %6, align 8
  %41 = call i32 %39(%struct.fore200e* %40)
  %42 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %42, i32* %3, align 4
  br label %43

43:                                               ; preds = %26, %18
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local %struct.fore200e* @FORE200E_DEV(%struct.atm_dev*) #1

declare dso_local i32 @DPRINTK(i32, i8*, i32) #1

declare dso_local i32 @fore200e_irq(%struct.fore200e*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
