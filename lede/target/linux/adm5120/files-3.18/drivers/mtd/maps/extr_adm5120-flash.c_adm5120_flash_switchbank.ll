; ModuleID = '/home/carl/AnghaBench/lede/target/linux/adm5120/files-3.18/drivers/mtd/maps/extr_adm5120-flash.c_adm5120_flash_switchbank.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/adm5120/files-3.18/drivers/mtd/maps/extr_adm5120-flash.c_adm5120_flash_switchbank.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.map_info = type { i32 }
%struct.adm5120_map_info = type { i32 (i32)* }

@BANK_START_MASK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [31 x i8] c"switching to bank %u, ofs=%lX\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.map_info*, i64)* @adm5120_flash_switchbank to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @adm5120_flash_switchbank(%struct.map_info* %0, i64 %1) #0 {
  %3 = alloca %struct.map_info*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.adm5120_map_info*, align 8
  %6 = alloca i32, align 4
  store %struct.map_info* %0, %struct.map_info** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load %struct.map_info*, %struct.map_info** %3, align 8
  %8 = call %struct.adm5120_map_info* @map_to_amap(%struct.map_info* %7)
  store %struct.adm5120_map_info* %8, %struct.adm5120_map_info** %5, align 8
  %9 = load %struct.adm5120_map_info*, %struct.adm5120_map_info** %5, align 8
  %10 = getelementptr inbounds %struct.adm5120_map_info, %struct.adm5120_map_info* %9, i32 0, i32 0
  %11 = load i32 (i32)*, i32 (i32)** %10, align 8
  %12 = icmp eq i32 (i32)* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  br label %34

14:                                               ; preds = %2
  %15 = load i64, i64* %4, align 8
  %16 = load i64, i64* @BANK_START_MASK, align 8
  %17 = and i64 %15, %16
  %18 = lshr i64 %17, 21
  %19 = trunc i64 %18 to i32
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp ugt i32 %20, 1
  br i1 %21, label %22, label %24

22:                                               ; preds = %14
  %23 = call i32 (...) @BUG()
  br label %24

24:                                               ; preds = %22, %14
  %25 = load %struct.map_info*, %struct.map_info** %3, align 8
  %26 = load i32, i32* %6, align 4
  %27 = load i64, i64* %4, align 8
  %28 = call i32 @MAP_DBG(%struct.map_info* %25, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %26, i64 %27)
  %29 = load %struct.adm5120_map_info*, %struct.adm5120_map_info** %5, align 8
  %30 = getelementptr inbounds %struct.adm5120_map_info, %struct.adm5120_map_info* %29, i32 0, i32 0
  %31 = load i32 (i32)*, i32 (i32)** %30, align 8
  %32 = load i32, i32* %6, align 4
  %33 = call i32 %31(i32 %32)
  br label %34

34:                                               ; preds = %24, %13
  ret void
}

declare dso_local %struct.adm5120_map_info* @map_to_amap(%struct.map_info*) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @MAP_DBG(%struct.map_info*, i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
