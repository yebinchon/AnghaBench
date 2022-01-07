; ModuleID = '/home/carl/AnghaBench/lede/tools/firmware-utils/src/extr_mkmylofw.c_update_crc.c'
source_filename = "/home/carl/AnghaBench/lede/tools/firmware-utils/src/extr_mkmylofw.c_update_crc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@crc_32_tab = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @update_crc(i32* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %8 = load i32*, i32** %6, align 8
  %9 = load i32, i32* %8, align 4
  %10 = sext i32 %9 to i64
  %11 = xor i64 %10, 4294967295
  %12 = trunc i64 %11 to i32
  store i32 %12, i32* %7, align 4
  br label %13

13:                                               ; preds = %17, %3
  %14 = load i32, i32* %5, align 4
  %15 = add nsw i32 %14, -1
  store i32 %15, i32* %5, align 4
  %16 = icmp ne i32 %14, 0
  br i1 %16, label %17, label %31

17:                                               ; preds = %13
  %18 = load i32*, i32** @crc_32_tab, align 8
  %19 = load i32, i32* %7, align 4
  %20 = load i32*, i32** %4, align 8
  %21 = getelementptr inbounds i32, i32* %20, i32 1
  store i32* %21, i32** %4, align 8
  %22 = load i32, i32* %20, align 4
  %23 = xor i32 %19, %22
  %24 = and i32 %23, 255
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %18, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %7, align 4
  %29 = ashr i32 %28, 8
  %30 = xor i32 %27, %29
  store i32 %30, i32* %7, align 4
  br label %13

31:                                               ; preds = %13
  %32 = load i32, i32* %7, align 4
  %33 = sext i32 %32 to i64
  %34 = xor i64 %33, 4294967295
  %35 = trunc i64 %34 to i32
  %36 = load i32*, i32** %6, align 8
  store i32 %35, i32* %36, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
