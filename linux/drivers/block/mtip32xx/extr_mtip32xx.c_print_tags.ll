; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/mtip32xx/extr_mtip32xx.c_print_tags.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/mtip32xx/extr_mtip32xx.c_print_tags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.driver_data = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@SLOTBITS_IN_LONGS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"%016lX \00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"%d command(s) %s: tagmap [%s]\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.driver_data*, i8*, i64*, i32)* @print_tags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_tags(%struct.driver_data* %0, i8* %1, i64* %2, i32 %3) #0 {
  %5 = alloca %struct.driver_data*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca [128 x i8], align 16
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.driver_data* %0, %struct.driver_data** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64* %2, i64** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %11, align 4
  %12 = getelementptr inbounds [128 x i8], [128 x i8]* %9, i64 0, i64 0
  %13 = call i32 @memset(i8* %12, i32 0, i32 128)
  %14 = load i32, i32* @SLOTBITS_IN_LONGS, align 4
  store i32 %14, i32* %10, align 4
  br label %15

15:                                               ; preds = %34, %4
  %16 = load i32, i32* %10, align 4
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %18, label %37

18:                                               ; preds = %15
  %19 = getelementptr inbounds [128 x i8], [128 x i8]* %9, i64 0, i64 0
  %20 = load i32, i32* %11, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i8, i8* %19, i64 %21
  %23 = load i64*, i64** %7, align 8
  %24 = load i32, i32* %10, align 4
  %25 = sub nsw i32 %24, 1
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i64, i64* %23, i64 %26
  %28 = load i64, i64* %27, align 8
  %29 = call i64 @sprintf(i8* %22, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i64 %28)
  %30 = load i32, i32* %11, align 4
  %31 = sext i32 %30 to i64
  %32 = add nsw i64 %31, %29
  %33 = trunc i64 %32 to i32
  store i32 %33, i32* %11, align 4
  br label %34

34:                                               ; preds = %18
  %35 = load i32, i32* %10, align 4
  %36 = add nsw i32 %35, -1
  store i32 %36, i32* %10, align 4
  br label %15

37:                                               ; preds = %15
  %38 = load %struct.driver_data*, %struct.driver_data** %5, align 8
  %39 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %38, i32 0, i32 0
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %8, align 4
  %43 = load i8*, i8** %6, align 8
  %44 = getelementptr inbounds [128 x i8], [128 x i8]* %9, i64 0, i64 0
  %45 = call i32 @dev_warn(i32* %41, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %42, i8* %43, i8* %44)
  ret void
}

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i64 @sprintf(i8*, i8*, i64) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
