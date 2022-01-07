; ModuleID = '/home/carl/AnghaBench/lede/target/linux/at91/image/dfboot/src/extr_at45.c_AT91F_WriteBufferToMain.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/at91/image/dfboot/src/extr_at45.c_AT91F_WriteBufferToMain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__*, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i64 }

@DB_BUF1_PAGE_PGM = common dso_local global i8 0, align 1
@DB_BUF1_PAGE_ERASE_PGM = common dso_local global i8 0, align 1
@DB_BUF2_PAGE_PGM = common dso_local global i8 0, align 1
@DB_BUF2_PAGE_ERASE_PGM = common dso_local global i8 0, align 1
@AT91C_DATAFLASH_BAD_COMMAND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, i8, i32)* @AT91F_WriteBufferToMain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @AT91F_WriteBufferToMain(%struct.TYPE_8__* %0, i8 zeroext %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store i8 %1, i8* %6, align 1
  store i32 %2, i32* %7, align 4
  %9 = load i8, i8* %6, align 1
  %10 = zext i8 %9 to i32
  %11 = load i8, i8* @DB_BUF1_PAGE_PGM, align 1
  %12 = zext i8 %11 to i32
  %13 = icmp ne i32 %10, %12
  br i1 %13, label %14, label %34

14:                                               ; preds = %3
  %15 = load i8, i8* %6, align 1
  %16 = zext i8 %15 to i32
  %17 = load i8, i8* @DB_BUF1_PAGE_ERASE_PGM, align 1
  %18 = zext i8 %17 to i32
  %19 = icmp ne i32 %16, %18
  br i1 %19, label %20, label %34

20:                                               ; preds = %14
  %21 = load i8, i8* %6, align 1
  %22 = zext i8 %21 to i32
  %23 = load i8, i8* @DB_BUF2_PAGE_PGM, align 1
  %24 = zext i8 %23 to i32
  %25 = icmp ne i32 %22, %24
  br i1 %25, label %26, label %34

26:                                               ; preds = %20
  %27 = load i8, i8* %6, align 1
  %28 = zext i8 %27 to i32
  %29 = load i8, i8* @DB_BUF2_PAGE_ERASE_PGM, align 1
  %30 = zext i8 %29 to i32
  %31 = icmp ne i32 %28, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %26
  %33 = load i32, i32* @AT91C_DATAFLASH_BAD_COMMAND, align 4
  store i32 %33, i32* %4, align 4
  br label %52

34:                                               ; preds = %26, %20, %14, %3
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 1
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  store i64 0, i64* %38, align 8
  store i32 4, i32* %8, align 4
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = icmp sge i32 %43, 16384
  br i1 %44, label %45, label %46

45:                                               ; preds = %34
  store i32 5, i32* %8, align 4
  br label %46

46:                                               ; preds = %45, %34
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %48 = load i8, i8* %6, align 1
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* %7, align 4
  %51 = call i32 @AT91F_DataFlashSendCommand(%struct.TYPE_8__* %47, i8 zeroext %48, i32 %49, i32 %50)
  store i32 %51, i32* %4, align 4
  br label %52

52:                                               ; preds = %46, %32
  %53 = load i32, i32* %4, align 4
  ret i32 %53
}

declare dso_local i32 @AT91F_DataFlashSendCommand(%struct.TYPE_8__*, i8 zeroext, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
