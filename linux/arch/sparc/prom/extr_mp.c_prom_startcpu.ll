; ModuleID = '/home/carl/AnghaBench/linux/arch/sparc/prom/extr_mp.c_prom_startcpu.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sparc/prom/extr_mp.c_prom_startcpu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (i32, i32, i32, i8*)* }
%struct.linux_prom_registers = type { i32 }

@prom_lock = common dso_local global i32 0, align 4
@prom_vers = common dso_local global i32 0, align 4
@romvec = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @prom_startcpu(i32 %0, %struct.linux_prom_registers* %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.linux_prom_registers*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store %struct.linux_prom_registers* %1, %struct.linux_prom_registers** %6, align 8
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  %11 = load i64, i64* %10, align 8
  %12 = call i32 @spin_lock_irqsave(i32* @prom_lock, i64 %11)
  %13 = load i32, i32* @prom_vers, align 4
  switch i32 %13, label %15 [
    i32 130, label %14
    i32 129, label %14
    i32 128, label %16
  ]

14:                                               ; preds = %4, %4
  br label %15

15:                                               ; preds = %4, %14
  store i32 -1, i32* %9, align 4
  br label %26

16:                                               ; preds = %4
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** @romvec, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32 (i32, i32, i32, i8*)*, i32 (i32, i32, i32, i8*)** %18, align 8
  %20 = load i32, i32* %5, align 4
  %21 = load %struct.linux_prom_registers*, %struct.linux_prom_registers** %6, align 8
  %22 = ptrtoint %struct.linux_prom_registers* %21 to i32
  %23 = load i32, i32* %7, align 4
  %24 = load i8*, i8** %8, align 8
  %25 = call i32 %19(i32 %20, i32 %22, i32 %23, i8* %24)
  store i32 %25, i32* %9, align 4
  br label %26

26:                                               ; preds = %16, %15
  %27 = call i32 (...) @restore_current()
  %28 = load i64, i64* %10, align 8
  %29 = call i32 @spin_unlock_irqrestore(i32* @prom_lock, i64 %28)
  %30 = load i32, i32* %9, align 4
  ret i32 %30
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @restore_current(...) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
