; ModuleID = '/home/carl/AnghaBench/lede/target/linux/adm5120/files-3.18/drivers/mtd/maps/extr_adm5120-flash.c_adm5120_flash_copy_from.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/adm5120/files-3.18/drivers/mtd/maps/extr_adm5120-flash.c_adm5120_flash_copy_from.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.map_info = type { i32 }
%struct.adm5120_map_info = type { i64 }

@.str = private unnamed_addr constant [38 x i8] c"copy_from, to=%lX, from=%lX, len=%lX\0A\00", align 1
@BANK_SIZE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [37 x i8] c"copying %lu byte(s) from %lX to %lX\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.map_info*, i8*, i64, i64)* @adm5120_flash_copy_from to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @adm5120_flash_copy_from(%struct.map_info* %0, i8* %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.map_info*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.adm5120_map_info*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  store %struct.map_info* %0, %struct.map_info** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %12 = load %struct.map_info*, %struct.map_info** %5, align 8
  %13 = call %struct.adm5120_map_info* @map_to_amap(%struct.map_info* %12)
  store %struct.adm5120_map_info* %13, %struct.adm5120_map_info** %9, align 8
  %14 = load %struct.map_info*, %struct.map_info** %5, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = ptrtoint i8* %15 to i64
  %17 = load i64, i64* %7, align 8
  %18 = load i64, i64* %8, align 8
  %19 = call i32 @MAP_DBG(%struct.map_info* %14, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i64 %16, i64 %17, i64 %18)
  %20 = load i64, i64* %7, align 8
  %21 = load %struct.adm5120_map_info*, %struct.adm5120_map_info** %9, align 8
  %22 = getelementptr inbounds %struct.adm5120_map_info, %struct.adm5120_map_info* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ugt i64 %20, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %4
  br label %82

26:                                               ; preds = %4
  %27 = load i8*, i8** %6, align 8
  store i8* %27, i8** %10, align 8
  br label %28

28:                                               ; preds = %46, %26
  %29 = load i64, i64* %8, align 8
  %30 = icmp ugt i64 %29, 0
  br i1 %30, label %31, label %82

31:                                               ; preds = %28
  %32 = load i64, i64* %8, align 8
  store i64 %32, i64* %11, align 8
  %33 = load i64, i64* %7, align 8
  %34 = load i64, i64* @BANK_SIZE, align 8
  %35 = icmp ult i64 %33, %34
  br i1 %35, label %36, label %46

36:                                               ; preds = %31
  %37 = load i64, i64* %7, align 8
  %38 = load i64, i64* %8, align 8
  %39 = add i64 %37, %38
  %40 = load i64, i64* @BANK_SIZE, align 8
  %41 = icmp ugt i64 %39, %40
  br i1 %41, label %42, label %46

42:                                               ; preds = %36
  %43 = load i64, i64* @BANK_SIZE, align 8
  %44 = load i64, i64* %7, align 8
  %45 = sub i64 %43, %44
  store i64 %45, i64* %11, align 8
  br label %46

46:                                               ; preds = %42, %36, %31
  %47 = call i32 (...) @FLASH_LOCK()
  %48 = load %struct.map_info*, %struct.map_info** %5, align 8
  %49 = load i64, i64* %11, align 8
  %50 = load i64, i64* %7, align 8
  %51 = load %struct.adm5120_map_info*, %struct.adm5120_map_info** %9, align 8
  %52 = getelementptr inbounds %struct.adm5120_map_info, %struct.adm5120_map_info* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = sub i64 %53, 1
  %55 = and i64 %50, %54
  %56 = load i8*, i8** %10, align 8
  %57 = ptrtoint i8* %56 to i64
  %58 = call i32 @MAP_DBG(%struct.map_info* %48, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i64 %49, i64 %55, i64 %57)
  %59 = load %struct.map_info*, %struct.map_info** %5, align 8
  %60 = load i64, i64* %7, align 8
  %61 = call i32 @adm5120_flash_switchbank(%struct.map_info* %59, i64 %60)
  %62 = load %struct.map_info*, %struct.map_info** %5, align 8
  %63 = load i8*, i8** %10, align 8
  %64 = load i64, i64* %7, align 8
  %65 = load %struct.adm5120_map_info*, %struct.adm5120_map_info** %9, align 8
  %66 = getelementptr inbounds %struct.adm5120_map_info, %struct.adm5120_map_info* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = sub i64 %67, 1
  %69 = and i64 %64, %68
  %70 = load i64, i64* %11, align 8
  %71 = call i32 @inline_map_copy_from(%struct.map_info* %62, i8* %63, i64 %69, i64 %70)
  %72 = call i32 (...) @FLASH_UNLOCK()
  %73 = load i64, i64* %11, align 8
  %74 = load i8*, i8** %10, align 8
  %75 = getelementptr inbounds i8, i8* %74, i64 %73
  store i8* %75, i8** %10, align 8
  %76 = load i64, i64* %11, align 8
  %77 = load i64, i64* %7, align 8
  %78 = add i64 %77, %76
  store i64 %78, i64* %7, align 8
  %79 = load i64, i64* %11, align 8
  %80 = load i64, i64* %8, align 8
  %81 = sub i64 %80, %79
  store i64 %81, i64* %8, align 8
  br label %28

82:                                               ; preds = %25, %28
  ret void
}

declare dso_local %struct.adm5120_map_info* @map_to_amap(%struct.map_info*) #1

declare dso_local i32 @MAP_DBG(%struct.map_info*, i8*, i64, i64, i64) #1

declare dso_local i32 @FLASH_LOCK(...) #1

declare dso_local i32 @adm5120_flash_switchbank(%struct.map_info*, i64) #1

declare dso_local i32 @inline_map_copy_from(%struct.map_info*, i8*, i64, i64) #1

declare dso_local i32 @FLASH_UNLOCK(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
