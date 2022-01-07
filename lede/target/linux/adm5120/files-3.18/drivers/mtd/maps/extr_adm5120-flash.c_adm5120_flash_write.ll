; ModuleID = '/home/carl/AnghaBench/lede/target/linux/adm5120/files-3.18/drivers/mtd/maps/extr_adm5120-flash.c_adm5120_flash_write.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/adm5120/files-3.18/drivers/mtd/maps/extr_adm5120-flash.c_adm5120_flash_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.map_info = type { i32 }
%struct.adm5120_map_info = type { i64 }

@.str = private unnamed_addr constant [20 x i8] c"writing to ofs %lX\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.map_info*, i32, i64)* @adm5120_flash_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @adm5120_flash_write(%struct.map_info* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.map_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.adm5120_map_info*, align 8
  store %struct.map_info* %0, %struct.map_info** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %8 = load %struct.map_info*, %struct.map_info** %4, align 8
  %9 = call %struct.adm5120_map_info* @map_to_amap(%struct.map_info* %8)
  store %struct.adm5120_map_info* %9, %struct.adm5120_map_info** %7, align 8
  %10 = load %struct.map_info*, %struct.map_info** %4, align 8
  %11 = load i64, i64* %6, align 8
  %12 = call i32 @MAP_DBG(%struct.map_info* %10, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i64 %11)
  %13 = load i64, i64* %6, align 8
  %14 = load %struct.adm5120_map_info*, %struct.adm5120_map_info** %7, align 8
  %15 = getelementptr inbounds %struct.adm5120_map_info, %struct.adm5120_map_info* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ugt i64 %13, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  br label %34

19:                                               ; preds = %3
  %20 = call i32 (...) @FLASH_LOCK()
  %21 = load %struct.map_info*, %struct.map_info** %4, align 8
  %22 = load i64, i64* %6, align 8
  %23 = call i32 @adm5120_flash_switchbank(%struct.map_info* %21, i64 %22)
  %24 = load %struct.map_info*, %struct.map_info** %4, align 8
  %25 = load i32, i32* %5, align 4
  %26 = load i64, i64* %6, align 8
  %27 = load %struct.adm5120_map_info*, %struct.adm5120_map_info** %7, align 8
  %28 = getelementptr inbounds %struct.adm5120_map_info, %struct.adm5120_map_info* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = sub i64 %29, 1
  %31 = and i64 %26, %30
  %32 = call i32 @inline_map_write(%struct.map_info* %24, i32 %25, i64 %31)
  %33 = call i32 (...) @FLASH_UNLOCK()
  br label %34

34:                                               ; preds = %19, %18
  ret void
}

declare dso_local %struct.adm5120_map_info* @map_to_amap(%struct.map_info*) #1

declare dso_local i32 @MAP_DBG(%struct.map_info*, i8*, i64) #1

declare dso_local i32 @FLASH_LOCK(...) #1

declare dso_local i32 @adm5120_flash_switchbank(%struct.map_info*, i64) #1

declare dso_local i32 @inline_map_write(%struct.map_info*, i32, i64) #1

declare dso_local i32 @FLASH_UNLOCK(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
