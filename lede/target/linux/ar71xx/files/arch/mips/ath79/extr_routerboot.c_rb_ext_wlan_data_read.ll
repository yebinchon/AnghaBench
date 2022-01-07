; ModuleID = '/home/carl/AnghaBench/lede/target/linux/ar71xx/files/arch/mips/ath79/extr_routerboot.c_rb_ext_wlan_data_read.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/ar71xx/files/arch/mips/ath79/extr_routerboot.c_rb_ext_wlan_data_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.kobject = type { i32 }
%struct.bin_attribute = type { i64 }

@EFBIG = common dso_local global i64 0, align 8
@rb_ext_wlan_data = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)* @rb_ext_wlan_data_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @rb_ext_wlan_data_read(%struct.file* %0, %struct.kobject* %1, %struct.bin_attribute* %2, i8* %3, i64 %4, i64 %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca %struct.file*, align 8
  %9 = alloca %struct.kobject*, align 8
  %10 = alloca %struct.bin_attribute*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.file* %0, %struct.file** %8, align 8
  store %struct.kobject* %1, %struct.kobject** %9, align 8
  store %struct.bin_attribute* %2, %struct.bin_attribute** %10, align 8
  store i8* %3, i8** %11, align 8
  store i64 %4, i64* %12, align 8
  store i64 %5, i64* %13, align 8
  %14 = load i64, i64* %12, align 8
  %15 = load i64, i64* %13, align 8
  %16 = add i64 %14, %15
  %17 = load %struct.bin_attribute*, %struct.bin_attribute** %10, align 8
  %18 = getelementptr inbounds %struct.bin_attribute, %struct.bin_attribute* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ugt i64 %16, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %6
  %22 = load i64, i64* @EFBIG, align 8
  %23 = sub i64 0, %22
  store i64 %23, i64* %7, align 8
  br label %32

24:                                               ; preds = %6
  %25 = load i8*, i8** %11, align 8
  %26 = load i32*, i32** @rb_ext_wlan_data, align 8
  %27 = load i64, i64* %12, align 8
  %28 = getelementptr inbounds i32, i32* %26, i64 %27
  %29 = load i64, i64* %13, align 8
  %30 = call i32 @memcpy(i8* %25, i32* %28, i64 %29)
  %31 = load i64, i64* %13, align 8
  store i64 %31, i64* %7, align 8
  br label %32

32:                                               ; preds = %24, %21
  %33 = load i64, i64* %7, align 8
  ret i64 %33
}

declare dso_local i32 @memcpy(i8*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
