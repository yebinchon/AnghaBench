; ModuleID = '/home/carl/AnghaBench/linux/arch/alpha/boot/extr_main.c_openboot.c'
source_filename = "/home/carl/AnghaBench/linux/arch/alpha/boot/extr_main.c_openboot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ENV_BOOTED_DEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 ()* @openboot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @openboot() #0 {
  %1 = alloca i64, align 8
  %2 = alloca [256 x i8], align 16
  %3 = alloca i64, align 8
  %4 = load i32, i32* @ENV_BOOTED_DEV, align 4
  %5 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0
  %6 = call i64 @callback_getenv(i32 %4, i8* %5, i32 255)
  store i64 %6, i64* %3, align 8
  %7 = load i64, i64* %3, align 8
  %8 = icmp slt i64 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %0
  %10 = load i64, i64* %3, align 8
  store i64 %10, i64* %1, align 8
  br label %16

11:                                               ; preds = %0
  %12 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0
  %13 = load i64, i64* %3, align 8
  %14 = and i64 %13, 255
  %15 = call i64 @callback_open(i8* %12, i64 %14)
  store i64 %15, i64* %1, align 8
  br label %16

16:                                               ; preds = %11, %9
  %17 = load i64, i64* %1, align 8
  ret i64 %17
}

declare dso_local i64 @callback_getenv(i32, i8*, i32) #1

declare dso_local i64 @callback_open(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
