; ModuleID = '/home/carl/AnghaBench/linux/drivers/base/regmap/extr_regmap.c_devm_regmap_field_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/base/regmap/extr_regmap.c_devm_regmap_field_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regmap_field = type { i32 }
%struct.device = type { i32 }
%struct.regmap = type { i32 }
%struct.reg_field = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.regmap_field* @devm_regmap_field_alloc(%struct.device* %0, %struct.regmap* %1, i32 %2) #0 {
  %4 = alloca %struct.regmap_field*, align 8
  %5 = alloca %struct.reg_field, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.regmap*, align 8
  %8 = alloca %struct.regmap_field*, align 8
  %9 = getelementptr inbounds %struct.reg_field, %struct.reg_field* %5, i32 0, i32 0
  store i32 %2, i32* %9, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.regmap* %1, %struct.regmap** %7, align 8
  %10 = load %struct.device*, %struct.device** %6, align 8
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.regmap_field* @devm_kzalloc(%struct.device* %10, i32 4, i32 %11)
  store %struct.regmap_field* %12, %struct.regmap_field** %8, align 8
  %13 = load %struct.regmap_field*, %struct.regmap_field** %8, align 8
  %14 = icmp ne %struct.regmap_field* %13, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  %18 = call %struct.regmap_field* @ERR_PTR(i32 %17)
  store %struct.regmap_field* %18, %struct.regmap_field** %4, align 8
  br label %26

19:                                               ; preds = %3
  %20 = load %struct.regmap_field*, %struct.regmap_field** %8, align 8
  %21 = load %struct.regmap*, %struct.regmap** %7, align 8
  %22 = getelementptr inbounds %struct.reg_field, %struct.reg_field* %5, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @regmap_field_init(%struct.regmap_field* %20, %struct.regmap* %21, i32 %23)
  %25 = load %struct.regmap_field*, %struct.regmap_field** %8, align 8
  store %struct.regmap_field* %25, %struct.regmap_field** %4, align 8
  br label %26

26:                                               ; preds = %19, %15
  %27 = load %struct.regmap_field*, %struct.regmap_field** %4, align 8
  ret %struct.regmap_field* %27
}

declare dso_local %struct.regmap_field* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local %struct.regmap_field* @ERR_PTR(i32) #1

declare dso_local i32 @regmap_field_init(%struct.regmap_field*, %struct.regmap*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
