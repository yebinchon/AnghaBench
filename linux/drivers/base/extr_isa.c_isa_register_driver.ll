; ModuleID = '/home/carl/AnghaBench/linux/drivers/base/extr_isa.c_isa_register_driver.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/base/extr_isa.c_isa_register_driver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isa_driver = type { %struct.TYPE_6__*, %struct.TYPE_7__ }
%struct.TYPE_6__ = type { %struct.isa_driver*, i32, i32*, i32, i32*, i32* }
%struct.TYPE_7__ = type { i32, i32* }
%struct.isa_dev = type { i32, %struct.TYPE_6__, %struct.TYPE_6__* }

@isa_bus_type = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@isa_bus = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%s.%u\00", align 1
@isa_dev_release = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @isa_register_driver(%struct.isa_driver* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.isa_driver*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.isa_dev*, align 8
  store %struct.isa_driver* %0, %struct.isa_driver** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.isa_driver*, %struct.isa_driver** %4, align 8
  %10 = getelementptr inbounds %struct.isa_driver, %struct.isa_driver* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 1
  store i32* @isa_bus_type, i32** %11, align 8
  %12 = load %struct.isa_driver*, %struct.isa_driver** %4, align 8
  %13 = getelementptr inbounds %struct.isa_driver, %struct.isa_driver* %12, i32 0, i32 0
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %13, align 8
  %14 = load %struct.isa_driver*, %struct.isa_driver** %4, align 8
  %15 = getelementptr inbounds %struct.isa_driver, %struct.isa_driver* %14, i32 0, i32 1
  %16 = call i32 @driver_register(%struct.TYPE_7__* %15)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = load i32, i32* %6, align 4
  store i32 %20, i32* %3, align 4
  br label %122

21:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  br label %22

22:                                               ; preds = %100, %21
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* %5, align 4
  %25 = icmp ult i32 %23, %24
  br i1 %25, label %26, label %103

26:                                               ; preds = %22
  %27 = load i32, i32* @GFP_KERNEL, align 4
  %28 = call %struct.isa_dev* @kzalloc(i32 64, i32 %27)
  store %struct.isa_dev* %28, %struct.isa_dev** %8, align 8
  %29 = load %struct.isa_dev*, %struct.isa_dev** %8, align 8
  %30 = icmp ne %struct.isa_dev* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %26
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %6, align 4
  br label %103

34:                                               ; preds = %26
  %35 = load %struct.isa_dev*, %struct.isa_dev** %8, align 8
  %36 = getelementptr inbounds %struct.isa_dev, %struct.isa_dev* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 5
  store i32* @isa_bus, i32** %37, align 8
  %38 = load %struct.isa_dev*, %struct.isa_dev** %8, align 8
  %39 = getelementptr inbounds %struct.isa_dev, %struct.isa_dev* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 4
  store i32* @isa_bus_type, i32** %40, align 8
  %41 = load %struct.isa_dev*, %struct.isa_dev** %8, align 8
  %42 = getelementptr inbounds %struct.isa_dev, %struct.isa_dev* %41, i32 0, i32 1
  %43 = load %struct.isa_driver*, %struct.isa_driver** %4, align 8
  %44 = getelementptr inbounds %struct.isa_driver, %struct.isa_driver* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* %7, align 4
  %48 = call i32 @dev_set_name(%struct.TYPE_6__* %42, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %46, i32 %47)
  %49 = load %struct.isa_driver*, %struct.isa_driver** %4, align 8
  %50 = load %struct.isa_dev*, %struct.isa_dev** %8, align 8
  %51 = getelementptr inbounds %struct.isa_dev, %struct.isa_dev* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  store %struct.isa_driver* %49, %struct.isa_driver** %52, align 8
  %53 = load i32, i32* @isa_dev_release, align 4
  %54 = load %struct.isa_dev*, %struct.isa_dev** %8, align 8
  %55 = getelementptr inbounds %struct.isa_dev, %struct.isa_dev* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 3
  store i32 %53, i32* %56, align 8
  %57 = load i32, i32* %7, align 4
  %58 = load %struct.isa_dev*, %struct.isa_dev** %8, align 8
  %59 = getelementptr inbounds %struct.isa_dev, %struct.isa_dev* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 8
  %60 = call i32 @DMA_BIT_MASK(i32 24)
  %61 = load %struct.isa_dev*, %struct.isa_dev** %8, align 8
  %62 = getelementptr inbounds %struct.isa_dev, %struct.isa_dev* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 1
  store i32 %60, i32* %63, align 8
  %64 = load %struct.isa_dev*, %struct.isa_dev** %8, align 8
  %65 = getelementptr inbounds %struct.isa_dev, %struct.isa_dev* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 1
  %67 = load %struct.isa_dev*, %struct.isa_dev** %8, align 8
  %68 = getelementptr inbounds %struct.isa_dev, %struct.isa_dev* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 2
  store i32* %66, i32** %69, align 8
  %70 = load %struct.isa_dev*, %struct.isa_dev** %8, align 8
  %71 = getelementptr inbounds %struct.isa_dev, %struct.isa_dev* %70, i32 0, i32 1
  %72 = call i32 @device_register(%struct.TYPE_6__* %71)
  store i32 %72, i32* %6, align 4
  %73 = load i32, i32* %6, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %34
  %76 = load %struct.isa_dev*, %struct.isa_dev** %8, align 8
  %77 = getelementptr inbounds %struct.isa_dev, %struct.isa_dev* %76, i32 0, i32 1
  %78 = call i32 @put_device(%struct.TYPE_6__* %77)
  br label %103

79:                                               ; preds = %34
  %80 = load %struct.isa_dev*, %struct.isa_dev** %8, align 8
  %81 = getelementptr inbounds %struct.isa_dev, %struct.isa_dev* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 0
  %83 = load %struct.isa_driver*, %struct.isa_driver** %82, align 8
  %84 = icmp ne %struct.isa_driver* %83, null
  br i1 %84, label %85, label %95

85:                                               ; preds = %79
  %86 = load %struct.isa_driver*, %struct.isa_driver** %4, align 8
  %87 = getelementptr inbounds %struct.isa_driver, %struct.isa_driver* %86, i32 0, i32 0
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %87, align 8
  %89 = load %struct.isa_dev*, %struct.isa_dev** %8, align 8
  %90 = getelementptr inbounds %struct.isa_dev, %struct.isa_dev* %89, i32 0, i32 2
  store %struct.TYPE_6__* %88, %struct.TYPE_6__** %90, align 8
  %91 = load %struct.isa_dev*, %struct.isa_dev** %8, align 8
  %92 = getelementptr inbounds %struct.isa_dev, %struct.isa_dev* %91, i32 0, i32 1
  %93 = load %struct.isa_driver*, %struct.isa_driver** %4, align 8
  %94 = getelementptr inbounds %struct.isa_driver, %struct.isa_driver* %93, i32 0, i32 0
  store %struct.TYPE_6__* %92, %struct.TYPE_6__** %94, align 8
  br label %99

95:                                               ; preds = %79
  %96 = load %struct.isa_dev*, %struct.isa_dev** %8, align 8
  %97 = getelementptr inbounds %struct.isa_dev, %struct.isa_dev* %96, i32 0, i32 1
  %98 = call i32 @device_unregister(%struct.TYPE_6__* %97)
  br label %99

99:                                               ; preds = %95, %85
  br label %100

100:                                              ; preds = %99
  %101 = load i32, i32* %7, align 4
  %102 = add i32 %101, 1
  store i32 %102, i32* %7, align 4
  br label %22

103:                                              ; preds = %75, %31, %22
  %104 = load i32, i32* %6, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %114, label %106

106:                                              ; preds = %103
  %107 = load %struct.isa_driver*, %struct.isa_driver** %4, align 8
  %108 = getelementptr inbounds %struct.isa_driver, %struct.isa_driver* %107, i32 0, i32 0
  %109 = load %struct.TYPE_6__*, %struct.TYPE_6__** %108, align 8
  %110 = icmp ne %struct.TYPE_6__* %109, null
  br i1 %110, label %114, label %111

111:                                              ; preds = %106
  %112 = load i32, i32* @ENODEV, align 4
  %113 = sub nsw i32 0, %112
  store i32 %113, i32* %6, align 4
  br label %114

114:                                              ; preds = %111, %106, %103
  %115 = load i32, i32* %6, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %120

117:                                              ; preds = %114
  %118 = load %struct.isa_driver*, %struct.isa_driver** %4, align 8
  %119 = call i32 @isa_unregister_driver(%struct.isa_driver* %118)
  br label %120

120:                                              ; preds = %117, %114
  %121 = load i32, i32* %6, align 4
  store i32 %121, i32* %3, align 4
  br label %122

122:                                              ; preds = %120, %19
  %123 = load i32, i32* %3, align 4
  ret i32 %123
}

declare dso_local i32 @driver_register(%struct.TYPE_7__*) #1

declare dso_local %struct.isa_dev* @kzalloc(i32, i32) #1

declare dso_local i32 @dev_set_name(%struct.TYPE_6__*, i8*, i32, i32) #1

declare dso_local i32 @DMA_BIT_MASK(i32) #1

declare dso_local i32 @device_register(%struct.TYPE_6__*) #1

declare dso_local i32 @put_device(%struct.TYPE_6__*) #1

declare dso_local i32 @device_unregister(%struct.TYPE_6__*) #1

declare dso_local i32 @isa_unregister_driver(%struct.isa_driver*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
