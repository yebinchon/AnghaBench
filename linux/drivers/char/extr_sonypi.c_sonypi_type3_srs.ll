; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/extr_sonypi.c_sonypi_type3_srs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/extr_sonypi.c_sonypi_type3_srs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@sonypi_device = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@SONYPI_TYPE3_GID2 = common dso_local global i32 0, align 4
@SONYPI_TYPE3_MISC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @sonypi_type3_srs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sonypi_type3_srs() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = call i32 (...) @sonypi_type2_srs()
  %4 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sonypi_device, i32 0, i32 0), align 4
  %5 = and i32 %4, 65520
  %6 = or i32 %5, 1
  store i32 %6, i32* %1, align 4
  %7 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sonypi_device, i32 0, i32 1), align 4
  %8 = load i32, i32* @SONYPI_TYPE3_GID2, align 4
  %9 = load i32, i32* %1, align 4
  %10 = call i32 @pci_write_config_word(i32 %7, i32 %8, i32 %9)
  %11 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sonypi_device, i32 0, i32 1), align 4
  %12 = load i32, i32* @SONYPI_TYPE3_MISC, align 4
  %13 = call i32 @pci_read_config_byte(i32 %11, i32 %12, i32* %2)
  %14 = load i32, i32* %2, align 4
  %15 = and i32 %14, 207
  %16 = or i32 %15, 16
  store i32 %16, i32* %2, align 4
  %17 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sonypi_device, i32 0, i32 1), align 4
  %18 = load i32, i32* @SONYPI_TYPE3_MISC, align 4
  %19 = load i32, i32* %2, align 4
  %20 = call i32 @pci_write_config_byte(i32 %17, i32 %18, i32 %19)
  ret void
}

declare dso_local i32 @sonypi_type2_srs(...) #1

declare dso_local i32 @pci_write_config_word(i32, i32, i32) #1

declare dso_local i32 @pci_read_config_byte(i32, i32, i32*) #1

declare dso_local i32 @pci_write_config_byte(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
