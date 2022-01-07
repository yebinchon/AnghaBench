; ModuleID = '/home/carl/AnghaBench/lede/target/linux/adm5120/files-3.18/drivers/mtd/maps/extr_adm5120-flash.c_adm5120_flash_read.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/adm5120/files-3.18/drivers/mtd/maps/extr_adm5120-flash.c_adm5120_flash_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.map_info = type { i32 }
%struct.adm5120_map_info = type { i64 }

@.str = private unnamed_addr constant [22 x i8] c"reading from ofs %lX\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.map_info*, i64)* @adm5120_flash_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adm5120_flash_read(%struct.map_info* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.map_info*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.adm5120_map_info*, align 8
  %7 = alloca i32, align 4
  store %struct.map_info* %0, %struct.map_info** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load %struct.map_info*, %struct.map_info** %4, align 8
  %9 = call %struct.adm5120_map_info* @map_to_amap(%struct.map_info* %8)
  store %struct.adm5120_map_info* %9, %struct.adm5120_map_info** %6, align 8
  %10 = load %struct.map_info*, %struct.map_info** %4, align 8
  %11 = load i64, i64* %5, align 8
  %12 = call i32 @MAP_DBG(%struct.map_info* %10, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i64 %11)
  %13 = load i64, i64* %5, align 8
  %14 = load %struct.adm5120_map_info*, %struct.adm5120_map_info** %6, align 8
  %15 = getelementptr inbounds %struct.adm5120_map_info, %struct.adm5120_map_info* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp uge i64 %13, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = load %struct.map_info*, %struct.map_info** %4, align 8
  %20 = call i32 @map_word_ff(%struct.map_info* %19)
  store i32 %20, i32* %3, align 4
  br label %36

21:                                               ; preds = %2
  %22 = call i32 (...) @FLASH_LOCK()
  %23 = load %struct.map_info*, %struct.map_info** %4, align 8
  %24 = load i64, i64* %5, align 8
  %25 = call i32 @adm5120_flash_switchbank(%struct.map_info* %23, i64 %24)
  %26 = load %struct.map_info*, %struct.map_info** %4, align 8
  %27 = load i64, i64* %5, align 8
  %28 = load %struct.adm5120_map_info*, %struct.adm5120_map_info** %6, align 8
  %29 = getelementptr inbounds %struct.adm5120_map_info, %struct.adm5120_map_info* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = sub i64 %30, 1
  %32 = and i64 %27, %31
  %33 = call i32 @inline_map_read(%struct.map_info* %26, i64 %32)
  store i32 %33, i32* %7, align 4
  %34 = call i32 (...) @FLASH_UNLOCK()
  %35 = load i32, i32* %7, align 4
  store i32 %35, i32* %3, align 4
  br label %36

36:                                               ; preds = %21, %18
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local %struct.adm5120_map_info* @map_to_amap(%struct.map_info*) #1

declare dso_local i32 @MAP_DBG(%struct.map_info*, i8*, i64) #1

declare dso_local i32 @map_word_ff(%struct.map_info*) #1

declare dso_local i32 @FLASH_LOCK(...) #1

declare dso_local i32 @adm5120_flash_switchbank(%struct.map_info*, i64) #1

declare dso_local i32 @inline_map_read(%struct.map_info*, i64) #1

declare dso_local i32 @FLASH_UNLOCK(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
