; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_sha512_generic.c_BLEND_OP.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_sha512_generic.c_BLEND_OP.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i64*)* @BLEND_OP to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @BLEND_OP(i32 %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64*, align 8
  store i32 %0, i32* %3, align 4
  store i64* %1, i64** %4, align 8
  %5 = load i64*, i64** %4, align 8
  %6 = load i32, i32* %3, align 4
  %7 = sub nsw i32 %6, 2
  %8 = and i32 %7, 15
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds i64, i64* %5, i64 %9
  %11 = load i64, i64* %10, align 8
  %12 = call i64 @s1(i64 %11)
  %13 = load i64*, i64** %4, align 8
  %14 = load i32, i32* %3, align 4
  %15 = sub nsw i32 %14, 7
  %16 = and i32 %15, 15
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i64, i64* %13, i64 %17
  %19 = load i64, i64* %18, align 8
  %20 = add nsw i64 %12, %19
  %21 = load i64*, i64** %4, align 8
  %22 = load i32, i32* %3, align 4
  %23 = sub nsw i32 %22, 15
  %24 = and i32 %23, 15
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i64, i64* %21, i64 %25
  %27 = load i64, i64* %26, align 8
  %28 = call i64 @s0(i64 %27)
  %29 = add nsw i64 %20, %28
  %30 = load i64*, i64** %4, align 8
  %31 = load i32, i32* %3, align 4
  %32 = and i32 %31, 15
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i64, i64* %30, i64 %33
  %35 = load i64, i64* %34, align 8
  %36 = add nsw i64 %35, %29
  store i64 %36, i64* %34, align 8
  ret void
}

declare dso_local i64 @s1(i64) #1

declare dso_local i64 @s0(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
