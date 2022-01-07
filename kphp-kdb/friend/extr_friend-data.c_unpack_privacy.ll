; ModuleID = '/home/carl/AnghaBench/kphp-kdb/friend/extr_friend-data.c_unpack_privacy.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/friend/extr_friend-data.c_unpack_privacy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@P = common dso_local global i32* null, align 8
@MAX_PRIVACY_LEN = common dso_local global i32 0, align 4
@PL_M_CAT = common dso_local global i32 0, align 4
@PL_M_MASK = common dso_local global i32 0, align 4
@PL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @unpack_privacy(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load i32*, i32** %3, align 8
  %11 = load i32, i32* %4, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds i32, i32* %10, i64 %12
  store i32* %13, i32** %5, align 8
  %14 = load i32*, i32** @P, align 8
  store i32* %14, i32** %6, align 8
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @MAX_PRIVACY_LEN, align 4
  %17 = icmp sle i32 %15, %16
  %18 = zext i1 %17 to i32
  %19 = call i32 @assert(i32 %18)
  br label %20

20:                                               ; preds = %82, %57, %53, %41, %2
  %21 = load i32*, i32** %3, align 8
  %22 = load i32*, i32** %5, align 8
  %23 = icmp ult i32* %21, %22
  br i1 %23, label %24, label %83

24:                                               ; preds = %20
  %25 = load i32*, i32** %3, align 8
  %26 = getelementptr inbounds i32, i32* %25, i32 1
  store i32* %26, i32** %3, align 8
  %27 = load i32, i32* %25, align 4
  store i32 %27, i32* %7, align 4
  %28 = load i32*, i32** %6, align 8
  %29 = load i32*, i32** @P, align 8
  %30 = load i32, i32* @MAX_PRIVACY_LEN, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  %33 = getelementptr inbounds i32, i32* %32, i64 -32
  %34 = icmp ult i32* %28, %33
  %35 = zext i1 %34 to i32
  %36 = call i32 @assert(i32 %35)
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* @PL_M_CAT, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %45, label %41

41:                                               ; preds = %24
  %42 = load i32, i32* %7, align 4
  %43 = load i32*, i32** %6, align 8
  %44 = getelementptr inbounds i32, i32* %43, i32 1
  store i32* %44, i32** %6, align 8
  store i32 %42, i32* %43, align 4
  br label %20

45:                                               ; preds = %24
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* @PL_M_MASK, align 4
  %48 = xor i32 %47, -1
  %49 = and i32 %46, %48
  store i32 %49, i32* %8, align 4
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* @PL_M_MASK, align 4
  %52 = and i32 %50, %51
  switch i32 %52, label %61 [
    i32 130, label %53
    i32 129, label %53
    i32 128, label %57
  ]

53:                                               ; preds = %45, %45
  %54 = load i32, i32* %7, align 4
  %55 = load i32*, i32** %6, align 8
  %56 = getelementptr inbounds i32, i32* %55, i32 1
  store i32* %56, i32** %6, align 8
  store i32 %54, i32* %55, align 4
  br label %20

57:                                               ; preds = %45
  %58 = load i32, i32* %8, align 4
  %59 = load i32*, i32** %6, align 8
  %60 = getelementptr inbounds i32, i32* %59, i32 1
  store i32* %60, i32** %6, align 8
  store i32 %58, i32* %59, align 4
  br label %20

61:                                               ; preds = %45
  store i32 0, i32* %9, align 4
  br label %62

62:                                               ; preds = %79, %61
  %63 = load i32, i32* %9, align 4
  %64 = icmp slt i32 %63, 30
  br i1 %64, label %65, label %82

65:                                               ; preds = %62
  %66 = load i32, i32* %7, align 4
  %67 = and i32 %66, 1
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %76

69:                                               ; preds = %65
  %70 = load i32, i32* %8, align 4
  %71 = load i32, i32* %9, align 4
  %72 = add nsw i32 %70, %71
  %73 = add nsw i32 %72, 1
  %74 = load i32*, i32** %6, align 8
  %75 = getelementptr inbounds i32, i32* %74, i32 1
  store i32* %75, i32** %6, align 8
  store i32 %73, i32* %74, align 4
  br label %76

76:                                               ; preds = %69, %65
  %77 = load i32, i32* %7, align 4
  %78 = ashr i32 %77, 1
  store i32 %78, i32* %7, align 4
  br label %79

79:                                               ; preds = %76
  %80 = load i32, i32* %9, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %9, align 4
  br label %62

82:                                               ; preds = %62
  br label %20

83:                                               ; preds = %20
  %84 = load i32*, i32** %6, align 8
  store i32 -1, i32* %84, align 4
  %85 = load i32*, i32** %6, align 8
  %86 = load i32*, i32** @P, align 8
  %87 = ptrtoint i32* %85 to i64
  %88 = ptrtoint i32* %86 to i64
  %89 = sub i64 %87, %88
  %90 = sdiv exact i64 %89, 4
  %91 = trunc i64 %90 to i32
  store i32 %91, i32* @PL, align 4
  %92 = load i32, i32* @PL, align 4
  ret i32 %92
}

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
