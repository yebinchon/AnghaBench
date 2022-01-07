; ModuleID = '/home/carl/AnghaBench/linux/drivers/bcma/extr_main.c_bcma_of_irq_parse.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bcma/extr_main.c_bcma_of_irq_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.bcma_device = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.of_phandle_args = type { i32, i32*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.bcma_device*, %struct.of_phandle_args*, i32)* @bcma_of_irq_parse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcma_of_irq_parse(%struct.device* %0, %struct.bcma_device* %1, %struct.of_phandle_args* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.bcma_device*, align 8
  %8 = alloca %struct.of_phandle_args*, align 8
  %9 = alloca i32, align 4
  %10 = alloca [1 x i32], align 4
  %11 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.bcma_device* %1, %struct.bcma_device** %7, align 8
  store %struct.of_phandle_args* %2, %struct.of_phandle_args** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load %struct.bcma_device*, %struct.bcma_device** %7, align 8
  %13 = getelementptr inbounds %struct.bcma_device, %struct.bcma_device* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %30

17:                                               ; preds = %4
  %18 = load %struct.bcma_device*, %struct.bcma_device** %7, align 8
  %19 = getelementptr inbounds %struct.bcma_device, %struct.bcma_device* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i32, i32* %9, align 4
  %23 = load %struct.of_phandle_args*, %struct.of_phandle_args** %8, align 8
  %24 = call i32 @of_irq_parse_one(i64 %21, i32 %22, %struct.of_phandle_args* %23)
  store i32 %24, i32* %11, align 4
  %25 = load i32, i32* %11, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %17
  %28 = load i32, i32* %11, align 4
  store i32 %28, i32* %5, align 4
  br label %51

29:                                               ; preds = %17
  br label %30

30:                                               ; preds = %29, %4
  %31 = load %struct.device*, %struct.device** %6, align 8
  %32 = getelementptr inbounds %struct.device, %struct.device* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.of_phandle_args*, %struct.of_phandle_args** %8, align 8
  %35 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %34, i32 0, i32 2
  store i32 %33, i32* %35, align 8
  %36 = load %struct.of_phandle_args*, %struct.of_phandle_args** %8, align 8
  %37 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %36, i32 0, i32 0
  store i32 1, i32* %37, align 8
  %38 = load i32, i32* %9, align 4
  %39 = load %struct.of_phandle_args*, %struct.of_phandle_args** %8, align 8
  %40 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %39, i32 0, i32 1
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 0
  store i32 %38, i32* %42, align 4
  %43 = load %struct.bcma_device*, %struct.bcma_device** %7, align 8
  %44 = getelementptr inbounds %struct.bcma_device, %struct.bcma_device* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @cpu_to_be32(i32 %45)
  %47 = getelementptr inbounds [1 x i32], [1 x i32]* %10, i64 0, i64 0
  store i32 %46, i32* %47, align 4
  %48 = getelementptr inbounds [1 x i32], [1 x i32]* %10, i64 0, i64 0
  %49 = load %struct.of_phandle_args*, %struct.of_phandle_args** %8, align 8
  %50 = call i32 @of_irq_parse_raw(i32* %48, %struct.of_phandle_args* %49)
  store i32 %50, i32* %5, align 4
  br label %51

51:                                               ; preds = %30, %27
  %52 = load i32, i32* %5, align 4
  ret i32 %52
}

declare dso_local i32 @of_irq_parse_one(i64, i32, %struct.of_phandle_args*) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @of_irq_parse_raw(i32*, %struct.of_phandle_args*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
