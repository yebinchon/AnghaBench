; ModuleID = '/home/carl/AnghaBench/lede/target/linux/generic/files/drivers/net/phy/extr_ar8216.c_ar8xxx_byte_to_str.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/generic/files/drivers/net/phy/extr_ar8216.c_ar8xxx_byte_to_str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"GiB\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"MiB\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"KiB\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"Byte\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"%lu.%lu %s\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"%lu %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i32)* @ar8xxx_byte_to_str to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ar8xxx_byte_to_str(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = icmp sge i32 %9, 1073741824
  br i1 %10, label %11, label %16

11:                                               ; preds = %3
  %12 = load i32, i32* %6, align 4
  %13 = mul nsw i32 %12, 10
  %14 = sdiv i32 %13, 1073741824
  %15 = sext i32 %14 to i64
  store i64 %15, i64* %7, align 8
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8** %8, align 8
  br label %37

16:                                               ; preds = %3
  %17 = load i32, i32* %6, align 4
  %18 = icmp sge i32 %17, 1048576
  br i1 %18, label %19, label %24

19:                                               ; preds = %16
  %20 = load i32, i32* %6, align 4
  %21 = mul nsw i32 %20, 10
  %22 = sdiv i32 %21, 1048576
  %23 = sext i32 %22 to i64
  store i64 %23, i64* %7, align 8
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8** %8, align 8
  br label %36

24:                                               ; preds = %16
  %25 = load i32, i32* %6, align 4
  %26 = icmp sge i32 %25, 1024
  br i1 %26, label %27, label %32

27:                                               ; preds = %24
  %28 = load i32, i32* %6, align 4
  %29 = mul nsw i32 %28, 10
  %30 = sdiv i32 %29, 1024
  %31 = sext i32 %30 to i64
  store i64 %31, i64* %7, align 8
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8** %8, align 8
  br label %35

32:                                               ; preds = %24
  %33 = load i32, i32* %6, align 4
  %34 = sext i32 %33 to i64
  store i64 %34, i64* %7, align 8
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8** %8, align 8
  br label %35

35:                                               ; preds = %32, %27
  br label %36

36:                                               ; preds = %35, %19
  br label %37

37:                                               ; preds = %36, %11
  %38 = load i8*, i8** %8, align 8
  %39 = call i64 @strcmp(i8* %38, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %50

41:                                               ; preds = %37
  %42 = load i8*, i8** %4, align 8
  %43 = load i32, i32* %5, align 4
  %44 = load i64, i64* %7, align 8
  %45 = udiv i64 %44, 10
  %46 = load i64, i64* %7, align 8
  %47 = urem i64 %46, 10
  %48 = load i8*, i8** %8, align 8
  %49 = call i32 (i8*, i32, i8*, i64, ...) @snprintf(i8* %42, i32 %43, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i64 %45, i64 %47, i8* %48)
  br label %56

50:                                               ; preds = %37
  %51 = load i8*, i8** %4, align 8
  %52 = load i32, i32* %5, align 4
  %53 = load i64, i64* %7, align 8
  %54 = load i8*, i8** %8, align 8
  %55 = call i32 (i8*, i32, i8*, i64, ...) @snprintf(i8* %51, i32 %52, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i64 %53, i8* %54)
  br label %56

56:                                               ; preds = %50, %41
  ret void
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i64, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
