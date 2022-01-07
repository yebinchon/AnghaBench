; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_libata-core.c_sata_down_spd_limit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_libata-core.c_sata_down_spd_limit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_link = type { i32, i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@SCR_STATUS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"limiting SATA link speed to %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sata_down_spd_limit(%struct.ata_link* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ata_link*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ata_link* %0, %struct.ata_link** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.ata_link*, %struct.ata_link** %4, align 8
  %12 = call i32 @sata_scr_valid(%struct.ata_link* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @EOPNOTSUPP, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %103

17:                                               ; preds = %2
  %18 = load %struct.ata_link*, %struct.ata_link** %4, align 8
  %19 = load i32, i32* @SCR_STATUS, align 4
  %20 = call i32 @sata_scr_read(%struct.ata_link* %18, i32 %19, i32* %6)
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %9, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %31

23:                                               ; preds = %17
  %24 = load i32, i32* %6, align 4
  %25 = call i64 @ata_sstatus_online(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %23
  %28 = load i32, i32* %6, align 4
  %29 = ashr i32 %28, 4
  %30 = and i32 %29, 15
  store i32 %30, i32* %7, align 4
  br label %35

31:                                               ; preds = %23, %17
  %32 = load %struct.ata_link*, %struct.ata_link** %4, align 8
  %33 = getelementptr inbounds %struct.ata_link, %struct.ata_link* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %7, align 4
  br label %35

35:                                               ; preds = %31, %27
  %36 = load %struct.ata_link*, %struct.ata_link** %4, align 8
  %37 = getelementptr inbounds %struct.ata_link, %struct.ata_link* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %8, align 4
  %39 = load i32, i32* %8, align 4
  %40 = icmp sle i32 %39, 1
  br i1 %40, label %41, label %44

41:                                               ; preds = %35
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %3, align 4
  br label %103

44:                                               ; preds = %35
  %45 = load i32, i32* %8, align 4
  %46 = call i32 @fls(i32 %45)
  %47 = sub nsw i32 %46, 1
  store i32 %47, i32* %10, align 4
  %48 = load i32, i32* %10, align 4
  %49 = shl i32 1, %48
  %50 = xor i32 %49, -1
  %51 = load i32, i32* %8, align 4
  %52 = and i32 %51, %50
  store i32 %52, i32* %8, align 4
  %53 = load i32, i32* %7, align 4
  %54 = icmp sgt i32 %53, 1
  br i1 %54, label %55, label %62

55:                                               ; preds = %44
  %56 = load i32, i32* %7, align 4
  %57 = sub nsw i32 %56, 1
  %58 = shl i32 1, %57
  %59 = sub nsw i32 %58, 1
  %60 = load i32, i32* %8, align 4
  %61 = and i32 %60, %59
  store i32 %61, i32* %8, align 4
  br label %65

62:                                               ; preds = %44
  %63 = load i32, i32* @EINVAL, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %3, align 4
  br label %103

65:                                               ; preds = %55
  %66 = load i32, i32* %8, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %71, label %68

68:                                               ; preds = %65
  %69 = load i32, i32* @EINVAL, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %3, align 4
  br label %103

71:                                               ; preds = %65
  %72 = load i32, i32* %5, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %94

74:                                               ; preds = %71
  %75 = load i32, i32* %8, align 4
  %76 = load i32, i32* %5, align 4
  %77 = shl i32 1, %76
  %78 = sub nsw i32 %77, 1
  %79 = and i32 %75, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %87

81:                                               ; preds = %74
  %82 = load i32, i32* %5, align 4
  %83 = shl i32 1, %82
  %84 = sub nsw i32 %83, 1
  %85 = load i32, i32* %8, align 4
  %86 = and i32 %85, %84
  store i32 %86, i32* %8, align 4
  br label %93

87:                                               ; preds = %74
  %88 = load i32, i32* %8, align 4
  %89 = call i32 @ffs(i32 %88)
  %90 = sub nsw i32 %89, 1
  store i32 %90, i32* %10, align 4
  %91 = load i32, i32* %10, align 4
  %92 = shl i32 1, %91
  store i32 %92, i32* %8, align 4
  br label %93

93:                                               ; preds = %87, %81
  br label %94

94:                                               ; preds = %93, %71
  %95 = load i32, i32* %8, align 4
  %96 = load %struct.ata_link*, %struct.ata_link** %4, align 8
  %97 = getelementptr inbounds %struct.ata_link, %struct.ata_link* %96, i32 0, i32 1
  store i32 %95, i32* %97, align 4
  %98 = load %struct.ata_link*, %struct.ata_link** %4, align 8
  %99 = load i32, i32* %8, align 4
  %100 = call i32 @fls(i32 %99)
  %101 = call i32 @sata_spd_string(i32 %100)
  %102 = call i32 @ata_link_warn(%struct.ata_link* %98, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %101)
  store i32 0, i32* %3, align 4
  br label %103

103:                                              ; preds = %94, %68, %62, %41, %14
  %104 = load i32, i32* %3, align 4
  ret i32 %104
}

declare dso_local i32 @sata_scr_valid(%struct.ata_link*) #1

declare dso_local i32 @sata_scr_read(%struct.ata_link*, i32, i32*) #1

declare dso_local i64 @ata_sstatus_online(i32) #1

declare dso_local i32 @fls(i32) #1

declare dso_local i32 @ffs(i32) #1

declare dso_local i32 @ata_link_warn(%struct.ata_link*, i8*, i32) #1

declare dso_local i32 @sata_spd_string(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
