; ModuleID = '/home/carl/AnghaBench/goaccess/src/extr_color.c_add_default_colors.c'
source_filename = "/home/carl/AnghaBench/goaccess/src/extr_color.c_add_default_colors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@COLORS = common dso_local global i32 0, align 4
@nocolors = common dso_local global i32 0, align 4
@conf = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@MONOKAI = common dso_local global i64 0, align 8
@colors256_monokai = common dso_local global i32 0, align 4
@STD_GREEN = common dso_local global i64 0, align 8
@colors256_green = common dso_local global i32 0, align 4
@colors256_mono = common dso_local global i32 0, align 4
@colors8_green = common dso_local global i32 0, align 4
@colors8_mono = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @add_default_colors to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_default_colors() #0 {
  %1 = load i32, i32* @COLORS, align 4
  %2 = icmp slt i32 %1, 8
  br i1 %2, label %3, label %8

3:                                                ; preds = %0
  %4 = load i32, i32* @nocolors, align 4
  %5 = load i32, i32* @nocolors, align 4
  %6 = call i32 @ARRAY_SIZE(i32 %5)
  %7 = call i32 @parse_colors(i32 %4, i32 %6)
  br label %8

8:                                                ; preds = %3, %0
  %9 = load i32, i32* @COLORS, align 4
  %10 = icmp eq i32 %9, 256
  br i1 %10, label %11, label %23

11:                                               ; preds = %8
  %12 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @conf, i32 0, i32 0), align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %11
  %15 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @conf, i32 0, i32 0), align 8
  %16 = load i64, i64* @MONOKAI, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %23

18:                                               ; preds = %14, %11
  %19 = load i32, i32* @colors256_monokai, align 4
  %20 = load i32, i32* @colors256_monokai, align 4
  %21 = call i32 @ARRAY_SIZE(i32 %20)
  %22 = call i32 @parse_colors(i32 %19, i32 %21)
  br label %42

23:                                               ; preds = %14, %8
  %24 = load i32, i32* @COLORS, align 4
  %25 = icmp sgt i32 %24, 16
  br i1 %25, label %26, label %41

26:                                               ; preds = %23
  %27 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @conf, i32 0, i32 0), align 8
  %28 = load i64, i64* @STD_GREEN, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %35

30:                                               ; preds = %26
  %31 = load i32, i32* @colors256_green, align 4
  %32 = load i32, i32* @colors256_green, align 4
  %33 = call i32 @ARRAY_SIZE(i32 %32)
  %34 = call i32 @parse_colors(i32 %31, i32 %33)
  br label %40

35:                                               ; preds = %26
  %36 = load i32, i32* @colors256_mono, align 4
  %37 = load i32, i32* @colors256_mono, align 4
  %38 = call i32 @ARRAY_SIZE(i32 %37)
  %39 = call i32 @parse_colors(i32 %36, i32 %38)
  br label %40

40:                                               ; preds = %35, %30
  br label %41

41:                                               ; preds = %40, %23
  br label %42

42:                                               ; preds = %41, %18
  %43 = load i32, i32* @COLORS, align 4
  %44 = icmp sge i32 %43, 8
  br i1 %44, label %45, label %63

45:                                               ; preds = %42
  %46 = load i32, i32* @COLORS, align 4
  %47 = icmp sle i32 %46, 16
  br i1 %47, label %48, label %63

48:                                               ; preds = %45
  %49 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @conf, i32 0, i32 0), align 8
  %50 = load i64, i64* @STD_GREEN, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %57

52:                                               ; preds = %48
  %53 = load i32, i32* @colors8_green, align 4
  %54 = load i32, i32* @colors8_green, align 4
  %55 = call i32 @ARRAY_SIZE(i32 %54)
  %56 = call i32 @parse_colors(i32 %53, i32 %55)
  br label %62

57:                                               ; preds = %48
  %58 = load i32, i32* @colors8_mono, align 4
  %59 = load i32, i32* @colors8_mono, align 4
  %60 = call i32 @ARRAY_SIZE(i32 %59)
  %61 = call i32 @parse_colors(i32 %58, i32 %60)
  br label %62

62:                                               ; preds = %57, %52
  br label %63

63:                                               ; preds = %62, %45, %42
  ret void
}

declare dso_local i32 @parse_colors(i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
