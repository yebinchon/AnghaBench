; ModuleID = '/home/carl/AnghaBench/lab/engine/code/cgame/extr_cg_info.c_CG_DrawLoadingIcons.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/cgame/extr_cg_info.c_CG_DrawLoadingIcons.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@loadingPlayerIconCount = common dso_local global i32 0, align 4
@loadingPlayerIcons = common dso_local global i32* null, align 8
@loadingItemIconCount = common dso_local global i32 0, align 4
@loadingItemIcons = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @CG_DrawLoadingIcons to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CG_DrawLoadingIcons() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  br label %4

4:                                                ; preds = %20, %0
  %5 = load i32, i32* %1, align 4
  %6 = load i32, i32* @loadingPlayerIconCount, align 4
  %7 = icmp slt i32 %5, %6
  br i1 %7, label %8, label %23

8:                                                ; preds = %4
  %9 = load i32, i32* %1, align 4
  %10 = mul nsw i32 %9, 78
  %11 = add nsw i32 16, %10
  store i32 %11, i32* %2, align 4
  store i32 284, i32* %3, align 4
  %12 = load i32, i32* %2, align 4
  %13 = load i32, i32* %3, align 4
  %14 = load i32*, i32** @loadingPlayerIcons, align 8
  %15 = load i32, i32* %1, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32, i32* %14, i64 %16
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @CG_DrawPic(i32 %12, i32 %13, i32 64, i32 64, i32 %18)
  br label %20

20:                                               ; preds = %8
  %21 = load i32, i32* %1, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %1, align 4
  br label %4

23:                                               ; preds = %4
  store i32 0, i32* %1, align 4
  br label %24

24:                                               ; preds = %47, %23
  %25 = load i32, i32* %1, align 4
  %26 = load i32, i32* @loadingItemIconCount, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %50

28:                                               ; preds = %24
  store i32 360, i32* %3, align 4
  %29 = load i32, i32* %1, align 4
  %30 = icmp sge i32 %29, 13
  br i1 %30, label %31, label %34

31:                                               ; preds = %28
  %32 = load i32, i32* %3, align 4
  %33 = add nsw i32 %32, 40
  store i32 %33, i32* %3, align 4
  br label %34

34:                                               ; preds = %31, %28
  %35 = load i32, i32* %1, align 4
  %36 = srem i32 %35, 13
  %37 = mul nsw i32 %36, 48
  %38 = add nsw i32 16, %37
  store i32 %38, i32* %2, align 4
  %39 = load i32, i32* %2, align 4
  %40 = load i32, i32* %3, align 4
  %41 = load i32*, i32** @loadingItemIcons, align 8
  %42 = load i32, i32* %1, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @CG_DrawPic(i32 %39, i32 %40, i32 32, i32 32, i32 %45)
  br label %47

47:                                               ; preds = %34
  %48 = load i32, i32* %1, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %1, align 4
  br label %24

50:                                               ; preds = %24
  ret void
}

declare dso_local i32 @CG_DrawPic(i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
