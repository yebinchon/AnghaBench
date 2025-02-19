; ModuleID = '/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_leon_pci_grpci2.c_grpci2_cfg_r32.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_leon_pci_grpci2.c_grpci2_cfg_r32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.grpci2_priv = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@TGT = common dso_local global i32 0, align 4
@grpci2_dev_lock = common dso_local global i32 0, align 4
@STS_CFGERR = common dso_local global i32 0, align 4
@STS_CFGERRVALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.grpci2_priv*, i32, i32, i32, i32*)* @grpci2_cfg_r32 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @grpci2_cfg_r32(%struct.grpci2_priv* %0, i32 %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.grpci2_priv*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.grpci2_priv* %0, %struct.grpci2_priv** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %15 = load i32, i32* %10, align 4
  %16 = and i32 %15, 3
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %5
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %6, align 4
  br label %104

21:                                               ; preds = %5
  %22 = load i32, i32* %8, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %21
  %25 = load i32, i32* %9, align 4
  %26 = add i32 %25, 48
  store i32 %26, i32* %9, align 4
  br label %33

27:                                               ; preds = %21
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* @TGT, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %27
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %32

32:                                               ; preds = %31, %27
  br label %33

33:                                               ; preds = %32, %24
  %34 = load i64, i64* %13, align 8
  %35 = call i32 @spin_lock_irqsave(i32* @grpci2_dev_lock, i64 %34)
  %36 = load %struct.grpci2_priv*, %struct.grpci2_priv** %7, align 8
  %37 = getelementptr inbounds %struct.grpci2_priv, %struct.grpci2_priv* %36, i32 0, i32 1
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.grpci2_priv*, %struct.grpci2_priv** %7, align 8
  %42 = getelementptr inbounds %struct.grpci2_priv, %struct.grpci2_priv* %41, i32 0, i32 1
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @REGLOAD(i32 %45)
  %47 = and i32 %46, -16711681
  %48 = load i32, i32* %8, align 4
  %49 = shl i32 %48, 16
  %50 = or i32 %47, %49
  %51 = call i32 @REGSTORE(i32 %40, i32 %50)
  %52 = load i64, i64* %13, align 8
  %53 = call i32 @spin_unlock_irqrestore(i32* @grpci2_dev_lock, i64 %52)
  %54 = load %struct.grpci2_priv*, %struct.grpci2_priv** %7, align 8
  %55 = getelementptr inbounds %struct.grpci2_priv, %struct.grpci2_priv* %54, i32 0, i32 1
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @STS_CFGERR, align 4
  %60 = load i32, i32* @STS_CFGERRVALID, align 4
  %61 = or i32 %59, %60
  %62 = call i32 @REGSTORE(i32 %58, i32 %61)
  %63 = load %struct.grpci2_priv*, %struct.grpci2_priv** %7, align 8
  %64 = getelementptr inbounds %struct.grpci2_priv, %struct.grpci2_priv* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* %9, align 4
  %67 = shl i32 %66, 8
  %68 = or i32 %65, %67
  %69 = load i32, i32* %10, align 4
  %70 = and i32 %69, 252
  %71 = or i32 %68, %70
  %72 = zext i32 %71 to i64
  %73 = inttoptr i64 %72 to i32*
  store i32* %73, i32** %12, align 8
  %74 = load i32*, i32** %12, align 8
  %75 = call i32 @LEON3_BYPASS_LOAD_PA(i32* %74)
  store i32 %75, i32* %14, align 4
  br label %76

76:                                               ; preds = %86, %33
  %77 = load %struct.grpci2_priv*, %struct.grpci2_priv** %7, align 8
  %78 = getelementptr inbounds %struct.grpci2_priv, %struct.grpci2_priv* %77, i32 0, i32 1
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @REGLOAD(i32 %81)
  %83 = load i32, i32* @STS_CFGERRVALID, align 4
  %84 = and i32 %82, %83
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %76
  br label %76

87:                                               ; preds = %76
  %88 = load %struct.grpci2_priv*, %struct.grpci2_priv** %7, align 8
  %89 = getelementptr inbounds %struct.grpci2_priv, %struct.grpci2_priv* %88, i32 0, i32 1
  %90 = load %struct.TYPE_2__*, %struct.TYPE_2__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @REGLOAD(i32 %92)
  %94 = load i32, i32* @STS_CFGERR, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %87
  %98 = load i32*, i32** %11, align 8
  store i32 -1, i32* %98, align 4
  br label %103

99:                                               ; preds = %87
  %100 = load i32, i32* %14, align 4
  %101 = call i32 @swab32(i32 %100)
  %102 = load i32*, i32** %11, align 8
  store i32 %101, i32* %102, align 4
  br label %103

103:                                              ; preds = %99, %97
  store i32 0, i32* %6, align 4
  br label %104

104:                                              ; preds = %103, %18
  %105 = load i32, i32* %6, align 4
  ret i32 %105
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @REGSTORE(i32, i32) #1

declare dso_local i32 @REGLOAD(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @LEON3_BYPASS_LOAD_PA(i32*) #1

declare dso_local i32 @swab32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
