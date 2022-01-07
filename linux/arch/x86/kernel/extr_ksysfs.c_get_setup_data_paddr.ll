; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/extr_ksysfs.c_get_setup_data_paddr.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/extr_ksysfs.c_get_setup_data_paddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.setup_data = type { i64 }

@boot_params = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@MEMREMAP_WB = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64*)* @get_setup_data_paddr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_setup_data_paddr(i32 %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.setup_data*, align 8
  %8 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i64* %1, i64** %5, align 8
  store i32 0, i32* %6, align 4
  %9 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @boot_params, i32 0, i32 0, i32 0), align 8
  store i64 %9, i64* %8, align 8
  br label %10

10:                                               ; preds = %29, %2
  %11 = load i64, i64* %8, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %37

13:                                               ; preds = %10
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %13
  %18 = load i64, i64* %8, align 8
  %19 = load i64*, i64** %5, align 8
  store i64 %18, i64* %19, align 8
  store i32 0, i32* %3, align 4
  br label %40

20:                                               ; preds = %13
  %21 = load i64, i64* %8, align 8
  %22 = load i32, i32* @MEMREMAP_WB, align 4
  %23 = call %struct.setup_data* @memremap(i64 %21, i32 8, i32 %22)
  store %struct.setup_data* %23, %struct.setup_data** %7, align 8
  %24 = load %struct.setup_data*, %struct.setup_data** %7, align 8
  %25 = icmp ne %struct.setup_data* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %20
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %40

29:                                               ; preds = %20
  %30 = load %struct.setup_data*, %struct.setup_data** %7, align 8
  %31 = getelementptr inbounds %struct.setup_data, %struct.setup_data* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  store i64 %32, i64* %8, align 8
  %33 = load %struct.setup_data*, %struct.setup_data** %7, align 8
  %34 = call i32 @memunmap(%struct.setup_data* %33)
  %35 = load i32, i32* %6, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %6, align 4
  br label %10

37:                                               ; preds = %10
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %3, align 4
  br label %40

40:                                               ; preds = %37, %26, %17
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local %struct.setup_data* @memremap(i64, i32, i32) #1

declare dso_local i32 @memunmap(%struct.setup_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
