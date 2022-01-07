; ModuleID = '/home/carl/AnghaBench/linux/drivers/atm/extr_idt77252.c_write_sram.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/atm/extr_idt77252.c_write_sram.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.idt77252_dev = type { i32*, i32, i32, i32 }

@idt77252_sram_write_errors = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [51 x i8] c"%s: ERROR: TST JMP section at %08lx written: %08x\0A\00", align 1
@SAR_REG_DR0 = common dso_local global i32 0, align 4
@SAR_CMD_WRITE_SRAM = common dso_local global i64 0, align 8
@SAR_REG_CMD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.idt77252_dev*, i64, i64)* @write_sram to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_sram(%struct.idt77252_dev* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.idt77252_dev*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.idt77252_dev* %0, %struct.idt77252_dev** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load i64, i64* @idt77252_sram_write_errors, align 8
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %71

10:                                               ; preds = %3
  %11 = load i64, i64* %5, align 8
  %12 = load %struct.idt77252_dev*, %struct.idt77252_dev** %4, align 8
  %13 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.idt77252_dev*, %struct.idt77252_dev** %4, align 8
  %18 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = add nsw i32 %16, %19
  %21 = sub nsw i32 %20, 2
  %22 = sext i32 %21 to i64
  %23 = icmp ugt i64 %11, %22
  br i1 %23, label %24, label %37

24:                                               ; preds = %10
  %25 = load i64, i64* %5, align 8
  %26 = load %struct.idt77252_dev*, %struct.idt77252_dev** %4, align 8
  %27 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.idt77252_dev*, %struct.idt77252_dev** %4, align 8
  %32 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = add nsw i32 %30, %33
  %35 = sext i32 %34 to i64
  %36 = icmp ult i64 %25, %35
  br i1 %36, label %64, label %37

37:                                               ; preds = %24, %10
  %38 = load i64, i64* %5, align 8
  %39 = load %struct.idt77252_dev*, %struct.idt77252_dev** %4, align 8
  %40 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.idt77252_dev*, %struct.idt77252_dev** %4, align 8
  %45 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = add nsw i32 %43, %46
  %48 = sub nsw i32 %47, 2
  %49 = sext i32 %48 to i64
  %50 = icmp ugt i64 %38, %49
  br i1 %50, label %51, label %71

51:                                               ; preds = %37
  %52 = load i64, i64* %5, align 8
  %53 = load %struct.idt77252_dev*, %struct.idt77252_dev** %4, align 8
  %54 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 1
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.idt77252_dev*, %struct.idt77252_dev** %4, align 8
  %59 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = add nsw i32 %57, %60
  %62 = sext i32 %61 to i64
  %63 = icmp ult i64 %52, %62
  br i1 %63, label %64, label %71

64:                                               ; preds = %51, %24
  %65 = load %struct.idt77252_dev*, %struct.idt77252_dev** %4, align 8
  %66 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 8
  %68 = load i64, i64* %5, align 8
  %69 = load i64, i64* %6, align 8
  %70 = call i32 @printk(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %67, i64 %68, i64 %69)
  br label %71

71:                                               ; preds = %64, %51, %37, %3
  %72 = load %struct.idt77252_dev*, %struct.idt77252_dev** %4, align 8
  %73 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %72, i32 0, i32 2
  %74 = load i64, i64* %7, align 8
  %75 = call i32 @spin_lock_irqsave(i32* %73, i64 %74)
  %76 = load i64, i64* %6, align 8
  %77 = load i32, i32* @SAR_REG_DR0, align 4
  %78 = call i32 @writel(i64 %76, i32 %77)
  %79 = load i64, i64* @SAR_CMD_WRITE_SRAM, align 8
  %80 = load i64, i64* %5, align 8
  %81 = shl i64 %80, 2
  %82 = or i64 %79, %81
  %83 = load i32, i32* @SAR_REG_CMD, align 4
  %84 = call i32 @writel(i64 %82, i32 %83)
  %85 = load %struct.idt77252_dev*, %struct.idt77252_dev** %4, align 8
  %86 = call i32 @waitfor_idle(%struct.idt77252_dev* %85)
  %87 = load %struct.idt77252_dev*, %struct.idt77252_dev** %4, align 8
  %88 = getelementptr inbounds %struct.idt77252_dev, %struct.idt77252_dev* %87, i32 0, i32 2
  %89 = load i64, i64* %7, align 8
  %90 = call i32 @spin_unlock_irqrestore(i32* %88, i64 %89)
  ret void
}

declare dso_local i32 @printk(i8*, i32, i64, i64) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @writel(i64, i32) #1

declare dso_local i32 @waitfor_idle(%struct.idt77252_dev*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
