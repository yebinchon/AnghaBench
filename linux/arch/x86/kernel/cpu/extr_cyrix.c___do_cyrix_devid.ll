; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/extr_cyrix.c___do_cyrix_devid.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/extr_cyrix.c___do_cyrix_devid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CX86_CCR3 = common dso_local global i32 0, align 4
@CX86_CCR2 = common dso_local global i32 0, align 4
@CX86_DIR0 = common dso_local global i32 0, align 4
@CX86_DIR1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*)* @__do_cyrix_devid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__do_cyrix_devid(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i32, i32* @CX86_CCR3, align 4
  %8 = call zeroext i8 @getCx86(i32 %7)
  store i8 %8, i8* %6, align 1
  %9 = load i32, i32* @CX86_CCR3, align 4
  %10 = load i8, i8* %6, align 1
  %11 = zext i8 %10 to i32
  %12 = xor i32 %11, 128
  %13 = trunc i32 %12 to i8
  %14 = call i32 @setCx86(i32 %9, i8 zeroext %13)
  %15 = call zeroext i8 @getCx86(i32 192)
  %16 = load i32, i32* @CX86_CCR3, align 4
  %17 = call zeroext i8 @getCx86(i32 %16)
  %18 = zext i8 %17 to i32
  %19 = load i8, i8* %6, align 1
  %20 = zext i8 %19 to i32
  %21 = icmp eq i32 %18, %20
  br i1 %21, label %22, label %46

22:                                               ; preds = %2
  %23 = load i32, i32* @CX86_CCR2, align 4
  %24 = call zeroext i8 @getCx86(i32 %23)
  store i8 %24, i8* %5, align 1
  %25 = load i32, i32* @CX86_CCR2, align 4
  %26 = load i8, i8* %5, align 1
  %27 = zext i8 %26 to i32
  %28 = xor i32 %27, 4
  %29 = trunc i32 %28 to i8
  %30 = call i32 @setCx86(i32 %25, i8 zeroext %29)
  %31 = call zeroext i8 @getCx86(i32 192)
  %32 = load i32, i32* @CX86_CCR2, align 4
  %33 = call zeroext i8 @getCx86(i32 %32)
  %34 = zext i8 %33 to i32
  %35 = load i8, i8* %5, align 1
  %36 = zext i8 %35 to i32
  %37 = icmp eq i32 %34, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %22
  %39 = load i8*, i8** %3, align 8
  store i8 -3, i8* %39, align 1
  br label %45

40:                                               ; preds = %22
  %41 = load i32, i32* @CX86_CCR2, align 4
  %42 = load i8, i8* %5, align 1
  %43 = call i32 @setCx86(i32 %41, i8 zeroext %42)
  %44 = load i8*, i8** %3, align 8
  store i8 -2, i8* %44, align 1
  br label %45

45:                                               ; preds = %40, %38
  br label %56

46:                                               ; preds = %2
  %47 = load i32, i32* @CX86_CCR3, align 4
  %48 = load i8, i8* %6, align 1
  %49 = call i32 @setCx86(i32 %47, i8 zeroext %48)
  %50 = load i32, i32* @CX86_DIR0, align 4
  %51 = call zeroext i8 @getCx86(i32 %50)
  %52 = load i8*, i8** %3, align 8
  store i8 %51, i8* %52, align 1
  %53 = load i32, i32* @CX86_DIR1, align 4
  %54 = call zeroext i8 @getCx86(i32 %53)
  %55 = load i8*, i8** %4, align 8
  store i8 %54, i8* %55, align 1
  br label %56

56:                                               ; preds = %46, %45
  ret void
}

declare dso_local zeroext i8 @getCx86(i32) #1

declare dso_local i32 @setCx86(i32, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
