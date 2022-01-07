; ModuleID = '/home/carl/AnghaBench/lede/target/linux/at91/image/dfboot/src/extr_dataflash.c_AT91F_DataflashPrintInfo.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/at91/image/dfboot/src/extr_dataflash.c_AT91F_DataflashPrintInfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i64 }

@CFG_MAX_DATAFLASH_BANKS = common dso_local global i32 0, align 4
@dataflash_info = common dso_local global %struct.TYPE_4__* null, align 8
@.str = private unnamed_addr constant [10 x i8] c"DF:AT45DB\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"161\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"321\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"642\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"128\00", align 1
@.str.5 = private unnamed_addr constant [47 x i8] c"\0A# PG: %6d\0APG SZ: %6d\0ASZ=%8d bytes\0AADDR: %08X\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @AT91F_DataflashPrintInfo() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  br label %2

2:                                                ; preds = %71, %0
  %3 = load i32, i32* %1, align 4
  %4 = load i32, i32* @CFG_MAX_DATAFLASH_BANKS, align 4
  %5 = icmp slt i32 %3, %4
  br i1 %5, label %6, label %74

6:                                                ; preds = %2
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** @dataflash_info, align 8
  %8 = load i32, i32* %1, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i64 %9
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %70

14:                                               ; preds = %6
  %15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** @dataflash_info, align 8
  %17 = load i32, i32* %1, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  switch i32 %21, label %30 [
    i32 130, label %22
    i32 129, label %24
    i32 128, label %26
    i32 131, label %28
  ]

22:                                               ; preds = %14
  %23 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  br label %30

24:                                               ; preds = %14
  %25 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  br label %30

26:                                               ; preds = %14
  %27 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  br label %30

28:                                               ; preds = %14
  %29 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  br label %30

30:                                               ; preds = %14, %28, %26, %24, %22
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** @dataflash_info, align 8
  %32 = load i32, i32* %1, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = trunc i64 %37 to i32
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** @dataflash_info, align 8
  %40 = load i32, i32* %1, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** @dataflash_info, align 8
  %47 = load i32, i32* %1, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = trunc i64 %52 to i32
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** @dataflash_info, align 8
  %55 = load i32, i32* %1, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = mul i32 %53, %60
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** @dataflash_info, align 8
  %63 = load i32, i32* %1, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = trunc i64 %67 to i32
  %69 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.5, i64 0, i64 0), i32 %38, i32 %45, i32 %61, i32 %68)
  br label %70

70:                                               ; preds = %30, %6
  br label %71

71:                                               ; preds = %70
  %72 = load i32, i32* %1, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %1, align 4
  br label %2

74:                                               ; preds = %2
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
