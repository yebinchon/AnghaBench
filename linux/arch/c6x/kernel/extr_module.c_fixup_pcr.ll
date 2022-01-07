; ModuleID = '/home/carl/AnghaBench/linux/arch/c6x/kernel/extr_module.c_fixup_pcr.c'
source_filename = "/home/carl/AnghaBench/linux/arch/c6x/kernel/extr_module.c_fixup_pcr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [39 x i8] c"REL PCR_S%d[%p] dest[%p] opcode[%08x]\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"PCR_S%d reloc %p -> %p out of range!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i64, i32, i32)* @fixup_pcr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fixup_pcr(i32* %0, i64 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load i32*, i32** %6, align 8
  %15 = ptrtoint i32* %14 to i64
  %16 = and i64 %15, -32
  store i64 %16, i64* %11, align 8
  %17 = load i64, i64* %7, align 8
  %18 = load i64, i64* %11, align 8
  %19 = sub nsw i64 %17, %18
  %20 = ashr i64 %19, 2
  store i64 %20, i64* %12, align 8
  %21 = load i32, i32* %8, align 4
  %22 = shl i32 1, %21
  %23 = sub nsw i32 %22, 1
  %24 = sext i32 %23 to i64
  store i64 %24, i64* %13, align 8
  %25 = load i64, i64* %12, align 8
  %26 = load i32, i32* %8, align 4
  %27 = sub nsw i32 %26, 1
  %28 = zext i32 %27 to i64
  %29 = ashr i64 %25, %28
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %38, label %31

31:                                               ; preds = %4
  %32 = load i64, i64* %12, align 8
  %33 = load i32, i32* %8, align 4
  %34 = sub nsw i32 %33, 1
  %35 = zext i32 %34 to i64
  %36 = ashr i64 %32, %35
  %37 = icmp eq i64 %36, -1
  br i1 %37, label %38, label %68

38:                                               ; preds = %31, %4
  %39 = load i32*, i32** %6, align 8
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %10, align 4
  %41 = load i64, i64* %13, align 8
  %42 = load i32, i32* %9, align 4
  %43 = zext i32 %42 to i64
  %44 = shl i64 %41, %43
  %45 = xor i64 %44, -1
  %46 = load i32, i32* %10, align 4
  %47 = sext i32 %46 to i64
  %48 = and i64 %47, %45
  %49 = trunc i64 %48 to i32
  store i32 %49, i32* %10, align 4
  %50 = load i64, i64* %12, align 8
  %51 = load i64, i64* %13, align 8
  %52 = and i64 %50, %51
  %53 = load i32, i32* %9, align 4
  %54 = zext i32 %53 to i64
  %55 = shl i64 %52, %54
  %56 = load i32, i32* %10, align 4
  %57 = sext i32 %56 to i64
  %58 = or i64 %57, %55
  %59 = trunc i64 %58 to i32
  store i32 %59, i32* %10, align 4
  %60 = load i32, i32* %10, align 4
  %61 = load i32*, i32** %6, align 8
  store i32 %60, i32* %61, align 4
  %62 = load i32, i32* %8, align 4
  %63 = load i32*, i32** %6, align 8
  %64 = load i64, i64* %7, align 8
  %65 = inttoptr i64 %64 to i8*
  %66 = load i32, i32* %10, align 4
  %67 = call i32 @pr_debug(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %62, i32* %63, i8* %65, i32 %66)
  store i32 0, i32* %5, align 4
  br label %74

68:                                               ; preds = %31
  %69 = load i32, i32* %8, align 4
  %70 = load i32*, i32** %6, align 8
  %71 = load i64, i64* %7, align 8
  %72 = inttoptr i64 %71 to i8*
  %73 = call i32 @pr_err(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %69, i32* %70, i8* %72)
  store i32 -1, i32* %5, align 4
  br label %74

74:                                               ; preds = %68, %38
  %75 = load i32, i32* %5, align 4
  ret i32 %75
}

declare dso_local i32 @pr_debug(i8*, i32, i32*, i8*, i32) #1

declare dso_local i32 @pr_err(i8*, i32, i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
