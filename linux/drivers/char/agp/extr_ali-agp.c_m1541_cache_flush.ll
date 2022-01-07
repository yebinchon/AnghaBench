; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/agp/extr_ali-agp.c_m1541_cache_flush.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/agp/extr_ali-agp.c_m1541_cache_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }

@agp_bridge = common dso_local global %struct.TYPE_3__* null, align 8
@PAGE_SIZE = common dso_local global i32 0, align 4
@ALI_CACHE_FLUSH_CTRL = common dso_local global i32 0, align 4
@ALI_CACHE_FLUSH_ADDR_MASK = common dso_local global i32 0, align 4
@ALI_CACHE_FLUSH_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @m1541_cache_flush to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @m1541_cache_flush() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = call i32 (...) @global_cache_flush()
  %5 = load %struct.TYPE_3__*, %struct.TYPE_3__** @agp_bridge, align 8
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 2
  %7 = load i32, i32* %6, align 4
  %8 = call %struct.TYPE_4__* @A_SIZE_32(i32 %7)
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = shl i32 1, %10
  store i32 %11, i32* %2, align 4
  store i32 0, i32* %1, align 4
  br label %12

12:                                               ; preds = %40, %0
  %13 = load i32, i32* %1, align 4
  %14 = load i32, i32* @PAGE_SIZE, align 4
  %15 = load i32, i32* %2, align 4
  %16 = mul nsw i32 %14, %15
  %17 = icmp slt i32 %13, %16
  br i1 %17, label %18, label %44

18:                                               ; preds = %12
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** @agp_bridge, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @ALI_CACHE_FLUSH_CTRL, align 4
  %23 = call i32 @pci_read_config_dword(i32 %21, i32 %22, i32* %3)
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** @agp_bridge, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @ALI_CACHE_FLUSH_CTRL, align 4
  %28 = load i32, i32* %3, align 4
  %29 = load i32, i32* @ALI_CACHE_FLUSH_ADDR_MASK, align 4
  %30 = and i32 %28, %29
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** @agp_bridge, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %1, align 4
  %35 = add nsw i32 %33, %34
  %36 = or i32 %30, %35
  %37 = load i32, i32* @ALI_CACHE_FLUSH_EN, align 4
  %38 = or i32 %36, %37
  %39 = call i32 @pci_write_config_dword(i32 %26, i32 %27, i32 %38)
  br label %40

40:                                               ; preds = %18
  %41 = load i32, i32* @PAGE_SIZE, align 4
  %42 = load i32, i32* %1, align 4
  %43 = add nsw i32 %42, %41
  store i32 %43, i32* %1, align 4
  br label %12

44:                                               ; preds = %12
  ret void
}

declare dso_local i32 @global_cache_flush(...) #1

declare dso_local %struct.TYPE_4__* @A_SIZE_32(i32) #1

declare dso_local i32 @pci_read_config_dword(i32, i32, i32*) #1

declare dso_local i32 @pci_write_config_dword(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
