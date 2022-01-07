; ModuleID = '/home/carl/AnghaBench/lede/target/linux/generic/files/drivers/net/phy/extr_rtl8366_smi.c___rtl8366_smi_write_reg.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/generic/files/drivers/net/phy/extr_rtl8366_smi.c___rtl8366_smi_write_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtl8366_smi = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtl8366_smi*, i32, i32, i32)* @__rtl8366_smi_write_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__rtl8366_smi_write_reg(%struct.rtl8366_smi* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.rtl8366_smi*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.rtl8366_smi* %0, %struct.rtl8366_smi** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %5, align 8
  %12 = getelementptr inbounds %struct.rtl8366_smi, %struct.rtl8366_smi* %11, i32 0, i32 1
  %13 = load i64, i64* %9, align 8
  %14 = call i32 @spin_lock_irqsave(i32* %12, i64 %13)
  %15 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %5, align 8
  %16 = call i32 @rtl8366_smi_start(%struct.rtl8366_smi* %15)
  %17 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %5, align 8
  %18 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %5, align 8
  %19 = getelementptr inbounds %struct.rtl8366_smi, %struct.rtl8366_smi* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @rtl8366_smi_write_byte(%struct.rtl8366_smi* %17, i32 %20)
  store i32 %21, i32* %10, align 4
  %22 = load i32, i32* %10, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %4
  br label %67

25:                                               ; preds = %4
  %26 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %5, align 8
  %27 = load i32, i32* %6, align 4
  %28 = and i32 %27, 255
  %29 = call i32 @rtl8366_smi_write_byte(%struct.rtl8366_smi* %26, i32 %28)
  store i32 %29, i32* %10, align 4
  %30 = load i32, i32* %10, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %25
  br label %67

33:                                               ; preds = %25
  %34 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %5, align 8
  %35 = load i32, i32* %6, align 4
  %36 = ashr i32 %35, 8
  %37 = call i32 @rtl8366_smi_write_byte(%struct.rtl8366_smi* %34, i32 %36)
  store i32 %37, i32* %10, align 4
  %38 = load i32, i32* %10, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %33
  br label %67

41:                                               ; preds = %33
  %42 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %5, align 8
  %43 = load i32, i32* %7, align 4
  %44 = and i32 %43, 255
  %45 = call i32 @rtl8366_smi_write_byte(%struct.rtl8366_smi* %42, i32 %44)
  store i32 %45, i32* %10, align 4
  %46 = load i32, i32* %10, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %41
  br label %67

49:                                               ; preds = %41
  %50 = load i32, i32* %8, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %49
  %53 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %5, align 8
  %54 = load i32, i32* %7, align 4
  %55 = ashr i32 %54, 8
  %56 = call i32 @rtl8366_smi_write_byte(%struct.rtl8366_smi* %53, i32 %55)
  store i32 %56, i32* %10, align 4
  br label %62

57:                                               ; preds = %49
  %58 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %5, align 8
  %59 = load i32, i32* %7, align 4
  %60 = ashr i32 %59, 8
  %61 = call i32 @rtl8366_smi_write_byte_noack(%struct.rtl8366_smi* %58, i32 %60)
  store i32 %61, i32* %10, align 4
  br label %62

62:                                               ; preds = %57, %52
  %63 = load i32, i32* %10, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %62
  br label %67

66:                                               ; preds = %62
  store i32 0, i32* %10, align 4
  br label %67

67:                                               ; preds = %66, %65, %48, %40, %32, %24
  %68 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %5, align 8
  %69 = call i32 @rtl8366_smi_stop(%struct.rtl8366_smi* %68)
  %70 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %5, align 8
  %71 = getelementptr inbounds %struct.rtl8366_smi, %struct.rtl8366_smi* %70, i32 0, i32 1
  %72 = load i64, i64* %9, align 8
  %73 = call i32 @spin_unlock_irqrestore(i32* %71, i64 %72)
  %74 = load i32, i32* %10, align 4
  ret i32 %74
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @rtl8366_smi_start(%struct.rtl8366_smi*) #1

declare dso_local i32 @rtl8366_smi_write_byte(%struct.rtl8366_smi*, i32) #1

declare dso_local i32 @rtl8366_smi_write_byte_noack(%struct.rtl8366_smi*, i32) #1

declare dso_local i32 @rtl8366_smi_stop(%struct.rtl8366_smi*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
