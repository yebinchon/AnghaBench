; ModuleID = '/home/carl/AnghaBench/kphp-kdb/friend/extr_friend-data.c_remove_unused_uids.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/friend/extr_friend-data.c_remove_unused_uids.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@P = common dso_local global i32* null, align 8
@PL_M_CAT = common dso_local global i32 0, align 4
@PL_M_MASK = common dso_local global i32 0, align 4
@PL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @remove_unused_uids to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @remove_unused_uids(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  store i32 %0, i32* %2, align 4
  %7 = load i32*, i32** @P, align 8
  store i32* %7, i32** %3, align 8
  %8 = load i32*, i32** @P, align 8
  store i32* %8, i32** %4, align 8
  br label %9

9:                                                ; preds = %59, %54, %31, %1
  %10 = load i32*, i32** %3, align 8
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, -1
  br i1 %12, label %13, label %63

13:                                               ; preds = %9
  %14 = load i32*, i32** %3, align 8
  %15 = getelementptr inbounds i32, i32* %14, i32 1
  store i32* %15, i32** %3, align 8
  %16 = load i32, i32* %14, align 4
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @PL_M_CAT, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %59, label %21

21:                                               ; preds = %13
  %22 = load i32, i32* @PL_M_MASK, align 4
  %23 = load i32, i32* %5, align 4
  %24 = and i32 %23, %22
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %5, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %21
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* %2, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %27, %21
  br label %9

32:                                               ; preds = %27
  %33 = load i32*, i32** @P, align 8
  store i32* %33, i32** %6, align 8
  br label %34

34:                                               ; preds = %47, %32
  %35 = load i32*, i32** %6, align 8
  %36 = load i32*, i32** %4, align 8
  %37 = icmp ult i32* %35, %36
  br i1 %37, label %38, label %50

38:                                               ; preds = %34
  %39 = load i32*, i32** %6, align 8
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @PL_M_MASK, align 4
  %42 = and i32 %40, %41
  %43 = load i32, i32* %5, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %38
  br label %50

46:                                               ; preds = %38
  br label %47

47:                                               ; preds = %46
  %48 = load i32*, i32** %6, align 8
  %49 = getelementptr inbounds i32, i32* %48, i32 1
  store i32* %49, i32** %6, align 8
  br label %34

50:                                               ; preds = %45, %34
  %51 = load i32*, i32** %6, align 8
  %52 = load i32*, i32** %4, align 8
  %53 = icmp ult i32* %51, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %50
  br label %9

55:                                               ; preds = %50
  %56 = load i32*, i32** %3, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 -1
  %58 = load i32, i32* %57, align 4
  store i32 %58, i32* %5, align 4
  br label %59

59:                                               ; preds = %55, %13
  %60 = load i32, i32* %5, align 4
  %61 = load i32*, i32** %4, align 8
  %62 = getelementptr inbounds i32, i32* %61, i32 1
  store i32* %62, i32** %4, align 8
  store i32 %60, i32* %61, align 4
  br label %9

63:                                               ; preds = %9
  %64 = load i32*, i32** %4, align 8
  store i32 -1, i32* %64, align 4
  %65 = load i32*, i32** %4, align 8
  %66 = load i32*, i32** @P, align 8
  %67 = ptrtoint i32* %65 to i64
  %68 = ptrtoint i32* %66 to i64
  %69 = sub i64 %67, %68
  %70 = sdiv exact i64 %69, 4
  %71 = trunc i64 %70 to i32
  store i32 %71, i32* @PL, align 4
  %72 = load i32, i32* @PL, align 4
  ret i32 %72
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
