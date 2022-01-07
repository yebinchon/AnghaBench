; ModuleID = '/home/carl/AnghaBench/lede/target/linux/generic/files/drivers/net/phy/extr_adm6996.c_adm6996_write_gpio_reg.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/generic/files/drivers/net/phy/extr_adm6996.c_adm6996_write_gpio_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adm6996_priv = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.adm6996_priv*, i32, i32)* @adm6996_write_gpio_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @adm6996_write_gpio_reg(%struct.adm6996_priv* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.adm6996_priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [4 x i32], align 16
  store %struct.adm6996_priv* %0, %struct.adm6996_priv** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %9 = load i32, i32* %5, align 4
  %10 = lshr i32 %9, 3
  %11 = or i32 160, %10
  store i32 %11, i32* %8, align 4
  %12 = getelementptr inbounds i32, i32* %8, i64 1
  %13 = load i32, i32* %5, align 4
  %14 = shl i32 %13, 5
  %15 = load i32, i32* %6, align 4
  %16 = ashr i32 %15, 11
  %17 = or i32 %14, %16
  store i32 %17, i32* %12, align 4
  %18 = getelementptr inbounds i32, i32* %12, i64 1
  %19 = load i32, i32* %6, align 4
  %20 = ashr i32 %19, 3
  store i32 %20, i32* %18, align 4
  %21 = getelementptr inbounds i32, i32* %18, i64 1
  %22 = load i32, i32* %6, align 4
  %23 = shl i32 %22, 5
  store i32 %23, i32* %21, align 4
  %24 = load %struct.adm6996_priv*, %struct.adm6996_priv** %4, align 8
  %25 = getelementptr inbounds %struct.adm6996_priv, %struct.adm6996_priv* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @gpio_direction_output(i32 %26, i32 0)
  %28 = load %struct.adm6996_priv*, %struct.adm6996_priv** %4, align 8
  %29 = getelementptr inbounds %struct.adm6996_priv, %struct.adm6996_priv* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @gpio_direction_output(i32 %30, i32 0)
  %32 = load %struct.adm6996_priv*, %struct.adm6996_priv** %4, align 8
  %33 = getelementptr inbounds %struct.adm6996_priv, %struct.adm6996_priv* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @gpio_direction_output(i32 %34, i32 0)
  %36 = load %struct.adm6996_priv*, %struct.adm6996_priv** %4, align 8
  %37 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %38 = call i32 @adm6996_gpio_write(%struct.adm6996_priv* %36, i32 1, i32* %37, i32 27)
  %39 = load %struct.adm6996_priv*, %struct.adm6996_priv** %4, align 8
  %40 = call i32 @adm6996_gpio_adclk(%struct.adm6996_priv* %39, i32 2)
  %41 = load %struct.adm6996_priv*, %struct.adm6996_priv** %4, align 8
  %42 = getelementptr inbounds %struct.adm6996_priv, %struct.adm6996_priv* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @gpio_direction_input(i32 %43)
  %45 = load %struct.adm6996_priv*, %struct.adm6996_priv** %4, align 8
  %46 = getelementptr inbounds %struct.adm6996_priv, %struct.adm6996_priv* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @gpio_direction_input(i32 %47)
  %49 = load %struct.adm6996_priv*, %struct.adm6996_priv** %4, align 8
  %50 = getelementptr inbounds %struct.adm6996_priv, %struct.adm6996_priv* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @gpio_direction_input(i32 %51)
  ret void
}

declare dso_local i32 @gpio_direction_output(i32, i32) #1

declare dso_local i32 @adm6996_gpio_write(%struct.adm6996_priv*, i32, i32*, i32) #1

declare dso_local i32 @adm6996_gpio_adclk(%struct.adm6996_priv*, i32) #1

declare dso_local i32 @gpio_direction_input(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
