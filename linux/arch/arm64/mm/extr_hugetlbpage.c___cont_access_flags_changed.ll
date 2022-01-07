; ModuleID = '/home/carl/AnghaBench/linux/arch/arm64/mm/extr_hugetlbpage.c___cont_access_flags_changed.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm64/mm/extr_hugetlbpage.c___cont_access_flags_changed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32)* @__cont_access_flags_changed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__cont_access_flags_changed(i32* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %6, align 4
  %11 = call i64 @pte_write(i32 %10)
  %12 = load i32*, i32** %5, align 8
  %13 = call i32 @huge_ptep_get(i32* %12)
  %14 = call i64 @pte_write(i32 %13)
  %15 = icmp ne i64 %11, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %46

17:                                               ; preds = %3
  store i32 0, i32* %8, align 4
  br label %18

18:                                               ; preds = %42, %17
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* %7, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %45

22:                                               ; preds = %18
  %23 = load i32*, i32** %5, align 8
  %24 = load i32, i32* %8, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = call i32 @huge_ptep_get(i32* %26)
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %6, align 4
  %29 = call i64 @pte_dirty(i32 %28)
  %30 = load i32, i32* %9, align 4
  %31 = call i64 @pte_dirty(i32 %30)
  %32 = icmp ne i64 %29, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %22
  store i32 1, i32* %4, align 4
  br label %46

34:                                               ; preds = %22
  %35 = load i32, i32* %6, align 4
  %36 = call i64 @pte_young(i32 %35)
  %37 = load i32, i32* %9, align 4
  %38 = call i64 @pte_young(i32 %37)
  %39 = icmp ne i64 %36, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %34
  store i32 1, i32* %4, align 4
  br label %46

41:                                               ; preds = %34
  br label %42

42:                                               ; preds = %41
  %43 = load i32, i32* %8, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %8, align 4
  br label %18

45:                                               ; preds = %18
  store i32 0, i32* %4, align 4
  br label %46

46:                                               ; preds = %45, %40, %33, %16
  %47 = load i32, i32* %4, align 4
  ret i32 %47
}

declare dso_local i64 @pte_write(i32) #1

declare dso_local i32 @huge_ptep_get(i32*) #1

declare dso_local i64 @pte_dirty(i32) #1

declare dso_local i64 @pte_young(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
