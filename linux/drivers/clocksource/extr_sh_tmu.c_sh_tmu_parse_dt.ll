; ModuleID = '/home/carl/AnghaBench/linux/drivers/clocksource/extr_sh_tmu.c_sh_tmu_parse_dt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clocksource/extr_sh_tmu.c_sh_tmu_parse_dt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sh_tmu_device = type { i32, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.device_node* }
%struct.device_node = type { i32 }

@SH_TMU = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"#renesas,channels\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"invalid number of channels %u\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sh_tmu_device*)* @sh_tmu_parse_dt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sh_tmu_parse_dt(%struct.sh_tmu_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sh_tmu_device*, align 8
  %4 = alloca %struct.device_node*, align 8
  store %struct.sh_tmu_device* %0, %struct.sh_tmu_device** %3, align 8
  %5 = load %struct.sh_tmu_device*, %struct.sh_tmu_device** %3, align 8
  %6 = getelementptr inbounds %struct.sh_tmu_device, %struct.sh_tmu_device* %5, i32 0, i32 1
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load %struct.device_node*, %struct.device_node** %9, align 8
  store %struct.device_node* %10, %struct.device_node** %4, align 8
  %11 = load i32, i32* @SH_TMU, align 4
  %12 = load %struct.sh_tmu_device*, %struct.sh_tmu_device** %3, align 8
  %13 = getelementptr inbounds %struct.sh_tmu_device, %struct.sh_tmu_device* %12, i32 0, i32 2
  store i32 %11, i32* %13, align 8
  %14 = load %struct.sh_tmu_device*, %struct.sh_tmu_device** %3, align 8
  %15 = getelementptr inbounds %struct.sh_tmu_device, %struct.sh_tmu_device* %14, i32 0, i32 0
  store i32 3, i32* %15, align 8
  %16 = load %struct.device_node*, %struct.device_node** %4, align 8
  %17 = load %struct.sh_tmu_device*, %struct.sh_tmu_device** %3, align 8
  %18 = getelementptr inbounds %struct.sh_tmu_device, %struct.sh_tmu_device* %17, i32 0, i32 0
  %19 = call i32 @of_property_read_u32(%struct.device_node* %16, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32* %18)
  %20 = load %struct.sh_tmu_device*, %struct.sh_tmu_device** %3, align 8
  %21 = getelementptr inbounds %struct.sh_tmu_device, %struct.sh_tmu_device* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 2
  br i1 %23, label %24, label %40

24:                                               ; preds = %1
  %25 = load %struct.sh_tmu_device*, %struct.sh_tmu_device** %3, align 8
  %26 = getelementptr inbounds %struct.sh_tmu_device, %struct.sh_tmu_device* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp ne i32 %27, 3
  br i1 %28, label %29, label %40

29:                                               ; preds = %24
  %30 = load %struct.sh_tmu_device*, %struct.sh_tmu_device** %3, align 8
  %31 = getelementptr inbounds %struct.sh_tmu_device, %struct.sh_tmu_device* %30, i32 0, i32 1
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load %struct.sh_tmu_device*, %struct.sh_tmu_device** %3, align 8
  %35 = getelementptr inbounds %struct.sh_tmu_device, %struct.sh_tmu_device* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @dev_err(%struct.TYPE_4__* %33, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %36)
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %2, align 4
  br label %41

40:                                               ; preds = %24, %1
  store i32 0, i32* %2, align 4
  br label %41

41:                                               ; preds = %40, %29
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

declare dso_local i32 @of_property_read_u32(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @dev_err(%struct.TYPE_4__*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
