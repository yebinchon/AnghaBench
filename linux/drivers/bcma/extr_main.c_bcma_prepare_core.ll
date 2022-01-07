; ModuleID = '/home/carl/AnghaBench/linux/drivers/bcma/extr_main.c_bcma_prepare_core.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bcma/extr_main.c_bcma_prepare_core.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcma_bus = type { i32, %struct.TYPE_5__*, %struct.TYPE_4__*, i32 }
%struct.TYPE_5__ = type { i32, i32*, %struct.TYPE_5__*, i32*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.bcma_device = type { %struct.TYPE_5__, %struct.TYPE_5__*, i32, i32 }

@bcma_release_core_dev = common dso_local global i32 0, align 4
@bcma_bus_type = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"bcma%d:%d\00", align 1
@CONFIG_OF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bcma_prepare_core(%struct.bcma_bus* %0, %struct.bcma_device* %1) #0 {
  %3 = alloca %struct.bcma_bus*, align 8
  %4 = alloca %struct.bcma_device*, align 8
  store %struct.bcma_bus* %0, %struct.bcma_bus** %3, align 8
  store %struct.bcma_device* %1, %struct.bcma_device** %4, align 8
  %5 = load i32, i32* @bcma_release_core_dev, align 4
  %6 = load %struct.bcma_device*, %struct.bcma_device** %4, align 8
  %7 = getelementptr inbounds %struct.bcma_device, %struct.bcma_device* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 4
  store i32 %5, i32* %8, align 8
  %9 = load %struct.bcma_device*, %struct.bcma_device** %4, align 8
  %10 = getelementptr inbounds %struct.bcma_device, %struct.bcma_device* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 3
  store i32* @bcma_bus_type, i32** %11, align 8
  %12 = load %struct.bcma_device*, %struct.bcma_device** %4, align 8
  %13 = getelementptr inbounds %struct.bcma_device, %struct.bcma_device* %12, i32 0, i32 0
  %14 = load %struct.bcma_bus*, %struct.bcma_bus** %3, align 8
  %15 = getelementptr inbounds %struct.bcma_bus, %struct.bcma_bus* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.bcma_device*, %struct.bcma_device** %4, align 8
  %18 = getelementptr inbounds %struct.bcma_device, %struct.bcma_device* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @dev_set_name(%struct.TYPE_5__* %13, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %16, i32 %19)
  %21 = load %struct.bcma_bus*, %struct.bcma_bus** %3, align 8
  %22 = getelementptr inbounds %struct.bcma_bus, %struct.bcma_bus* %21, i32 0, i32 1
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %22, align 8
  %24 = load %struct.bcma_device*, %struct.bcma_device** %4, align 8
  %25 = getelementptr inbounds %struct.bcma_device, %struct.bcma_device* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 2
  store %struct.TYPE_5__* %23, %struct.TYPE_5__** %26, align 8
  %27 = load %struct.bcma_bus*, %struct.bcma_bus** %3, align 8
  %28 = getelementptr inbounds %struct.bcma_bus, %struct.bcma_bus* %27, i32 0, i32 1
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %28, align 8
  %30 = icmp ne %struct.TYPE_5__* %29, null
  br i1 %30, label %31, label %37

31:                                               ; preds = %2
  %32 = load %struct.bcma_bus*, %struct.bcma_bus** %3, align 8
  %33 = getelementptr inbounds %struct.bcma_bus, %struct.bcma_bus* %32, i32 0, i32 1
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %33, align 8
  %35 = load %struct.bcma_device*, %struct.bcma_device** %4, align 8
  %36 = call i32 @bcma_of_fill_device(%struct.TYPE_5__* %34, %struct.bcma_device* %35)
  br label %37

37:                                               ; preds = %31, %2
  %38 = load %struct.bcma_bus*, %struct.bcma_bus** %3, align 8
  %39 = getelementptr inbounds %struct.bcma_bus, %struct.bcma_bus* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  switch i32 %40, label %82 [
    i32 130, label %41
    i32 128, label %54
    i32 129, label %81
  ]

41:                                               ; preds = %37
  %42 = load %struct.bcma_bus*, %struct.bcma_bus** %3, align 8
  %43 = getelementptr inbounds %struct.bcma_bus, %struct.bcma_bus* %42, i32 0, i32 1
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %43, align 8
  %45 = load %struct.bcma_device*, %struct.bcma_device** %4, align 8
  %46 = getelementptr inbounds %struct.bcma_device, %struct.bcma_device* %45, i32 0, i32 1
  store %struct.TYPE_5__* %44, %struct.TYPE_5__** %46, align 8
  %47 = load %struct.bcma_bus*, %struct.bcma_bus** %3, align 8
  %48 = getelementptr inbounds %struct.bcma_bus, %struct.bcma_bus* %47, i32 0, i32 2
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.bcma_device*, %struct.bcma_device** %4, align 8
  %53 = getelementptr inbounds %struct.bcma_device, %struct.bcma_device* %52, i32 0, i32 2
  store i32 %51, i32* %53, align 8
  br label %82

54:                                               ; preds = %37
  %55 = load i32, i32* @CONFIG_OF, align 4
  %56 = call i32 @IS_ENABLED(i32 %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %69

58:                                               ; preds = %54
  %59 = load %struct.bcma_bus*, %struct.bcma_bus** %3, align 8
  %60 = getelementptr inbounds %struct.bcma_bus, %struct.bcma_bus* %59, i32 0, i32 1
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %60, align 8
  %62 = icmp ne %struct.TYPE_5__* %61, null
  br i1 %62, label %63, label %69

63:                                               ; preds = %58
  %64 = load %struct.bcma_bus*, %struct.bcma_bus** %3, align 8
  %65 = getelementptr inbounds %struct.bcma_bus, %struct.bcma_bus* %64, i32 0, i32 1
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %65, align 8
  %67 = load %struct.bcma_device*, %struct.bcma_device** %4, align 8
  %68 = getelementptr inbounds %struct.bcma_device, %struct.bcma_device* %67, i32 0, i32 1
  store %struct.TYPE_5__* %66, %struct.TYPE_5__** %68, align 8
  br label %80

69:                                               ; preds = %58, %54
  %70 = load %struct.bcma_device*, %struct.bcma_device** %4, align 8
  %71 = getelementptr inbounds %struct.bcma_device, %struct.bcma_device* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 0
  %73 = load %struct.bcma_device*, %struct.bcma_device** %4, align 8
  %74 = getelementptr inbounds %struct.bcma_device, %struct.bcma_device* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 1
  store i32* %72, i32** %75, align 8
  %76 = load %struct.bcma_device*, %struct.bcma_device** %4, align 8
  %77 = getelementptr inbounds %struct.bcma_device, %struct.bcma_device* %76, i32 0, i32 0
  %78 = load %struct.bcma_device*, %struct.bcma_device** %4, align 8
  %79 = getelementptr inbounds %struct.bcma_device, %struct.bcma_device* %78, i32 0, i32 1
  store %struct.TYPE_5__* %77, %struct.TYPE_5__** %79, align 8
  br label %80

80:                                               ; preds = %69, %63
  br label %82

81:                                               ; preds = %37
  br label %82

82:                                               ; preds = %37, %81, %80, %41
  ret void
}

declare dso_local i32 @dev_set_name(%struct.TYPE_5__*, i8*, i32, i32) #1

declare dso_local i32 @bcma_of_fill_device(%struct.TYPE_5__*, %struct.bcma_device*) #1

declare dso_local i32 @IS_ENABLED(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
