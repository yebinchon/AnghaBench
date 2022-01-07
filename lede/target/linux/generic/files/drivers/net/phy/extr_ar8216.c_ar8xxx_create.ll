; ModuleID = '/home/carl/AnghaBench/lede/target/linux/generic/files/drivers/net/phy/extr_ar8216.c_ar8xxx_create.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/generic/files/drivers/net/phy/extr_ar8216.c_ar8xxx_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ar8xxx_priv = type { i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ar8xxx_mib_work_func = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ar8xxx_priv* ()* @ar8xxx_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ar8xxx_priv* @ar8xxx_create() #0 {
  %1 = alloca %struct.ar8xxx_priv*, align 8
  %2 = alloca %struct.ar8xxx_priv*, align 8
  %3 = load i32, i32* @GFP_KERNEL, align 4
  %4 = call %struct.ar8xxx_priv* @kzalloc(i32 12, i32 %3)
  store %struct.ar8xxx_priv* %4, %struct.ar8xxx_priv** %2, align 8
  %5 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %2, align 8
  %6 = icmp eq %struct.ar8xxx_priv* %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %0
  store %struct.ar8xxx_priv* null, %struct.ar8xxx_priv** %1, align 8
  br label %20

8:                                                ; preds = %0
  %9 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %2, align 8
  %10 = getelementptr inbounds %struct.ar8xxx_priv, %struct.ar8xxx_priv* %9, i32 0, i32 2
  %11 = call i32 @mutex_init(i32* %10)
  %12 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %2, align 8
  %13 = getelementptr inbounds %struct.ar8xxx_priv, %struct.ar8xxx_priv* %12, i32 0, i32 1
  %14 = call i32 @mutex_init(i32* %13)
  %15 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %2, align 8
  %16 = getelementptr inbounds %struct.ar8xxx_priv, %struct.ar8xxx_priv* %15, i32 0, i32 0
  %17 = load i32, i32* @ar8xxx_mib_work_func, align 4
  %18 = call i32 @INIT_DELAYED_WORK(i32* %16, i32 %17)
  %19 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %2, align 8
  store %struct.ar8xxx_priv* %19, %struct.ar8xxx_priv** %1, align 8
  br label %20

20:                                               ; preds = %8, %7
  %21 = load %struct.ar8xxx_priv*, %struct.ar8xxx_priv** %1, align 8
  ret %struct.ar8xxx_priv* %21
}

declare dso_local %struct.ar8xxx_priv* @kzalloc(i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
