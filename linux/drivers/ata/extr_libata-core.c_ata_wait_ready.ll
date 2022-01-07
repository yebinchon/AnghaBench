; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_libata-core.c_ata_wait_ready.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_libata-core.c_ata_wait_ready.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_link = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, %struct.ata_link*, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@ATA_HOST_PARALLEL_SCAN = common dso_local global i32 0, align 4
@ATA_TMOUT_FF_WAIT_LONG = common dso_local global i32 0, align 4
@ATA_TMOUT_FF_WAIT = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@ATA_FLAG_SATA = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"link is slow to respond, please be patient (ready=%d)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ata_wait_ready(%struct.ata_link* %0, i64 %1, i32 (%struct.ata_link*)* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ata_link*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32 (%struct.ata_link*)*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.ata_link* %0, %struct.ata_link** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 (%struct.ata_link*)* %2, i32 (%struct.ata_link*)** %7, align 8
  %14 = load i64, i64* @jiffies, align 8
  store i64 %14, i64* %8, align 8
  store i32 0, i32* %10, align 4
  %15 = load %struct.ata_link*, %struct.ata_link** %5, align 8
  %16 = getelementptr inbounds %struct.ata_link, %struct.ata_link* %15, i32 0, i32 0
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 2
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @ATA_HOST_PARALLEL_SCAN, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %3
  %26 = load i64, i64* %8, align 8
  %27 = load i32, i32* @ATA_TMOUT_FF_WAIT_LONG, align 4
  %28 = call i64 @ata_deadline(i64 %26, i32 %27)
  store i64 %28, i64* %9, align 8
  br label %33

29:                                               ; preds = %3
  %30 = load i64, i64* %8, align 8
  %31 = load i32, i32* @ATA_TMOUT_FF_WAIT, align 4
  %32 = call i64 @ata_deadline(i64 %30, i32 %31)
  store i64 %32, i64* %9, align 8
  br label %33

33:                                               ; preds = %29, %25
  %34 = load %struct.ata_link*, %struct.ata_link** %5, align 8
  %35 = load %struct.ata_link*, %struct.ata_link** %5, align 8
  %36 = getelementptr inbounds %struct.ata_link, %struct.ata_link* %35, i32 0, i32 0
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 1
  %39 = load %struct.ata_link*, %struct.ata_link** %38, align 8
  %40 = icmp eq %struct.ata_link* %34, %39
  %41 = zext i1 %40 to i32
  %42 = call i32 @WARN_ON(i32 %41)
  %43 = load i64, i64* %9, align 8
  %44 = load i64, i64* %6, align 8
  %45 = call i64 @time_after(i64 %43, i64 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %33
  %48 = load i64, i64* %6, align 8
  store i64 %48, i64* %9, align 8
  br label %49

49:                                               ; preds = %47, %33
  br label %50

50:                                               ; preds = %49, %126
  %51 = load i64, i64* @jiffies, align 8
  store i64 %51, i64* %11, align 8
  %52 = load i32 (%struct.ata_link*)*, i32 (%struct.ata_link*)** %7, align 8
  %53 = load %struct.ata_link*, %struct.ata_link** %5, align 8
  %54 = call i32 %52(%struct.ata_link* %53)
  store i32 %54, i32* %13, align 4
  store i32 %54, i32* %12, align 4
  %55 = load i32, i32* %12, align 4
  %56 = icmp sgt i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %50
  store i32 0, i32* %4, align 4
  br label %131

58:                                               ; preds = %50
  %59 = load i32, i32* %12, align 4
  %60 = load i32, i32* @ENODEV, align 4
  %61 = sub nsw i32 0, %60
  %62 = icmp eq i32 %59, %61
  br i1 %62, label %63, label %89

63:                                               ; preds = %58
  %64 = load %struct.ata_link*, %struct.ata_link** %5, align 8
  %65 = call i64 @ata_link_online(%struct.ata_link* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %63
  store i32 0, i32* %12, align 4
  br label %88

68:                                               ; preds = %63
  %69 = load %struct.ata_link*, %struct.ata_link** %5, align 8
  %70 = getelementptr inbounds %struct.ata_link, %struct.ata_link* %69, i32 0, i32 0
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @ATA_FLAG_SATA, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %87

77:                                               ; preds = %68
  %78 = load %struct.ata_link*, %struct.ata_link** %5, align 8
  %79 = call i32 @ata_link_offline(%struct.ata_link* %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %87, label %81

81:                                               ; preds = %77
  %82 = load i64, i64* %11, align 8
  %83 = load i64, i64* %9, align 8
  %84 = call i64 @time_before(i64 %82, i64 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %81
  store i32 0, i32* %12, align 4
  br label %87

87:                                               ; preds = %86, %81, %77, %68
  br label %88

88:                                               ; preds = %87, %67
  br label %89

89:                                               ; preds = %88, %58
  %90 = load i32, i32* %12, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %89
  %93 = load i32, i32* %12, align 4
  store i32 %93, i32* %4, align 4
  br label %131

94:                                               ; preds = %89
  %95 = load i64, i64* %11, align 8
  %96 = load i64, i64* %6, align 8
  %97 = call i64 @time_after(i64 %95, i64 %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %94
  %100 = load i32, i32* @EBUSY, align 4
  %101 = sub nsw i32 0, %100
  store i32 %101, i32* %4, align 4
  br label %131

102:                                              ; preds = %94
  %103 = load i32, i32* %10, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %126, label %105

105:                                              ; preds = %102
  %106 = load i64, i64* %11, align 8
  %107 = load i64, i64* %8, align 8
  %108 = load i32, i32* @HZ, align 4
  %109 = mul nsw i32 5, %108
  %110 = sext i32 %109 to i64
  %111 = add i64 %107, %110
  %112 = call i64 @time_after(i64 %106, i64 %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %126

114:                                              ; preds = %105
  %115 = load i64, i64* %6, align 8
  %116 = load i64, i64* %11, align 8
  %117 = sub i64 %115, %116
  %118 = load i32, i32* @HZ, align 4
  %119 = mul nsw i32 3, %118
  %120 = sext i32 %119 to i64
  %121 = icmp ugt i64 %117, %120
  br i1 %121, label %122, label %126

122:                                              ; preds = %114
  %123 = load %struct.ata_link*, %struct.ata_link** %5, align 8
  %124 = load i32, i32* %13, align 4
  %125 = call i32 @ata_link_warn(%struct.ata_link* %123, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i32 %124)
  store i32 1, i32* %10, align 4
  br label %126

126:                                              ; preds = %122, %114, %105, %102
  %127 = load %struct.ata_link*, %struct.ata_link** %5, align 8
  %128 = getelementptr inbounds %struct.ata_link, %struct.ata_link* %127, i32 0, i32 0
  %129 = load %struct.TYPE_4__*, %struct.TYPE_4__** %128, align 8
  %130 = call i32 @ata_msleep(%struct.TYPE_4__* %129, i32 50)
  br label %50

131:                                              ; preds = %99, %92, %57
  %132 = load i32, i32* %4, align 4
  ret i32 %132
}

declare dso_local i64 @ata_deadline(i64, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i64 @ata_link_online(%struct.ata_link*) #1

declare dso_local i32 @ata_link_offline(%struct.ata_link*) #1

declare dso_local i64 @time_before(i64, i64) #1

declare dso_local i32 @ata_link_warn(%struct.ata_link*, i8*, i32) #1

declare dso_local i32 @ata_msleep(%struct.TYPE_4__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
