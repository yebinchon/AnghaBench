; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_xsysace.c_ace_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_xsysace.c_ace_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.ace_device = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"ace_free(%p)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*)* @ace_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ace_free(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.ace_device*, align 8
  store %struct.device* %0, %struct.device** %2, align 8
  %4 = load %struct.device*, %struct.device** %2, align 8
  %5 = call %struct.ace_device* @dev_get_drvdata(%struct.device* %4)
  store %struct.ace_device* %5, %struct.ace_device** %3, align 8
  %6 = load %struct.device*, %struct.device** %2, align 8
  %7 = load %struct.device*, %struct.device** %2, align 8
  %8 = call i32 @dev_dbg(%struct.device* %6, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), %struct.device* %7)
  %9 = load %struct.ace_device*, %struct.ace_device** %3, align 8
  %10 = icmp ne %struct.ace_device* %9, null
  br i1 %10, label %11, label %18

11:                                               ; preds = %1
  %12 = load %struct.ace_device*, %struct.ace_device** %3, align 8
  %13 = call i32 @ace_teardown(%struct.ace_device* %12)
  %14 = load %struct.device*, %struct.device** %2, align 8
  %15 = call i32 @dev_set_drvdata(%struct.device* %14, i32* null)
  %16 = load %struct.ace_device*, %struct.ace_device** %3, align 8
  %17 = call i32 @kfree(%struct.ace_device* %16)
  br label %18

18:                                               ; preds = %11, %1
  ret void
}

declare dso_local %struct.ace_device* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, %struct.device*) #1

declare dso_local i32 @ace_teardown(%struct.ace_device*) #1

declare dso_local i32 @dev_set_drvdata(%struct.device*, i32*) #1

declare dso_local i32 @kfree(%struct.ace_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
