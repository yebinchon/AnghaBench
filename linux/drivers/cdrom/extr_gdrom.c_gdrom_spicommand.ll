; ModuleID = '/home/carl/AnghaBench/linux/drivers/cdrom/extr_gdrom.c_gdrom_spicommand.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cdrom/extr_gdrom.c_gdrom_spicommand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GDROM_ALTSTATUS_REG = common dso_local global i32 0, align 4
@GDROM_BCL_REG = common dso_local global i32 0, align 4
@GDROM_BCH_REG = common dso_local global i32 0, align 4
@GDROM_INTSEC_REG = common dso_local global i32 0, align 4
@GDROM_SECNUM_REG = common dso_local global i32 0, align 4
@GDROM_ERROR_REG = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@GDROM_DEFAULT_TIMEOUT = common dso_local global i64 0, align 8
@GDROM_COM_PACKET = common dso_local global i32 0, align 4
@GDROM_STATUSCOMMAND_REG = common dso_local global i32 0, align 4
@GDROM_DATA_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @gdrom_spicommand to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gdrom_spicommand(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i16*, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i8*, i8** %3, align 8
  %8 = bitcast i8* %7 to i16*
  store i16* %8, i16** %5, align 8
  %9 = load i32, i32* @GDROM_ALTSTATUS_REG, align 4
  %10 = call i32 @__raw_writeb(i32 8, i32 %9)
  %11 = load i32, i32* %4, align 4
  %12 = and i32 %11, 255
  %13 = load i32, i32* @GDROM_BCL_REG, align 4
  %14 = call i32 @__raw_writeb(i32 %12, i32 %13)
  %15 = load i32, i32* %4, align 4
  %16 = ashr i32 %15, 8
  %17 = and i32 %16, 255
  %18 = load i32, i32* @GDROM_BCH_REG, align 4
  %19 = call i32 @__raw_writeb(i32 %17, i32 %18)
  %20 = load i32, i32* @GDROM_INTSEC_REG, align 4
  %21 = call i32 @__raw_writeb(i32 0, i32 %20)
  %22 = load i32, i32* @GDROM_SECNUM_REG, align 4
  %23 = call i32 @__raw_writeb(i32 0, i32 %22)
  %24 = load i32, i32* @GDROM_ERROR_REG, align 4
  %25 = call i32 @__raw_writeb(i32 0, i32 %24)
  %26 = call i32 (...) @gdrom_wait_clrbusy()
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %2
  %29 = call i32 @gdrom_getsense(i32* null)
  br label %61

30:                                               ; preds = %2
  %31 = load i64, i64* @jiffies, align 8
  %32 = load i64, i64* @GDROM_DEFAULT_TIMEOUT, align 8
  %33 = add i64 %31, %32
  store i64 %33, i64* %6, align 8
  %34 = load i32, i32* @GDROM_COM_PACKET, align 4
  %35 = load i32, i32* @GDROM_STATUSCOMMAND_REG, align 4
  %36 = call i32 @__raw_writeb(i32 %34, i32 %35)
  br label %37

37:                                               ; preds = %47, %30
  %38 = call i32 (...) @gdrom_data_request()
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %45, label %40

40:                                               ; preds = %37
  %41 = load i64, i64* @jiffies, align 8
  %42 = load i64, i64* %6, align 8
  %43 = call i64 @time_before(i64 %41, i64 %42)
  %44 = icmp ne i64 %43, 0
  br label %45

45:                                               ; preds = %40, %37
  %46 = phi i1 [ false, %37 ], [ %44, %40 ]
  br i1 %46, label %47, label %49

47:                                               ; preds = %45
  %48 = call i32 (...) @cpu_relax()
  br label %37

49:                                               ; preds = %45
  %50 = load i64, i64* @jiffies, align 8
  %51 = load i64, i64* %6, align 8
  %52 = add i64 %51, 1
  %53 = call i64 @time_before(i64 %50, i64 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %57, label %55

55:                                               ; preds = %49
  %56 = call i32 @gdrom_getsense(i32* null)
  br label %61

57:                                               ; preds = %49
  %58 = load i32, i32* @GDROM_DATA_REG, align 4
  %59 = load i16*, i16** %5, align 8
  %60 = call i32 @outsw(i32 %58, i16* %59, i32 6)
  br label %61

61:                                               ; preds = %57, %55, %28
  ret void
}

declare dso_local i32 @__raw_writeb(i32, i32) #1

declare dso_local i32 @gdrom_wait_clrbusy(...) #1

declare dso_local i32 @gdrom_getsense(i32*) #1

declare dso_local i32 @gdrom_data_request(...) #1

declare dso_local i64 @time_before(i64, i64) #1

declare dso_local i32 @cpu_relax(...) #1

declare dso_local i32 @outsw(i32, i16*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
