; ModuleID = '/home/carl/AnghaBench/linux/drivers/atm/extr_zatm.c_eprom_get_byte.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/atm/extr_zatm.c_eprom_get_byte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zatm_dev = type { i32 }

@ZEPROM_CS = common dso_local global i32 0, align 4
@ZEPROM_SK = common dso_local global i32 0, align 4
@ZEPROM_DO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.zatm_dev*, i8*, i16)* @eprom_get_byte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @eprom_get_byte(%struct.zatm_dev* %0, i8* %1, i16 zeroext %2) #0 {
  %4 = alloca %struct.zatm_dev*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i16, align 2
  %7 = alloca i32, align 4
  store %struct.zatm_dev* %0, %struct.zatm_dev** %4, align 8
  store i8* %1, i8** %5, align 8
  store i16 %2, i16* %6, align 2
  %8 = load i8*, i8** %5, align 8
  store i8 0, i8* %8, align 1
  store i32 8, i32* %7, align 4
  br label %9

9:                                                ; preds = %45, %3
  %10 = load i32, i32* %7, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %48

12:                                               ; preds = %9
  %13 = load %struct.zatm_dev*, %struct.zatm_dev** %4, align 8
  %14 = load i32, i32* @ZEPROM_CS, align 4
  %15 = load i16, i16* %6, align 2
  %16 = call i32 @eprom_set(%struct.zatm_dev* %13, i32 %14, i16 zeroext %15)
  %17 = load %struct.zatm_dev*, %struct.zatm_dev** %4, align 8
  %18 = load i32, i32* @ZEPROM_CS, align 4
  %19 = load i32, i32* @ZEPROM_SK, align 4
  %20 = or i32 %18, %19
  %21 = load i16, i16* %6, align 2
  %22 = call i32 @eprom_set(%struct.zatm_dev* %17, i32 %20, i16 zeroext %21)
  %23 = load i8*, i8** %5, align 8
  %24 = load i8, i8* %23, align 1
  %25 = zext i8 %24 to i32
  %26 = shl i32 %25, 1
  %27 = trunc i32 %26 to i8
  store i8 %27, i8* %23, align 1
  %28 = load %struct.zatm_dev*, %struct.zatm_dev** %4, align 8
  %29 = load i16, i16* %6, align 2
  %30 = call i32 @eprom_get(%struct.zatm_dev* %28, i16 zeroext %29)
  %31 = load i32, i32* @ZEPROM_DO, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %12
  %35 = load i8*, i8** %5, align 8
  %36 = load i8, i8* %35, align 1
  %37 = zext i8 %36 to i32
  %38 = or i32 %37, 1
  %39 = trunc i32 %38 to i8
  store i8 %39, i8* %35, align 1
  br label %40

40:                                               ; preds = %34, %12
  %41 = load %struct.zatm_dev*, %struct.zatm_dev** %4, align 8
  %42 = load i32, i32* @ZEPROM_CS, align 4
  %43 = load i16, i16* %6, align 2
  %44 = call i32 @eprom_set(%struct.zatm_dev* %41, i32 %42, i16 zeroext %43)
  br label %45

45:                                               ; preds = %40
  %46 = load i32, i32* %7, align 4
  %47 = add nsw i32 %46, -1
  store i32 %47, i32* %7, align 4
  br label %9

48:                                               ; preds = %9
  ret void
}

declare dso_local i32 @eprom_set(%struct.zatm_dev*, i32, i16 zeroext) #1

declare dso_local i32 @eprom_get(%struct.zatm_dev*, i16 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
