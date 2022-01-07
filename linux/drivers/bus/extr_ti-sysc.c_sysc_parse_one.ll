; ModuleID = '/home/carl/AnghaBench/linux/drivers/bus/extr_ti-sysc.c_sysc_parse_one.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bus/extr_ti-sysc.c_sysc_parse_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sysc = type { i64, i64*, i32 }
%struct.resource = type { i64 }

@reg_names = common dso_local global i8** null, align 8
@EINVAL = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sysc*, i32)* @sysc_parse_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sysc_parse_one(%struct.sysc* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sysc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.resource*, align 8
  %7 = alloca i8*, align 8
  store %struct.sysc* %0, %struct.sysc** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  switch i32 %8, label %15 [
    i32 130, label %9
    i32 129, label %9
    i32 128, label %9
  ]

9:                                                ; preds = %2, %2, %2
  %10 = load i8**, i8*** @reg_names, align 8
  %11 = load i32, i32* %5, align 4
  %12 = zext i32 %11 to i64
  %13 = getelementptr inbounds i8*, i8** %10, i64 %12
  %14 = load i8*, i8** %13, align 8
  store i8* %14, i8** %7, align 8
  br label %18

15:                                               ; preds = %2
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %58

18:                                               ; preds = %9
  %19 = load %struct.sysc*, %struct.sysc** %4, align 8
  %20 = getelementptr inbounds %struct.sysc, %struct.sysc* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @to_platform_device(i32 %21)
  %23 = load i32, i32* @IORESOURCE_MEM, align 4
  %24 = load i8*, i8** %7, align 8
  %25 = call %struct.resource* @platform_get_resource_byname(i32 %22, i32 %23, i8* %24)
  store %struct.resource* %25, %struct.resource** %6, align 8
  %26 = load %struct.resource*, %struct.resource** %6, align 8
  %27 = icmp ne %struct.resource* %26, null
  br i1 %27, label %37, label %28

28:                                               ; preds = %18
  %29 = load i64, i64* @ENODEV, align 8
  %30 = sub nsw i64 0, %29
  %31 = load %struct.sysc*, %struct.sysc** %4, align 8
  %32 = getelementptr inbounds %struct.sysc, %struct.sysc* %31, i32 0, i32 1
  %33 = load i64*, i64** %32, align 8
  %34 = load i32, i32* %5, align 4
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds i64, i64* %33, i64 %35
  store i64 %30, i64* %36, align 8
  store i32 0, i32* %3, align 4
  br label %58

37:                                               ; preds = %18
  %38 = load %struct.resource*, %struct.resource** %6, align 8
  %39 = getelementptr inbounds %struct.resource, %struct.resource* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.sysc*, %struct.sysc** %4, align 8
  %42 = getelementptr inbounds %struct.sysc, %struct.sysc* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = sub nsw i64 %40, %43
  %45 = load %struct.sysc*, %struct.sysc** %4, align 8
  %46 = getelementptr inbounds %struct.sysc, %struct.sysc* %45, i32 0, i32 1
  %47 = load i64*, i64** %46, align 8
  %48 = load i32, i32* %5, align 4
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds i64, i64* %47, i64 %49
  store i64 %44, i64* %50, align 8
  %51 = load i32, i32* %5, align 4
  %52 = icmp eq i32 %51, 130
  br i1 %52, label %53, label %57

53:                                               ; preds = %37
  %54 = load %struct.sysc*, %struct.sysc** %4, align 8
  %55 = load %struct.resource*, %struct.resource** %6, align 8
  %56 = call i32 @sysc_check_quirk_16bit(%struct.sysc* %54, %struct.resource* %55)
  br label %57

57:                                               ; preds = %53, %37
  store i32 0, i32* %3, align 4
  br label %58

58:                                               ; preds = %57, %28, %15
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local %struct.resource* @platform_get_resource_byname(i32, i32, i8*) #1

declare dso_local i32 @to_platform_device(i32) #1

declare dso_local i32 @sysc_check_quirk_16bit(%struct.sysc*, %struct.resource*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
