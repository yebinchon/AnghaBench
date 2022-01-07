; ModuleID = '/home/carl/AnghaBench/git/extr_path.c_calc_shared_perm.c'
source_filename = "/home/carl/AnghaBench/git/extr_path.c_calc_shared_perm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@S_IWUSR = common dso_local global i32 0, align 4
@S_IXUSR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @calc_shared_perm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @calc_shared_perm(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = call i32 (...) @get_shared_repository()
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %6, label %9

6:                                                ; preds = %1
  %7 = call i32 (...) @get_shared_repository()
  %8 = sub nsw i32 0, %7
  store i32 %8, i32* %3, align 4
  br label %11

9:                                                ; preds = %1
  %10 = call i32 (...) @get_shared_repository()
  store i32 %10, i32* %3, align 4
  br label %11

11:                                               ; preds = %9, %6
  %12 = load i32, i32* %2, align 4
  %13 = load i32, i32* @S_IWUSR, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %11
  %17 = load i32, i32* %3, align 4
  %18 = and i32 %17, -147
  store i32 %18, i32* %3, align 4
  br label %19

19:                                               ; preds = %16, %11
  %20 = load i32, i32* %2, align 4
  %21 = load i32, i32* @S_IXUSR, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %19
  %25 = load i32, i32* %3, align 4
  %26 = and i32 %25, 292
  %27 = ashr i32 %26, 2
  %28 = load i32, i32* %3, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %3, align 4
  br label %30

30:                                               ; preds = %24, %19
  %31 = call i32 (...) @get_shared_repository()
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %30
  %34 = load i32, i32* %2, align 4
  %35 = and i32 %34, -512
  %36 = load i32, i32* %3, align 4
  %37 = or i32 %35, %36
  store i32 %37, i32* %2, align 4
  br label %42

38:                                               ; preds = %30
  %39 = load i32, i32* %3, align 4
  %40 = load i32, i32* %2, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %2, align 4
  br label %42

42:                                               ; preds = %38, %33
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local i32 @get_shared_repository(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
