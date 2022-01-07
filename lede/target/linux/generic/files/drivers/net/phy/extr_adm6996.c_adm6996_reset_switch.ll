; ModuleID = '/home/carl/AnghaBench/lede/target/linux/generic/files/drivers/net/phy/extr_adm6996.c_adm6996_reset_switch.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/generic/files/drivers/net/phy/extr_adm6996.c_adm6996_reset_switch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.switch_dev = type { i32 }
%struct.adm6996_priv = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"reset\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.switch_dev*)* @adm6996_reset_switch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adm6996_reset_switch(%struct.switch_dev* %0) #0 {
  %2 = alloca %struct.switch_dev*, align 8
  %3 = alloca %struct.adm6996_priv*, align 8
  store %struct.switch_dev* %0, %struct.switch_dev** %2, align 8
  %4 = load %struct.switch_dev*, %struct.switch_dev** %2, align 8
  %5 = call %struct.adm6996_priv* @to_adm(%struct.switch_dev* %4)
  store %struct.adm6996_priv* %5, %struct.adm6996_priv** %3, align 8
  %6 = call i32 @pr_devel(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %7 = load %struct.adm6996_priv*, %struct.adm6996_priv** %3, align 8
  %8 = getelementptr inbounds %struct.adm6996_priv, %struct.adm6996_priv* %7, i32 0, i32 0
  %9 = call i32 @mutex_lock(i32* %8)
  %10 = load %struct.adm6996_priv*, %struct.adm6996_priv** %3, align 8
  %11 = call i32 @adm6996_perform_reset(%struct.adm6996_priv* %10)
  %12 = load %struct.adm6996_priv*, %struct.adm6996_priv** %3, align 8
  %13 = getelementptr inbounds %struct.adm6996_priv, %struct.adm6996_priv* %12, i32 0, i32 0
  %14 = call i32 @mutex_unlock(i32* %13)
  ret i32 0
}

declare dso_local %struct.adm6996_priv* @to_adm(%struct.switch_dev*) #1

declare dso_local i32 @pr_devel(i8*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @adm6996_perform_reset(%struct.adm6996_priv*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
