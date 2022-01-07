; ModuleID = '/home/carl/AnghaBench/lede/target/linux/at91/image/dfboot/src/extr_at45.c_AT91F_DataFlashRead.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/at91/image/dfboot/src/extr_at45.c_AT91F_DataFlashRead.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@AT91C_DATAFLASH_TIMEOUT = common dso_local global i32 0, align 4
@AT91C_DATAFLASH_OK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @AT91F_DataFlashRead(%struct.TYPE_6__* %0, i64 %1, i64 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i8* %3, i8** %9, align 8
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 1
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @AT91F_SpiEnable(i32 %15)
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @AT91C_DATAFLASH_TIMEOUT, align 4
  %21 = call i64 @AT91F_DataFlashWaitReady(i32 %19, i32 %20)
  %22 = load i64, i64* @AT91C_DATAFLASH_OK, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %67

25:                                               ; preds = %4
  br label %26

26:                                               ; preds = %54, %25
  %27 = load i64, i64* %8, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %64

29:                                               ; preds = %26
  %30 = load i64, i64* %8, align 8
  %31 = icmp ult i64 %30, 32768
  br i1 %31, label %32, label %34

32:                                               ; preds = %29
  %33 = load i64, i64* %8, align 8
  br label %35

34:                                               ; preds = %29
  br label %35

35:                                               ; preds = %34, %32
  %36 = phi i64 [ %33, %32 ], [ 32768, %34 ]
  store i64 %36, i64* %10, align 8
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @AT91C_DATAFLASH_TIMEOUT, align 4
  %41 = call i64 @AT91F_DataFlashWaitReady(i32 %39, i32 %40)
  %42 = load i64, i64* @AT91C_DATAFLASH_OK, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %35
  store i32 -1, i32* %5, align 4
  br label %67

45:                                               ; preds = %35
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %47 = load i64, i64* %7, align 8
  %48 = load i8*, i8** %9, align 8
  %49 = load i64, i64* %10, align 8
  %50 = call i64 @AT91F_DataFlashContinuousRead(%struct.TYPE_6__* %46, i64 %47, i8* %48, i64 %49)
  %51 = load i64, i64* @AT91C_DATAFLASH_OK, align 8
  %52 = icmp ne i64 %50, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %45
  store i32 -1, i32* %5, align 4
  br label %67

54:                                               ; preds = %45
  %55 = load i64, i64* %10, align 8
  %56 = load i64, i64* %8, align 8
  %57 = sub i64 %56, %55
  store i64 %57, i64* %8, align 8
  %58 = load i64, i64* %10, align 8
  %59 = load i64, i64* %7, align 8
  %60 = add i64 %59, %58
  store i64 %60, i64* %7, align 8
  %61 = load i64, i64* %10, align 8
  %62 = load i8*, i8** %9, align 8
  %63 = getelementptr inbounds i8, i8* %62, i64 %61
  store i8* %63, i8** %9, align 8
  br label %26

64:                                               ; preds = %26
  %65 = load i64, i64* @AT91C_DATAFLASH_OK, align 8
  %66 = trunc i64 %65 to i32
  store i32 %66, i32* %5, align 4
  br label %67

67:                                               ; preds = %64, %53, %44, %24
  %68 = load i32, i32* %5, align 4
  ret i32 %68
}

declare dso_local i32 @AT91F_SpiEnable(i32) #1

declare dso_local i64 @AT91F_DataFlashWaitReady(i32, i32) #1

declare dso_local i64 @AT91F_DataFlashContinuousRead(%struct.TYPE_6__*, i64, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
