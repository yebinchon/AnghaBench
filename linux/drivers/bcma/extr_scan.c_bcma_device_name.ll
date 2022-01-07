; ModuleID = '/home/carl/AnghaBench/linux/drivers/bcma/extr_scan.c_bcma_device_name.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bcma/extr_scan.c_bcma_device_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcma_device_id_name = type { i64, i8* }
%struct.bcma_device_id = type { i32, i64 }

@bcma_arm_device_names = common dso_local global %struct.bcma_device_id_name* null, align 8
@bcma_bcm_device_names = common dso_local global %struct.bcma_device_id_name* null, align 8
@bcma_mips_device_names = common dso_local global %struct.bcma_device_id_name* null, align 8
@.str = private unnamed_addr constant [8 x i8] c"UNKNOWN\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.bcma_device_id*)* @bcma_device_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @bcma_device_name(%struct.bcma_device_id* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.bcma_device_id*, align 8
  %4 = alloca %struct.bcma_device_id_name*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.bcma_device_id* %0, %struct.bcma_device_id** %3, align 8
  %7 = load %struct.bcma_device_id*, %struct.bcma_device_id** %3, align 8
  %8 = getelementptr inbounds %struct.bcma_device_id, %struct.bcma_device_id* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  switch i32 %9, label %22 [
    i32 130, label %10
    i32 129, label %14
    i32 128, label %18
  ]

10:                                               ; preds = %1
  %11 = load %struct.bcma_device_id_name*, %struct.bcma_device_id_name** @bcma_arm_device_names, align 8
  store %struct.bcma_device_id_name* %11, %struct.bcma_device_id_name** %4, align 8
  %12 = load %struct.bcma_device_id_name*, %struct.bcma_device_id_name** @bcma_arm_device_names, align 8
  %13 = call i32 @ARRAY_SIZE(%struct.bcma_device_id_name* %12)
  store i32 %13, i32* %5, align 4
  br label %23

14:                                               ; preds = %1
  %15 = load %struct.bcma_device_id_name*, %struct.bcma_device_id_name** @bcma_bcm_device_names, align 8
  store %struct.bcma_device_id_name* %15, %struct.bcma_device_id_name** %4, align 8
  %16 = load %struct.bcma_device_id_name*, %struct.bcma_device_id_name** @bcma_bcm_device_names, align 8
  %17 = call i32 @ARRAY_SIZE(%struct.bcma_device_id_name* %16)
  store i32 %17, i32* %5, align 4
  br label %23

18:                                               ; preds = %1
  %19 = load %struct.bcma_device_id_name*, %struct.bcma_device_id_name** @bcma_mips_device_names, align 8
  store %struct.bcma_device_id_name* %19, %struct.bcma_device_id_name** %4, align 8
  %20 = load %struct.bcma_device_id_name*, %struct.bcma_device_id_name** @bcma_mips_device_names, align 8
  %21 = call i32 @ARRAY_SIZE(%struct.bcma_device_id_name* %20)
  store i32 %21, i32* %5, align 4
  br label %23

22:                                               ; preds = %1
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %2, align 8
  br label %51

23:                                               ; preds = %18, %14, %10
  store i32 0, i32* %6, align 4
  br label %24

24:                                               ; preds = %47, %23
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* %5, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %50

28:                                               ; preds = %24
  %29 = load %struct.bcma_device_id_name*, %struct.bcma_device_id_name** %4, align 8
  %30 = load i32, i32* %6, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.bcma_device_id_name, %struct.bcma_device_id_name* %29, i64 %31
  %33 = getelementptr inbounds %struct.bcma_device_id_name, %struct.bcma_device_id_name* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.bcma_device_id*, %struct.bcma_device_id** %3, align 8
  %36 = getelementptr inbounds %struct.bcma_device_id, %struct.bcma_device_id* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp eq i64 %34, %37
  br i1 %38, label %39, label %46

39:                                               ; preds = %28
  %40 = load %struct.bcma_device_id_name*, %struct.bcma_device_id_name** %4, align 8
  %41 = load i32, i32* %6, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.bcma_device_id_name, %struct.bcma_device_id_name* %40, i64 %42
  %44 = getelementptr inbounds %struct.bcma_device_id_name, %struct.bcma_device_id_name* %43, i32 0, i32 1
  %45 = load i8*, i8** %44, align 8
  store i8* %45, i8** %2, align 8
  br label %51

46:                                               ; preds = %28
  br label %47

47:                                               ; preds = %46
  %48 = load i32, i32* %6, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %6, align 4
  br label %24

50:                                               ; preds = %24
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %2, align 8
  br label %51

51:                                               ; preds = %50, %39, %22
  %52 = load i8*, i8** %2, align 8
  ret i8* %52
}

declare dso_local i32 @ARRAY_SIZE(%struct.bcma_device_id_name*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
