; ModuleID = '/home/carl/AnghaBench/linux/arch/parisc/kernel/extr_firmware.c_pdc_iodc_print.c'
source_filename = "/home/carl/AnghaBench/linux/arch/parisc/kernel/extr_firmware.c_pdc_iodc_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__, i32, i64, i32 }
%struct.TYPE_4__ = type { i8* }

@iodc_dbuf = common dso_local global i8* null, align 8
@pdc_lock = common dso_local global i32 0, align 4
@PAGE0 = common dso_local global %struct.TYPE_6__* null, align 8
@ENTRY_IO_COUT = common dso_local global i32 0, align 4
@iodc_retbuf = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pdc_iodc_print(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %7

7:                                                ; preds = %43, %2
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp ult i32 %8, %9
  br i1 %10, label %11, label %44

11:                                               ; preds = %7
  %12 = load i8*, i8** %3, align 8
  %13 = load i32, i32* %5, align 4
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds i8, i8* %12, i64 %14
  %16 = load i8, i8* %15, align 1
  %17 = zext i8 %16 to i32
  switch i32 %17, label %31 [
    i32 10, label %18
  ]

18:                                               ; preds = %11
  %19 = load i8*, i8** @iodc_dbuf, align 8
  %20 = load i32, i32* %5, align 4
  %21 = add i32 %20, 0
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds i8, i8* %19, i64 %22
  store i8 13, i8* %23, align 1
  %24 = load i8*, i8** @iodc_dbuf, align 8
  %25 = load i32, i32* %5, align 4
  %26 = add i32 %25, 1
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds i8, i8* %24, i64 %27
  store i8 10, i8* %28, align 1
  %29 = load i32, i32* %5, align 4
  %30 = add i32 %29, 2
  store i32 %30, i32* %5, align 4
  br label %45

31:                                               ; preds = %11
  %32 = load i8*, i8** %3, align 8
  %33 = load i32, i32* %5, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds i8, i8* %32, i64 %34
  %36 = load i8, i8* %35, align 1
  %37 = load i8*, i8** @iodc_dbuf, align 8
  %38 = load i32, i32* %5, align 4
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds i8, i8* %37, i64 %39
  store i8 %36, i8* %40, align 1
  %41 = load i32, i32* %5, align 4
  %42 = add i32 %41, 1
  store i32 %42, i32* %5, align 4
  br label %43

43:                                               ; preds = %31
  br label %7

44:                                               ; preds = %7
  br label %45

45:                                               ; preds = %44, %18
  %46 = load i64, i64* %6, align 8
  %47 = call i32 @spin_lock_irqsave(i32* @pdc_lock, i64 %46)
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** @PAGE0, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** @PAGE0, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = load i32, i32* @ENTRY_IO_COUT, align 4
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** @PAGE0, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** @PAGE0, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load i8*, i8** %64, align 8
  %66 = call i32 @__pa(i8* %65)
  %67 = load i8*, i8** @iodc_retbuf, align 8
  %68 = call i32 @__pa(i8* %67)
  %69 = load i8*, i8** @iodc_dbuf, align 8
  %70 = call i32 @__pa(i8* %69)
  %71 = load i32, i32* %5, align 4
  %72 = call i32 @real32_call(i32 %51, i64 %55, i32 %56, i32 %60, i32 %66, i32 %68, i32 0, i32 %70, i32 %71, i32 0)
  %73 = load i64, i64* %6, align 8
  %74 = call i32 @spin_unlock_irqrestore(i32* @pdc_lock, i64 %73)
  %75 = load i32, i32* %5, align 4
  ret i32 %75
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @real32_call(i32, i64, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @__pa(i8*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
