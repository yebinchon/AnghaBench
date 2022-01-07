; ModuleID = '/home/carl/AnghaBench/kphp-kdb/friend/extr_friend-data.c_remove_unused_cats.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/friend/extr_friend-data.c_remove_unused_cats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@P = common dso_local global i32* null, align 8
@CAT_FR_ALL = common dso_local global i32 0, align 4
@PL_M_CAT = common dso_local global i32 0, align 4
@PL_M_MASK = common dso_local global i32 0, align 4
@CAT_FR_FR = common dso_local global i32 0, align 4
@PL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @remove_unused_cats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @remove_unused_cats() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = load i32*, i32** @P, align 8
  store i32* %6, i32** %1, align 8
  %7 = load i32*, i32** @P, align 8
  store i32* %7, i32** %2, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %8

8:                                                ; preds = %67, %54, %41, %0
  %9 = load i32*, i32** %1, align 8
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, -1
  br i1 %11, label %12, label %16

12:                                               ; preds = %8
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @CAT_FR_ALL, align 4
  %15 = icmp ne i32 %13, %14
  br label %16

16:                                               ; preds = %12, %8
  %17 = phi i1 [ false, %8 ], [ %15, %12 ]
  br i1 %17, label %18, label %71

18:                                               ; preds = %16
  %19 = load i32*, i32** %1, align 8
  %20 = getelementptr inbounds i32, i32* %19, i32 1
  store i32* %20, i32** %1, align 8
  %21 = load i32, i32* %19, align 4
  store i32 %21, i32* %3, align 4
  %22 = load i32, i32* %3, align 4
  %23 = load i32, i32* @PL_M_CAT, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %67

26:                                               ; preds = %18
  %27 = load i32, i32* @PL_M_MASK, align 4
  %28 = load i32, i32* %3, align 4
  %29 = and i32 %28, %27
  store i32 %29, i32* %3, align 4
  %30 = load i32, i32* %3, align 4
  %31 = load i32, i32* @CAT_FR_ALL, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %37, label %33

33:                                               ; preds = %26
  %34 = load i32, i32* %3, align 4
  %35 = load i32, i32* @CAT_FR_FR, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %46

37:                                               ; preds = %33, %26
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* %3, align 4
  %40 = icmp sge i32 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %37
  br label %8

42:                                               ; preds = %37
  %43 = load i32, i32* %3, align 4
  %44 = load i32, i32* %5, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %5, align 4
  store i32 -1, i32* %4, align 4
  br label %63

46:                                               ; preds = %33
  %47 = load i32, i32* %3, align 4
  %48 = and i32 %47, 31
  %49 = shl i32 1, %48
  store i32 %49, i32* %3, align 4
  %50 = load i32, i32* %4, align 4
  %51 = load i32, i32* %3, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %46
  br label %8

55:                                               ; preds = %46
  %56 = load i32, i32* %3, align 4
  %57 = icmp eq i32 %56, 1
  br i1 %57, label %58, label %59

58:                                               ; preds = %55
  store i32 -1, i32* %3, align 4
  br label %59

59:                                               ; preds = %58, %55
  %60 = load i32, i32* %3, align 4
  %61 = load i32, i32* %4, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %4, align 4
  br label %63

63:                                               ; preds = %59, %42
  %64 = load i32*, i32** %1, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 -1
  %66 = load i32, i32* %65, align 4
  store i32 %66, i32* %3, align 4
  br label %67

67:                                               ; preds = %63, %18
  %68 = load i32, i32* %3, align 4
  %69 = load i32*, i32** %2, align 8
  %70 = getelementptr inbounds i32, i32* %69, i32 1
  store i32* %70, i32** %2, align 8
  store i32 %68, i32* %69, align 4
  br label %8

71:                                               ; preds = %16
  %72 = load i32*, i32** %2, align 8
  store i32 -1, i32* %72, align 4
  %73 = load i32*, i32** %2, align 8
  %74 = load i32*, i32** %1, align 8
  %75 = ptrtoint i32* %73 to i64
  %76 = ptrtoint i32* %74 to i64
  %77 = sub i64 %75, %76
  %78 = sdiv exact i64 %77, 4
  %79 = trunc i64 %78 to i32
  store i32 %79, i32* @PL, align 4
  %80 = load i32, i32* @PL, align 4
  ret i32 %80
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
