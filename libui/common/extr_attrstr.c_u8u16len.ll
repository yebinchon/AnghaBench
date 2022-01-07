; ModuleID = '/home/carl/AnghaBench/libui/common/extr_attrstr.c_u8u16len.c'
source_filename = "/home/carl/AnghaBench/libui/common/extr_attrstr.c_u8u16len.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i64*, i64*)* @u8u16len to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @u8u16len(i8* %0, i64* %1, i64* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  %8 = alloca [4 x i8], align 1
  %9 = alloca [2 x i32], align 4
  store i8* %0, i8** %4, align 8
  store i64* %1, i64** %5, align 8
  store i64* %2, i64** %6, align 8
  %10 = load i64*, i64** %5, align 8
  store i64 0, i64* %10, align 8
  %11 = load i64*, i64** %6, align 8
  store i64 0, i64* %11, align 8
  br label %12

12:                                               ; preds = %16, %3
  %13 = load i8*, i8** %4, align 8
  %14 = load i8, i8* %13, align 1
  %15 = icmp ne i8 %14, 0
  br i1 %15, label %16, label %31

16:                                               ; preds = %12
  %17 = load i8*, i8** %4, align 8
  %18 = call i8* @uiprivUTF8DecodeRune(i8* %17, i32 0, i32* %7)
  store i8* %18, i8** %4, align 8
  %19 = load i32, i32* %7, align 4
  %20 = getelementptr inbounds [4 x i8], [4 x i8]* %8, i64 0, i64 0
  %21 = call i64 @uiprivUTF8EncodeRune(i32 %19, i8* %20)
  %22 = load i64*, i64** %5, align 8
  %23 = load i64, i64* %22, align 8
  %24 = add i64 %23, %21
  store i64 %24, i64* %22, align 8
  %25 = load i32, i32* %7, align 4
  %26 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %27 = call i64 @uiprivUTF16EncodeRune(i32 %25, i32* %26)
  %28 = load i64*, i64** %6, align 8
  %29 = load i64, i64* %28, align 8
  %30 = add i64 %29, %27
  store i64 %30, i64* %28, align 8
  br label %12

31:                                               ; preds = %12
  ret void
}

declare dso_local i8* @uiprivUTF8DecodeRune(i8*, i32, i32*) #1

declare dso_local i64 @uiprivUTF8EncodeRune(i32, i8*) #1

declare dso_local i64 @uiprivUTF16EncodeRune(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
