; ModuleID = '/home/carl/AnghaBench/glfw/src/extr_wl_init.c_keyboardHandleModifiers.c'
source_filename = "/home/carl/AnghaBench/glfw/src/extr_wl_init.c_keyboardHandleModifiers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.wl_keyboard = type { i32 }

@_glfw = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@XKB_STATE_MODS_DEPRESSED = common dso_local global i32 0, align 4
@XKB_STATE_LAYOUT_DEPRESSED = common dso_local global i32 0, align 4
@XKB_STATE_MODS_LATCHED = common dso_local global i32 0, align 4
@XKB_STATE_LAYOUT_LATCHED = common dso_local global i32 0, align 4
@GLFW_MOD_CONTROL = common dso_local global i32 0, align 4
@GLFW_MOD_ALT = common dso_local global i32 0, align 4
@GLFW_MOD_SHIFT = common dso_local global i32 0, align 4
@GLFW_MOD_SUPER = common dso_local global i32 0, align 4
@GLFW_MOD_CAPS_LOCK = common dso_local global i32 0, align 4
@GLFW_MOD_NUM_LOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.wl_keyboard*, i32, i32, i32, i32, i32)* @keyboardHandleModifiers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @keyboardHandleModifiers(i8* %0, %struct.wl_keyboard* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i8*, align 8
  %9 = alloca %struct.wl_keyboard*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i8* %0, i8** %8, align 8
  store %struct.wl_keyboard* %1, %struct.wl_keyboard** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  store i32 0, i32* %16, align 4
  %17 = load i32, i32* %10, align 4
  store i32 %17, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 0, i32 1), align 4
  %18 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 0, i32 0, i32 8), align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %7
  br label %92

21:                                               ; preds = %7
  %22 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 0, i32 0, i32 7), align 4
  %23 = load i32, i32* %11, align 4
  %24 = load i32, i32* %12, align 4
  %25 = load i32, i32* %13, align 4
  %26 = load i32, i32* %14, align 4
  %27 = call i32 @xkb_state_update_mask(i32 %22, i32 %23, i32 %24, i32 %25, i32 0, i32 0, i32 %26)
  %28 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 0, i32 0, i32 7), align 4
  %29 = load i32, i32* @XKB_STATE_MODS_DEPRESSED, align 4
  %30 = load i32, i32* @XKB_STATE_LAYOUT_DEPRESSED, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* @XKB_STATE_MODS_LATCHED, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* @XKB_STATE_LAYOUT_LATCHED, align 4
  %35 = or i32 %33, %34
  %36 = call i32 @xkb_state_serialize_mods(i32 %28, i32 %35)
  store i32 %36, i32* %15, align 4
  %37 = load i32, i32* %15, align 4
  %38 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 0, i32 0, i32 0), align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %21
  %42 = load i32, i32* @GLFW_MOD_CONTROL, align 4
  %43 = load i32, i32* %16, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %16, align 4
  br label %45

45:                                               ; preds = %41, %21
  %46 = load i32, i32* %15, align 4
  %47 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 0, i32 0, i32 1), align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %45
  %51 = load i32, i32* @GLFW_MOD_ALT, align 4
  %52 = load i32, i32* %16, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %16, align 4
  br label %54

54:                                               ; preds = %50, %45
  %55 = load i32, i32* %15, align 4
  %56 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 0, i32 0, i32 2), align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %54
  %60 = load i32, i32* @GLFW_MOD_SHIFT, align 4
  %61 = load i32, i32* %16, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %16, align 4
  br label %63

63:                                               ; preds = %59, %54
  %64 = load i32, i32* %15, align 4
  %65 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 0, i32 0, i32 3), align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %63
  %69 = load i32, i32* @GLFW_MOD_SUPER, align 4
  %70 = load i32, i32* %16, align 4
  %71 = or i32 %70, %69
  store i32 %71, i32* %16, align 4
  br label %72

72:                                               ; preds = %68, %63
  %73 = load i32, i32* %15, align 4
  %74 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 0, i32 0, i32 4), align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %72
  %78 = load i32, i32* @GLFW_MOD_CAPS_LOCK, align 4
  %79 = load i32, i32* %16, align 4
  %80 = or i32 %79, %78
  store i32 %80, i32* %16, align 4
  br label %81

81:                                               ; preds = %77, %72
  %82 = load i32, i32* %15, align 4
  %83 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 0, i32 0, i32 5), align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %90

86:                                               ; preds = %81
  %87 = load i32, i32* @GLFW_MOD_NUM_LOCK, align 4
  %88 = load i32, i32* %16, align 4
  %89 = or i32 %88, %87
  store i32 %89, i32* %16, align 4
  br label %90

90:                                               ; preds = %86, %81
  %91 = load i32, i32* %16, align 4
  store i32 %91, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 0, i32 0, i32 6), align 4
  br label %92

92:                                               ; preds = %90, %20
  ret void
}

declare dso_local i32 @xkb_state_update_mask(i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @xkb_state_serialize_mods(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
