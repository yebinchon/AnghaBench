; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/xmon/extr_ppc-opc.c_insert_bo.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/xmon/extr_ppc-opc.c_insert_bo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [27 x i8] c"invalid conditional option\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"invalid counter access\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i64, i32, i8**)* @insert_bo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @insert_bo(i64 %0, i64 %1, i32 %2, i8** %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8**, align 8
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  store i8** %3, i8*** %8, align 8
  %9 = load i64, i64* %6, align 8
  %10 = load i32, i32* %7, align 4
  %11 = call i32 @valid_bo(i64 %9, i32 %10, i32 0)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %4
  %14 = call i8* @_(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %15 = load i8**, i8*** %8, align 8
  store i8* %14, i8** %15, align 8
  br label %32

16:                                               ; preds = %4
  %17 = load i64, i64* %5, align 8
  %18 = call i32 @PPC_OP(i64 %17)
  %19 = icmp eq i32 %18, 19
  br i1 %19, label %20, label %31

20:                                               ; preds = %16
  %21 = load i64, i64* %5, align 8
  %22 = and i64 %21, 1024
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %20
  %25 = load i64, i64* %6, align 8
  %26 = and i64 %25, 4
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %24
  %29 = call i8* @_(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %30 = load i8**, i8*** %8, align 8
  store i8* %29, i8** %30, align 8
  br label %31

31:                                               ; preds = %28, %24, %20, %16
  br label %32

32:                                               ; preds = %31, %13
  %33 = load i64, i64* %5, align 8
  %34 = load i64, i64* %6, align 8
  %35 = and i64 %34, 31
  %36 = shl i64 %35, 21
  %37 = or i64 %33, %36
  ret i64 %37
}

declare dso_local i32 @valid_bo(i64, i32, i32) #1

declare dso_local i8* @_(i8*) #1

declare dso_local i32 @PPC_OP(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
