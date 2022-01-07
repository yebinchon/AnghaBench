; ModuleID = '/home/carl/AnghaBench/lede/tools/firmware-utils/src/extr_srec2bin.c_binRecEnd.c'
source_filename = "/home/carl/AnghaBench/lede/tools/firmware-utils/src/extr_srec2bin.c_binRecEnd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RecStart = common dso_local global i64 0, align 8
@FALSE = common dso_local global i64 0, align 8
@fOut = common dso_local global i32 0, align 4
@debug = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [70 x i8] c"[RecEnd  ] CheckSum[0x%08X] Length[%4d] Length[0x%X] RecEnd[0x%08lX]\0A\00", align 1
@CheckSum = common dso_local global i32 0, align 4
@RecLength = common dso_local global i32 0, align 4
@SEEK_CUR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"Data   \00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"Address   \00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"Length   \00", align 1
@SEEK_SET = common dso_local global i32 0, align 4
@verbose = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [51 x i8] c"[Created Record of %d Bytes with CheckSum [0x%8X]\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @binRecEnd() #0 {
  %1 = alloca i64, align 8
  %2 = load i64, i64* @RecStart, align 8
  %3 = icmp ne i64 %2, 0
  br i1 %3, label %5, label %4

4:                                                ; preds = %0
  br label %53

5:                                                ; preds = %0
  %6 = load i64, i64* @FALSE, align 8
  store i64 %6, i64* @RecStart, align 8
  %7 = load i32, i32* @fOut, align 4
  %8 = call i64 @ftell(i32 %7)
  store i64 %8, i64* %1, align 8
  %9 = load i64, i64* @debug, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %5
  %12 = load i32, i32* @CheckSum, align 4
  %13 = load i32, i32* @RecLength, align 4
  %14 = load i32, i32* @RecLength, align 4
  %15 = load i64, i64* %1, align 8
  %16 = call i32 (i8*, i32, i32, ...) @printf(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str, i64 0, i64 0), i32 %12, i32 %13, i32 %14, i64 %15)
  br label %17

17:                                               ; preds = %11, %5
  %18 = load i32, i32* @fOut, align 4
  %19 = load i32, i32* @RecLength, align 4
  %20 = sext i32 %19 to i64
  %21 = sub nsw i64 0, %20
  %22 = load i32, i32* @SEEK_CUR, align 4
  %23 = call i32 @fseek(i32 %18, i64 %21, i32 %22)
  %24 = call i32 @dumpfTell(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 -1)
  %25 = load i32, i32* @fOut, align 4
  %26 = load i32, i32* @SEEK_CUR, align 4
  %27 = call i32 @fseek(i32 %25, i64 -4, i32 %26)
  %28 = call i32 @dumpfTell(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 -1)
  %29 = load i32, i32* @fOut, align 4
  %30 = load i32, i32* @SEEK_CUR, align 4
  %31 = call i32 @fseek(i32 %29, i64 -4, i32 %30)
  %32 = call i32 @dumpfTell(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32 -1)
  %33 = load i32, i32* @RecLength, align 4
  %34 = call i32 @binOut32(i32 %33)
  %35 = load i32, i32* @fOut, align 4
  %36 = load i64, i64* %1, align 8
  %37 = load i32, i32* @SEEK_SET, align 4
  %38 = call i32 @fseek(i32 %35, i64 %36, i32 %37)
  %39 = load i32, i32* @RecLength, align 4
  %40 = load i32, i32* @CheckSum, align 4
  %41 = add nsw i32 %40, %39
  store i32 %41, i32* @CheckSum, align 4
  %42 = load i32, i32* @CheckSum, align 4
  %43 = xor i32 %42, -1
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* @CheckSum, align 4
  %45 = load i32, i32* @CheckSum, align 4
  %46 = call i32 @binOut32(i32 %45)
  %47 = load i64, i64* @verbose, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %17
  %50 = load i32, i32* @RecLength, align 4
  %51 = load i32, i32* @CheckSum, align 4
  %52 = call i32 (i8*, i32, i32, ...) @printf(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.4, i64 0, i64 0), i32 %50, i32 %51)
  br label %53

53:                                               ; preds = %4, %49, %17
  ret void
}

declare dso_local i64 @ftell(i32) #1

declare dso_local i32 @printf(i8*, i32, i32, ...) #1

declare dso_local i32 @fseek(i32, i64, i32) #1

declare dso_local i32 @dumpfTell(i8*, i32) #1

declare dso_local i32 @binOut32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
