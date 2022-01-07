; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_sata_nv.c_nv_hardreset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_sata_nv.c_nv_hardreset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_link = type { i32, %struct.TYPE_4__*, %struct.ata_eh_context }
%struct.TYPE_4__ = type { i32 }
%struct.ata_eh_context = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@ATA_PFLAG_LOADING = common dso_local global i32 0, align 4
@sata_deb_timing_hotplug = common dso_local global i32 0, align 4
@ATA_EHI_QUIET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"nv: skipping hardreset on occupied port\0A\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"failed to resume link (errno=%d)\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ata_link*, i32*, i64)* @nv_hardreset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nv_hardreset(%struct.ata_link* %0, i32* %1, i64 %2) #0 {
  %4 = alloca %struct.ata_link*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.ata_eh_context*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  store %struct.ata_link* %0, %struct.ata_link** %4, align 8
  store i32* %1, i32** %5, align 8
  store i64 %2, i64* %6, align 8
  %10 = load %struct.ata_link*, %struct.ata_link** %4, align 8
  %11 = getelementptr inbounds %struct.ata_link, %struct.ata_link* %10, i32 0, i32 2
  store %struct.ata_eh_context* %11, %struct.ata_eh_context** %7, align 8
  %12 = load %struct.ata_link*, %struct.ata_link** %4, align 8
  %13 = getelementptr inbounds %struct.ata_link, %struct.ata_link* %12, i32 0, i32 1
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @ATA_PFLAG_LOADING, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %31, label %20

20:                                               ; preds = %3
  %21 = load %struct.ata_link*, %struct.ata_link** %4, align 8
  %22 = getelementptr inbounds %struct.ata_link, %struct.ata_link* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @ata_dev_enabled(i32 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %31, label %26

26:                                               ; preds = %20
  %27 = load %struct.ata_link*, %struct.ata_link** %4, align 8
  %28 = load i32, i32* @sata_deb_timing_hotplug, align 4
  %29 = load i64, i64* %6, align 8
  %30 = call i32 @sata_link_hardreset(%struct.ata_link* %27, i32 %28, i64 %29, i32* null, i32* null)
  br label %61

31:                                               ; preds = %20, %3
  %32 = load %struct.ata_eh_context*, %struct.ata_eh_context** %7, align 8
  %33 = call i64* @sata_ehc_deb_timing(%struct.ata_eh_context* %32)
  store i64* %33, i64** %8, align 8
  %34 = load %struct.ata_eh_context*, %struct.ata_eh_context** %7, align 8
  %35 = getelementptr inbounds %struct.ata_eh_context, %struct.ata_eh_context* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @ATA_EHI_QUIET, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %31
  %42 = load %struct.ata_link*, %struct.ata_link** %4, align 8
  %43 = call i32 @ata_link_info(%struct.ata_link* %42, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  br label %44

44:                                               ; preds = %41, %31
  %45 = load %struct.ata_link*, %struct.ata_link** %4, align 8
  %46 = load i64*, i64** %8, align 8
  %47 = load i64, i64* %6, align 8
  %48 = call i32 @sata_link_resume(%struct.ata_link* %45, i64* %46, i64 %47)
  store i32 %48, i32* %9, align 4
  %49 = load i32, i32* %9, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %60

51:                                               ; preds = %44
  %52 = load i32, i32* %9, align 4
  %53 = load i32, i32* @EOPNOTSUPP, align 4
  %54 = sub nsw i32 0, %53
  %55 = icmp ne i32 %52, %54
  br i1 %55, label %56, label %60

56:                                               ; preds = %51
  %57 = load %struct.ata_link*, %struct.ata_link** %4, align 8
  %58 = load i32, i32* %9, align 4
  %59 = call i32 @ata_link_warn(%struct.ata_link* %57, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %58)
  br label %60

60:                                               ; preds = %56, %51, %44
  br label %61

61:                                               ; preds = %60, %26
  %62 = load i32, i32* @EAGAIN, align 4
  %63 = sub nsw i32 0, %62
  ret i32 %63
}

declare dso_local i32 @ata_dev_enabled(i32) #1

declare dso_local i32 @sata_link_hardreset(%struct.ata_link*, i32, i64, i32*, i32*) #1

declare dso_local i64* @sata_ehc_deb_timing(%struct.ata_eh_context*) #1

declare dso_local i32 @ata_link_info(%struct.ata_link*, i8*) #1

declare dso_local i32 @sata_link_resume(%struct.ata_link*, i64*, i64) #1

declare dso_local i32 @ata_link_warn(%struct.ata_link*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
