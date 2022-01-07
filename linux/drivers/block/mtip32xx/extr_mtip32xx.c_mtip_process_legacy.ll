; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/mtip32xx/extr_mtip32xx.c_mtip_process_legacy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/mtip32xx/extr_mtip32xx.c_mtip_process_legacy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.driver_data = type { %struct.mtip_port* }
%struct.mtip_port = type { i32*, i32 }
%struct.mtip_cmd = type { i32 }

@MTIP_TAG_INTERNAL = common dso_local global i32 0, align 4
@MTIP_PF_IC_ACTIVE_BIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.driver_data*, i32)* @mtip_process_legacy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mtip_process_legacy(%struct.driver_data* %0, i32 %1) #0 {
  %3 = alloca %struct.driver_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mtip_port*, align 8
  %6 = alloca %struct.mtip_cmd*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.driver_data* %0, %struct.driver_data** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %10 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %9, i32 0, i32 0
  %11 = load %struct.mtip_port*, %struct.mtip_port** %10, align 8
  store %struct.mtip_port* %11, %struct.mtip_port** %5, align 8
  %12 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  %13 = load i32, i32* @MTIP_TAG_INTERNAL, align 4
  %14 = call %struct.mtip_cmd* @mtip_cmd_from_tag(%struct.driver_data* %12, i32 %13)
  store %struct.mtip_cmd* %14, %struct.mtip_cmd** %6, align 8
  %15 = load i32, i32* @MTIP_PF_IC_ACTIVE_BIT, align 4
  %16 = load %struct.mtip_port*, %struct.mtip_port** %5, align 8
  %17 = getelementptr inbounds %struct.mtip_port, %struct.mtip_port* %16, i32 0, i32 1
  %18 = call i64 @test_bit(i32 %15, i32* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %44

20:                                               ; preds = %2
  %21 = load %struct.mtip_cmd*, %struct.mtip_cmd** %6, align 8
  %22 = icmp ne %struct.mtip_cmd* %21, null
  br i1 %22, label %23, label %44

23:                                               ; preds = %20
  %24 = load i32, i32* @MTIP_TAG_INTERNAL, align 4
  %25 = call i32 @MTIP_TAG_INDEX(i32 %24)
  store i32 %25, i32* %7, align 4
  %26 = load %struct.mtip_port*, %struct.mtip_port** %5, align 8
  %27 = getelementptr inbounds %struct.mtip_port, %struct.mtip_port* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = load i32, i32* %7, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @readl(i32 %32)
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* @MTIP_TAG_INTERNAL, align 4
  %36 = call i32 @MTIP_TAG_BIT(i32 %35)
  %37 = shl i32 1, %36
  %38 = and i32 %34, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %23
  %41 = load %struct.mtip_cmd*, %struct.mtip_cmd** %6, align 8
  %42 = call i32 @mtip_complete_command(%struct.mtip_cmd* %41, i32 0)
  br label %43

43:                                               ; preds = %40, %23
  br label %44

44:                                               ; preds = %43, %20, %2
  ret void
}

declare dso_local %struct.mtip_cmd* @mtip_cmd_from_tag(%struct.driver_data*, i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @MTIP_TAG_INDEX(i32) #1

declare dso_local i32 @readl(i32) #1

declare dso_local i32 @MTIP_TAG_BIT(i32) #1

declare dso_local i32 @mtip_complete_command(%struct.mtip_cmd*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
