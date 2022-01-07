; ModuleID = '/home/carl/AnghaBench/lede/tools/firmware-utils/src/extr_fix-u-media-header.c_str2u8.c'
source_filename = "/home/carl/AnghaBench/lede/tools/firmware-utils/src/extr_fix-u-media-header.c_str2u8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@errno = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*)* @str2u8 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @str2u8(i8* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  store i8* null, i8** %6, align 8
  store i64 0, i64* @errno, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = call i32 @strtoul(i8* %8, i8** %6, i32 0)
  store i32 %9, i32* %7, align 4
  %10 = load i64, i64* @errno, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %24, label %12

12:                                               ; preds = %2
  %13 = load i8*, i8** %6, align 8
  %14 = load i8*, i8** %4, align 8
  %15 = icmp eq i8* %13, %14
  br i1 %15, label %24, label %16

16:                                               ; preds = %12
  %17 = load i8*, i8** %6, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %19, label %25

19:                                               ; preds = %16
  %20 = load i8*, i8** %6, align 8
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %19, %12, %2
  store i32 -1, i32* %3, align 4
  br label %32

25:                                               ; preds = %19, %16
  %26 = load i32, i32* %7, align 4
  %27 = icmp sgt i32 %26, 255
  br i1 %27, label %28, label %29

28:                                               ; preds = %25
  store i32 -1, i32* %3, align 4
  br label %32

29:                                               ; preds = %25
  %30 = load i32, i32* %7, align 4
  %31 = load i32*, i32** %5, align 8
  store i32 %30, i32* %31, align 4
  store i32 0, i32* %3, align 4
  br label %32

32:                                               ; preds = %29, %28, %24
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

declare dso_local i32 @strtoul(i8*, i8**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
