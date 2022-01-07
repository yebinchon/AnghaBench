; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_libata-sff.c_ata_sff_prereset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_libata-sff.c_ata_sff_prereset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_link = type { %struct.ata_eh_context }
%struct.ata_eh_context = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@ATA_EH_HARDRESET = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"device not ready (errno=%d), forcing hardreset\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ata_sff_prereset(%struct.ata_link* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ata_link*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.ata_eh_context*, align 8
  %7 = alloca i32, align 4
  store %struct.ata_link* %0, %struct.ata_link** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load %struct.ata_link*, %struct.ata_link** %4, align 8
  %9 = getelementptr inbounds %struct.ata_link, %struct.ata_link* %8, i32 0, i32 0
  store %struct.ata_eh_context* %9, %struct.ata_eh_context** %6, align 8
  %10 = load %struct.ata_link*, %struct.ata_link** %4, align 8
  %11 = load i64, i64* %5, align 8
  %12 = call i32 @ata_std_prereset(%struct.ata_link* %10, i64 %11)
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* %7, align 4
  store i32 %16, i32* %3, align 4
  br label %53

17:                                               ; preds = %2
  %18 = load %struct.ata_eh_context*, %struct.ata_eh_context** %6, align 8
  %19 = getelementptr inbounds %struct.ata_eh_context, %struct.ata_eh_context* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @ATA_EH_HARDRESET, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %17
  store i32 0, i32* %3, align 4
  br label %53

26:                                               ; preds = %17
  %27 = load %struct.ata_link*, %struct.ata_link** %4, align 8
  %28 = call i32 @ata_link_offline(%struct.ata_link* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %52, label %30

30:                                               ; preds = %26
  %31 = load %struct.ata_link*, %struct.ata_link** %4, align 8
  %32 = load i64, i64* %5, align 8
  %33 = call i32 @ata_sff_wait_ready(%struct.ata_link* %31, i64 %32)
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %7, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %51

36:                                               ; preds = %30
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* @ENODEV, align 4
  %39 = sub nsw i32 0, %38
  %40 = icmp ne i32 %37, %39
  br i1 %40, label %41, label %51

41:                                               ; preds = %36
  %42 = load %struct.ata_link*, %struct.ata_link** %4, align 8
  %43 = load i32, i32* %7, align 4
  %44 = call i32 @ata_link_warn(%struct.ata_link* %42, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %43)
  %45 = load i32, i32* @ATA_EH_HARDRESET, align 4
  %46 = load %struct.ata_eh_context*, %struct.ata_eh_context** %6, align 8
  %47 = getelementptr inbounds %struct.ata_eh_context, %struct.ata_eh_context* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = or i32 %49, %45
  store i32 %50, i32* %48, align 4
  br label %51

51:                                               ; preds = %41, %36, %30
  br label %52

52:                                               ; preds = %51, %26
  store i32 0, i32* %3, align 4
  br label %53

53:                                               ; preds = %52, %25, %15
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local i32 @ata_std_prereset(%struct.ata_link*, i64) #1

declare dso_local i32 @ata_link_offline(%struct.ata_link*) #1

declare dso_local i32 @ata_sff_wait_ready(%struct.ata_link*, i64) #1

declare dso_local i32 @ata_link_warn(%struct.ata_link*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
