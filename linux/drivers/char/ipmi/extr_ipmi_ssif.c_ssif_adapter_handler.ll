; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/ipmi/extr_ipmi_ssif.c_ssif_adapter_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/ipmi/extr_ipmi_ssif.c_ssif_adapter_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32* }
%struct.ssif_addr_info = type { i32, i32, i32 }

@i2c_adapter_type = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i8*)* @ssif_adapter_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ssif_adapter_handler(%struct.device* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.ssif_addr_info*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load i8*, i8** %5, align 8
  %8 = bitcast i8* %7 to %struct.ssif_addr_info*
  store %struct.ssif_addr_info* %8, %struct.ssif_addr_info** %6, align 8
  %9 = load %struct.device*, %struct.device** %4, align 8
  %10 = getelementptr inbounds %struct.device, %struct.device* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  %12 = icmp ne i32* %11, @i2c_adapter_type
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %28

14:                                               ; preds = %2
  %15 = load %struct.device*, %struct.device** %4, align 8
  %16 = call i32 @to_i2c_adapter(%struct.device* %15)
  %17 = load %struct.ssif_addr_info*, %struct.ssif_addr_info** %6, align 8
  %18 = getelementptr inbounds %struct.ssif_addr_info, %struct.ssif_addr_info* %17, i32 0, i32 1
  %19 = call i32 @i2c_new_device(i32 %16, i32* %18)
  %20 = load %struct.ssif_addr_info*, %struct.ssif_addr_info** %6, align 8
  %21 = getelementptr inbounds %struct.ssif_addr_info, %struct.ssif_addr_info* %20, i32 0, i32 2
  store i32 %19, i32* %21, align 4
  %22 = load %struct.ssif_addr_info*, %struct.ssif_addr_info** %6, align 8
  %23 = getelementptr inbounds %struct.ssif_addr_info, %struct.ssif_addr_info* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %14
  store i32 1, i32* %3, align 4
  br label %28

27:                                               ; preds = %14
  store i32 0, i32* %3, align 4
  br label %28

28:                                               ; preds = %27, %26, %13
  %29 = load i32, i32* %3, align 4
  ret i32 %29
}

declare dso_local i32 @i2c_new_device(i32, i32*) #1

declare dso_local i32 @to_i2c_adapter(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
