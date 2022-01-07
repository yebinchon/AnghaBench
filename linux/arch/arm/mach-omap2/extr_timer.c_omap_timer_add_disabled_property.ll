; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-omap2/extr_timer.c_omap_timer_add_disabled_property.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-omap2/extr_timer.c_omap_timer_add_disabled_property.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_node = type { i32 }
%struct.property = type { i8*, i8*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"status\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"disabled\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device_node*)* @omap_timer_add_disabled_property to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap_timer_add_disabled_property(%struct.device_node* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device_node*, align 8
  %4 = alloca %struct.property*, align 8
  store %struct.device_node* %0, %struct.device_node** %3, align 8
  %5 = load i32, i32* @GFP_KERNEL, align 4
  %6 = call %struct.property* @kzalloc(i32 24, i32 %5)
  store %struct.property* %6, %struct.property** %4, align 8
  %7 = load %struct.property*, %struct.property** %4, align 8
  %8 = icmp ne %struct.property* %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* @ENOMEM, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %2, align 4
  br label %26

12:                                               ; preds = %1
  %13 = load %struct.property*, %struct.property** %4, align 8
  %14 = getelementptr inbounds %struct.property, %struct.property* %13, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %14, align 8
  %15 = load %struct.property*, %struct.property** %4, align 8
  %16 = getelementptr inbounds %struct.property, %struct.property* %15, i32 0, i32 1
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8** %16, align 8
  %17 = load %struct.property*, %struct.property** %4, align 8
  %18 = getelementptr inbounds %struct.property, %struct.property* %17, i32 0, i32 1
  %19 = load i8*, i8** %18, align 8
  %20 = call i32 @strlen(i8* %19)
  %21 = load %struct.property*, %struct.property** %4, align 8
  %22 = getelementptr inbounds %struct.property, %struct.property* %21, i32 0, i32 2
  store i32 %20, i32* %22, align 8
  %23 = load %struct.device_node*, %struct.device_node** %3, align 8
  %24 = load %struct.property*, %struct.property** %4, align 8
  %25 = call i32 @of_add_property(%struct.device_node* %23, %struct.property* %24)
  store i32 %25, i32* %2, align 4
  br label %26

26:                                               ; preds = %12, %9
  %27 = load i32, i32* %2, align 4
  ret i32 %27
}

declare dso_local %struct.property* @kzalloc(i32, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @of_add_property(%struct.device_node*, %struct.property*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
