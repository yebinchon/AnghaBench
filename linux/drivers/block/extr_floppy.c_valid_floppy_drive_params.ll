; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_floppy.c_valid_floppy_drive_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_floppy.c_valid_floppy_drive_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@floppy_type = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i16*, i32)* @valid_floppy_drive_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @valid_floppy_drive_params(i16* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i16*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i16* %0, i16** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* @floppy_type, align 4
  %9 = call i64 @ARRAY_SIZE(i32 %8)
  store i64 %9, i64* %6, align 8
  store i64 0, i64* %7, align 8
  store i64 0, i64* %7, align 8
  br label %10

10:                                               ; preds = %30, %2
  %11 = load i64, i64* %7, align 8
  %12 = icmp ult i64 %11, 8
  br i1 %12, label %13, label %33

13:                                               ; preds = %10
  %14 = load i16*, i16** %4, align 8
  %15 = load i64, i64* %7, align 8
  %16 = getelementptr inbounds i16, i16* %14, i64 %15
  %17 = load i16, i16* %16, align 2
  %18 = sext i16 %17 to i32
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %28, label %20

20:                                               ; preds = %13
  %21 = load i16*, i16** %4, align 8
  %22 = load i64, i64* %7, align 8
  %23 = getelementptr inbounds i16, i16* %21, i64 %22
  %24 = load i16, i16* %23, align 2
  %25 = sext i16 %24 to i64
  %26 = load i64, i64* %6, align 8
  %27 = icmp uge i64 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %20, %13
  store i32 0, i32* %3, align 4
  br label %43

29:                                               ; preds = %20
  br label %30

30:                                               ; preds = %29
  %31 = load i64, i64* %7, align 8
  %32 = add i64 %31, 1
  store i64 %32, i64* %7, align 8
  br label %10

33:                                               ; preds = %10
  %34 = load i32, i32* %5, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %41, label %36

36:                                               ; preds = %33
  %37 = load i32, i32* %5, align 4
  %38 = sext i32 %37 to i64
  %39 = load i64, i64* %6, align 8
  %40 = icmp uge i64 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %36, %33
  store i32 0, i32* %3, align 4
  br label %43

42:                                               ; preds = %36
  store i32 1, i32* %3, align 4
  br label %43

43:                                               ; preds = %42, %41, %28
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local i64 @ARRAY_SIZE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
