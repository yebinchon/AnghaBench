; ModuleID = '/home/carl/AnghaBench/linux/drivers/base/regmap/extr_regmap-spmi.c_regmap_spmi_base_gather_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/base/regmap/extr_regmap-spmi.c_regmap_spmi_base_gather_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i64, i8*, i64)* @regmap_spmi_base_gather_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @regmap_spmi_base_gather_write(i8* %0, i8* %1, i64 %2, i8* %3, i64 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i8* %3, i8** %9, align 8
  store i64 %4, i64* %10, align 8
  %14 = load i8*, i8** %9, align 8
  %15 = bitcast i8* %14 to i64*
  store i64* %15, i64** %11, align 8
  %16 = load i8*, i8** %7, align 8
  %17 = bitcast i8* %16 to i64*
  %18 = load i64, i64* %17, align 8
  store i64 %18, i64* %12, align 8
  store i32 0, i32* %13, align 4
  %19 = load i64, i64* %8, align 8
  %20 = icmp ne i64 %19, 1
  %21 = zext i1 %20 to i32
  %22 = call i32 @BUG_ON(i32 %21)
  %23 = load i64, i64* %12, align 8
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %43

25:                                               ; preds = %5
  %26 = load i64, i64* %10, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %43

28:                                               ; preds = %25
  %29 = load i8*, i8** %6, align 8
  %30 = load i64*, i64** %11, align 8
  %31 = load i64, i64* %30, align 8
  %32 = call i32 @spmi_register_zero_write(i8* %29, i64 %31)
  store i32 %32, i32* %13, align 4
  %33 = load i32, i32* %13, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %28
  br label %64

36:                                               ; preds = %28
  %37 = load i64*, i64** %11, align 8
  %38 = getelementptr inbounds i64, i64* %37, i32 1
  store i64* %38, i64** %11, align 8
  %39 = load i64, i64* %12, align 8
  %40 = add nsw i64 %39, 1
  store i64 %40, i64* %12, align 8
  %41 = load i64, i64* %10, align 8
  %42 = add i64 %41, -1
  store i64 %42, i64* %10, align 8
  br label %43

43:                                               ; preds = %36, %25, %5
  br label %44

44:                                               ; preds = %56, %43
  %45 = load i64, i64* %10, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %63

47:                                               ; preds = %44
  %48 = load i8*, i8** %6, align 8
  %49 = load i64, i64* %12, align 8
  %50 = load i64*, i64** %11, align 8
  %51 = load i64, i64* %50, align 8
  %52 = call i32 @spmi_register_write(i8* %48, i64 %49, i64 %51)
  store i32 %52, i32* %13, align 4
  %53 = load i32, i32* %13, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %47
  br label %64

56:                                               ; preds = %47
  %57 = load i64*, i64** %11, align 8
  %58 = getelementptr inbounds i64, i64* %57, i32 1
  store i64* %58, i64** %11, align 8
  %59 = load i64, i64* %12, align 8
  %60 = add nsw i64 %59, 1
  store i64 %60, i64* %12, align 8
  %61 = load i64, i64* %10, align 8
  %62 = add i64 %61, -1
  store i64 %62, i64* %10, align 8
  br label %44

63:                                               ; preds = %44
  br label %64

64:                                               ; preds = %63, %55, %35
  %65 = load i32, i32* %13, align 4
  ret i32 %65
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @spmi_register_zero_write(i8*, i64) #1

declare dso_local i32 @spmi_register_write(i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
