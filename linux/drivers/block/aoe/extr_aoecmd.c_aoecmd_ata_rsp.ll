; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/aoe/extr_aoecmd.c_aoecmd_ata_rsp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/aoe/extr_aoecmd.c_aoecmd_ata_rsp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64 }
%struct.aoedev = type { i32 }
%struct.aoe_hdr = type { i32, i32, i32, i32, i32 }
%struct.frame = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [55 x i8] c"aoecmd_ata_rsp: ata response for unknown device %d.%d\0A\00", align 1
@FFL_PROBE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"%15s e%d.%d    tag=%08x@%08lx s=%pm d=%pm\0A\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"unexpected rsp\00", align 1
@jiffies = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sk_buff* @aoecmd_ata_rsp(%struct.sk_buff* %0) #0 {
  %2 = alloca %struct.sk_buff*, align 8
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.aoedev*, align 8
  %5 = alloca %struct.aoe_hdr*, align 8
  %6 = alloca %struct.frame*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [128 x i8], align 16
  %10 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  %11 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %12 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to %struct.aoe_hdr*
  store %struct.aoe_hdr* %14, %struct.aoe_hdr** %5, align 8
  %15 = load %struct.aoe_hdr*, %struct.aoe_hdr** %5, align 8
  %16 = getelementptr inbounds %struct.aoe_hdr, %struct.aoe_hdr* %15, i32 0, i32 2
  %17 = call i32 @get_unaligned(i32* %16)
  %18 = call i32 @be16_to_cpu(i32 %17)
  store i32 %18, i32* %10, align 4
  %19 = load i32, i32* %10, align 4
  %20 = load %struct.aoe_hdr*, %struct.aoe_hdr** %5, align 8
  %21 = getelementptr inbounds %struct.aoe_hdr, %struct.aoe_hdr* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call %struct.aoedev* @aoedev_by_aoeaddr(i32 %19, i32 %22, i32 0)
  store %struct.aoedev* %23, %struct.aoedev** %4, align 8
  %24 = load %struct.aoedev*, %struct.aoedev** %4, align 8
  %25 = icmp eq %struct.aoedev* %24, null
  br i1 %25, label %26, label %36

26:                                               ; preds = %1
  %27 = getelementptr inbounds [128 x i8], [128 x i8]* %9, i64 0, i64 0
  %28 = load i32, i32* %10, align 4
  %29 = load %struct.aoe_hdr*, %struct.aoe_hdr** %5, align 8
  %30 = getelementptr inbounds %struct.aoe_hdr, %struct.aoe_hdr* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %27, i32 128, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i32 %28, i32 %31)
  %33 = getelementptr inbounds [128 x i8], [128 x i8]* %9, i64 0, i64 0
  %34 = call i32 @aoechr_error(i8* %33)
  %35 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  store %struct.sk_buff* %35, %struct.sk_buff** %2, align 8
  br label %132

36:                                               ; preds = %1
  %37 = load %struct.aoedev*, %struct.aoedev** %4, align 8
  %38 = getelementptr inbounds %struct.aoedev, %struct.aoedev* %37, i32 0, i32 0
  %39 = load i32, i32* %8, align 4
  %40 = call i32 @spin_lock_irqsave(i32* %38, i32 %39)
  %41 = load %struct.aoe_hdr*, %struct.aoe_hdr** %5, align 8
  %42 = getelementptr inbounds %struct.aoe_hdr, %struct.aoe_hdr* %41, i32 0, i32 1
  %43 = call i32 @get_unaligned(i32* %42)
  %44 = call i32 @be32_to_cpu(i32 %43)
  store i32 %44, i32* %7, align 4
  %45 = load %struct.aoedev*, %struct.aoedev** %4, align 8
  %46 = load i32, i32* %7, align 4
  %47 = call %struct.frame* @getframe(%struct.aoedev* %45, i32 %46)
  store %struct.frame* %47, %struct.frame** %6, align 8
  %48 = load %struct.frame*, %struct.frame** %6, align 8
  %49 = icmp ne %struct.frame* %48, null
  br i1 %49, label %50, label %78

50:                                               ; preds = %36
  %51 = load %struct.aoedev*, %struct.aoedev** %4, align 8
  %52 = load %struct.frame*, %struct.frame** %6, align 8
  %53 = getelementptr inbounds %struct.frame, %struct.frame* %52, i32 0, i32 1
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = load %struct.frame*, %struct.frame** %6, align 8
  %56 = call i32 @tsince_hr(%struct.frame* %55)
  %57 = call i32 @calc_rttavg(%struct.aoedev* %51, %struct.TYPE_2__* %54, i32 %56)
  %58 = load %struct.frame*, %struct.frame** %6, align 8
  %59 = getelementptr inbounds %struct.frame, %struct.frame* %58, i32 0, i32 1
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = add nsw i32 %62, -1
  store i32 %63, i32* %61, align 4
  %64 = load %struct.frame*, %struct.frame** %6, align 8
  %65 = getelementptr inbounds %struct.frame, %struct.frame* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @FFL_PROBE, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %77

70:                                               ; preds = %50
  %71 = load %struct.frame*, %struct.frame** %6, align 8
  %72 = getelementptr inbounds %struct.frame, %struct.frame* %71, i32 0, i32 1
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = add nsw i32 %75, -1
  store i32 %76, i32* %74, align 4
  br label %77

77:                                               ; preds = %70, %50
  br label %122

