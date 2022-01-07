; ModuleID = '/home/carl/AnghaBench/linux/drivers/bus/extr_moxtet.c_moxtet_device_written.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bus/extr_moxtet.c_moxtet_device_written.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.moxtet_device = type { i64, %struct.moxtet* }
%struct.moxtet = type { i64, i32* }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @moxtet_device_written(%struct.device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.moxtet_device*, align 8
  %5 = alloca %struct.moxtet*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  %6 = load %struct.device*, %struct.device** %3, align 8
  %7 = call %struct.moxtet_device* @to_moxtet_device(%struct.device* %6)
  store %struct.moxtet_device* %7, %struct.moxtet_device** %4, align 8
  %8 = load %struct.moxtet_device*, %struct.moxtet_device** %4, align 8
  %9 = getelementptr inbounds %struct.moxtet_device, %struct.moxtet_device* %8, i32 0, i32 1
  %10 = load %struct.moxtet*, %struct.moxtet** %9, align 8
  store %struct.moxtet* %10, %struct.moxtet** %5, align 8
  %11 = load %struct.moxtet_device*, %struct.moxtet_device** %4, align 8
  %12 = getelementptr inbounds %struct.moxtet_device, %struct.moxtet_device* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.moxtet*, %struct.moxtet** %5, align 8
  %15 = getelementptr inbounds %struct.moxtet, %struct.moxtet* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp sge i64 %13, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %1
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %34

21:                                               ; preds = %1
  %22 = load %struct.moxtet*, %struct.moxtet** %5, align 8
  %23 = getelementptr inbounds %struct.moxtet, %struct.moxtet* %22, i32 0, i32 1
  %24 = load i32*, i32** %23, align 8
  %25 = load %struct.moxtet*, %struct.moxtet** %5, align 8
  %26 = getelementptr inbounds %struct.moxtet, %struct.moxtet* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.moxtet_device*, %struct.moxtet_device** %4, align 8
  %29 = getelementptr inbounds %struct.moxtet_device, %struct.moxtet_device* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = sub nsw i64 %27, %30
  %32 = getelementptr inbounds i32, i32* %24, i64 %31
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %2, align 4
  br label %34

34:                                               ; preds = %21, %18
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

declare dso_local %struct.moxtet_device* @to_moxtet_device(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
