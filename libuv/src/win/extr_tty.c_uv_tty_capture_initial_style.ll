; ModuleID = '/home/carl/AnghaBench/libuv/src/win/extr_tty.c_uv_tty_capture_initial_style.c'
source_filename = "/home/carl/AnghaBench/libuv/src/win/extr_tty.c_uv_tty_capture_initial_style.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@uv_tty_capture_initial_style.style_captured = internal global i32 0, align 4
@uv_tty_default_text_attributes = common dso_local global i32 0, align 4
@uv_tty_default_fg_color = common dso_local global i32 0, align 4
@uv_tty_default_bg_color = common dso_local global i32 0, align 4
@uv_tty_default_fg_bright = common dso_local global i32 0, align 4
@uv_tty_default_bg_bright = common dso_local global i32 0, align 4
@uv_tty_default_inverse = common dso_local global i32 0, align 4
@FOREGROUND_RED = common dso_local global i32 0, align 4
@FOREGROUND_GREEN = common dso_local global i32 0, align 4
@FOREGROUND_BLUE = common dso_local global i32 0, align 4
@BACKGROUND_RED = common dso_local global i32 0, align 4
@BACKGROUND_GREEN = common dso_local global i32 0, align 4
@BACKGROUND_BLUE = common dso_local global i32 0, align 4
@FOREGROUND_INTENSITY = common dso_local global i32 0, align 4
@BACKGROUND_INTENSITY = common dso_local global i32 0, align 4
@COMMON_LVB_REVERSE_VIDEO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*)* @uv_tty_capture_initial_style to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uv_tty_capture_initial_style(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %3 = load i32, i32* @uv_tty_capture_initial_style.style_captured, align 4
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  br label %80

6:                                                ; preds = %1
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  store i32 %9, i32* @uv_tty_default_text_attributes, align 4
  %10 = load i32, i32* @uv_tty_default_text_attributes, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %6
  store i32 7, i32* @uv_tty_default_text_attributes, align 4
  br label %13

13:                                               ; preds = %12, %6
  store i32 0, i32* @uv_tty_default_fg_color, align 4
  store i32 0, i32* @uv_tty_default_bg_color, align 4
  store i32 0, i32* @uv_tty_default_fg_bright, align 4
  store i32 0, i32* @uv_tty_default_bg_bright, align 4
  store i32 0, i32* @uv_tty_default_inverse, align 4
  %14 = load i32, i32* @uv_tty_default_text_attributes, align 4
  %15 = load i32, i32* @FOREGROUND_RED, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %13
  %19 = load i32, i32* @uv_tty_default_fg_color, align 4
  %20 = or i32 %19, 1
  store i32 %20, i32* @uv_tty_default_fg_color, align 4
  br label %21

21:                                               ; preds = %18, %13
  %22 = load i32, i32* @uv_tty_default_text_attributes, align 4
  %23 = load i32, i32* @FOREGROUND_GREEN, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %21
  %27 = load i32, i32* @uv_tty_default_fg_color, align 4
  %28 = or i32 %27, 2
  store i32 %28, i32* @uv_tty_default_fg_color, align 4
  br label %29

29:                                               ; preds = %26, %21
  %30 = load i32, i32* @uv_tty_default_text_attributes, align 4
  %31 = load i32, i32* @FOREGROUND_BLUE, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %29
  %35 = load i32, i32* @uv_tty_default_fg_color, align 4
  %36 = or i32 %35, 4
  store i32 %36, i32* @uv_tty_default_fg_color, align 4
  br label %37

37:                                               ; preds = %34, %29
  %38 = load i32, i32* @uv_tty_default_text_attributes, align 4
  %39 = load i32, i32* @BACKGROUND_RED, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %37
  %43 = load i32, i32* @uv_tty_default_bg_color, align 4
  %44 = or i32 %43, 1
  store i32 %44, i32* @uv_tty_default_bg_color, align 4
  br label %45

45:                                               ; preds = %42, %37
  %46 = load i32, i32* @uv_tty_default_text_attributes, align 4
  %47 = load i32, i32* @BACKGROUND_GREEN, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %45
  %51 = load i32, i32* @uv_tty_default_bg_color, align 4
  %52 = or i32 %51, 2
  store i32 %52, i32* @uv_tty_default_bg_color, align 4
  br label %53

53:                                               ; preds = %50, %45
  %54 = load i32, i32* @uv_tty_default_text_attributes, align 4
  %55 = load i32, i32* @BACKGROUND_BLUE, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %53
  %59 = load i32, i32* @uv_tty_default_bg_color, align 4
  %60 = or i32 %59, 4
  store i32 %60, i32* @uv_tty_default_bg_color, align 4
  br label %61

61:                                               ; preds = %58, %53
  %62 = load i32, i32* @uv_tty_default_text_attributes, align 4
  %63 = load i32, i32* @FOREGROUND_INTENSITY, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %61
  store i32 1, i32* @uv_tty_default_fg_bright, align 4
  br label %67

67:                                               ; preds = %66, %61
  %68 = load i32, i32* @uv_tty_default_text_attributes, align 4
  %69 = load i32, i32* @BACKGROUND_INTENSITY, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %67
  store i32 1, i32* @uv_tty_default_bg_bright, align 4
  br label %73

73:                                               ; preds = %72, %67
  %74 = load i32, i32* @uv_tty_default_text_attributes, align 4
  %75 = load i32, i32* @COMMON_LVB_REVERSE_VIDEO, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %73
  store i32 1, i32* @uv_tty_default_inverse, align 4
  br label %79

79:                                               ; preds = %78, %73
  store i32 1, i32* @uv_tty_capture_initial_style.style_captured, align 4
  br label %80

80:                                               ; preds = %79, %5
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
