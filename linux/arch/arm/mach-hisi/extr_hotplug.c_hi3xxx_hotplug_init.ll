; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-hisi/extr_hotplug.c_hi3xxx_hotplug_init.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-hisi/extr_hotplug.c_hi3xxx_hotplug_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_node = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"hisilicon,sysctrl\00", align 1
@ERROR_CTRL = common dso_local global i32 0, align 4
@id = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@ctrl_base = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@HI3620_CTRL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @hi3xxx_hotplug_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hi3xxx_hotplug_init() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.device_node*, align 8
  %3 = call %struct.device_node* @of_find_compatible_node(i32* null, i32* null, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  store %struct.device_node* %3, %struct.device_node** %2, align 8
  %4 = load %struct.device_node*, %struct.device_node** %2, align 8
  %5 = icmp ne %struct.device_node* %4, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %0
  %7 = load i32, i32* @ERROR_CTRL, align 4
  store i32 %7, i32* @id, align 4
  %8 = load i32, i32* @ENOENT, align 4
  %9 = sub nsw i32 0, %8
  store i32 %9, i32* %1, align 4
  br label %23

10:                                               ; preds = %0
  %11 = load %struct.device_node*, %struct.device_node** %2, align 8
  %12 = call i32 @of_iomap(%struct.device_node* %11, i32 0)
  store i32 %12, i32* @ctrl_base, align 4
  %13 = load %struct.device_node*, %struct.device_node** %2, align 8
  %14 = call i32 @of_node_put(%struct.device_node* %13)
  %15 = load i32, i32* @ctrl_base, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %10
  %18 = load i32, i32* @ERROR_CTRL, align 4
  store i32 %18, i32* @id, align 4
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %1, align 4
  br label %23

21:                                               ; preds = %10
  %22 = load i32, i32* @HI3620_CTRL, align 4
  store i32 %22, i32* @id, align 4
  store i32 0, i32* %1, align 4
  br label %23

23:                                               ; preds = %21, %17, %6
  %24 = load i32, i32* %1, align 4
  ret i32 %24
}

declare dso_local %struct.device_node* @of_find_compatible_node(i32*, i32*, i8*) #1

declare dso_local i32 @of_iomap(%struct.device_node*, i32) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
