; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/sgi-ip22/extr_ip22-gio.c_gio_register_driver.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/sgi-ip22/extr_ip22-gio.c_gio_register_driver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gio_driver = type { %struct.TYPE_2__, i64, i64 }
%struct.TYPE_2__ = type { i32*, i64, i64 }

@gio_bus_type = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gio_register_driver(%struct.gio_driver* %0) #0 {
  %2 = alloca %struct.gio_driver*, align 8
  store %struct.gio_driver* %0, %struct.gio_driver** %2, align 8
  %3 = load %struct.gio_driver*, %struct.gio_driver** %2, align 8
  %4 = getelementptr inbounds %struct.gio_driver, %struct.gio_driver* %3, i32 0, i32 0
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 2
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %15, label %8

8:                                                ; preds = %1
  %9 = load %struct.gio_driver*, %struct.gio_driver** %2, align 8
  %10 = getelementptr inbounds %struct.gio_driver, %struct.gio_driver* %9, i32 0, i32 2
  %11 = load i64, i64* %10, align 8
  %12 = load %struct.gio_driver*, %struct.gio_driver** %2, align 8
  %13 = getelementptr inbounds %struct.gio_driver, %struct.gio_driver* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 2
  store i64 %11, i64* %14, align 8
  br label %15

15:                                               ; preds = %8, %1
  %16 = load %struct.gio_driver*, %struct.gio_driver** %2, align 8
  %17 = getelementptr inbounds %struct.gio_driver, %struct.gio_driver* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %28, label %21

21:                                               ; preds = %15
  %22 = load %struct.gio_driver*, %struct.gio_driver** %2, align 8
  %23 = getelementptr inbounds %struct.gio_driver, %struct.gio_driver* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.gio_driver*, %struct.gio_driver** %2, align 8
  %26 = getelementptr inbounds %struct.gio_driver, %struct.gio_driver* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  store i64 %24, i64* %27, align 8
  br label %28

28:                                               ; preds = %21, %15
  %29 = load %struct.gio_driver*, %struct.gio_driver** %2, align 8
  %30 = getelementptr inbounds %struct.gio_driver, %struct.gio_driver* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  store i32* @gio_bus_type, i32** %31, align 8
  %32 = load %struct.gio_driver*, %struct.gio_driver** %2, align 8
  %33 = getelementptr inbounds %struct.gio_driver, %struct.gio_driver* %32, i32 0, i32 0
  %34 = call i32 @driver_register(%struct.TYPE_2__* %33)
  ret i32 %34
}

declare dso_local i32 @driver_register(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
