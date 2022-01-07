; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_libata-core.c_ata_std_prereset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_libata-core.c_ata_std_prereset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_link = type { %struct.ata_eh_context, %struct.ata_port* }
%struct.ata_eh_context = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.ata_port = type { i32 }

@ATA_EH_HARDRESET = common dso_local global i32 0, align 4
@ATA_FLAG_SATA = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"failed to resume link for reset (errno=%d)\0A\00", align 1
@ATA_EH_SOFTRESET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ata_std_prereset(%struct.ata_link* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ata_link*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.ata_port*, align 8
  %7 = alloca %struct.ata_eh_context*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  store %struct.ata_link* %0, %struct.ata_link** %4, align 8
  store i64 %1, i64* %5, align 8
  %10 = load %struct.ata_link*, %struct.ata_link** %4, align 8
  %11 = getelementptr inbounds %struct.ata_link, %struct.ata_link* %10, i32 0, i32 1
  %12 = load %struct.ata_port*, %struct.ata_port** %11, align 8
  store %struct.ata_port* %12, %struct.ata_port** %6, align 8
  %13 = load %struct.ata_link*, %struct.ata_link** %4, align 8
  %14 = getelementptr inbounds %struct.ata_link, %struct.ata_link* %13, i32 0, i32 0
  store %struct.ata_eh_context* %14, %struct.ata_eh_context** %7, align 8
  %15 = load %struct.ata_eh_context*, %struct.ata_eh_context** %7, align 8
  %16 = call i64* @sata_ehc_deb_timing(%struct.ata_eh_context* %15)
  store i64* %16, i64** %8, align 8
  %17 = load %struct.ata_eh_context*, %struct.ata_eh_context** %7, align 8
  %18 = getelementptr inbounds %struct.ata_eh_context, %struct.ata_eh_context* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @ATA_EH_HARDRESET, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %62

25:                                               ; preds = %2
  %26 = load %struct.ata_port*, %struct.ata_port** %6, align 8
  %27 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @ATA_FLAG_SATA, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %49

32:                                               ; preds = %25
  %33 = load %struct.ata_link*, %struct.ata_link** %4, align 8
  %34 = load i64*, i64** %8, align 8
  %35 = load i64, i64* %5, align 8
  %36 = call i32 @sata_link_resume(%struct.ata_link* %33, i64* %34, i64 %35)
  store i32 %36, i32* %9, align 4
  %37 = load i32, i32* %9, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %48

39:                                               ; preds = %32
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* @EOPNOTSUPP, align 4
  %42 = sub nsw i32 0, %41
  %43 = icmp ne i32 %40, %42
  br i1 %43, label %44, label %48

44:                                               ; preds = %39
  %45 = load %struct.ata_link*, %struct.ata_link** %4, align 8
  %46 = load i32, i32* %9, align 4
  %47 = call i32 @ata_link_warn(%struct.ata_link* %45, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %46)
  br label %48

48:                                               ; preds = %44, %39, %32
  br label %49

49:                                               ; preds = %48, %25
  %50 = load %struct.ata_link*, %struct.ata_link** %4, align 8
  %51 = call i64 @ata_phys_link_offline(%struct.ata_link* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %61

53:                                               ; preds = %49
  %54 = load i32, i32* @ATA_EH_SOFTRESET, align 4
  %55 = xor i32 %54, -1
  %56 = load %struct.ata_eh_context*, %struct.ata_eh_context** %7, align 8
  %57 = getelementptr inbounds %struct.ata_eh_context, %struct.ata_eh_context* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = and i32 %59, %55
  store i32 %60, i32* %58, align 4
  br label %61

61:                                               ; preds = %53, %49
  store i32 0, i32* %3, align 4
  br label %62

62:                                               ; preds = %61, %24
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local i64* @sata_ehc_deb_timing(%struct.ata_eh_context*) #1

declare dso_local i32 @sata_link_resume(%struct.ata_link*, i64*, i64) #1

declare dso_local i32 @ata_link_warn(%struct.ata_link*, i8*, i32) #1

declare dso_local i64 @ata_phys_link_offline(%struct.ata_link*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
