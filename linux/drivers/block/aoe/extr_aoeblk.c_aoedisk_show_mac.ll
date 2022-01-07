; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/aoe/extr_aoeblk.c_aoedisk_show_mac.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/aoe/extr_aoeblk.c_aoedisk_show_mac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.gendisk = type { %struct.aoedev* }
%struct.aoedev = type { %struct.aoetgt** }
%struct.aoetgt = type { i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"none\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"%pm\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @aoedisk_show_mac to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aoedisk_show_mac(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.gendisk*, align 8
  %9 = alloca %struct.aoedev*, align 8
  %10 = alloca %struct.aoetgt*, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = load %struct.device*, %struct.device** %5, align 8
  %12 = call %struct.gendisk* @dev_to_disk(%struct.device* %11)
  store %struct.gendisk* %12, %struct.gendisk** %8, align 8
  %13 = load %struct.gendisk*, %struct.gendisk** %8, align 8
  %14 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %13, i32 0, i32 0
  %15 = load %struct.aoedev*, %struct.aoedev** %14, align 8
  store %struct.aoedev* %15, %struct.aoedev** %9, align 8
  %16 = load %struct.aoedev*, %struct.aoedev** %9, align 8
  %17 = getelementptr inbounds %struct.aoedev, %struct.aoedev* %16, i32 0, i32 0
  %18 = load %struct.aoetgt**, %struct.aoetgt*** %17, align 8
  %19 = getelementptr inbounds %struct.aoetgt*, %struct.aoetgt** %18, i64 0
  %20 = load %struct.aoetgt*, %struct.aoetgt** %19, align 8
  store %struct.aoetgt* %20, %struct.aoetgt** %10, align 8
  %21 = load %struct.aoetgt*, %struct.aoetgt** %10, align 8
  %22 = icmp eq %struct.aoetgt* %21, null
  br i1 %22, label %23, label %27

23:                                               ; preds = %3
  %24 = load i8*, i8** %7, align 8
  %25 = load i32, i32* @PAGE_SIZE, align 4
  %26 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %24, i32 %25, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store i32 %26, i32* %4, align 4
  br label %34

27:                                               ; preds = %3
  %28 = load i8*, i8** %7, align 8
  %29 = load i32, i32* @PAGE_SIZE, align 4
  %30 = load %struct.aoetgt*, %struct.aoetgt** %10, align 8
  %31 = getelementptr inbounds %struct.aoetgt, %struct.aoetgt* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %28, i32 %29, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %32)
  store i32 %33, i32* %4, align 4
  br label %34

34:                                               ; preds = %27, %23
  %35 = load i32, i32* %4, align 4
  ret i32 %35
}

declare dso_local %struct.gendisk* @dev_to_disk(%struct.device*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
