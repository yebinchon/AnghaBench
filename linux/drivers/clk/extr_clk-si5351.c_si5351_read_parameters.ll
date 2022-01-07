; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/extr_clk-si5351.c_si5351_read_parameters.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/extr_clk-si5351.c_si5351_read_parameters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.si5351_driver_data = type { i32 }
%struct.si5351_parameters = type { i32, i32, i32, i32 }

@SI5351_PARAMETERS_LENGTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.si5351_driver_data*, i32, %struct.si5351_parameters*)* @si5351_read_parameters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @si5351_read_parameters(%struct.si5351_driver_data* %0, i32 %1, %struct.si5351_parameters* %2) #0 {
  %4 = alloca %struct.si5351_driver_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.si5351_parameters*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  store %struct.si5351_driver_data* %0, %struct.si5351_driver_data** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.si5351_parameters* %2, %struct.si5351_parameters** %6, align 8
  %9 = load i32, i32* @SI5351_PARAMETERS_LENGTH, align 4
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %7, align 8
  %12 = alloca i32, i64 %10, align 16
  store i64 %10, i64* %8, align 8
  %13 = load i32, i32* %5, align 4
  switch i32 %13, label %27 [
    i32 129, label %14
    i32 128, label %14
  ]

14:                                               ; preds = %3, %3
  %15 = load %struct.si5351_driver_data*, %struct.si5351_driver_data** %4, align 8
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @si5351_reg_read(%struct.si5351_driver_data* %15, i32 %16)
  %18 = getelementptr inbounds i32, i32* %12, i64 0
  store i32 %17, i32* %18, align 16
  %19 = getelementptr inbounds i32, i32* %12, i64 0
  %20 = load i32, i32* %19, align 16
  %21 = load %struct.si5351_parameters*, %struct.si5351_parameters** %6, align 8
  %22 = getelementptr inbounds %struct.si5351_parameters, %struct.si5351_parameters* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 4
  %23 = load %struct.si5351_parameters*, %struct.si5351_parameters** %6, align 8
  %24 = getelementptr inbounds %struct.si5351_parameters, %struct.si5351_parameters* %23, i32 0, i32 1
  store i32 0, i32* %24, align 4
  %25 = load %struct.si5351_parameters*, %struct.si5351_parameters** %6, align 8
  %26 = getelementptr inbounds %struct.si5351_parameters, %struct.si5351_parameters* %25, i32 0, i32 2
  store i32 1, i32* %26, align 4
  br label %71

27:                                               ; preds = %3
  %28 = load %struct.si5351_driver_data*, %struct.si5351_driver_data** %4, align 8
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* @SI5351_PARAMETERS_LENGTH, align 4
  %31 = call i32 @si5351_bulk_read(%struct.si5351_driver_data* %28, i32 %29, i32 %30, i32* %12)
  %32 = getelementptr inbounds i32, i32* %12, i64 2
  %33 = load i32, i32* %32, align 8
  %34 = and i32 %33, 3
  %35 = shl i32 %34, 16
  %36 = getelementptr inbounds i32, i32* %12, i64 3
  %37 = load i32, i32* %36, align 4
  %38 = shl i32 %37, 8
  %39 = or i32 %35, %38
  %40 = getelementptr inbounds i32, i32* %12, i64 4
  %41 = load i32, i32* %40, align 16
  %42 = or i32 %39, %41
  %43 = load %struct.si5351_parameters*, %struct.si5351_parameters** %6, align 8
  %44 = getelementptr inbounds %struct.si5351_parameters, %struct.si5351_parameters* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 4
  %45 = getelementptr inbounds i32, i32* %12, i64 5
  %46 = load i32, i32* %45, align 4
  %47 = and i32 %46, 15
  %48 = shl i32 %47, 16
  %49 = getelementptr inbounds i32, i32* %12, i64 6
  %50 = load i32, i32* %49, align 8
  %51 = shl i32 %50, 8
  %52 = or i32 %48, %51
  %53 = getelementptr inbounds i32, i32* %12, i64 7
  %54 = load i32, i32* %53, align 4
  %55 = or i32 %52, %54
  %56 = load %struct.si5351_parameters*, %struct.si5351_parameters** %6, align 8
  %57 = getelementptr inbounds %struct.si5351_parameters, %struct.si5351_parameters* %56, i32 0, i32 1
  store i32 %55, i32* %57, align 4
  %58 = getelementptr inbounds i32, i32* %12, i64 5
  %59 = load i32, i32* %58, align 4
  %60 = and i32 %59, 240
  %61 = shl i32 %60, 12
  %62 = getelementptr inbounds i32, i32* %12, i64 0
  %63 = load i32, i32* %62, align 16
  %64 = shl i32 %63, 8
  %65 = or i32 %61, %64
  %66 = getelementptr inbounds i32, i32* %12, i64 1
  %67 = load i32, i32* %66, align 4
  %68 = or i32 %65, %67
  %69 = load %struct.si5351_parameters*, %struct.si5351_parameters** %6, align 8
  %70 = getelementptr inbounds %struct.si5351_parameters, %struct.si5351_parameters* %69, i32 0, i32 2
  store i32 %68, i32* %70, align 4
  br label %71

71:                                               ; preds = %27, %14
  %72 = load %struct.si5351_parameters*, %struct.si5351_parameters** %6, align 8
  %73 = getelementptr inbounds %struct.si5351_parameters, %struct.si5351_parameters* %72, i32 0, i32 3
  store i32 1, i32* %73, align 4
  %74 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %74)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @si5351_reg_read(%struct.si5351_driver_data*, i32) #2

declare dso_local i32 @si5351_bulk_read(%struct.si5351_driver_data*, i32, i32, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
