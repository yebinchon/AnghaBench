; ModuleID = '/home/carl/AnghaBench/lede/target/linux/adm5120/files-3.18/drivers/mtd/maps/extr_adm5120-flash.c_adm5120_flash_initbanks.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/adm5120/files-3.18/drivers/mtd/maps/extr_adm5120-flash.c_adm5120_flash_initbanks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adm5120_flash_info = type { %struct.TYPE_3__, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i64, i64, %struct.map_info }
%struct.map_info = type { i64 }
%struct.TYPE_4__ = type { i64 }

@BANK_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [41 x i8] c"reduce visibility from %ldKiB to %ldKiB\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.adm5120_flash_info*)* @adm5120_flash_initbanks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @adm5120_flash_initbanks(%struct.adm5120_flash_info* %0) #0 {
  %2 = alloca %struct.adm5120_flash_info*, align 8
  %3 = alloca %struct.map_info*, align 8
  store %struct.adm5120_flash_info* %0, %struct.adm5120_flash_info** %2, align 8
  %4 = load %struct.adm5120_flash_info*, %struct.adm5120_flash_info** %2, align 8
  %5 = getelementptr inbounds %struct.adm5120_flash_info, %struct.adm5120_flash_info* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 2
  store %struct.map_info* %6, %struct.map_info** %3, align 8
  %7 = load %struct.adm5120_flash_info*, %struct.adm5120_flash_info** %2, align 8
  %8 = getelementptr inbounds %struct.adm5120_flash_info, %struct.adm5120_flash_info* %7, i32 0, i32 1
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @BANK_SIZE, align 8
  %13 = icmp sle i64 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  br label %51

15:                                               ; preds = %1
  %16 = load %struct.adm5120_flash_info*, %struct.adm5120_flash_info** %2, align 8
  %17 = getelementptr inbounds %struct.adm5120_flash_info, %struct.adm5120_flash_info* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %30

21:                                               ; preds = %15
  %22 = load %struct.adm5120_flash_info*, %struct.adm5120_flash_info** %2, align 8
  %23 = getelementptr inbounds %struct.adm5120_flash_info, %struct.adm5120_flash_info* %22, i32 0, i32 1
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.adm5120_flash_info*, %struct.adm5120_flash_info** %2, align 8
  %28 = getelementptr inbounds %struct.adm5120_flash_info, %struct.adm5120_flash_info* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  store i64 %26, i64* %29, align 8
  br label %51

30:                                               ; preds = %15
  %31 = load %struct.map_info*, %struct.map_info** %3, align 8
  %32 = load %struct.map_info*, %struct.map_info** %3, align 8
  %33 = getelementptr inbounds %struct.map_info, %struct.map_info* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = lshr i64 %34, 10
  %36 = load %struct.adm5120_flash_info*, %struct.adm5120_flash_info** %2, align 8
  %37 = getelementptr inbounds %struct.adm5120_flash_info, %struct.adm5120_flash_info* %36, i32 0, i32 1
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = lshr i64 %40, 10
  %42 = call i32 @MAP_ERR(%struct.map_info* %31, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i64 %35, i64 %41)
  %43 = load %struct.adm5120_flash_info*, %struct.adm5120_flash_info** %2, align 8
  %44 = getelementptr inbounds %struct.adm5120_flash_info, %struct.adm5120_flash_info* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.adm5120_flash_info*, %struct.adm5120_flash_info** %2, align 8
  %48 = getelementptr inbounds %struct.adm5120_flash_info, %struct.adm5120_flash_info* %47, i32 0, i32 1
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  store i64 %46, i64* %50, align 8
  br label %51

51:                                               ; preds = %30, %21, %14
  ret void
}

declare dso_local i32 @MAP_ERR(%struct.map_info*, i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
