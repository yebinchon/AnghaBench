; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_libata-core.c_sata_link_scr_lpm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_libata-core.c_sata_link_scr_lpm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_link = type { %struct.ata_eh_context }
%struct.ata_eh_context = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@SCR_CONTROL = common dso_local global i32 0, align 4
@SERR_PHYRDY_CHG = common dso_local global i32 0, align 4
@SCR_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sata_link_scr_lpm(%struct.ata_link* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ata_link*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ata_eh_context*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.ata_link* %0, %struct.ata_link** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load %struct.ata_link*, %struct.ata_link** %5, align 8
  %13 = getelementptr inbounds %struct.ata_link, %struct.ata_link* %12, i32 0, i32 0
  store %struct.ata_eh_context* %13, %struct.ata_eh_context** %8, align 8
  store i32 0, i32* %9, align 4
  %14 = load %struct.ata_link*, %struct.ata_link** %5, align 8
  %15 = load i32, i32* @SCR_CONTROL, align 4
  %16 = call i32 @sata_scr_read(%struct.ata_link* %14, i32 %15, i32* %10)
  store i32 %16, i32* %11, align 4
  %17 = load i32, i32* %11, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %3
  %20 = load i32, i32* %11, align 4
  store i32 %20, i32* %4, align 4
  br label %78

21:                                               ; preds = %3
  %22 = load i32, i32* %6, align 4
  switch i32 %22, label %50 [
    i32 132, label %23
    i32 131, label %32
    i32 130, label %37
    i32 128, label %37
    i32 129, label %37
  ]

23:                                               ; preds = %21
  %24 = load i32, i32* %10, align 4
  %25 = or i32 %24, 1792
  store i32 %25, i32* %10, align 4
  %26 = load i32, i32* %7, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %23
  %29 = load i32, i32* %10, align 4
  %30 = or i32 %29, 16384
  store i32 %30, i32* %10, align 4
  store i32 1, i32* %9, align 4
  br label %31

31:                                               ; preds = %28, %23
  br label %52

32:                                               ; preds = %21
  %33 = load i32, i32* %10, align 4
  %34 = and i32 %33, -257
  store i32 %34, i32* %10, align 4
  %35 = load i32, i32* %10, align 4
  %36 = or i32 %35, 1536
  store i32 %36, i32* %10, align 4
  br label %52

37:                                               ; preds = %21, %21, %21
  %38 = load %struct.ata_link*, %struct.ata_link** %5, align 8
  %39 = call i32 @ata_link_nr_enabled(%struct.ata_link* %38)
  %40 = icmp sgt i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %37
  %42 = load i32, i32* %10, align 4
  %43 = and i32 %42, -1793
  store i32 %43, i32* %10, align 4
  br label %49

44:                                               ; preds = %37
  %45 = load i32, i32* %10, align 4
  %46 = and i32 %45, -16
  store i32 %46, i32* %10, align 4
  %47 = load i32, i32* %10, align 4
  %48 = or i32 %47, 4
  store i32 %48, i32* %10, align 4
  br label %49

49:                                               ; preds = %44, %41
  br label %52

50:                                               ; preds = %21
  %51 = call i32 @WARN_ON(i32 1)
  br label %52

52:                                               ; preds = %50, %49, %32, %31
  %53 = load %struct.ata_link*, %struct.ata_link** %5, align 8
  %54 = load i32, i32* @SCR_CONTROL, align 4
  %55 = load i32, i32* %10, align 4
  %56 = call i32 @sata_scr_write(%struct.ata_link* %53, i32 %54, i32 %55)
  store i32 %56, i32* %11, align 4
  %57 = load i32, i32* %11, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %52
  %60 = load i32, i32* %11, align 4
  store i32 %60, i32* %4, align 4
  br label %78

61:                                               ; preds = %52
  %62 = load i32, i32* %9, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %61
  %65 = call i32 @msleep(i32 10)
  br label %66

66:                                               ; preds = %64, %61
  %67 = load i32, i32* @SERR_PHYRDY_CHG, align 4
  %68 = xor i32 %67, -1
  %69 = load %struct.ata_eh_context*, %struct.ata_eh_context** %8, align 8
  %70 = getelementptr inbounds %struct.ata_eh_context, %struct.ata_eh_context* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = and i32 %72, %68
  store i32 %73, i32* %71, align 4
  %74 = load %struct.ata_link*, %struct.ata_link** %5, align 8
  %75 = load i32, i32* @SCR_ERROR, align 4
  %76 = load i32, i32* @SERR_PHYRDY_CHG, align 4
  %77 = call i32 @sata_scr_write(%struct.ata_link* %74, i32 %75, i32 %76)
  store i32 %77, i32* %4, align 4
  br label %78

78:                                               ; preds = %66, %59, %19
  %79 = load i32, i32* %4, align 4
  ret i32 %79
}

declare dso_local i32 @sata_scr_read(%struct.ata_link*, i32, i32*) #1

declare dso_local i32 @ata_link_nr_enabled(%struct.ata_link*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @sata_scr_write(%struct.ata_link*, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
