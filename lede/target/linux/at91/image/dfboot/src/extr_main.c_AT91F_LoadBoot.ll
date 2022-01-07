; ModuleID = '/home/carl/AnghaBench/lede/target/linux/at91/image/dfboot/src/extr_main.c_AT91F_LoadBoot.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/at91/image/dfboot/src/extr_main.c_AT91F_LoadBoot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (i8*, i32, i32*)* }

@AT91C_BOOT_ADDR = common dso_local global i32 0, align 4
@AT91C_BOOT_DATAFLASH_ADDR = common dso_local global i32 0, align 4
@AT91C_DATAFLASH_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [9 x i8] c"F DF RD\0A\00", align 1
@IMAGE_READ_FAILURE = common dso_local global i32 0, align 4
@SUCCESS = common dso_local global i32 0, align 4
@AT91C_OFFSET_VECT6 = common dso_local global i64 0, align 8
@IMAGE_BAD_SIZE = common dso_local global i32 0, align 4
@IMAGE_CRC_ERROR = common dso_local global i32 0, align 4
@crc1 = common dso_local global i32 0, align 4
@crc2 = common dso_local global i32 0, align 4
@pAT91 = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @AT91F_LoadBoot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @AT91F_LoadBoot() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store volatile i32 136192, i32* %2, align 4
  %4 = load i32, i32* @AT91C_BOOT_ADDR, align 4
  store volatile i32 %4, i32* %3, align 4
  %5 = load i32, i32* @AT91C_BOOT_DATAFLASH_ADDR, align 4
  %6 = load volatile i32, i32* %2, align 4
  %7 = add i32 %6, 8
  %8 = load volatile i32, i32* %3, align 4
  %9 = zext i32 %8 to i64
  %10 = inttoptr i64 %9 to i8*
  %11 = call i64 @read_dataflash(i32 %5, i32 %7, i8* %10)
  %12 = load i64, i64* @AT91C_DATAFLASH_OK, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %0
  %15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* @IMAGE_READ_FAILURE, align 4
  store i32 %16, i32* %1, align 4
  br label %19

17:                                               ; preds = %0
  %18 = load i32, i32* @SUCCESS, align 4
  store i32 %18, i32* %1, align 4
  br label %19

19:                                               ; preds = %17, %14
  %20 = load i32, i32* %1, align 4
  ret i32 %20
}

declare dso_local i64 @read_dataflash(i32, i32, i8*) #1

declare dso_local i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
