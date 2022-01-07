; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_pata_ftide010.c_pata_ftide010_gemini_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_pata_ftide010.c_pata_ftide010_gemini_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ftide010 = type { i32 }
%struct.ata_port_info = type { i32 }

@ENOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ftide010*, %struct.ata_port_info*, i32)* @pata_ftide010_gemini_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pata_ftide010_gemini_init(%struct.ftide010* %0, %struct.ata_port_info* %1, i32 %2) #0 {
  %4 = alloca %struct.ftide010*, align 8
  %5 = alloca %struct.ata_port_info*, align 8
  %6 = alloca i32, align 4
  store %struct.ftide010* %0, %struct.ftide010** %4, align 8
  store %struct.ata_port_info* %1, %struct.ata_port_info** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* @ENOTSUPP, align 4
  %8 = sub nsw i32 0, %7
  ret i32 %8
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
