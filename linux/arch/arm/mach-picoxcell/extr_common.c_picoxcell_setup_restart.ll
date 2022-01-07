; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-picoxcell/extr_common.c_picoxcell_setup_restart.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-picoxcell/extr_common.c_picoxcell_setup_restart.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_node = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"snps,dw-apb-wdg\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"unable to setup watchdog restart\00", align 1
@wdt_regs = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"failed to remap watchdog regs\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @picoxcell_setup_restart to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @picoxcell_setup_restart() #0 {
  %1 = alloca %struct.device_node*, align 8
  %2 = call %struct.device_node* @of_find_compatible_node(i32* null, i32* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  store %struct.device_node* %2, %struct.device_node** %1, align 8
  %3 = load %struct.device_node*, %struct.device_node** %1, align 8
  %4 = icmp ne %struct.device_node* %3, null
  %5 = xor i1 %4, true
  %6 = zext i1 %5 to i32
  %7 = call i64 @WARN(i32 %6, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %0
  br label %18

10:                                               ; preds = %0
  %11 = load %struct.device_node*, %struct.device_node** %1, align 8
  %12 = call i32 @of_iomap(%struct.device_node* %11, i32 0)
  store i32 %12, i32* @wdt_regs, align 4
  %13 = load i32, i32* @wdt_regs, align 4
  %14 = icmp ne i32 %13, 0
  %15 = xor i1 %14, true
  %16 = zext i1 %15 to i32
  %17 = call i64 @WARN(i32 %16, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  br label %18

18:                                               ; preds = %10, %9
  ret void
}

declare dso_local %struct.device_node* @of_find_compatible_node(i32*, i32*, i8*) #1

declare dso_local i64 @WARN(i32, i8*) #1

declare dso_local i32 @of_iomap(%struct.device_node*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
