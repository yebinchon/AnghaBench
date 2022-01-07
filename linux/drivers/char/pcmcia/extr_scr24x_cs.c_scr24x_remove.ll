; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/pcmcia/extr_scr24x_cs.c_scr24x_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/pcmcia/extr_scr24x_cs.c_scr24x_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcmcia_device = type { i64 }
%struct.scr24x_dev = type { i32, i32, i32*, i32, i32 }

@scr24x_class = common dso_local global i32 0, align 4
@scr24x_devt = common dso_local global i32 0, align 4
@scr24x_minors = common dso_local global i32 0, align 4
@scr24x_delete = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pcmcia_device*)* @scr24x_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @scr24x_remove(%struct.pcmcia_device* %0) #0 {
  %2 = alloca %struct.pcmcia_device*, align 8
  %3 = alloca %struct.scr24x_dev*, align 8
  store %struct.pcmcia_device* %0, %struct.pcmcia_device** %2, align 8
  %4 = load %struct.pcmcia_device*, %struct.pcmcia_device** %2, align 8
  %5 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = inttoptr i64 %6 to %struct.scr24x_dev*
  store %struct.scr24x_dev* %7, %struct.scr24x_dev** %3, align 8
  %8 = load i32, i32* @scr24x_class, align 4
  %9 = load i32, i32* @scr24x_devt, align 4
  %10 = call i32 @MAJOR(i32 %9)
  %11 = load %struct.scr24x_dev*, %struct.scr24x_dev** %3, align 8
  %12 = getelementptr inbounds %struct.scr24x_dev, %struct.scr24x_dev* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @MKDEV(i32 %10, i32 %13)
  %15 = call i32 @device_destroy(i32 %8, i32 %14)
  %16 = load %struct.scr24x_dev*, %struct.scr24x_dev** %3, align 8
  %17 = getelementptr inbounds %struct.scr24x_dev, %struct.scr24x_dev* %16, i32 0, i32 1
  %18 = call i32 @mutex_lock(i32* %17)
  %19 = load %struct.pcmcia_device*, %struct.pcmcia_device** %2, align 8
  %20 = call i32 @pcmcia_disable_device(%struct.pcmcia_device* %19)
  %21 = load %struct.scr24x_dev*, %struct.scr24x_dev** %3, align 8
  %22 = getelementptr inbounds %struct.scr24x_dev, %struct.scr24x_dev* %21, i32 0, i32 4
  %23 = call i32 @cdev_del(i32* %22)
  %24 = load %struct.scr24x_dev*, %struct.scr24x_dev** %3, align 8
  %25 = getelementptr inbounds %struct.scr24x_dev, %struct.scr24x_dev* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @scr24x_minors, align 4
  %28 = call i32 @clear_bit(i32 %26, i32 %27)
  %29 = load %struct.scr24x_dev*, %struct.scr24x_dev** %3, align 8
  %30 = getelementptr inbounds %struct.scr24x_dev, %struct.scr24x_dev* %29, i32 0, i32 2
  store i32* null, i32** %30, align 8
  %31 = load %struct.scr24x_dev*, %struct.scr24x_dev** %3, align 8
  %32 = getelementptr inbounds %struct.scr24x_dev, %struct.scr24x_dev* %31, i32 0, i32 1
  %33 = call i32 @mutex_unlock(i32* %32)
  %34 = load %struct.scr24x_dev*, %struct.scr24x_dev** %3, align 8
  %35 = getelementptr inbounds %struct.scr24x_dev, %struct.scr24x_dev* %34, i32 0, i32 0
  %36 = load i32, i32* @scr24x_delete, align 4
  %37 = call i32 @kref_put(i32* %35, i32 %36)
  ret void
}

declare dso_local i32 @device_destroy(i32, i32) #1

declare dso_local i32 @MKDEV(i32, i32) #1

declare dso_local i32 @MAJOR(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @pcmcia_disable_device(%struct.pcmcia_device*) #1

declare dso_local i32 @cdev_del(i32*) #1

declare dso_local i32 @clear_bit(i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @kref_put(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
