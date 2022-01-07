; ModuleID = '/home/carl/AnghaBench/kphp-kdb/vkext/extr_vkext.c_utf8_to_win_char.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/vkext/extr_vkext.c_utf8_to_win_char.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@utf8_to_win_convert_0x400 = common dso_local global i32* null, align 8
@utf8_to_win_convert_0x2000 = common dso_local global i32* null, align 8
@utf8_to_win_convert_0xff00 = common dso_local global i32* null, align 8
@utf8_to_win_convert_0x2100 = common dso_local global i32* null, align 8
@utf8_to_win_convert_0x000 = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @utf8_to_win_char(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = icmp slt i32 %4, 128
  br i1 %5, label %6, label %8

6:                                                ; preds = %1
  %7 = load i32, i32* %3, align 4
  store i32 %7, i32* %2, align 4
  br label %57

8:                                                ; preds = %1
  %9 = load i32, i32* %3, align 4
  %10 = icmp eq i32 %9, 8238
  br i1 %10, label %17, label %11

11:                                               ; preds = %8
  %12 = load i32, i32* %3, align 4
  %13 = icmp eq i32 %12, 8236
  br i1 %13, label %17, label %14

14:                                               ; preds = %11
  %15 = load i32, i32* %3, align 4
  %16 = icmp eq i32 %15, 8235
  br i1 %16, label %17, label %18

17:                                               ; preds = %14, %11, %8
  store i32 218, i32* %2, align 4
  br label %57

18:                                               ; preds = %14
  %19 = load i32, i32* %3, align 4
  %20 = and i32 %19, -256
  switch i32 %20, label %56 [
    i32 1024, label %21
    i32 8192, label %28
    i32 65280, label %35
    i32 8448, label %42
    i32 0, label %49
  ]

21:                                               ; preds = %18
  %22 = load i32*, i32** @utf8_to_win_convert_0x400, align 8
  %23 = load i32, i32* %3, align 4
  %24 = and i32 %23, 255
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %22, i64 %25
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %2, align 4
  br label %57

28:                                               ; preds = %18
  %29 = load i32*, i32** @utf8_to_win_convert_0x2000, align 8
  %30 = load i32, i32* %3, align 4
  %31 = and i32 %30, 255
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %29, i64 %32
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %2, align 4
  br label %57

35:                                               ; preds = %18
  %36 = load i32*, i32** @utf8_to_win_convert_0xff00, align 8
  %37 = load i32, i32* %3, align 4
  %38 = and i32 %37, 255
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %36, i64 %39
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %2, align 4
  br label %57

42:                                               ; preds = %18
  %43 = load i32*, i32** @utf8_to_win_convert_0x2100, align 8
  %44 = load i32, i32* %3, align 4
  %45 = and i32 %44, 255
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %43, i64 %46
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* %2, align 4
  br label %57

49:                                               ; preds = %18
  %50 = load i32*, i32** @utf8_to_win_convert_0x000, align 8
  %51 = load i32, i32* %3, align 4
  %52 = and i32 %51, 255
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %50, i64 %53
  %55 = load i32, i32* %54, align 4
  store i32 %55, i32* %2, align 4
  br label %57

56:                                               ; preds = %18
  store i32 -1, i32* %2, align 4
  br label %57

57:                                               ; preds = %56, %49, %42, %35, %28, %21, %17, %6
  %58 = load i32, i32* %2, align 4
  ret i32 %58
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
