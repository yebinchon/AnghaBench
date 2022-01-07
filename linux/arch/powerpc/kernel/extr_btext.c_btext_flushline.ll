; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_btext.c_btext_flushline.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_btext.c_btext_flushline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@g_loc_Y = common dso_local global i32 0, align 4
@dispDeviceRect = common dso_local global i32* null, align 8
@dispDeviceDepth = common dso_local global i32 0, align 4
@dispDeviceRowBytes = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @btext_flushline() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = load i32, i32* @g_loc_Y, align 4
  %7 = shl i32 %6, 4
  %8 = call i64 @calc_base(i32 0, i32 %7)
  %9 = inttoptr i64 %8 to i32*
  store i32* %9, i32** %1, align 8
  %10 = load i32*, i32** @dispDeviceRect, align 8
  %11 = getelementptr inbounds i32, i32* %10, i64 2
  %12 = load i32, i32* %11, align 4
  %13 = load i32*, i32** @dispDeviceRect, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 0
  %15 = load i32, i32* %14, align 4
  %16 = sub nsw i32 %12, %15
  %17 = load i32, i32* @dispDeviceDepth, align 4
  %18 = ashr i32 %17, 3
  %19 = mul nsw i32 %16, %18
  %20 = ashr i32 %19, 2
  %21 = sext i32 %20 to i64
  store i64 %21, i64* %2, align 8
  store i32 0, i32* %3, align 4
  br label %22

22:                                               ; preds = %45, %0
  %23 = load i32, i32* %3, align 4
  %24 = icmp slt i32 %23, 16
  br i1 %24, label %25, label %48

25:                                               ; preds = %22
  %26 = load i32*, i32** %1, align 8
  store i32* %26, i32** %5, align 8
  %27 = load i64, i64* %2, align 8
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* %4, align 4
  br label %29

29:                                               ; preds = %36, %25
  %30 = load i32, i32* %4, align 4
  %31 = icmp sgt i32 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %29
  %33 = load i32*, i32** %5, align 8
  call void asm sideeffect "dcbst 0,$0", "r,~{dirflag},~{fpsr},~{flags}"(i32* %33) #2, !srcloc !2
  %34 = load i32*, i32** %5, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 8
  store i32* %35, i32** %5, align 8
  br label %36

36:                                               ; preds = %32
  %37 = load i32, i32* %4, align 4
  %38 = sub nsw i32 %37, 8
  store i32 %38, i32* %4, align 4
  br label %29

39:                                               ; preds = %29
  %40 = load i32, i32* @dispDeviceRowBytes, align 4
  %41 = ashr i32 %40, 2
  %42 = load i32*, i32** %1, align 8
  %43 = sext i32 %41 to i64
  %44 = getelementptr inbounds i32, i32* %42, i64 %43
  store i32* %44, i32** %1, align 8
  br label %45

45:                                               ; preds = %39
  %46 = load i32, i32* %3, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %3, align 4
  br label %22

48:                                               ; preds = %22
  call void asm sideeffect "sync", "~{memory},~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !3
  ret void
}

declare dso_local i64 @calc_base(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 577}
!3 = !{i32 685}
