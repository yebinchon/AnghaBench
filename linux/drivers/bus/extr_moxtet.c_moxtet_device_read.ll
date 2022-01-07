; ModuleID = '/home/carl/AnghaBench/linux/drivers/bus/extr_moxtet.c_moxtet_device_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bus/extr_moxtet.c_moxtet_device_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.moxtet_device = type { i32, %struct.moxtet* }
%struct.moxtet = type { i32 }

@TURRIS_MOX_MAX_MODULES = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @moxtet_device_read(%struct.device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.moxtet_device*, align 8
  %5 = alloca %struct.moxtet*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  %10 = load %struct.device*, %struct.device** %3, align 8
  %11 = call %struct.moxtet_device* @to_moxtet_device(%struct.device* %10)
  store %struct.moxtet_device* %11, %struct.moxtet_device** %4, align 8
  %12 = load %struct.moxtet_device*, %struct.moxtet_device** %4, align 8
  %13 = getelementptr inbounds %struct.moxtet_device, %struct.moxtet_device* %12, i32 0, i32 1
  %14 = load %struct.moxtet*, %struct.moxtet** %13, align 8
  store %struct.moxtet* %14, %struct.moxtet** %5, align 8
  %15 = load i32, i32* @TURRIS_MOX_MAX_MODULES, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %6, align 8
  %18 = alloca i32, i64 %16, align 16
  store i64 %16, i64* %7, align 8
  %19 = load %struct.moxtet_device*, %struct.moxtet_device** %4, align 8
  %20 = getelementptr inbounds %struct.moxtet_device, %struct.moxtet_device* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.moxtet*, %struct.moxtet** %5, align 8
  %23 = getelementptr inbounds %struct.moxtet, %struct.moxtet* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp sge i32 %21, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %1
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %45

29:                                               ; preds = %1
  %30 = load %struct.moxtet*, %struct.moxtet** %5, align 8
  %31 = call i32 @moxtet_spi_read(%struct.moxtet* %30, i32* %18)
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %8, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %29
  %35 = load i32, i32* %8, align 4
  store i32 %35, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %45

36:                                               ; preds = %29
  %37 = load %struct.moxtet_device*, %struct.moxtet_device** %4, align 8
  %38 = getelementptr inbounds %struct.moxtet_device, %struct.moxtet_device* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = add nsw i32 %39, 1
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %18, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = ashr i32 %43, 4
  store i32 %44, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %45

45:                                               ; preds = %36, %34, %26
  %46 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %46)
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

declare dso_local %struct.moxtet_device* @to_moxtet_device(%struct.device*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @moxtet_spi_read(%struct.moxtet*, i32*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
