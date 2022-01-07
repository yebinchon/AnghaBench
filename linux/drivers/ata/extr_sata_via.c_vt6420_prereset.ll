; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_sata_via.c_vt6420_prereset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_sata_via.c_vt6420_prereset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_link = type { %struct.ata_port* }
%struct.ata_port = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.ata_eh_context }
%struct.ata_eh_context = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@jiffies = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@ATA_PFLAG_LOADING = common dso_local global i32 0, align 4
@SCR_CONTROL = common dso_local global i32 0, align 4
@SCR_STATUS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"SATA link %s 1.5 Gbps (SStatus %X SControl %X)\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"up\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"down\00", align 1
@ATA_EH_RESET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ata_link*, i64)* @vt6420_prereset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vt6420_prereset(%struct.ata_link* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ata_link*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.ata_port*, align 8
  %7 = alloca %struct.ata_eh_context*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.ata_link* %0, %struct.ata_link** %4, align 8
  store i64 %1, i64* %5, align 8
  %12 = load %struct.ata_link*, %struct.ata_link** %4, align 8
  %13 = getelementptr inbounds %struct.ata_link, %struct.ata_link* %12, i32 0, i32 0
  %14 = load %struct.ata_port*, %struct.ata_port** %13, align 8
  store %struct.ata_port* %14, %struct.ata_port** %6, align 8
  %15 = load %struct.ata_port*, %struct.ata_port** %6, align 8
  %16 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  store %struct.ata_eh_context* %17, %struct.ata_eh_context** %7, align 8
  %18 = load i32, i32* @jiffies, align 4
  %19 = load i32, i32* @HZ, align 4
  %20 = mul nsw i32 %19, 5
  %21 = add nsw i32 %18, %20
  %22 = sext i32 %21 to i64
  store i64 %22, i64* %8, align 8
  %23 = load %struct.ata_port*, %struct.ata_port** %6, align 8
  %24 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @ATA_PFLAG_LOADING, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %2
  br label %88

30:                                               ; preds = %2
  %31 = load %struct.ata_link*, %struct.ata_link** %4, align 8
  %32 = load i32, i32* @SCR_CONTROL, align 4
  %33 = call i32 @svia_scr_write(%struct.ata_link* %31, i32 %32, i32 768)
  %34 = load %struct.ata_link*, %struct.ata_link** %4, align 8
  %35 = load i32, i32* @SCR_CONTROL, align 4
  %36 = call i32 @svia_scr_read(%struct.ata_link* %34, i32 %35, i32* %10)
  br label %37

37:                                               ; preds = %50, %30
  %38 = load %struct.ata_link*, %struct.ata_link** %4, align 8
  %39 = getelementptr inbounds %struct.ata_link, %struct.ata_link* %38, i32 0, i32 0
  %40 = load %struct.ata_port*, %struct.ata_port** %39, align 8
  %41 = call i32 @ata_msleep(%struct.ata_port* %40, i32 200)
  %42 = load %struct.ata_link*, %struct.ata_link** %4, align 8
  %43 = load i32, i32* @SCR_STATUS, align 4
  %44 = call i32 @svia_scr_read(%struct.ata_link* %42, i32 %43, i32* %9)
  %45 = load i32, i32* %9, align 4
  %46 = and i32 %45, 15
  %47 = icmp ne i32 %46, 1
  br i1 %47, label %48, label %49

48:                                               ; preds = %37
  br label %55

49:                                               ; preds = %37
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* @jiffies, align 4
  %52 = load i64, i64* %8, align 8
  %53 = call i64 @time_before(i32 %51, i64 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %37, label %55

55:                                               ; preds = %50, %48
  %56 = load %struct.ata_link*, %struct.ata_link** %4, align 8
  %57 = load i32, i32* @SCR_STATUS, align 4
  %58 = call i32 @svia_scr_read(%struct.ata_link* %56, i32 %57, i32* %9)
  %59 = load %struct.ata_link*, %struct.ata_link** %4, align 8
  %60 = load i32, i32* @SCR_CONTROL, align 4
  %61 = call i32 @svia_scr_read(%struct.ata_link* %59, i32 %60, i32* %10)
  %62 = load i32, i32* %9, align 4
  %63 = and i32 %62, 15
  %64 = icmp eq i32 %63, 3
  %65 = zext i1 %64 to i32
  store i32 %65, i32* %11, align 4
  %66 = load %struct.ata_port*, %struct.ata_port** %6, align 8
  %67 = load i32, i32* %11, align 4
  %68 = icmp ne i32 %67, 0
  %69 = zext i1 %68 to i64
  %70 = select i1 %68, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)
  %71 = load i32, i32* %9, align 4
  %72 = load i32, i32* %10, align 4
  %73 = call i32 @ata_port_info(%struct.ata_port* %66, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i8* %70, i32 %71, i32 %72)
  %74 = load %struct.ata_link*, %struct.ata_link** %4, align 8
  %75 = load i32, i32* @SCR_STATUS, align 4
  %76 = call i32 @svia_scr_read(%struct.ata_link* %74, i32 %75, i32* %9)
  %77 = load i32, i32* %11, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %87, label %79

79:                                               ; preds = %55
  %80 = load i32, i32* @ATA_EH_RESET, align 4
  %81 = xor i32 %80, -1
  %82 = load %struct.ata_eh_context*, %struct.ata_eh_context** %7, align 8
  %83 = getelementptr inbounds %struct.ata_eh_context, %struct.ata_eh_context* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = and i32 %85, %81
  store i32 %86, i32* %84, align 4
  store i32 0, i32* %3, align 4
  br label %92

87:                                               ; preds = %55
  br label %88

88:                                               ; preds = %87, %29
  %89 = load %struct.ata_link*, %struct.ata_link** %4, align 8
  %90 = load i64, i64* %5, align 8
  %91 = call i32 @ata_sff_wait_ready(%struct.ata_link* %89, i64 %90)
  store i32 0, i32* %3, align 4
  br label %92

92:                                               ; preds = %88, %79
  %93 = load i32, i32* %3, align 4
  ret i32 %93
}

declare dso_local i32 @svia_scr_write(%struct.ata_link*, i32, i32) #1

declare dso_local i32 @svia_scr_read(%struct.ata_link*, i32, i32*) #1

declare dso_local i32 @ata_msleep(%struct.ata_port*, i32) #1

declare dso_local i64 @time_before(i32, i64) #1

declare dso_local i32 @ata_port_info(%struct.ata_port*, i8*, i8*, i32, i32) #1

declare dso_local i32 @ata_sff_wait_ready(%struct.ata_link*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
