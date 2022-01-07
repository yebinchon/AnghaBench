; ModuleID = '/home/carl/AnghaBench/lab/engine/code/sys/extr_sys_win32.c_Sys_RandomBytes.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/sys/extr_sys_win32.c_Sys_RandomBytes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PROV_RSA_FULL = common dso_local global i32 0, align 4
@CRYPT_VERIFYCONTEXT = common dso_local global i32 0, align 4
@qfalse = common dso_local global i32 0, align 4
@qtrue = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @Sys_RandomBytes(i32* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* @PROV_RSA_FULL, align 4
  %8 = load i32, i32* @CRYPT_VERIFYCONTEXT, align 4
  %9 = call i32 @CryptAcquireContext(i32* %6, i32* null, i32* null, i32 %7, i32 %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* @qfalse, align 4
  store i32 %12, i32* %3, align 4
  br label %27

13:                                               ; preds = %2
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* %5, align 4
  %16 = load i32*, i32** %4, align 8
  %17 = call i32 @CryptGenRandom(i32 %14, i32 %15, i32* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %13
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @CryptReleaseContext(i32 %20, i32 0)
  %22 = load i32, i32* @qfalse, align 4
  store i32 %22, i32* %3, align 4
  br label %27

23:                                               ; preds = %13
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @CryptReleaseContext(i32 %24, i32 0)
  %26 = load i32, i32* @qtrue, align 4
  store i32 %26, i32* %3, align 4
  br label %27

27:                                               ; preds = %23, %19, %11
  %28 = load i32, i32* %3, align 4
  ret i32 %28
}

declare dso_local i32 @CryptAcquireContext(i32*, i32*, i32*, i32, i32) #1

declare dso_local i32 @CryptGenRandom(i32, i32, i32*) #1

declare dso_local i32 @CryptReleaseContext(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
