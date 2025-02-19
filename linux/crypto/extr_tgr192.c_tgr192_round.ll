; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_tgr192.c_tgr192_round.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_tgr192.c_tgr192_round.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@sbox1 = common dso_local global i32* null, align 8
@sbox2 = common dso_local global i32* null, align 8
@sbox3 = common dso_local global i32* null, align 8
@sbox4 = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32*, i32, i32)* @tgr192_round to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tgr192_round(i32* %0, i32* %1, i32* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %14 = load i32*, i32** %6, align 8
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %11, align 4
  %16 = load i32*, i32** %7, align 8
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %12, align 4
  %18 = load i32*, i32** %8, align 8
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %13, align 4
  %20 = load i32, i32* %9, align 4
  %21 = load i32, i32* %13, align 4
  %22 = xor i32 %21, %20
  store i32 %22, i32* %13, align 4
  %23 = load i32*, i32** @sbox1, align 8
  %24 = load i32, i32* %13, align 4
  %25 = and i32 %24, 255
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %23, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = load i32*, i32** @sbox2, align 8
  %30 = load i32, i32* %13, align 4
  %31 = ashr i32 %30, 16
  %32 = and i32 %31, 255
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %29, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = xor i32 %28, %35
  %37 = load i32*, i32** @sbox3, align 8
  %38 = load i32, i32* %13, align 4
  %39 = ashr i32 %38, 32
  %40 = and i32 %39, 255
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %37, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = xor i32 %36, %43
  %45 = load i32*, i32** @sbox4, align 8
  %46 = load i32, i32* %13, align 4
  %47 = ashr i32 %46, 48
  %48 = and i32 %47, 255
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %45, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = xor i32 %44, %51
  %53 = load i32, i32* %11, align 4
  %54 = sub nsw i32 %53, %52
  store i32 %54, i32* %11, align 4
  %55 = load i32*, i32** @sbox4, align 8
  %56 = load i32, i32* %13, align 4
  %57 = ashr i32 %56, 8
  %58 = and i32 %57, 255
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %55, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = load i32*, i32** @sbox3, align 8
  %63 = load i32, i32* %13, align 4
  %64 = ashr i32 %63, 24
  %65 = and i32 %64, 255
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %62, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = xor i32 %61, %68
  %70 = load i32*, i32** @sbox2, align 8
  %71 = load i32, i32* %13, align 4
  %72 = ashr i32 %71, 40
  %73 = and i32 %72, 255
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %70, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = xor i32 %69, %76
  %78 = load i32*, i32** @sbox1, align 8
  %79 = load i32, i32* %13, align 4
  %80 = ashr i32 %79, 56
  %81 = and i32 %80, 255
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %78, i64 %82
  %84 = load i32, i32* %83, align 4
  %85 = xor i32 %77, %84
  %86 = load i32, i32* %12, align 4
  %87 = add nsw i32 %86, %85
  store i32 %87, i32* %12, align 4
  %88 = load i32, i32* %10, align 4
  %89 = load i32, i32* %12, align 4
  %90 = mul nsw i32 %89, %88
  store i32 %90, i32* %12, align 4
  %91 = load i32, i32* %11, align 4
  %92 = load i32*, i32** %6, align 8
  store i32 %91, i32* %92, align 4
  %93 = load i32, i32* %12, align 4
  %94 = load i32*, i32** %7, align 8
  store i32 %93, i32* %94, align 4
  %95 = load i32, i32* %13, align 4
  %96 = load i32*, i32** %8, align 8
  store i32 %95, i32* %96, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
