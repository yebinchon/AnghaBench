; ModuleID = '/home/carl/AnghaBench/lede/target/linux/ramips/files-4.14/drivers/net/ethernet/mediatek/extr_mt7530.c_mt7530_r32.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/ramips/files-4.14/drivers/net/ethernet/mediatek/extr_mt7530.c_mt7530_r32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt7530_priv = type { i64, i64 }

@.str = private unnamed_addr constant [30 x i8] c"MT7530 MDIO Read [%04x]=%08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mt7530_priv*, i32)* @mt7530_r32 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt7530_r32(%struct.mt7530_priv* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mt7530_priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.mt7530_priv* %0, %struct.mt7530_priv** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.mt7530_priv*, %struct.mt7530_priv** %4, align 8
  %10 = getelementptr inbounds %struct.mt7530_priv, %struct.mt7530_priv* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %37

13:                                               ; preds = %2
  %14 = load %struct.mt7530_priv*, %struct.mt7530_priv** %4, align 8
  %15 = getelementptr inbounds %struct.mt7530_priv, %struct.mt7530_priv* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = load i32, i32* %5, align 4
  %18 = ashr i32 %17, 6
  %19 = and i32 %18, 1023
  %20 = call i32 @mdiobus_write(i64 %16, i32 31, i32 31, i32 %19)
  %21 = load %struct.mt7530_priv*, %struct.mt7530_priv** %4, align 8
  %22 = getelementptr inbounds %struct.mt7530_priv, %struct.mt7530_priv* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load i32, i32* %5, align 4
  %25 = ashr i32 %24, 2
  %26 = and i32 %25, 15
  %27 = call i32 @mdiobus_read(i64 %23, i32 31, i32 %26)
  store i32 %27, i32* %8, align 4
  %28 = load %struct.mt7530_priv*, %struct.mt7530_priv** %4, align 8
  %29 = getelementptr inbounds %struct.mt7530_priv, %struct.mt7530_priv* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = call i32 @mdiobus_read(i64 %30, i32 31, i32 16)
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* %7, align 4
  %33 = shl i32 %32, 16
  %34 = load i32, i32* %8, align 4
  %35 = and i32 %34, 65535
  %36 = or i32 %33, %35
  store i32 %36, i32* %3, align 4
  br label %49

37:                                               ; preds = %2
  %38 = load %struct.mt7530_priv*, %struct.mt7530_priv** %4, align 8
  %39 = getelementptr inbounds %struct.mt7530_priv, %struct.mt7530_priv* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i32, i32* %5, align 4
  %42 = sext i32 %41 to i64
  %43 = add nsw i64 %40, %42
  %44 = call i32 @ioread32(i64 %43)
  store i32 %44, i32* %6, align 4
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* %6, align 4
  %47 = call i32 @pr_debug(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %45, i32 %46)
  %48 = load i32, i32* %6, align 4
  store i32 %48, i32* %3, align 4
  br label %49

49:                                               ; preds = %37, %13
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local i32 @mdiobus_write(i64, i32, i32, i32) #1

declare dso_local i32 @mdiobus_read(i64, i32, i32) #1

declare dso_local i32 @ioread32(i64) #1

declare dso_local i32 @pr_debug(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
