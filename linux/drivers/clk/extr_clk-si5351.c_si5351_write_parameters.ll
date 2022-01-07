; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/extr_clk-si5351.c_si5351_write_parameters.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/extr_clk-si5351.c_si5351_write_parameters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.si5351_driver_data = type { i32 }
%struct.si5351_parameters = type { i32, i32, i32 }

@SI5351_PARAMETERS_LENGTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.si5351_driver_data*, i32, %struct.si5351_parameters*)* @si5351_write_parameters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @si5351_write_parameters(%struct.si5351_driver_data* %0, i32 %1, %struct.si5351_parameters* %2) #0 {
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
  switch i32 %13, label %25 [
    i32 129, label %14
    i32 128, label %14
  ]

14:                                               ; preds = %3, %3
  %15 = load %struct.si5351_parameters*, %struct.si5351_parameters** %6, align 8
  %16 = getelementptr inbounds %struct.si5351_parameters, %struct.si5351_parameters* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = and i32 %17, 255
  %19 = getelementptr inbounds i32, i32* %12, i64 0
  store i32 %18, i32* %19, align 16
  %20 = load %struct.si5351_driver_data*, %struct.si5351_driver_data** %4, align 8
  %21 = load i32, i32* %5, align 4
  %22 = getelementptr inbounds i32, i32* %12, i64 0
  %23 = load i32, i32* %22, align 16
  %24 = call i32 @si5351_reg_write(%struct.si5351_driver_data* %20, i32 %21, i32 %23)
  br label %93

25:                                               ; preds = %3
  %26 = load %struct.si5351_parameters*, %struct.si5351_parameters** %6, align 8
  %27 = getelementptr inbounds %struct.si5351_parameters, %struct.si5351_parameters* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = and i32 %28, 65280
  %30 = ashr i32 %29, 8
  %31 = and i32 %30, 255
  %32 = getelementptr inbounds i32, i32* %12, i64 0
  store i32 %31, i32* %32, align 16
  %33 = load %struct.si5351_parameters*, %struct.si5351_parameters** %6, align 8
  %34 = getelementptr inbounds %struct.si5351_parameters, %struct.si5351_parameters* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = and i32 %35, 255
  %37 = getelementptr inbounds i32, i32* %12, i64 1
  store i32 %36, i32* %37, align 4
  %38 = load %struct.si5351_driver_data*, %struct.si5351_driver_data** %4, align 8
  %39 = load i32, i32* %5, align 4
  %40 = add nsw i32 %39, 2
  %41 = call i32 @si5351_reg_read(%struct.si5351_driver_data* %38, i32 %40)
  %42 = and i32 %41, -4
  %43 = getelementptr inbounds i32, i32* %12, i64 2
  store i32 %42, i32* %43, align 8
  %44 = load %struct.si5351_parameters*, %struct.si5351_parameters** %6, align 8
  %45 = getelementptr inbounds %struct.si5351_parameters, %struct.si5351_parameters* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = and i32 %46, 196608
  %48 = ashr i32 %47, 16
  %49 = and i32 %48, 3
  %50 = getelementptr inbounds i32, i32* %12, i64 2
  %51 = load i32, i32* %50, align 8
  %52 = or i32 %51, %49
  store i32 %52, i32* %50, align 8
  %53 = load %struct.si5351_parameters*, %struct.si5351_parameters** %6, align 8
  %54 = getelementptr inbounds %struct.si5351_parameters, %struct.si5351_parameters* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = and i32 %55, 65280
  %57 = ashr i32 %56, 8
  %58 = and i32 %57, 255
  %59 = getelementptr inbounds i32, i32* %12, i64 3
  store i32 %58, i32* %59, align 4
  %60 = load %struct.si5351_parameters*, %struct.si5351_parameters** %6, align 8
  %61 = getelementptr inbounds %struct.si5351_parameters, %struct.si5351_parameters* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = and i32 %62, 255
  %64 = getelementptr inbounds i32, i32* %12, i64 4
  store i32 %63, i32* %64, align 16
  %65 = load %struct.si5351_parameters*, %struct.si5351_parameters** %6, align 8
  %66 = getelementptr inbounds %struct.si5351_parameters, %struct.si5351_parameters* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = and i32 %67, 983040
  %69 = ashr i32 %68, 12
  %70 = load %struct.si5351_parameters*, %struct.si5351_parameters** %6, align 8
  %71 = getelementptr inbounds %struct.si5351_parameters, %struct.si5351_parameters* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = and i32 %72, 983040
  %74 = ashr i32 %73, 16
  %75 = or i32 %69, %74
  %76 = getelementptr inbounds i32, i32* %12, i64 5
  store i32 %75, i32* %76, align 4
  %77 = load %struct.si5351_parameters*, %struct.si5351_parameters** %6, align 8
  %78 = getelementptr inbounds %struct.si5351_parameters, %struct.si5351_parameters* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = and i32 %79, 65280
  %81 = ashr i32 %80, 8
  %82 = and i32 %81, 255
  %83 = getelementptr inbounds i32, i32* %12, i64 6
  store i32 %82, i32* %83, align 8
  %84 = load %struct.si5351_parameters*, %struct.si5351_parameters** %6, align 8
  %85 = getelementptr inbounds %struct.si5351_parameters, %struct.si5351_parameters* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 4
  %87 = and i32 %86, 255
  %88 = getelementptr inbounds i32, i32* %12, i64 7
  store i32 %87, i32* %88, align 4
  %89 = load %struct.si5351_driver_data*, %struct.si5351_driver_data** %4, align 8
  %90 = load i32, i32* %5, align 4
  %91 = load i32, i32* @SI5351_PARAMETERS_LENGTH, align 4
  %92 = call i32 @si5351_bulk_write(%struct.si5351_driver_data* %89, i32 %90, i32 %91, i32* %12)
  br label %93

93:                                               ; preds = %25, %14
  %94 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %94)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @si5351_reg_write(%struct.si5351_driver_data*, i32, i32) #2

declare dso_local i32 @si5351_reg_read(%struct.si5351_driver_data*, i32) #2

declare dso_local i32 @si5351_bulk_write(%struct.si5351_driver_data*, i32, i32, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
