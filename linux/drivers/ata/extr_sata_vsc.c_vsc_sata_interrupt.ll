; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_sata_vsc.c_vsc_sata_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_sata_vsc.c_vsc_sata_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_host = type { i32, i32, i32*, i32, i64* }

@VSC_MMIO_BAR = common dso_local global i64 0, align 8
@VSC_SATA_INT_STAT_OFFSET = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [58 x i8] c": IRQ status == 0xffffffff, PCI fault or device removal?\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @vsc_sata_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vsc_sata_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.ata_host*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.ata_host*
  store %struct.ata_host* %11, %struct.ata_host** %5, align 8
  store i32 0, i32* %7, align 4
  %12 = load %struct.ata_host*, %struct.ata_host** %5, align 8
  %13 = getelementptr inbounds %struct.ata_host, %struct.ata_host* %12, i32 0, i32 4
  %14 = load i64*, i64** %13, align 8
  %15 = load i64, i64* @VSC_MMIO_BAR, align 8
  %16 = getelementptr inbounds i64, i64* %14, i64 %15
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @VSC_SATA_INT_STAT_OFFSET, align 8
  %19 = add nsw i64 %17, %18
  %20 = call i32 @readl(i64 %19)
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = icmp eq i32 %21, -1
  br i1 %22, label %26, label %23

23:                                               ; preds = %2
  %24 = load i32, i32* %8, align 4
  %25 = icmp eq i32 %24, 0
  br label %26

26:                                               ; preds = %23, %2
  %27 = phi i1 [ true, %2 ], [ %25, %23 ]
  %28 = zext i1 %27 to i32
  %29 = call i64 @unlikely(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %40

31:                                               ; preds = %26
  %32 = load i32, i32* %8, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %31
  %35 = load %struct.ata_host*, %struct.ata_host** %5, align 8
  %36 = getelementptr inbounds %struct.ata_host, %struct.ata_host* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @dev_err(i32 %37, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0))
  br label %39

39:                                               ; preds = %34, %31
  br label %78

40:                                               ; preds = %26
  %41 = load %struct.ata_host*, %struct.ata_host** %5, align 8
  %42 = getelementptr inbounds %struct.ata_host, %struct.ata_host* %41, i32 0, i32 1
  %43 = call i32 @spin_lock(i32* %42)
  store i32 0, i32* %6, align 4
  br label %44

44:                                               ; preds = %71, %40
  %45 = load i32, i32* %6, align 4
  %46 = load %struct.ata_host*, %struct.ata_host** %5, align 8
  %47 = getelementptr inbounds %struct.ata_host, %struct.ata_host* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp ult i32 %45, %48
  br i1 %49, label %50, label %74

50:                                               ; preds = %44
  %51 = load i32, i32* %8, align 4
  %52 = load i32, i32* %6, align 4
  %53 = mul i32 8, %52
  %54 = ashr i32 %51, %53
  %55 = and i32 %54, 255
  store i32 %55, i32* %9, align 4
  %56 = load i32, i32* %9, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %70

58:                                               ; preds = %50
  %59 = load i32, i32* %9, align 4
  %60 = load %struct.ata_host*, %struct.ata_host** %5, align 8
  %61 = getelementptr inbounds %struct.ata_host, %struct.ata_host* %60, i32 0, i32 2
  %62 = load i32*, i32** %61, align 8
  %63 = load i32, i32* %6, align 4
  %64 = zext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @vsc_port_intr(i32 %59, i32 %66)
  %68 = load i32, i32* %7, align 4
  %69 = add i32 %68, 1
  store i32 %69, i32* %7, align 4
  br label %70

70:                                               ; preds = %58, %50
  br label %71

71:                                               ; preds = %70
  %72 = load i32, i32* %6, align 4
  %73 = add i32 %72, 1
  store i32 %73, i32* %6, align 4
  br label %44

74:                                               ; preds = %44
  %75 = load %struct.ata_host*, %struct.ata_host** %5, align 8
  %76 = getelementptr inbounds %struct.ata_host, %struct.ata_host* %75, i32 0, i32 1
  %77 = call i32 @spin_unlock(i32* %76)
  br label %78

78:                                               ; preds = %74, %39
  %79 = load i32, i32* %7, align 4
  %80 = call i32 @IRQ_RETVAL(i32 %79)
  ret i32 %80
}

declare dso_local i32 @readl(i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @vsc_port_intr(i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @IRQ_RETVAL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
