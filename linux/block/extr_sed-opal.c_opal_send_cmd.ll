; ModuleID = '/home/carl/AnghaBench/linux/block/extr_sed-opal.c_opal_send_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_sed-opal.c_opal_send_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.opal_dev = type { i32 (i32, i32, i32, i32, i32, i32)*, i32, i32, i32 }

@TCG_SECP_01 = common dso_local global i32 0, align 4
@IO_BUFFER_LENGTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.opal_dev*)* @opal_send_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @opal_send_cmd(%struct.opal_dev* %0) #0 {
  %2 = alloca %struct.opal_dev*, align 8
  store %struct.opal_dev* %0, %struct.opal_dev** %2, align 8
  %3 = load %struct.opal_dev*, %struct.opal_dev** %2, align 8
  %4 = getelementptr inbounds %struct.opal_dev, %struct.opal_dev* %3, i32 0, i32 0
  %5 = load i32 (i32, i32, i32, i32, i32, i32)*, i32 (i32, i32, i32, i32, i32, i32)** %4, align 8
  %6 = load %struct.opal_dev*, %struct.opal_dev** %2, align 8
  %7 = getelementptr inbounds %struct.opal_dev, %struct.opal_dev* %6, i32 0, i32 3
  %8 = load i32, i32* %7, align 8
  %9 = load %struct.opal_dev*, %struct.opal_dev** %2, align 8
  %10 = getelementptr inbounds %struct.opal_dev, %struct.opal_dev* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @TCG_SECP_01, align 4
  %13 = load %struct.opal_dev*, %struct.opal_dev** %2, align 8
  %14 = getelementptr inbounds %struct.opal_dev, %struct.opal_dev* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @IO_BUFFER_LENGTH, align 4
  %17 = call i32 %5(i32 %8, i32 %11, i32 %12, i32 %15, i32 %16, i32 1)
  ret i32 %17
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
