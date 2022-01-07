; ModuleID = '/home/carl/AnghaBench/linux/arch/um/drivers/extr_chan_kern.c_console_write_chan.c'
source_filename = "/home/carl/AnghaBench/linux/arch/um/drivers/extr_chan_kern.c_console_write_chan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.chan = type { i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (i32, i8*, i32)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @console_write_chan(%struct.chan* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.chan*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.chan* %0, %struct.chan** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %9, align 4
  %10 = load %struct.chan*, %struct.chan** %5, align 8
  %11 = icmp ne %struct.chan* %10, null
  br i1 %11, label %12, label %19

12:                                               ; preds = %3
  %13 = load %struct.chan*, %struct.chan** %5, align 8
  %14 = getelementptr inbounds %struct.chan, %struct.chan* %13, i32 0, i32 2
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32 (i32, i8*, i32)*, i32 (i32, i8*, i32)** %16, align 8
  %18 = icmp ne i32 (i32, i8*, i32)* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %12, %3
  store i32 0, i32* %4, align 4
  br label %40

20:                                               ; preds = %12
  %21 = load %struct.chan*, %struct.chan** %5, align 8
  %22 = getelementptr inbounds %struct.chan, %struct.chan* %21, i32 0, i32 2
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32 (i32, i8*, i32)*, i32 (i32, i8*, i32)** %24, align 8
  %26 = load %struct.chan*, %struct.chan** %5, align 8
  %27 = getelementptr inbounds %struct.chan, %struct.chan* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = load i8*, i8** %6, align 8
  %30 = load i32, i32* %7, align 4
  %31 = call i32 %25(i32 %28, i8* %29, i32 %30)
  store i32 %31, i32* %8, align 4
  %32 = load %struct.chan*, %struct.chan** %5, align 8
  %33 = getelementptr inbounds %struct.chan, %struct.chan* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %20
  %37 = load i32, i32* %8, align 4
  store i32 %37, i32* %9, align 4
  br label %38

38:                                               ; preds = %36, %20
  %39 = load i32, i32* %9, align 4
  store i32 %39, i32* %4, align 4
  br label %40

40:                                               ; preds = %38, %19
  %41 = load i32, i32* %4, align 4
  ret i32 %41
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
