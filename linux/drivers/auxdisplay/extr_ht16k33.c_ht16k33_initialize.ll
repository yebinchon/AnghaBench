; ModuleID = '/home/carl/AnghaBench/linux/drivers/auxdisplay/extr_ht16k33.c_ht16k33_initialize.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/auxdisplay/extr_ht16k33.c_ht16k33_initialize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ht16k33_priv = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }

@HT16K33_MATRIX_LED_MAX_COLS = common dso_local global i32 0, align 4
@REG_SYSTEM_SETUP_OSC_ON = common dso_local global i32 0, align 4
@REG_SYSTEM_SETUP = common dso_local global i32 0, align 4
@REG_ROWINT_SET = common dso_local global i32 0, align 4
@REG_ROWINT_SET_INT_ACT_HIGH = common dso_local global i32 0, align 4
@REG_ROWINT_SET_INT_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ht16k33_priv*)* @ht16k33_initialize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ht16k33_initialize(%struct.ht16k33_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ht16k33_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.ht16k33_priv* %0, %struct.ht16k33_priv** %3, align 8
  %9 = load i32, i32* @HT16K33_MATRIX_LED_MAX_COLS, align 4
  %10 = mul nsw i32 %9, 2
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %6, align 8
  %13 = alloca i32, i64 %11, align 16
  store i64 %11, i64* %7, align 8
  %14 = mul nuw i64 4, %11
  %15 = trunc i64 %14 to i32
  %16 = call i32 @memset(i32* %13, i32 0, i32 %15)
  %17 = load %struct.ht16k33_priv*, %struct.ht16k33_priv** %3, align 8
  %18 = getelementptr inbounds %struct.ht16k33_priv, %struct.ht16k33_priv* %17, i32 0, i32 0
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = mul nuw i64 4, %11
  %21 = trunc i64 %20 to i32
  %22 = call i32 @i2c_smbus_write_block_data(%struct.TYPE_3__* %19, i32 0, i32 %21, i32* %13)
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %5, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %1
  %26 = load i32, i32* %5, align 4
  store i32 %26, i32* %2, align 4
  store i32 1, i32* %8, align 4
  br label %60

27:                                               ; preds = %1
  %28 = load i32, i32* @REG_SYSTEM_SETUP_OSC_ON, align 4
  %29 = load i32, i32* @REG_SYSTEM_SETUP, align 4
  %30 = or i32 %28, %29
  store i32 %30, i32* %4, align 4
  %31 = load %struct.ht16k33_priv*, %struct.ht16k33_priv** %3, align 8
  %32 = getelementptr inbounds %struct.ht16k33_priv, %struct.ht16k33_priv* %31, i32 0, i32 0
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %34 = load i32, i32* %4, align 4
  %35 = call i32 @i2c_smbus_write_byte(%struct.TYPE_3__* %33, i32 %34)
  store i32 %35, i32* %5, align 4
  %36 = load i32, i32* %5, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %27
  %39 = load i32, i32* %5, align 4
  store i32 %39, i32* %2, align 4
  store i32 1, i32* %8, align 4
  br label %60

40:                                               ; preds = %27
  %41 = load i32, i32* @REG_ROWINT_SET, align 4
  %42 = load i32, i32* @REG_ROWINT_SET_INT_ACT_HIGH, align 4
  %43 = or i32 %41, %42
  store i32 %43, i32* %4, align 4
  %44 = load %struct.ht16k33_priv*, %struct.ht16k33_priv** %3, align 8
  %45 = getelementptr inbounds %struct.ht16k33_priv, %struct.ht16k33_priv* %44, i32 0, i32 0
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp sgt i64 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %40
  %51 = load i32, i32* @REG_ROWINT_SET_INT_EN, align 4
  %52 = load i32, i32* %4, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %4, align 4
  br label %54

54:                                               ; preds = %50, %40
  %55 = load %struct.ht16k33_priv*, %struct.ht16k33_priv** %3, align 8
  %56 = getelementptr inbounds %struct.ht16k33_priv, %struct.ht16k33_priv* %55, i32 0, i32 0
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %56, align 8
  %58 = load i32, i32* %4, align 4
  %59 = call i32 @i2c_smbus_write_byte(%struct.TYPE_3__* %57, i32 %58)
  store i32 %59, i32* %2, align 4
  store i32 1, i32* %8, align 4
  br label %60

60:                                               ; preds = %54, %38, %25
  %61 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %61)
  %62 = load i32, i32* %2, align 4
  ret i32 %62
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(i32*, i32, i32) #2

declare dso_local i32 @i2c_smbus_write_block_data(%struct.TYPE_3__*, i32, i32, i32*) #2

declare dso_local i32 @i2c_smbus_write_byte(%struct.TYPE_3__*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
