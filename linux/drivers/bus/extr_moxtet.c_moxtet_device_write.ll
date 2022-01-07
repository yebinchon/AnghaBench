; ModuleID = '/home/carl/AnghaBench/linux/drivers/bus/extr_moxtet.c_moxtet_device_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bus/extr_moxtet.c_moxtet_device_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.moxtet_device = type { i64, %struct.moxtet* }
%struct.moxtet = type { i64, i32, i32*, i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @moxtet_device_write(%struct.device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.moxtet_device*, align 8
  %7 = alloca %struct.moxtet*, align 8
  %8 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.device*, %struct.device** %4, align 8
  %10 = call %struct.moxtet_device* @to_moxtet_device(%struct.device* %9)
  store %struct.moxtet_device* %10, %struct.moxtet_device** %6, align 8
  %11 = load %struct.moxtet_device*, %struct.moxtet_device** %6, align 8
  %12 = getelementptr inbounds %struct.moxtet_device, %struct.moxtet_device* %11, i32 0, i32 1
  %13 = load %struct.moxtet*, %struct.moxtet** %12, align 8
  store %struct.moxtet* %13, %struct.moxtet** %7, align 8
  %14 = load %struct.moxtet_device*, %struct.moxtet_device** %6, align 8
  %15 = getelementptr inbounds %struct.moxtet_device, %struct.moxtet_device* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.moxtet*, %struct.moxtet** %7, align 8
  %18 = getelementptr inbounds %struct.moxtet, %struct.moxtet* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp sge i64 %16, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %2
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %56

24:                                               ; preds = %2
  %25 = load %struct.moxtet*, %struct.moxtet** %7, align 8
  %26 = getelementptr inbounds %struct.moxtet, %struct.moxtet* %25, i32 0, i32 1
  %27 = call i32 @mutex_lock(i32* %26)
  %28 = load i32, i32* %5, align 4
  %29 = load %struct.moxtet*, %struct.moxtet** %7, align 8
  %30 = getelementptr inbounds %struct.moxtet, %struct.moxtet* %29, i32 0, i32 2
  %31 = load i32*, i32** %30, align 8
  %32 = load %struct.moxtet*, %struct.moxtet** %7, align 8
  %33 = getelementptr inbounds %struct.moxtet, %struct.moxtet* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.moxtet_device*, %struct.moxtet_device** %6, align 8
  %36 = getelementptr inbounds %struct.moxtet_device, %struct.moxtet_device* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = sub nsw i64 %34, %37
  %39 = getelementptr inbounds i32, i32* %31, i64 %38
  store i32 %28, i32* %39, align 4
  %40 = load %struct.moxtet*, %struct.moxtet** %7, align 8
  %41 = getelementptr inbounds %struct.moxtet, %struct.moxtet* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @to_spi_device(i32 %42)
  %44 = load %struct.moxtet*, %struct.moxtet** %7, align 8
  %45 = getelementptr inbounds %struct.moxtet, %struct.moxtet* %44, i32 0, i32 2
  %46 = load i32*, i32** %45, align 8
  %47 = load %struct.moxtet*, %struct.moxtet** %7, align 8
  %48 = getelementptr inbounds %struct.moxtet, %struct.moxtet* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = add nsw i64 %49, 1
  %51 = call i32 @spi_write(i32 %43, i32* %46, i64 %50)
  store i32 %51, i32* %8, align 4
  %52 = load %struct.moxtet*, %struct.moxtet** %7, align 8
  %53 = getelementptr inbounds %struct.moxtet, %struct.moxtet* %52, i32 0, i32 1
  %54 = call i32 @mutex_unlock(i32* %53)
  %55 = load i32, i32* %8, align 4
  store i32 %55, i32* %3, align 4
  br label %56

56:                                               ; preds = %24, %21
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local %struct.moxtet_device* @to_moxtet_device(%struct.device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @spi_write(i32, i32*, i64) #1

declare dso_local i32 @to_spi_device(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
