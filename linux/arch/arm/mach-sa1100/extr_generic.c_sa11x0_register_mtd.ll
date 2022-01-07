; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-sa1100/extr_generic.c_sa11x0_register_mtd.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-sa1100/extr_generic.c_sa11x0_register_mtd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, %struct.resource* }
%struct.resource = type { i32 }
%struct.flash_platform_data = type { i8* }

@.str = private unnamed_addr constant [7 x i8] c"sa1100\00", align 1
@sa11x0mtd_device = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sa11x0_register_mtd(%struct.flash_platform_data* %0, %struct.resource* %1, i32 %2) #0 {
  %4 = alloca %struct.flash_platform_data*, align 8
  %5 = alloca %struct.resource*, align 8
  %6 = alloca i32, align 4
  store %struct.flash_platform_data* %0, %struct.flash_platform_data** %4, align 8
  store %struct.resource* %1, %struct.resource** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.flash_platform_data*, %struct.flash_platform_data** %4, align 8
  %8 = getelementptr inbounds %struct.flash_platform_data, %struct.flash_platform_data* %7, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %8, align 8
  %9 = load %struct.resource*, %struct.resource** %5, align 8
  store %struct.resource* %9, %struct.resource** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @sa11x0mtd_device, i32 0, i32 1), align 8
  %10 = load i32, i32* %6, align 4
  store i32 %10, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @sa11x0mtd_device, i32 0, i32 0), align 8
  %11 = load %struct.flash_platform_data*, %struct.flash_platform_data** %4, align 8
  %12 = call i32 @sa11x0_register_device(%struct.TYPE_3__* @sa11x0mtd_device, %struct.flash_platform_data* %11)
  ret void
}

declare dso_local i32 @sa11x0_register_device(%struct.TYPE_3__*, %struct.flash_platform_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
