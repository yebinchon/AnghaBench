; ModuleID = '/home/carl/AnghaBench/linux/drivers/atm/extr_zatm.c_eprom_try_esi.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/atm/extr_zatm.c_eprom_try_esi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atm_dev = type { i32 }
%struct.zatm_dev = type { i32 }

@ZEPROM_SIZE = common dso_local global i32 0, align 4
@ZEPROM_CS = common dso_local global i32 0, align 4
@ZEPROM_CMD_READ = common dso_local global i32 0, align 4
@ZEPROM_CMD_LEN = common dso_local global i32 0, align 4
@ZEPROM_ADDR_LEN = common dso_local global i32 0, align 4
@ESI_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.atm_dev*, i16, i32, i32)* @eprom_try_esi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @eprom_try_esi(%struct.atm_dev* %0, i16 zeroext %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.atm_dev*, align 8
  %6 = alloca i16, align 2
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.zatm_dev*, align 8
  %12 = alloca i32, align 4
  store %struct.atm_dev* %0, %struct.atm_dev** %5, align 8
  store i16 %1, i16* %6, align 2
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %13 = load i32, i32* @ZEPROM_SIZE, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %9, align 8
  %16 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %10, align 8
  %17 = load %struct.atm_dev*, %struct.atm_dev** %5, align 8
  %18 = call %struct.zatm_dev* @ZATM_DEV(%struct.atm_dev* %17)
  store %struct.zatm_dev* %18, %struct.zatm_dev** %11, align 8
  store i32 0, i32* %12, align 4
  br label %19

19:                                               ; preds = %62, %4
  %20 = load i32, i32* %12, align 4
  %21 = load i32, i32* @ZEPROM_SIZE, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %65

23:                                               ; preds = %19
  %24 = load %struct.zatm_dev*, %struct.zatm_dev** %11, align 8
  %25 = load i32, i32* @ZEPROM_CS, align 4
  %26 = load i16, i16* %6, align 2
  %27 = call i32 @eprom_set(%struct.zatm_dev* %24, i32 %25, i16 zeroext %26)
  %28 = load %struct.zatm_dev*, %struct.zatm_dev** %11, align 8
  %29 = load i32, i32* @ZEPROM_CMD_READ, align 4
  %30 = load i32, i32* @ZEPROM_CMD_LEN, align 4
  %31 = load i16, i16* %6, align 2
  %32 = call i32 @eprom_put_bits(%struct.zatm_dev* %28, i32 %29, i32 %30, i16 zeroext %31)
  %33 = load %struct.zatm_dev*, %struct.zatm_dev** %11, align 8
  %34 = load i32, i32* %12, align 4
  %35 = ashr i32 %34, 1
  %36 = load i32, i32* @ZEPROM_ADDR_LEN, align 4
  %37 = load i16, i16* %6, align 2
  %38 = call i32 @eprom_put_bits(%struct.zatm_dev* %33, i32 %35, i32 %36, i16 zeroext %37)
  %39 = load %struct.zatm_dev*, %struct.zatm_dev** %11, align 8
  %40 = load i32, i32* %12, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i8, i8* %16, i64 %41
  %43 = load i32, i32* %8, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i8, i8* %42, i64 %44
  %46 = load i16, i16* %6, align 2
  %47 = call i32 @eprom_get_byte(%struct.zatm_dev* %39, i8* %45, i16 zeroext %46)
  %48 = load %struct.zatm_dev*, %struct.zatm_dev** %11, align 8
  %49 = load i32, i32* %12, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i8, i8* %16, i64 %50
  %52 = getelementptr inbounds i8, i8* %51, i64 1
  %53 = load i32, i32* %8, align 4
  %54 = sext i32 %53 to i64
  %55 = sub i64 0, %54
  %56 = getelementptr inbounds i8, i8* %52, i64 %55
  %57 = load i16, i16* %6, align 2
  %58 = call i32 @eprom_get_byte(%struct.zatm_dev* %48, i8* %56, i16 zeroext %57)
  %59 = load %struct.zatm_dev*, %struct.zatm_dev** %11, align 8
  %60 = load i16, i16* %6, align 2
  %61 = call i32 @eprom_set(%struct.zatm_dev* %59, i32 0, i16 zeroext %60)
  br label %62

62:                                               ; preds = %23
  %63 = load i32, i32* %12, align 4
  %64 = add nsw i32 %63, 2
  store i32 %64, i32* %12, align 4
  br label %19

65:                                               ; preds = %19
  %66 = load %struct.atm_dev*, %struct.atm_dev** %5, align 8
  %67 = getelementptr inbounds %struct.atm_dev, %struct.atm_dev* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* %7, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i8, i8* %16, i64 %70
  %72 = load i32, i32* @ESI_LEN, align 4
  %73 = call i32 @memcpy(i32 %68, i8* %71, i32 %72)
  %74 = load %struct.atm_dev*, %struct.atm_dev** %5, align 8
  %75 = getelementptr inbounds %struct.atm_dev, %struct.atm_dev* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @ESI_LEN, align 4
  %78 = call i32 @memcmp(i32 %76, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %77)
  %79 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %79)
  ret i32 %78
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.zatm_dev* @ZATM_DEV(%struct.atm_dev*) #2

declare dso_local i32 @eprom_set(%struct.zatm_dev*, i32, i16 zeroext) #2

declare dso_local i32 @eprom_put_bits(%struct.zatm_dev*, i32, i32, i16 zeroext) #2

declare dso_local i32 @eprom_get_byte(%struct.zatm_dev*, i8*, i16 zeroext) #2

declare dso_local i32 @memcpy(i32, i8*, i32) #2

declare dso_local i32 @memcmp(i32, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
