; ModuleID = '/home/carl/AnghaBench/linux/arch/alpha/kernel/extr_core_irongate.c_irongate_pci_clr_err.c'
source_filename = "/home/carl/AnghaBench/linux/arch/alpha/kernel/extr_core_irongate.c_irongate_pci_clr_err.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@IRONGATE0 = common dso_local global %struct.TYPE_2__* null, align 8
@.str = private unnamed_addr constant [18 x i8] c"Iron stat_cmd %x\0A\00", align 1
@IronECC = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [13 x i8] c"Iron ECC %x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @irongate_pci_clr_err() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  br label %3

3:                                                ; preds = %39, %0
  %4 = load %struct.TYPE_2__*, %struct.TYPE_2__** @IRONGATE0, align 8
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  store i32 %6, i32* %2, align 4
  %7 = load i32, i32* %2, align 4
  %8 = call i32 @printk(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %7)
  %9 = load i32, i32* %2, align 4
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** @IRONGATE0, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  store i32 %9, i32* %11, align 4
  %12 = call i32 (...) @mb()
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** @IRONGATE0, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %2, align 4
  %16 = load i32*, i32** @IronECC, align 8
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %2, align 4
  %18 = load i32, i32* %2, align 4
  %19 = call i32 @printk(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %18)
  %20 = load i32, i32* %2, align 4
  %21 = load i32*, i32** @IronECC, align 8
  store i32 %20, i32* %21, align 4
  %22 = call i32 (...) @mb()
  %23 = load i32*, i32** @IronECC, align 8
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %2, align 4
  %25 = call i32 @inb(i32 97)
  store i32 %25, i32* %1, align 4
  %26 = load i32, i32* %1, align 4
  %27 = or i32 %26, 12
  store i32 %27, i32* %1, align 4
  %28 = load i32, i32* %1, align 4
  %29 = call i32 @outb(i32 %28, i32 97)
  %30 = load i32, i32* %1, align 4
  %31 = and i32 %30, -13
  store i32 %31, i32* %1, align 4
  %32 = load i32, i32* %1, align 4
  %33 = call i32 @outb(i32 %32, i32 97)
  %34 = load i32*, i32** @IronECC, align 8
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %2, align 4
  %36 = load i32, i32* %2, align 4
  %37 = and i32 %36, 768
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %3
  br label %3

40:                                               ; preds = %3
  ret i32 0
}

declare dso_local i32 @printk(i8*, i32) #1

declare dso_local i32 @mb(...) #1

declare dso_local i32 @inb(i32) #1

declare dso_local i32 @outb(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
