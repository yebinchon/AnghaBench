; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_libata-core.c_sata_print_link_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_libata-core.c_sata_print_link_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_link = type { i32 }

@SCR_STATUS = common dso_local global i32 0, align 4
@SCR_CONTROL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"SATA link up %s (SStatus %X SControl %X)\0A\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"SATA link down (SStatus %X SControl %X)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ata_link*)* @sata_print_link_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sata_print_link_status(%struct.ata_link* %0) #0 {
  %2 = alloca %struct.ata_link*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ata_link* %0, %struct.ata_link** %2, align 8
  %6 = load %struct.ata_link*, %struct.ata_link** %2, align 8
  %7 = load i32, i32* @SCR_STATUS, align 4
  %8 = call i64 @sata_scr_read(%struct.ata_link* %6, i32 %7, i32* %3)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  br label %33

11:                                               ; preds = %1
  %12 = load %struct.ata_link*, %struct.ata_link** %2, align 8
  %13 = load i32, i32* @SCR_CONTROL, align 4
  %14 = call i64 @sata_scr_read(%struct.ata_link* %12, i32 %13, i32* %4)
  %15 = load %struct.ata_link*, %struct.ata_link** %2, align 8
  %16 = call i64 @ata_phys_link_online(%struct.ata_link* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %28

18:                                               ; preds = %11
  %19 = load i32, i32* %3, align 4
  %20 = ashr i32 %19, 4
  %21 = and i32 %20, 15
  store i32 %21, i32* %5, align 4
  %22 = load %struct.ata_link*, %struct.ata_link** %2, align 8
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @sata_spd_string(i32 %23)
  %25 = load i32, i32* %3, align 4
  %26 = load i32, i32* %4, align 4
  %27 = call i32 (%struct.ata_link*, i8*, i32, i32, ...) @ata_link_info(%struct.ata_link* %22, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %24, i32 %25, i32 %26)
  br label %33

28:                                               ; preds = %11
  %29 = load %struct.ata_link*, %struct.ata_link** %2, align 8
  %30 = load i32, i32* %3, align 4
  %31 = load i32, i32* %4, align 4
  %32 = call i32 (%struct.ata_link*, i8*, i32, i32, ...) @ata_link_info(%struct.ata_link* %29, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %30, i32 %31)
  br label %33

33:                                               ; preds = %10, %28, %18
  ret void
}

declare dso_local i64 @sata_scr_read(%struct.ata_link*, i32, i32*) #1

declare dso_local i64 @ata_phys_link_online(%struct.ata_link*) #1

declare dso_local i32 @ata_link_info(%struct.ata_link*, i8*, i32, i32, ...) #1

declare dso_local i32 @sata_spd_string(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
