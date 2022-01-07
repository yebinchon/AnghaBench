; ModuleID = '/home/carl/AnghaBench/kphp-kdb/mutual-friends/extr_maccub.c_chg_free.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/mutual-friends/extr_maccub.c_chg_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @chg_free(i32** %0) #0 {
  %2 = alloca i32**, align 8
  %3 = alloca i32*, align 8
  store i32** %0, i32*** %2, align 8
  %4 = load i32**, i32*** %2, align 8
  %5 = load i32*, i32** %4, align 8
  store i32* %5, i32** %3, align 8
  %6 = load i32*, i32** %3, align 8
  %7 = ptrtoint i32* %6 to i64
  %8 = icmp slt i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %38

10:                                               ; preds = %1
  %11 = load i32*, i32** %3, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %13, label %37

13:                                               ; preds = %10
  %14 = load i32*, i32** %3, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %26

18:                                               ; preds = %13
  %19 = load i32*, i32** %3, align 8
  %20 = bitcast i32* %19 to %struct.TYPE_2__*
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @trp_free(i32 %22)
  %24 = load i32*, i32** %3, align 8
  %25 = call i32 @qfree(i32* %24, i32 4)
  br label %36

26:                                               ; preds = %13
  %27 = load i32*, i32** %3, align 8
  %28 = load i32*, i32** %3, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 0
  %30 = load i32, i32* %29, align 4
  %31 = add nsw i32 %30, 1
  %32 = sext i32 %31 to i64
  %33 = mul i64 4, %32
  %34 = trunc i64 %33 to i32
  %35 = call i32 @qfree(i32* %27, i32 %34)
  br label %36

36:                                               ; preds = %26, %18
  br label %37

37:                                               ; preds = %36, %10
  br label %38

38:                                               ; preds = %37, %9
  %39 = load i32**, i32*** %2, align 8
  store i32* null, i32** %39, align 8
  ret void
}

declare dso_local i32 @trp_free(i32) #1

declare dso_local i32 @qfree(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
