; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/math-emu/extr_sp_2008class.c_ieee754sp_2008class.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/math-emu/extr_sp_2008class.c_ieee754sp_2008class.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.ieee754sp = type { i32 }

@COMPXSP = common dso_local global i32 0, align 4
@EXPLODEXSP = common dso_local global i32 0, align 4
@xc = common dso_local global i32 0, align 4
@xs = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"Unknown class: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ieee754sp_2008class(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %union.ieee754sp, align 4
  %4 = getelementptr inbounds %union.ieee754sp, %union.ieee754sp* %3, i32 0, i32 0
  store i32 %0, i32* %4, align 4
  %5 = load i32, i32* @COMPXSP, align 4
  %6 = load i32, i32* @EXPLODEXSP, align 4
  %7 = load i32, i32* @xc, align 4
  switch i32 %7, label %34 [
    i32 129, label %8
    i32 130, label %9
    i32 132, label %10
    i32 131, label %16
    i32 133, label %22
    i32 128, label %28
  ]

8:                                                ; preds = %1
  store i32 1, i32* %2, align 4
  br label %37

9:                                                ; preds = %1
  store i32 2, i32* %2, align 4
  br label %37

10:                                               ; preds = %1
  %11 = load i32, i32* @xs, align 4
  %12 = icmp ne i32 %11, 0
  %13 = zext i1 %12 to i64
  %14 = select i1 %12, i32 0, i32 4
  %15 = shl i32 4, %14
  store i32 %15, i32* %2, align 4
  br label %37

16:                                               ; preds = %1
  %17 = load i32, i32* @xs, align 4
  %18 = icmp ne i32 %17, 0
  %19 = zext i1 %18 to i64
  %20 = select i1 %18, i32 0, i32 4
  %21 = shl i32 8, %20
  store i32 %21, i32* %2, align 4
  br label %37

22:                                               ; preds = %1
  %23 = load i32, i32* @xs, align 4
  %24 = icmp ne i32 %23, 0
  %25 = zext i1 %24 to i64
  %26 = select i1 %24, i32 0, i32 4
  %27 = shl i32 16, %26
  store i32 %27, i32* %2, align 4
  br label %37

28:                                               ; preds = %1
  %29 = load i32, i32* @xs, align 4
  %30 = icmp ne i32 %29, 0
  %31 = zext i1 %30 to i64
  %32 = select i1 %30, i32 0, i32 4
  %33 = shl i32 32, %32
  store i32 %33, i32* %2, align 4
  br label %37

34:                                               ; preds = %1
  %35 = load i32, i32* @xc, align 4
  %36 = call i32 @pr_err(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %35)
  store i32 0, i32* %2, align 4
  br label %37

37:                                               ; preds = %34, %28, %22, %16, %10, %9, %8
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

declare dso_local i32 @pr_err(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
