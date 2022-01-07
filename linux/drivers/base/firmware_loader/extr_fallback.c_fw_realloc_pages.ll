; ModuleID = '/home/carl/AnghaBench/linux/drivers/base/firmware_loader/extr_fallback.c_fw_realloc_pages.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/base/firmware_loader/extr_fallback.c_fw_realloc_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fw_sysfs = type { i32 }

@PAGE_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fw_sysfs*, i32)* @fw_realloc_pages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fw_realloc_pages(%struct.fw_sysfs* %0, i32 %1) #0 {
  %3 = alloca %struct.fw_sysfs*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.fw_sysfs* %0, %struct.fw_sysfs** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.fw_sysfs*, %struct.fw_sysfs** %3, align 8
  %7 = getelementptr inbounds %struct.fw_sysfs, %struct.fw_sysfs* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* %4, align 4
  %10 = call i32 @PAGE_ALIGN(i32 %9)
  %11 = load i32, i32* @PAGE_SHIFT, align 4
  %12 = ashr i32 %10, %11
  %13 = call i32 @fw_grow_paged_buf(i32 %8, i32 %12)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load %struct.fw_sysfs*, %struct.fw_sysfs** %3, align 8
  %18 = call i32 @fw_load_abort(%struct.fw_sysfs* %17)
  br label %19

19:                                               ; preds = %16, %2
  %20 = load i32, i32* %5, align 4
  ret i32 %20
}

declare dso_local i32 @fw_grow_paged_buf(i32, i32) #1

declare dso_local i32 @PAGE_ALIGN(i32) #1

declare dso_local i32 @fw_load_abort(%struct.fw_sysfs*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
