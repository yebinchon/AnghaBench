; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/xmon/extr_ppc-opc.c_insert_sprg.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/xmon/extr_ppc-opc.c_insert_sprg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ALLOW8_SPRG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"invalid sprg number\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i64, i32, i8**)* @insert_sprg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @insert_sprg(i64 %0, i64 %1, i32 %2, i8** %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8**, align 8
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  store i8** %3, i8*** %8, align 8
  %9 = load i64, i64* %6, align 8
  %10 = icmp sgt i64 %9, 7
  br i1 %10, label %19, label %11

11:                                               ; preds = %4
  %12 = load i64, i64* %6, align 8
  %13 = icmp sgt i64 %12, 3
  br i1 %13, label %14, label %22

14:                                               ; preds = %11
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* @ALLOW8_SPRG, align 4
  %17 = and i32 %15, %16
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %14, %4
  %20 = call i8* @_(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %21 = load i8**, i8*** %8, align 8
  store i8* %20, i8** %21, align 8
  br label %22

22:                                               ; preds = %19, %14, %11
  %23 = load i64, i64* %6, align 8
  %24 = icmp sle i64 %23, 3
  br i1 %24, label %29, label %25

25:                                               ; preds = %22
  %26 = load i64, i64* %5, align 8
  %27 = and i64 %26, 256
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %25, %22
  %30 = load i64, i64* %6, align 8
  %31 = or i64 %30, 16
  store i64 %31, i64* %6, align 8
  br label %32

32:                                               ; preds = %29, %25
  %33 = load i64, i64* %5, align 8
  %34 = load i64, i64* %6, align 8
  %35 = and i64 %34, 23
  %36 = shl i64 %35, 16
  %37 = or i64 %33, %36
  ret i64 %37
}

declare dso_local i8* @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