78:                                               ; preds = %36
  %79 = load %struct.aoedev*, %struct.aoedev** %4, align 8
  %80 = load i32, i32* %7, align 4
  %81 = call %struct.frame* @getframe_deferred(%struct.aoedev* %79, i32 %80)
  store %struct.frame* %81, %struct.frame** %6, align 8
  %82 = load %struct.frame*, %struct.frame** %6, align 8
  %83 = icmp ne %struct.frame* %82, null
  br i1 %83, label %84, label %89

84:                                               ; preds = %78
  %85 = load %struct.aoedev*, %struct.aoedev** %4, align 8
  %86 = load %struct.frame*, %struct.frame** %6, align 8
  %87 = call i32 @tsince_hr(%struct.frame* %86)
  %88 = call i32 @calc_rttavg(%struct.aoedev* %85, %struct.TYPE_2__* null, i32 %87)
  br label %121

89:                                               ; preds = %78
  %90 = load %struct.aoedev*, %struct.aoedev** %4, align 8
  %91 = load i32, i32* %7, align 4
  %92 = call i32 @tsince(i32 %91)
  %93 = call i32 @calc_rttavg(%struct.aoedev* %90, %struct.TYPE_2__* null, i32 %92)
  %94 = load %struct.aoedev*, %struct.aoedev** %4, align 8
  %95 = getelementptr inbounds %struct.aoedev, %struct.aoedev* %94, i32 0, i32 0
  %96 = load i32, i32* %8, align 4
  %97 = call i32 @spin_unlock_irqrestore(i32* %95, i32 %96)
  %98 = load %struct.aoedev*, %struct.aoedev** %4, align 8
  %99 = call i32 @aoedev_put(%struct.aoedev* %98)
  %100 = getelementptr inbounds [128 x i8], [128 x i8]* %9, i64 0, i64 0
  %101 = load %struct.aoe_hdr*, %struct.aoe_hdr** %5, align 8
  %102 = getelementptr inbounds %struct.aoe_hdr, %struct.aoe_hdr* %101, i32 0, i32 2
  %103 = call i32 @get_unaligned_be16(i32* %102)
  %104 = load %struct.aoe_hdr*, %struct.aoe_hdr** %5, align 8
  %105 = getelementptr inbounds %struct.aoe_hdr, %struct.aoe_hdr* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.aoe_hdr*, %struct.aoe_hdr** %5, align 8
  %108 = getelementptr inbounds %struct.aoe_hdr, %struct.aoe_hdr* %107, i32 0, i32 1
  %109 = call i32 @get_unaligned_be32(i32* %108)
  %110 = load i32, i32* @jiffies, align 4
  %111 = load %struct.aoe_hdr*, %struct.aoe_hdr** %5, align 8
  %112 = getelementptr inbounds %struct.aoe_hdr, %struct.aoe_hdr* %111, i32 0, i32 4
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.aoe_hdr*, %struct.aoe_hdr** %5, align 8
  %115 = getelementptr inbounds %struct.aoe_hdr, %struct.aoe_hdr* %114, i32 0, i32 3
  %116 = load i32, i32* %115, align 4
  %117 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %100, i32 128, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 %103, i32 %106, i32 %109, i32 %110, i32 %113, i32 %116)
  %118 = getelementptr inbounds [128 x i8], [128 x i8]* %9, i64 0, i64 0
  %119 = call i32 @aoechr_error(i8* %118)
  %120 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  store %struct.sk_buff* %120, %struct.sk_buff** %2, align 8
  br label %132

121:                                              ; preds = %84
  br label %122

122:                                              ; preds = %121, %77
  %123 = load %struct.aoedev*, %struct.aoedev** %4, align 8
  %124 = call i32 @aoecmd_work(%struct.aoedev* %123)
  %125 = load %struct.aoedev*, %struct.aoedev** %4, align 8
  %126 = getelementptr inbounds %struct.aoedev, %struct.aoedev* %125, i32 0, i32 0
  %127 = load i32, i32* %8, align 4
  %128 = call i32 @spin_unlock_irqrestore(i32* %126, i32 %127)
  %129 = load %struct.frame*, %struct.frame** %6, align 8
  %130 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %131 = call i32 @ktcomplete(%struct.frame* %129, %struct.sk_buff* %130)
  store %struct.sk_buff* null, %struct.sk_buff** %2, align 8
  br label %132

132:                                              ; preds = %122, %89, %26
  %133 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  ret %struct.sk_buff* %133
}

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local i32 @get_unaligned(i32*) #1

declare dso_local %struct.aoedev* @aoedev_by_aoeaddr(i32, i32, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, ...) #1

declare dso_local i32 @aoechr_error(i8*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local %struct.frame* @getframe(%struct.aoedev*, i32) #1

declare dso_local i32 @calc_rttavg(%struct.aoedev*, %struct.TYPE_2__*, i32) #1

declare dso_local i32 @tsince_hr(%struct.frame*) #1

declare dso_local %struct.frame* @getframe_deferred(%struct.aoedev*, i32) #1

declare dso_local i32 @tsince(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i32) #1

declare dso_local i32 @aoedev_put(%struct.aoedev*) #1

declare dso_local i32 @get_unaligned_be16(i32*) #1

declare dso_local i32 @get_unaligned_be32(i32*) #1

declare dso_local i32 @aoecmd_work(%struct.aoedev*) #1

declare dso_local i32 @ktcomplete(%struct.frame*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
