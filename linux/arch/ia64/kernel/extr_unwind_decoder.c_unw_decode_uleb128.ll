; ModuleID = '/home/carl/AnghaBench/linux/arch/ia64/kernel/extr_unwind_decoder.c_unw_decode_uleb128.c'
source_filename = "/home/carl/AnghaBench/linux/arch/ia64/kernel/extr_unwind_decoder.c_unw_decode_uleb128.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**)* @unw_decode_uleb128 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @unw_decode_uleb128(i8** %0) #0 {
  %2 = alloca i8**, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store i8** %0, i8*** %2, align 8
  store i32 0, i32* %3, align 4
  store i32 0, i32* %5, align 4
  %7 = load i8**, i8*** %2, align 8
  %8 = load i8*, i8** %7, align 8
  store i8* %8, i8** %6, align 8
  br label %9

9:                                                ; preds = %1, %24
  %10 = load i8*, i8** %6, align 8
  %11 = getelementptr inbounds i8, i8* %10, i32 1
  store i8* %11, i8** %6, align 8
  %12 = load i8, i8* %10, align 1
  %13 = zext i8 %12 to i32
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = and i32 %14, 127
  %16 = load i32, i32* %3, align 4
  %17 = shl i32 %15, %16
  %18 = load i32, i32* %5, align 4
  %19 = or i32 %18, %17
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %4, align 4
  %21 = and i32 %20, 128
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %9
  br label %27

24:                                               ; preds = %9
  %25 = load i32, i32* %3, align 4
  %26 = add i32 %25, 7
  store i32 %26, i32* %3, align 4
  br label %9

27:                                               ; preds = %23
  %28 = load i8*, i8** %6, align 8
  %29 = load i8**, i8*** %2, align 8
  store i8* %28, i8** %29, align 8
  %30 = load i32, i32* %5, align 4
  ret i32 %30
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
