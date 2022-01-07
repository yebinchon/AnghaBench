; ModuleID = '/home/carl/AnghaBench/linux/drivers/atm/extr_iphase.c_reset_sar.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/atm/extr_iphase.c_reset_sar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atm_dev = type { i32 }
%struct.TYPE_3__ = type { i32, i64 }

@PCIBIOS_SUCCESSFUL = common dso_local global i32 0, align 4
@IPHASE5575_EXT_RESET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.atm_dev*)* @reset_sar to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @reset_sar(%struct.atm_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.atm_dev*, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [64 x i32], align 16
  store %struct.atm_dev* %0, %struct.atm_dev** %3, align 8
  store i32 1, i32* %6, align 4
  %8 = load %struct.atm_dev*, %struct.atm_dev** %3, align 8
  %9 = call %struct.TYPE_3__* @INPH_IA_DEV(%struct.atm_dev* %8)
  store %struct.TYPE_3__* %9, %struct.TYPE_3__** %4, align 8
  store i32 0, i32* %5, align 4
  br label %10

10:                                               ; preds = %28, %1
  %11 = load i32, i32* %5, align 4
  %12 = icmp slt i32 %11, 64
  br i1 %12, label %13, label %31

13:                                               ; preds = %10
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* %5, align 4
  %18 = mul nsw i32 %17, 4
  %19 = load i32, i32* %5, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [64 x i32], [64 x i32]* %7, i64 0, i64 %20
  %22 = call i32 @pci_read_config_dword(i32 %16, i32 %18, i32* %21)
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* @PCIBIOS_SUCCESSFUL, align 4
  %24 = icmp ne i32 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %13
  %26 = load i32, i32* %6, align 4
  store i32 %26, i32* %2, align 4
  br label %62

27:                                               ; preds = %13
  br label %28

28:                                               ; preds = %27
  %29 = load i32, i32* %5, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %5, align 4
  br label %10

31:                                               ; preds = %10
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @IPHASE5575_EXT_RESET, align 8
  %36 = add nsw i64 %34, %35
  %37 = call i32 @writel(i32 0, i64 %36)
  store i32 0, i32* %5, align 4
  br label %38

38:                                               ; preds = %57, %31
  %39 = load i32, i32* %5, align 4
  %40 = icmp slt i32 %39, 64
  br i1 %40, label %41, label %60

41:                                               ; preds = %38
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* %5, align 4
  %46 = mul nsw i32 %45, 4
  %47 = load i32, i32* %5, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds [64 x i32], [64 x i32]* %7, i64 0, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @pci_write_config_dword(i32 %44, i32 %46, i32 %50)
  store i32 %51, i32* %6, align 4
  %52 = load i32, i32* @PCIBIOS_SUCCESSFUL, align 4
  %53 = icmp ne i32 %51, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %41
  %55 = load i32, i32* %6, align 4
  store i32 %55, i32* %2, align 4
  br label %62

56:                                               ; preds = %41
  br label %57

57:                                               ; preds = %56
  %58 = load i32, i32* %5, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %5, align 4
  br label %38

60:                                               ; preds = %38
  %61 = call i32 @udelay(i32 5)
  store i32 0, i32* %2, align 4
  br label %62

62:                                               ; preds = %60, %54, %25
  %63 = load i32, i32* %2, align 4
  ret i32 %63
}

declare dso_local %struct.TYPE_3__* @INPH_IA_DEV(%struct.atm_dev*) #1

declare dso_local i32 @pci_read_config_dword(i32, i32, i32*) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @pci_write_config_dword(i32, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
