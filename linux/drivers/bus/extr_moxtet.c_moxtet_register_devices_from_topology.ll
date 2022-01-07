; ModuleID = '/home/carl/AnghaBench/linux/drivers/bus/extr_moxtet.c_moxtet_register_devices_from_topology.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bus/extr_moxtet.c_moxtet_register_devices_from_topology.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.moxtet = type { i32, i32, i32* }
%struct.moxtet_device = type { i32, i32, i32 }

@.str = private unnamed_addr constant [30 x i8] c"Moxtet device %u alloc error\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"Moxtet device %u register error: %i\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.moxtet*)* @moxtet_register_devices_from_topology to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @moxtet_register_devices_from_topology(%struct.moxtet* %0) #0 {
  %2 = alloca %struct.moxtet*, align 8
  %3 = alloca %struct.moxtet_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.moxtet* %0, %struct.moxtet** %2, align 8
  store i32 0, i32* %4, align 4
  br label %6

6:                                                ; preds = %56, %1
  %7 = load i32, i32* %4, align 4
  %8 = load %struct.moxtet*, %struct.moxtet** %2, align 8
  %9 = getelementptr inbounds %struct.moxtet, %struct.moxtet* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp slt i32 %7, %10
  br i1 %11, label %12, label %59

12:                                               ; preds = %6
  %13 = load %struct.moxtet*, %struct.moxtet** %2, align 8
  %14 = call %struct.moxtet_device* @moxtet_alloc_device(%struct.moxtet* %13)
  store %struct.moxtet_device* %14, %struct.moxtet_device** %3, align 8
  %15 = load %struct.moxtet_device*, %struct.moxtet_device** %3, align 8
  %16 = icmp ne %struct.moxtet_device* %15, null
  br i1 %16, label %23, label %17

17:                                               ; preds = %12
  %18 = load %struct.moxtet*, %struct.moxtet** %2, align 8
  %19 = getelementptr inbounds %struct.moxtet, %struct.moxtet* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %4, align 4
  %22 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %20, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %21)
  br label %56

23:                                               ; preds = %12
  %24 = load i32, i32* %4, align 4
  %25 = load %struct.moxtet_device*, %struct.moxtet_device** %3, align 8
  %26 = getelementptr inbounds %struct.moxtet_device, %struct.moxtet_device* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 4
  %27 = load %struct.moxtet*, %struct.moxtet** %2, align 8
  %28 = getelementptr inbounds %struct.moxtet, %struct.moxtet* %27, i32 0, i32 2
  %29 = load i32*, i32** %28, align 8
  %30 = load i32, i32* %4, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.moxtet_device*, %struct.moxtet_device** %3, align 8
  %35 = getelementptr inbounds %struct.moxtet_device, %struct.moxtet_device* %34, i32 0, i32 2
  store i32 %33, i32* %35, align 4
  %36 = load %struct.moxtet_device*, %struct.moxtet_device** %3, align 8
  %37 = call i32 @moxtet_add_device(%struct.moxtet_device* %36)
  store i32 %37, i32* %5, align 4
  %38 = load i32, i32* %5, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %55

40:                                               ; preds = %23
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* @EBUSY, align 4
  %43 = sub nsw i32 0, %42
  %44 = icmp ne i32 %41, %43
  br i1 %44, label %45, label %55

45:                                               ; preds = %40
  %46 = load %struct.moxtet_device*, %struct.moxtet_device** %3, align 8
  %47 = getelementptr inbounds %struct.moxtet_device, %struct.moxtet_device* %46, i32 0, i32 1
  %48 = call i32 @put_device(i32* %47)
  %49 = load %struct.moxtet*, %struct.moxtet** %2, align 8
  %50 = getelementptr inbounds %struct.moxtet, %struct.moxtet* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %4, align 4
  %53 = load i32, i32* %5, align 4
  %54 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %51, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %52, i32 %53)
  br label %55

55:                                               ; preds = %45, %40, %23
  br label %56

56:                                               ; preds = %55, %17
  %57 = load i32, i32* %4, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %4, align 4
  br label %6

59:                                               ; preds = %6
  ret void
}

declare dso_local %struct.moxtet_device* @moxtet_alloc_device(%struct.moxtet*) #1

declare dso_local i32 @dev_err(i32, i8*, i32, ...) #1

declare dso_local i32 @moxtet_add_device(%struct.moxtet_device*) #1

declare dso_local i32 @put_device(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
