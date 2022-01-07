; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/pcmcia/extr_scr24x_cs.c_scr24x_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/pcmcia/extr_scr24x_cs.c_scr24x_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcmcia_device = type { i32, i32, %struct.TYPE_4__**, %struct.scr24x_dev* }
%struct.TYPE_4__ = type { i32 }
%struct.scr24x_dev = type { i64, %struct.TYPE_5__, i32, i32*, i32, i32 }
%struct.TYPE_5__ = type { i32*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@scr24x_minors = common dso_local global i32 0, align 4
@SCR24X_DEVS = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i32 0, align 4
@CONF_ENABLE_IRQ = common dso_local global i32 0, align 4
@CONF_AUTO_SET_IO = common dso_local global i32 0, align 4
@scr24x_config_check = common dso_local global i32 0, align 4
@PCMCIA_IOPORT_0 = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@scr24x_fops = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@scr24x_devt = common dso_local global i32 0, align 4
@scr24x_class = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"scr24x%d\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"SCR24x Chip Card Interface\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pcmcia_device*)* @scr24x_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scr24x_probe(%struct.pcmcia_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pcmcia_device*, align 8
  %4 = alloca %struct.scr24x_dev*, align 8
  %5 = alloca i32, align 4
  store %struct.pcmcia_device* %0, %struct.pcmcia_device** %3, align 8
  %6 = load i32, i32* @GFP_KERNEL, align 4
  %7 = call %struct.scr24x_dev* @kzalloc(i32 48, i32 %6)
  store %struct.scr24x_dev* %7, %struct.scr24x_dev** %4, align 8
  %8 = load %struct.scr24x_dev*, %struct.scr24x_dev** %4, align 8
  %9 = icmp ne %struct.scr24x_dev* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* @ENOMEM, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %2, align 4
  br label %144

13:                                               ; preds = %1
  %14 = load i32, i32* @scr24x_minors, align 4
  %15 = load i64, i64* @SCR24X_DEVS, align 8
  %16 = call i64 @find_first_zero_bit(i32 %14, i64 %15)
  %17 = load %struct.scr24x_dev*, %struct.scr24x_dev** %4, align 8
  %18 = getelementptr inbounds %struct.scr24x_dev, %struct.scr24x_dev* %17, i32 0, i32 0
  store i64 %16, i64* %18, align 8
  %19 = load %struct.scr24x_dev*, %struct.scr24x_dev** %4, align 8
  %20 = getelementptr inbounds %struct.scr24x_dev, %struct.scr24x_dev* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @SCR24X_DEVS, align 8
  %23 = icmp sge i64 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %13
  %25 = load i32, i32* @EBUSY, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %5, align 4
  br label %128

27:                                               ; preds = %13
  %28 = load %struct.scr24x_dev*, %struct.scr24x_dev** %4, align 8
  %29 = getelementptr inbounds %struct.scr24x_dev, %struct.scr24x_dev* %28, i32 0, i32 5
  %30 = call i32 @mutex_init(i32* %29)
  %31 = load %struct.scr24x_dev*, %struct.scr24x_dev** %4, align 8
  %32 = getelementptr inbounds %struct.scr24x_dev, %struct.scr24x_dev* %31, i32 0, i32 4
  %33 = call i32 @kref_init(i32* %32)
  %34 = load %struct.scr24x_dev*, %struct.scr24x_dev** %4, align 8
  %35 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %36 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %35, i32 0, i32 3
  store %struct.scr24x_dev* %34, %struct.scr24x_dev** %36, align 8
  %37 = load i32, i32* @CONF_ENABLE_IRQ, align 4
  %38 = load i32, i32* @CONF_AUTO_SET_IO, align 4
  %39 = or i32 %37, %38
  %40 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %41 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = or i32 %42, %39
  store i32 %43, i32* %41, align 8
  %44 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %45 = load i32, i32* @scr24x_config_check, align 4
  %46 = call i32 @pcmcia_loop_config(%struct.pcmcia_device* %44, i32 %45, i32* null)
  store i32 %46, i32* %5, align 4
  %47 = load i32, i32* %5, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %27
  br label %128

50:                                               ; preds = %27
  %51 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %52 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %51, i32 0, i32 1
  %53 = load %struct.scr24x_dev*, %struct.scr24x_dev** %4, align 8
  %54 = getelementptr inbounds %struct.scr24x_dev, %struct.scr24x_dev* %53, i32 0, i32 3
  store i32* %52, i32** %54, align 8
  %55 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %56 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %55, i32 0, i32 1
  %57 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %58 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %57, i32 0, i32 2
  %59 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %58, align 8
  %60 = load i64, i64* @PCMCIA_IOPORT_0, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %59, i64 %60
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %66 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %65, i32 0, i32 2
  %67 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %66, align 8
  %68 = load i64, i64* @PCMCIA_IOPORT_0, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %67, i64 %68
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %69, align 8
  %71 = call i32 @resource_size(%struct.TYPE_4__* %70)
  %72 = call i32 @devm_ioport_map(i32* %56, i32 %64, i32 %71)
  %73 = load %struct.scr24x_dev*, %struct.scr24x_dev** %4, align 8
  %74 = getelementptr inbounds %struct.scr24x_dev, %struct.scr24x_dev* %73, i32 0, i32 2
  store i32 %72, i32* %74, align 8
  %75 = load %struct.scr24x_dev*, %struct.scr24x_dev** %4, align 8
  %76 = getelementptr inbounds %struct.scr24x_dev, %struct.scr24x_dev* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %82, label %79

79:                                               ; preds = %50
  %80 = load i32, i32* @EIO, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %5, align 4
  br label %128

82:                                               ; preds = %50
  %83 = load %struct.scr24x_dev*, %struct.scr24x_dev** %4, align 8
  %84 = getelementptr inbounds %struct.scr24x_dev, %struct.scr24x_dev* %83, i32 0, i32 1
  %85 = call i32 @cdev_init(%struct.TYPE_5__* %84, i32* @scr24x_fops)
  %86 = load i32, i32* @THIS_MODULE, align 4
  %87 = load %struct.scr24x_dev*, %struct.scr24x_dev** %4, align 8
  %88 = getelementptr inbounds %struct.scr24x_dev, %struct.scr24x_dev* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 1
  store i32 %86, i32* %89, align 8
  %90 = load %struct.scr24x_dev*, %struct.scr24x_dev** %4, align 8
  %91 = getelementptr inbounds %struct.scr24x_dev, %struct.scr24x_dev* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 0
  store i32* @scr24x_fops, i32** %92, align 8
  %93 = load %struct.scr24x_dev*, %struct.scr24x_dev** %4, align 8
  %94 = getelementptr inbounds %struct.scr24x_dev, %struct.scr24x_dev* %93, i32 0, i32 1
  %95 = load i32, i32* @scr24x_devt, align 4
  %96 = call i32 @MAJOR(i32 %95)
  %97 = load %struct.scr24x_dev*, %struct.scr24x_dev** %4, align 8
  %98 = getelementptr inbounds %struct.scr24x_dev, %struct.scr24x_dev* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = call i32 @MKDEV(i32 %96, i64 %99)
  %101 = call i32 @cdev_add(%struct.TYPE_5__* %94, i32 %100, i32 1)
  store i32 %101, i32* %5, align 4
  %102 = load i32, i32* %5, align 4
  %103 = icmp slt i32 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %82
  br label %128

105:                                              ; preds = %82
  %106 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %107 = call i32 @pcmcia_enable_device(%struct.pcmcia_device* %106)
  store i32 %107, i32* %5, align 4
  %108 = load i32, i32* %5, align 4
  %109 = icmp slt i32 %108, 0
  br i1 %109, label %110, label %113

110:                                              ; preds = %105
  %111 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %112 = call i32 @pcmcia_disable_device(%struct.pcmcia_device* %111)
  br label %128

113:                                              ; preds = %105
  %114 = load i32, i32* @scr24x_class, align 4
  %115 = load i32, i32* @scr24x_devt, align 4
  %116 = call i32 @MAJOR(i32 %115)
  %117 = load %struct.scr24x_dev*, %struct.scr24x_dev** %4, align 8
  %118 = getelementptr inbounds %struct.scr24x_dev, %struct.scr24x_dev* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = call i32 @MKDEV(i32 %116, i64 %119)
  %121 = load %struct.scr24x_dev*, %struct.scr24x_dev** %4, align 8
  %122 = getelementptr inbounds %struct.scr24x_dev, %struct.scr24x_dev* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = call i32 @device_create(i32 %114, i32* null, i32 %120, i32* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i64 %123)
  %125 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %126 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %125, i32 0, i32 1
  %127 = call i32 @dev_info(i32* %126, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %144

128:                                              ; preds = %110, %104, %79, %49, %24
  %129 = load %struct.scr24x_dev*, %struct.scr24x_dev** %4, align 8
  %130 = getelementptr inbounds %struct.scr24x_dev, %struct.scr24x_dev* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = load i64, i64* @SCR24X_DEVS, align 8
  %133 = icmp slt i64 %131, %132
  br i1 %133, label %134, label %140

134:                                              ; preds = %128
  %135 = load %struct.scr24x_dev*, %struct.scr24x_dev** %4, align 8
  %136 = getelementptr inbounds %struct.scr24x_dev, %struct.scr24x_dev* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = load i32, i32* @scr24x_minors, align 4
  %139 = call i32 @clear_bit(i64 %137, i32 %138)
  br label %140

140:                                              ; preds = %134, %128
  %141 = load %struct.scr24x_dev*, %struct.scr24x_dev** %4, align 8
  %142 = call i32 @kfree(%struct.scr24x_dev* %141)
  %143 = load i32, i32* %5, align 4
  store i32 %143, i32* %2, align 4
  br label %144

144:                                              ; preds = %140, %113, %10
  %145 = load i32, i32* %2, align 4
  ret i32 %145
}

declare dso_local %struct.scr24x_dev* @kzalloc(i32, i32) #1

declare dso_local i64 @find_first_zero_bit(i32, i64) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @kref_init(i32*) #1

declare dso_local i32 @pcmcia_loop_config(%struct.pcmcia_device*, i32, i32*) #1

declare dso_local i32 @devm_ioport_map(i32*, i32, i32) #1

declare dso_local i32 @resource_size(%struct.TYPE_4__*) #1

declare dso_local i32 @cdev_init(%struct.TYPE_5__*, i32*) #1

declare dso_local i32 @cdev_add(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @MKDEV(i32, i64) #1

declare dso_local i32 @MAJOR(i32) #1

declare dso_local i32 @pcmcia_enable_device(%struct.pcmcia_device*) #1

declare dso_local i32 @pcmcia_disable_device(%struct.pcmcia_device*) #1

declare dso_local i32 @device_create(i32, i32*, i32, i32*, i8*, i64) #1

declare dso_local i32 @dev_info(i32*, i8*) #1

declare dso_local i32 @clear_bit(i64, i32) #1

declare dso_local i32 @kfree(%struct.scr24x_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
