; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_libata-sff.c_sata_sff_hardreset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_libata-sff.c_sata_sff_hardreset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_link = type { i32, %struct.ata_eh_context }
%struct.ata_eh_context = type { i32 }

@ata_sff_check_ready = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"EXIT, class=%u\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sata_sff_hardreset(%struct.ata_link* %0, i32* %1, i64 %2) #0 {
  %4 = alloca %struct.ata_link*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.ata_eh_context*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ata_link* %0, %struct.ata_link** %4, align 8
  store i32* %1, i32** %5, align 8
  store i64 %2, i64* %6, align 8
  %11 = load %struct.ata_link*, %struct.ata_link** %4, align 8
  %12 = getelementptr inbounds %struct.ata_link, %struct.ata_link* %11, i32 0, i32 1
  store %struct.ata_eh_context* %12, %struct.ata_eh_context** %7, align 8
  %13 = load %struct.ata_eh_context*, %struct.ata_eh_context** %7, align 8
  %14 = call i64* @sata_ehc_deb_timing(%struct.ata_eh_context* %13)
  store i64* %14, i64** %8, align 8
  %15 = load %struct.ata_link*, %struct.ata_link** %4, align 8
  %16 = load i64*, i64** %8, align 8
  %17 = load i64, i64* %6, align 8
  %18 = load i32, i32* @ata_sff_check_ready, align 4
  %19 = call i32 @sata_link_hardreset(%struct.ata_link* %15, i64* %16, i64 %17, i32* %9, i32 %18)
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* %9, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %3
  %23 = load %struct.ata_link*, %struct.ata_link** %4, align 8
  %24 = getelementptr inbounds %struct.ata_link, %struct.ata_link* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @ata_sff_dev_classify(i32 %25, i32 1, i32* null)
  %27 = load i32*, i32** %5, align 8
  store i32 %26, i32* %27, align 4
  br label %28

28:                                               ; preds = %22, %3
  %29 = load i32*, i32** %5, align 8
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @DPRINTK(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %30)
  %32 = load i32, i32* %10, align 4
  ret i32 %32
}

declare dso_local i64* @sata_ehc_deb_timing(%struct.ata_eh_context*) #1

declare dso_local i32 @sata_link_hardreset(%struct.ata_link*, i64*, i64, i32*, i32) #1

declare dso_local i32 @ata_sff_dev_classify(i32, i32, i32*) #1

declare dso_local i32 @DPRINTK(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
