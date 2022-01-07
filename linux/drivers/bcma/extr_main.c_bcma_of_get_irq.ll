; ModuleID = '/home/carl/AnghaBench/linux/drivers/bcma/extr_main.c_bcma_of_get_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bcma/extr_main.c_bcma_of_get_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.bcma_device = type { i32 }
%struct.of_phandle_args = type { i32 }

@CONFIG_OF_IRQ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"bcma_of_get_irq() failed with rc=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.bcma_device*, i32)* @bcma_of_get_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcma_of_get_irq(%struct.device* %0, %struct.bcma_device* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.bcma_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.of_phandle_args, align 4
  %9 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.bcma_device* %1, %struct.bcma_device** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* @CONFIG_OF_IRQ, align 4
  %11 = call i32 @IS_ENABLED(i32 %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %3
  %14 = load %struct.device*, %struct.device** %5, align 8
  %15 = getelementptr inbounds %struct.device, %struct.device* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %13, %3
  store i32 0, i32* %4, align 4
  br label %34

19:                                               ; preds = %13
  %20 = load %struct.device*, %struct.device** %5, align 8
  %21 = load %struct.bcma_device*, %struct.bcma_device** %6, align 8
  %22 = load i32, i32* %7, align 4
  %23 = call i32 @bcma_of_irq_parse(%struct.device* %20, %struct.bcma_device* %21, %struct.of_phandle_args* %8, i32 %22)
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* %9, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %19
  %27 = load %struct.bcma_device*, %struct.bcma_device** %6, align 8
  %28 = getelementptr inbounds %struct.bcma_device, %struct.bcma_device* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %9, align 4
  %31 = call i32 @bcma_debug(i32 %29, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %30)
  store i32 0, i32* %4, align 4
  br label %34

32:                                               ; preds = %19
  %33 = call i32 @irq_create_of_mapping(%struct.of_phandle_args* %8)
  store i32 %33, i32* %4, align 4
  br label %34

34:                                               ; preds = %32, %26, %18
  %35 = load i32, i32* %4, align 4
  ret i32 %35
}

declare dso_local i32 @IS_ENABLED(i32) #1

declare dso_local i32 @bcma_of_irq_parse(%struct.device*, %struct.bcma_device*, %struct.of_phandle_args*, i32) #1

declare dso_local i32 @bcma_debug(i32, i8*, i32) #1

declare dso_local i32 @irq_create_of_mapping(%struct.of_phandle_args*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
