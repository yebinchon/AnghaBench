; ModuleID = '/home/carl/AnghaBench/lede/target/linux/ramips/files-4.14/drivers/net/ethernet/mediatek/extr_mt7530.c_mt7530_vtcr.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/ramips/files-4.14/drivers/net/ethernet/mediatek/extr_mt7530.c_mt7530_vtcr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt7530_priv = type { i32 }

@REG_ESW_VLAN_VTCR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"mt7530: vtcr timeout\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mt7530_priv*, i32, i32)* @mt7530_vtcr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mt7530_vtcr(%struct.mt7530_priv* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.mt7530_priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.mt7530_priv* %0, %struct.mt7530_priv** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.mt7530_priv*, %struct.mt7530_priv** %4, align 8
  %10 = load i32, i32* @REG_ESW_VLAN_VTCR, align 4
  %11 = call i32 @BIT(i32 31)
  %12 = load i32, i32* %5, align 4
  %13 = shl i32 %12, 12
  %14 = or i32 %11, %13
  %15 = load i32, i32* %6, align 4
  %16 = or i32 %14, %15
  %17 = call i32 @mt7530_w32(%struct.mt7530_priv* %9, i32 %10, i32 %16)
  store i32 0, i32* %7, align 4
  br label %18

18:                                               ; preds = %32, %3
  %19 = load i32, i32* %7, align 4
  %20 = icmp slt i32 %19, 20
  br i1 %20, label %21, label %35

21:                                               ; preds = %18
  %22 = load %struct.mt7530_priv*, %struct.mt7530_priv** %4, align 8
  %23 = load i32, i32* @REG_ESW_VLAN_VTCR, align 4
  %24 = call i32 @mt7530_r32(%struct.mt7530_priv* %22, i32 %23)
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %8, align 4
  %26 = call i32 @BIT(i32 31)
  %27 = and i32 %25, %26
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %21
  br label %35

30:                                               ; preds = %21
  %31 = call i32 @udelay(i32 1000)
  br label %32

32:                                               ; preds = %30
  %33 = load i32, i32* %7, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %7, align 4
  br label %18

35:                                               ; preds = %29, %18
  %36 = load i32, i32* %7, align 4
  %37 = icmp eq i32 %36, 20
  br i1 %37, label %38, label %40

38:                                               ; preds = %35
  %39 = call i32 @printk(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %40

40:                                               ; preds = %38, %35
  ret void
}

declare dso_local i32 @mt7530_w32(%struct.mt7530_priv*, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @mt7530_r32(%struct.mt7530_priv*, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @printk(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
