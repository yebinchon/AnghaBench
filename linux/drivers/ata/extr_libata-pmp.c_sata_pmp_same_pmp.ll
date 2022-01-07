; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_libata-pmp.c_sata_pmp_same_pmp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_libata-pmp.c_sata_pmp_same_pmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_device = type { i32* }

@.str = private unnamed_addr constant [50 x i8] c"Port Multiplier vendor mismatch '0x%x' != '0x%x'\0A\00", align 1
@.str.1 = private unnamed_addr constant [53 x i8] c"Port Multiplier device ID mismatch '0x%x' != '0x%x'\0A\00", align 1
@.str.2 = private unnamed_addr constant [52 x i8] c"Port Multiplier nr_ports mismatch '0x%x' != '0x%x'\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ata_device*, i32*)* @sata_pmp_same_pmp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sata_pmp_same_pmp(%struct.ata_device* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ata_device*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.ata_device* %0, %struct.ata_device** %4, align 8
  store i32* %1, i32** %5, align 8
  %13 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %14 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  store i32* %15, i32** %6, align 8
  %16 = load i32*, i32** %6, align 8
  %17 = call i64 @sata_pmp_gscr_vendor(i32* %16)
  store i64 %17, i64* %7, align 8
  %18 = load i32*, i32** %5, align 8
  %19 = call i64 @sata_pmp_gscr_vendor(i32* %18)
  store i64 %19, i64* %8, align 8
  %20 = load i32*, i32** %6, align 8
  %21 = call i64 @sata_pmp_gscr_devid(i32* %20)
  store i64 %21, i64* %9, align 8
  %22 = load i32*, i32** %5, align 8
  %23 = call i64 @sata_pmp_gscr_devid(i32* %22)
  store i64 %23, i64* %10, align 8
  %24 = load i32*, i32** %6, align 8
  %25 = call i32 @sata_pmp_gscr_ports(i32* %24)
  store i32 %25, i32* %11, align 4
  %26 = load i32*, i32** %5, align 8
  %27 = call i32 @sata_pmp_gscr_ports(i32* %26)
  store i32 %27, i32* %12, align 4
  %28 = load i64, i64* %7, align 8
  %29 = load i64, i64* %8, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %38

31:                                               ; preds = %2
  %32 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %33 = load i64, i64* %7, align 8
  %34 = trunc i64 %33 to i32
  %35 = load i64, i64* %8, align 8
  %36 = trunc i64 %35 to i32
  %37 = call i32 @ata_dev_info(%struct.ata_device* %32, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %34, i32 %36)
  store i32 0, i32* %3, align 4
  br label %59

38:                                               ; preds = %2
  %39 = load i64, i64* %9, align 8
  %40 = load i64, i64* %10, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %49

42:                                               ; preds = %38
  %43 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %44 = load i64, i64* %9, align 8
  %45 = trunc i64 %44 to i32
  %46 = load i64, i64* %10, align 8
  %47 = trunc i64 %46 to i32
  %48 = call i32 @ata_dev_info(%struct.ata_device* %43, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), i32 %45, i32 %47)
  store i32 0, i32* %3, align 4
  br label %59

49:                                               ; preds = %38
  %50 = load i32, i32* %11, align 4
  %51 = load i32, i32* %12, align 4
  %52 = icmp ne i32 %50, %51
  br i1 %52, label %53, label %58

53:                                               ; preds = %49
  %54 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %55 = load i32, i32* %11, align 4
  %56 = load i32, i32* %12, align 4
  %57 = call i32 @ata_dev_info(%struct.ata_device* %54, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0), i32 %55, i32 %56)
  store i32 0, i32* %3, align 4
  br label %59

58:                                               ; preds = %49
  store i32 1, i32* %3, align 4
  br label %59

59:                                               ; preds = %58, %53, %42, %31
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local i64 @sata_pmp_gscr_vendor(i32*) #1

declare dso_local i64 @sata_pmp_gscr_devid(i32*) #1

declare dso_local i32 @sata_pmp_gscr_ports(i32*) #1

declare dso_local i32 @ata_dev_info(%struct.ata_device*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
