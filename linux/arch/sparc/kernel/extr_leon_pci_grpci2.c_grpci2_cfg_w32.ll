; ModuleID = '/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_leon_pci_grpci2.c_grpci2_cfg_w32.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_leon_pci_grpci2.c_grpci2_cfg_w32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.grpci2_priv = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@TGT = common dso_local global i32 0, align 4
@grpci2_dev_lock = common dso_local global i32 0, align 4
@STS_CFGERR = common dso_local global i32 0, align 4
@STS_CFGERRVALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.grpci2_priv*, i32, i32, i32, i32)* @grpci2_cfg_w32 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @grpci2_cfg_w32(%struct.grpci2_priv* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.grpci2_priv*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  store %struct.grpci2_priv* %0, %struct.grpci2_priv** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %14 = load i32, i32* %10, align 4
  %15 = and i32 %14, 3
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %5
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %6, align 4
  br label %89

20:                                               ; preds = %5
  %21 = load i32, i32* %8, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %20
  %24 = load i32, i32* %9, align 4
  %25 = add i32 %24, 48
  store i32 %25, i32* %9, align 4
  br label %32

26:                                               ; preds = %20
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* @TGT, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %31

31:                                               ; preds = %30, %26
  br label %32

32:                                               ; preds = %31, %23
  %33 = load i64, i64* %13, align 8
  %34 = call i32 @spin_lock_irqsave(i32* @grpci2_dev_lock, i64 %33)
  %35 = load %struct.grpci2_priv*, %struct.grpci2_priv** %7, align 8
  %36 = getelementptr inbounds %struct.grpci2_priv, %struct.grpci2_priv* %35, i32 0, i32 1
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.grpci2_priv*, %struct.grpci2_priv** %7, align 8
  %41 = getelementptr inbounds %struct.grpci2_priv, %struct.grpci2_priv* %40, i32 0, i32 1
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @REGLOAD(i32 %44)
  %46 = and i32 %45, -16711681
  %47 = load i32, i32* %8, align 4
  %48 = shl i32 %47, 16
  %49 = or i32 %46, %48
  %50 = call i32 @REGSTORE(i32 %39, i32 %49)
  %51 = load i64, i64* %13, align 8
  %52 = call i32 @spin_unlock_irqrestore(i32* @grpci2_dev_lock, i64 %51)
  %53 = load %struct.grpci2_priv*, %struct.grpci2_priv** %7, align 8
  %54 = getelementptr inbounds %struct.grpci2_priv, %struct.grpci2_priv* %53, i32 0, i32 1
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @STS_CFGERR, align 4
  %59 = load i32, i32* @STS_CFGERRVALID, align 4
  %60 = or i32 %58, %59
  %61 = call i32 @REGSTORE(i32 %57, i32 %60)
  %62 = load %struct.grpci2_priv*, %struct.grpci2_priv** %7, align 8
  %63 = getelementptr inbounds %struct.grpci2_priv, %struct.grpci2_priv* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* %9, align 4
  %66 = shl i32 %65, 8
  %67 = or i32 %64, %66
  %68 = load i32, i32* %10, align 4
  %69 = and i32 %68, 252
  %70 = or i32 %67, %69
  %71 = zext i32 %70 to i64
  %72 = inttoptr i64 %71 to i32*
  store i32* %72, i32** %12, align 8
  %73 = load i32*, i32** %12, align 8
  %74 = load i32, i32* %11, align 4
  %75 = call i32 @swab32(i32 %74)
  %76 = call i32 @LEON3_BYPASS_STORE_PA(i32* %73, i32 %75)
  br label %77

77:                                               ; preds = %87, %32
  %78 = load %struct.grpci2_priv*, %struct.grpci2_priv** %7, align 8
  %79 = getelementptr inbounds %struct.grpci2_priv, %struct.grpci2_priv* %78, i32 0, i32 1
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @REGLOAD(i32 %82)
  %84 = load i32, i32* @STS_CFGERRVALID, align 4
  %85 = and i32 %83, %84
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %77
  br label %77

88:                                               ; preds = %77
  store i32 0, i32* %6, align 4
  br label %89

89:                                               ; preds = %88, %17
  %90 = load i32, i32* %6, align 4
  ret i32 %90
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @REGSTORE(i32, i32) #1

declare dso_local i32 @REGLOAD(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @LEON3_BYPASS_STORE_PA(i32*, i32) #1

declare dso_local i32 @swab32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
