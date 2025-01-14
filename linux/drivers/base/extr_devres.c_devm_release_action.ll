; ModuleID = '/home/carl/AnghaBench/linux/drivers/base/extr_devres.c_devm_release_action.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/base/extr_devres.c_devm_release_action.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.action_devres = type { i8*, void (i8*)* }

@devm_action_release = common dso_local global i32 0, align 4
@devm_action_match = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @devm_release_action(%struct.device* %0, void (i8*)* %1, i8* %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca void (i8*)*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.action_devres, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store void (i8*)* %1, void (i8*)** %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = getelementptr inbounds %struct.action_devres, %struct.action_devres* %7, i32 0, i32 0
  %9 = load i8*, i8** %6, align 8
  store i8* %9, i8** %8, align 8
  %10 = getelementptr inbounds %struct.action_devres, %struct.action_devres* %7, i32 0, i32 1
  %11 = load void (i8*)*, void (i8*)** %5, align 8
  store void (i8*)* %11, void (i8*)** %10, align 8
  %12 = load %struct.device*, %struct.device** %4, align 8
  %13 = load i32, i32* @devm_action_release, align 4
  %14 = load i32, i32* @devm_action_match, align 4
  %15 = call i32 @devres_release(%struct.device* %12, i32 %13, i32 %14, %struct.action_devres* %7)
  %16 = call i32 @WARN_ON(i32 %15)
  ret void
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @devres_release(%struct.device*, i32, i32, %struct.action_devres*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
