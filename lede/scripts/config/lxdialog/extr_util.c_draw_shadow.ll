; ModuleID = '/home/carl/AnghaBench/lede/scripts/config/lxdialog/extr_util.c_draw_shadow.c'
source_filename = "/home/carl/AnghaBench/lede/scripts/config/lxdialog/extr_util.c_draw_shadow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@dlg = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@A_CHARTEXT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @draw_shadow(i32* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %12 = call i64 (...) @has_colors()
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %74

14:                                               ; preds = %5
  %15 = load i32*, i32** %6, align 8
  %16 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @dlg, i32 0, i32 0, i32 0), align 4
  %17 = call i32 @wattrset(i32* %15, i32 %16)
  %18 = load i32*, i32** %6, align 8
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* %9, align 4
  %21 = add nsw i32 %19, %20
  %22 = load i32, i32* %8, align 4
  %23 = add nsw i32 %22, 2
  %24 = call i32 @wmove(i32* %18, i32 %21, i32 %23)
  store i32 0, i32* %11, align 4
  br label %25

25:                                               ; preds = %36, %14
  %26 = load i32, i32* %11, align 4
  %27 = load i32, i32* %10, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %39

29:                                               ; preds = %25
  %30 = load i32*, i32** %6, align 8
  %31 = load i32*, i32** %6, align 8
  %32 = call i32 @winch(i32* %31)
  %33 = load i32, i32* @A_CHARTEXT, align 4
  %34 = and i32 %32, %33
  %35 = call i32 @waddch(i32* %30, i32 %34)
  br label %36

36:                                               ; preds = %29
  %37 = load i32, i32* %11, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %11, align 4
  br label %25

39:                                               ; preds = %25
  %40 = load i32, i32* %7, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %11, align 4
  br label %42

42:                                               ; preds = %68, %39
  %43 = load i32, i32* %11, align 4
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* %9, align 4
  %46 = add nsw i32 %44, %45
  %47 = add nsw i32 %46, 1
  %48 = icmp slt i32 %43, %47
  br i1 %48, label %49, label %71

49:                                               ; preds = %42
  %50 = load i32*, i32** %6, align 8
  %51 = load i32, i32* %11, align 4
  %52 = load i32, i32* %8, align 4
  %53 = load i32, i32* %10, align 4
  %54 = add nsw i32 %52, %53
  %55 = call i32 @wmove(i32* %50, i32 %51, i32 %54)
  %56 = load i32*, i32** %6, align 8
  %57 = load i32*, i32** %6, align 8
  %58 = call i32 @winch(i32* %57)
  %59 = load i32, i32* @A_CHARTEXT, align 4
  %60 = and i32 %58, %59
  %61 = call i32 @waddch(i32* %56, i32 %60)
  %62 = load i32*, i32** %6, align 8
  %63 = load i32*, i32** %6, align 8
  %64 = call i32 @winch(i32* %63)
  %65 = load i32, i32* @A_CHARTEXT, align 4
  %66 = and i32 %64, %65
  %67 = call i32 @waddch(i32* %62, i32 %66)
  br label %68

68:                                               ; preds = %49
  %69 = load i32, i32* %11, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %11, align 4
  br label %42

71:                                               ; preds = %42
  %72 = load i32*, i32** %6, align 8
  %73 = call i32 @wnoutrefresh(i32* %72)
  br label %74

74:                                               ; preds = %71, %5
  ret void
}

declare dso_local i64 @has_colors(...) #1

declare dso_local i32 @wattrset(i32*, i32) #1

declare dso_local i32 @wmove(i32*, i32, i32) #1

declare dso_local i32 @waddch(i32*, i32) #1

declare dso_local i32 @winch(i32*) #1

declare dso_local i32 @wnoutrefresh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
