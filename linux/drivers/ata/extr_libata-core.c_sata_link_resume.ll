; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_libata-core.c_sata_link_resume.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_libata-core.c_sata_link_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_link = type { i32, i32 }

@ATA_LINK_RESUME_TRIES = common dso_local global i32 0, align 4
@SCR_CONTROL = common dso_local global i32 0, align 4
@ATA_LFLAG_NO_DB_DELAY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"failed to resume link (SControl %X)\0A\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"link resume succeeded after %d retries\0A\00", align 1
@SCR_ERROR = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sata_link_resume(%struct.ata_link* %0, i64* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ata_link*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.ata_link* %0, %struct.ata_link** %5, align 8
  store i64* %1, i64** %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = load i32, i32* @ATA_LINK_RESUME_TRIES, align 4
  store i32 %12, i32* %8, align 4
  %13 = load %struct.ata_link*, %struct.ata_link** %5, align 8
  %14 = load i32, i32* @SCR_CONTROL, align 4
  %15 = call i32 @sata_scr_read(%struct.ata_link* %13, i32 %14, i32* %9)
  store i32 %15, i32* %11, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = load i32, i32* %11, align 4
  store i32 %18, i32* %4, align 4
  br label %107

19:                                               ; preds = %3
  br label %20

20:                                               ; preds = %59, %19
  %21 = load i32, i32* %9, align 4
  %22 = and i32 %21, 240
  %23 = or i32 %22, 768
  store i32 %23, i32* %9, align 4
  %24 = load %struct.ata_link*, %struct.ata_link** %5, align 8
  %25 = load i32, i32* @SCR_CONTROL, align 4
  %26 = load i32, i32* %9, align 4
  %27 = call i32 @sata_scr_write(%struct.ata_link* %24, i32 %25, i32 %26)
  store i32 %27, i32* %11, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %20
  %30 = load i32, i32* %11, align 4
  store i32 %30, i32* %4, align 4
  br label %107

31:                                               ; preds = %20
  %32 = load %struct.ata_link*, %struct.ata_link** %5, align 8
  %33 = getelementptr inbounds %struct.ata_link, %struct.ata_link* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @ATA_LFLAG_NO_DB_DELAY, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %43, label %38

38:                                               ; preds = %31
  %39 = load %struct.ata_link*, %struct.ata_link** %5, align 8
  %40 = getelementptr inbounds %struct.ata_link, %struct.ata_link* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @ata_msleep(i32 %41, i32 200)
  br label %43

43:                                               ; preds = %38, %31
  %44 = load %struct.ata_link*, %struct.ata_link** %5, align 8
  %45 = load i32, i32* @SCR_CONTROL, align 4
  %46 = call i32 @sata_scr_read(%struct.ata_link* %44, i32 %45, i32* %9)
  store i32 %46, i32* %11, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %43
  %49 = load i32, i32* %11, align 4
  store i32 %49, i32* %4, align 4
  br label %107

50:                                               ; preds = %43
  br label %51

51:                                               ; preds = %50
  %52 = load i32, i32* %9, align 4
  %53 = and i32 %52, 3855
  %54 = icmp ne i32 %53, 768
  br i1 %54, label %55, label %59

55:                                               ; preds = %51
  %56 = load i32, i32* %8, align 4
  %57 = add nsw i32 %56, -1
  store i32 %57, i32* %8, align 4
  %58 = icmp ne i32 %57, 0
  br label %59

59:                                               ; preds = %55, %51
  %60 = phi i1 [ false, %51 ], [ %58, %55 ]
  br i1 %60, label %20, label %61

61:                                               ; preds = %59
  %62 = load i32, i32* %9, align 4
  %63 = and i32 %62, 3855
  %64 = icmp ne i32 %63, 768
  br i1 %64, label %65, label %69

65:                                               ; preds = %61
  %66 = load %struct.ata_link*, %struct.ata_link** %5, align 8
  %67 = load i32, i32* %9, align 4
  %68 = call i32 @ata_link_warn(%struct.ata_link* %66, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %67)
  store i32 0, i32* %4, align 4
  br label %107

69:                                               ; preds = %61
  %70 = load i32, i32* %8, align 4
  %71 = load i32, i32* @ATA_LINK_RESUME_TRIES, align 4
  %72 = icmp slt i32 %70, %71
  br i1 %72, label %73, label %79

73:                                               ; preds = %69
  %74 = load %struct.ata_link*, %struct.ata_link** %5, align 8
  %75 = load i32, i32* @ATA_LINK_RESUME_TRIES, align 4
  %76 = load i32, i32* %8, align 4
  %77 = sub nsw i32 %75, %76
  %78 = call i32 @ata_link_warn(%struct.ata_link* %74, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %77)
  br label %79

79:                                               ; preds = %73, %69
  %80 = load %struct.ata_link*, %struct.ata_link** %5, align 8
  %81 = load i64*, i64** %6, align 8
  %82 = load i64, i64* %7, align 8
  %83 = call i32 @sata_link_debounce(%struct.ata_link* %80, i64* %81, i64 %82)
  store i32 %83, i32* %11, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %79
  %86 = load i32, i32* %11, align 4
  store i32 %86, i32* %4, align 4
  br label %107

87:                                               ; preds = %79
  %88 = load %struct.ata_link*, %struct.ata_link** %5, align 8
  %89 = load i32, i32* @SCR_ERROR, align 4
  %90 = call i32 @sata_scr_read(%struct.ata_link* %88, i32 %89, i32* %10)
  store i32 %90, i32* %11, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %97, label %92

92:                                               ; preds = %87
  %93 = load %struct.ata_link*, %struct.ata_link** %5, align 8
  %94 = load i32, i32* @SCR_ERROR, align 4
  %95 = load i32, i32* %10, align 4
  %96 = call i32 @sata_scr_write(%struct.ata_link* %93, i32 %94, i32 %95)
  store i32 %96, i32* %11, align 4
  br label %97

97:                                               ; preds = %92, %87
  %98 = load i32, i32* %11, align 4
  %99 = load i32, i32* @EINVAL, align 4
  %100 = sub nsw i32 0, %99
  %101 = icmp ne i32 %98, %100
  br i1 %101, label %102, label %104

102:                                              ; preds = %97
  %103 = load i32, i32* %11, align 4
  br label %105

104:                                              ; preds = %97
  br label %105

105:                                              ; preds = %104, %102
  %106 = phi i32 [ %103, %102 ], [ 0, %104 ]
  store i32 %106, i32* %4, align 4
  br label %107

107:                                              ; preds = %105, %85, %65, %48, %29, %17
  %108 = load i32, i32* %4, align 4
  ret i32 %108
}

declare dso_local i32 @sata_scr_read(%struct.ata_link*, i32, i32*) #1

declare dso_local i32 @sata_scr_write(%struct.ata_link*, i32, i32) #1

declare dso_local i32 @ata_msleep(i32, i32) #1

declare dso_local i32 @ata_link_warn(%struct.ata_link*, i8*, i32) #1

declare dso_local i32 @sata_link_debounce(%struct.ata_link*, i64*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
