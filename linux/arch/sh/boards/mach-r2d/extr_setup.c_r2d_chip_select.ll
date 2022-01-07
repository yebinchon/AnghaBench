; ModuleID = '/home/carl/AnghaBench/linux/arch/sh/boards/mach-r2d/extr_setup.c_r2d_chip_select.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sh/boards/mach-r2d/extr_setup.c_r2d_chip_select.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sh_spi_info = type { i32 }

@BITBANG_CS_ACTIVE = common dso_local global i32 0, align 4
@PA_RTCCE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sh_spi_info*, i32, i32)* @r2d_chip_select to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @r2d_chip_select(%struct.sh_spi_info* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.sh_spi_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.sh_spi_info* %0, %struct.sh_spi_info** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %5, align 4
  %8 = icmp ne i32 %7, 0
  %9 = zext i1 %8 to i32
  %10 = call i32 @BUG_ON(i32 %9)
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* @BITBANG_CS_ACTIVE, align 4
  %13 = icmp eq i32 %11, %12
  %14 = zext i1 %13 to i32
  %15 = load i32, i32* @PA_RTCCE, align 4
  %16 = call i32 @__raw_writew(i32 %14, i32 %15)
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @__raw_writew(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
