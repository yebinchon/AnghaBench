; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/agp/extr_ali-agp.c_m1541_alloc_page.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/agp/extr_ali-agp.c_m1541_alloc_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.page = type { i32 }
%struct.agp_bridge_data = type { i32 }

@agp_bridge = common dso_local global %struct.TYPE_3__* null, align 8
@ALI_CACHE_FLUSH_CTRL = common dso_local global i32 0, align 4
@ALI_CACHE_FLUSH_ADDR_MASK = common dso_local global i32 0, align 4
@ALI_CACHE_FLUSH_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.page* (%struct.agp_bridge_data*)* @m1541_alloc_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.page* @m1541_alloc_page(%struct.agp_bridge_data* %0) #0 {
  %2 = alloca %struct.page*, align 8
  %3 = alloca %struct.agp_bridge_data*, align 8
  %4 = alloca %struct.page*, align 8
  %5 = alloca i32, align 4
  store %struct.agp_bridge_data* %0, %struct.agp_bridge_data** %3, align 8
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** @agp_bridge, align 8
  %7 = call %struct.page* @agp_generic_alloc_page(%struct.TYPE_3__* %6)
  store %struct.page* %7, %struct.page** %4, align 8
  %8 = load %struct.page*, %struct.page** %4, align 8
  %9 = icmp ne %struct.page* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  store %struct.page* null, %struct.page** %2, align 8
  br label %31

11:                                               ; preds = %1
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** @agp_bridge, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @ALI_CACHE_FLUSH_CTRL, align 4
  %16 = call i32 @pci_read_config_dword(i32 %14, i32 %15, i32* %5)
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** @agp_bridge, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @ALI_CACHE_FLUSH_CTRL, align 4
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @ALI_CACHE_FLUSH_ADDR_MASK, align 4
  %23 = and i32 %21, %22
  %24 = load %struct.page*, %struct.page** %4, align 8
  %25 = call i32 @page_to_phys(%struct.page* %24)
  %26 = or i32 %23, %25
  %27 = load i32, i32* @ALI_CACHE_FLUSH_EN, align 4
  %28 = or i32 %26, %27
  %29 = call i32 @pci_write_config_dword(i32 %19, i32 %20, i32 %28)
  %30 = load %struct.page*, %struct.page** %4, align 8
  store %struct.page* %30, %struct.page** %2, align 8
  br label %31

31:                                               ; preds = %11, %10
  %32 = load %struct.page*, %struct.page** %2, align 8
  ret %struct.page* %32
}

declare dso_local %struct.page* @agp_generic_alloc_page(%struct.TYPE_3__*) #1

declare dso_local i32 @pci_read_config_dword(i32, i32, i32*) #1

declare dso_local i32 @pci_write_config_dword(i32, i32, i32) #1

declare dso_local i32 @page_to_phys(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
