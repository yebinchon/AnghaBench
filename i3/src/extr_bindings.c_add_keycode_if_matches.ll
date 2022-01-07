; ModuleID = '/home/carl/AnghaBench/i3/src/extr_bindings.c_add_keycode_if_matches.c'
source_filename = "/home/carl/AnghaBench/i3/src/extr_bindings.c_add_keycode_if_matches.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xkb_keymap = type { i32 }
%struct.resolve = type { i64, %struct.TYPE_2__*, %struct.xkb_state*, %struct.xkb_state*, %struct.xkb_state*, %struct.xkb_state* }
%struct.TYPE_2__ = type { i32 }
%struct.xkb_state = type { i32 }

@XKB_LAYOUT_INVALID = common dso_local global i64 0, align 8
@XKB_KEY_KP_Space = common dso_local global i64 0, align 8
@XKB_KEY_KP_Equal = common dso_local global i64 0, align 8
@XCB_MOD_MASK_LOCK = common dso_local global i32 0, align 4
@xcb_numlock_mask = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [75 x i8] c"Skipping automatic numlock fallback, key %d resolves to 0x%x with numlock\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xkb_keymap*, i32, i8*)* @add_keycode_if_matches to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_keycode_if_matches(%struct.xkb_keymap* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.xkb_keymap*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.resolve*, align 8
  %8 = alloca %struct.xkb_state*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_2__*, align 8
  %12 = alloca i64, align 8
  store %struct.xkb_keymap* %0, %struct.xkb_keymap** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = bitcast i8* %13 to %struct.resolve*
  store %struct.resolve* %14, %struct.resolve** %7, align 8
  %15 = load %struct.resolve*, %struct.resolve** %7, align 8
  %16 = getelementptr inbounds %struct.resolve, %struct.resolve* %15, i32 0, i32 5
  %17 = load %struct.xkb_state*, %struct.xkb_state** %16, align 8
  store %struct.xkb_state* %17, %struct.xkb_state** %8, align 8
  %18 = load %struct.resolve*, %struct.resolve** %7, align 8
  %19 = getelementptr inbounds %struct.resolve, %struct.resolve* %18, i32 0, i32 4
  %20 = load %struct.xkb_state*, %struct.xkb_state** %19, align 8
  %21 = load i32, i32* %5, align 4
  %22 = call i64 @xkb_state_key_get_one_sym(%struct.xkb_state* %20, i32 %21)
  store i64 %22, i64* %9, align 8
  %23 = load i64, i64* %9, align 8
  %24 = load %struct.resolve*, %struct.resolve** %7, align 8
  %25 = getelementptr inbounds %struct.resolve, %struct.resolve* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %23, %26
  br i1 %27, label %28, label %72

28:                                               ; preds = %3
  %29 = load %struct.resolve*, %struct.resolve** %7, align 8
  %30 = getelementptr inbounds %struct.resolve, %struct.resolve* %29, i32 0, i32 4
  %31 = load %struct.xkb_state*, %struct.xkb_state** %30, align 8
  %32 = load i32, i32* %5, align 4
  %33 = call i64 @xkb_state_key_get_layout(%struct.xkb_state* %31, i32 %32)
  store i64 %33, i64* %10, align 8
  %34 = load i64, i64* %10, align 8
  %35 = load i64, i64* @XKB_LAYOUT_INVALID, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %28
  br label %126

38:                                               ; preds = %28
  %39 = load %struct.resolve*, %struct.resolve** %7, align 8
  %40 = getelementptr inbounds %struct.resolve, %struct.resolve* %39, i32 0, i32 4
  %41 = load %struct.xkb_state*, %struct.xkb_state** %40, align 8
  %42 = load i32, i32* %5, align 4
  %43 = load i64, i64* %10, align 8
  %44 = call i32 @xkb_state_key_get_level(%struct.xkb_state* %41, i32 %42, i64 %43)
  %45 = icmp sgt i32 %44, 1
  br i1 %45, label %46, label %47

46:                                               ; preds = %38
  br label %126

47:                                               ; preds = %38
  %48 = load i64, i64* %9, align 8
  %49 = load i64, i64* @XKB_KEY_KP_Space, align 8
  %50 = icmp sge i64 %48, %49
  br i1 %50, label %51, label %56

51:                                               ; preds = %47
  %52 = load i64, i64* %9, align 8
  %53 = load i64, i64* @XKB_KEY_KP_Equal, align 8
  %54 = icmp sle i64 %52, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %51
  br label %126

56:                                               ; preds = %51, %47
  %57 = load %struct.resolve*, %struct.resolve** %7, align 8
  %58 = getelementptr inbounds %struct.resolve, %struct.resolve* %57, i32 0, i32 3
  %59 = load %struct.xkb_state*, %struct.xkb_state** %58, align 8
  store %struct.xkb_state* %59, %struct.xkb_state** %8, align 8
  %60 = load %struct.resolve*, %struct.resolve** %7, align 8
  %61 = getelementptr inbounds %struct.resolve, %struct.resolve* %60, i32 0, i32 2
  %62 = load %struct.xkb_state*, %struct.xkb_state** %61, align 8
  %63 = load i32, i32* %5, align 4
  %64 = call i64 @xkb_state_key_get_one_sym(%struct.xkb_state* %62, i32 %63)
  store i64 %64, i64* %9, align 8
  %65 = load i64, i64* %9, align 8
  %66 = load %struct.resolve*, %struct.resolve** %7, align 8
  %67 = getelementptr inbounds %struct.resolve, %struct.resolve* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %65, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %56
  br label %126

71:                                               ; preds = %56
  br label %72

72:                                               ; preds = %71, %3
  %73 = load %struct.resolve*, %struct.resolve** %7, align 8
  %74 = getelementptr inbounds %struct.resolve, %struct.resolve* %73, i32 0, i32 1
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** %74, align 8
  store %struct.TYPE_2__* %75, %struct.TYPE_2__** %11, align 8
  %76 = load i32, i32* %5, align 4
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @ADD_TRANSLATED_KEY(i32 %76, i32 %79)
  %81 = load i32, i32* %5, align 4
  %82 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @XCB_MOD_MASK_LOCK, align 4
  %86 = or i32 %84, %85
  %87 = call i32 @ADD_TRANSLATED_KEY(i32 %81, i32 %86)
  %88 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @xcb_numlock_mask, align 4
  %92 = and i32 %90, %91
  %93 = load i32, i32* @xcb_numlock_mask, align 4
  %94 = icmp ne i32 %92, %93
  br i1 %94, label %95, label %126

95:                                               ; preds = %72
  %96 = load %struct.xkb_state*, %struct.xkb_state** %8, align 8
  %97 = load i32, i32* %5, align 4
  %98 = call i64 @xkb_state_key_get_one_sym(%struct.xkb_state* %96, i32 %97)
  store i64 %98, i64* %12, align 8
  %99 = load i64, i64* %12, align 8
  %100 = load %struct.resolve*, %struct.resolve** %7, align 8
  %101 = getelementptr inbounds %struct.resolve, %struct.resolve* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = icmp eq i64 %99, %102
  br i1 %103, label %104, label %121

104:                                              ; preds = %95
  %105 = load i32, i32* %5, align 4
  %106 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* @xcb_numlock_mask, align 4
  %110 = or i32 %108, %109
  %111 = call i32 @ADD_TRANSLATED_KEY(i32 %105, i32 %110)
  %112 = load i32, i32* %5, align 4
  %113 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* @xcb_numlock_mask, align 4
  %117 = or i32 %115, %116
  %118 = load i32, i32* @XCB_MOD_MASK_LOCK, align 4
  %119 = or i32 %117, %118
  %120 = call i32 @ADD_TRANSLATED_KEY(i32 %112, i32 %119)
  br label %125

121:                                              ; preds = %95
  %122 = load i32, i32* %5, align 4
  %123 = load i64, i64* %12, align 8
  %124 = call i32 @DLOG(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str, i64 0, i64 0), i32 %122, i64 %123)
  br label %125

125:                                              ; preds = %121, %104
  br label %126

126:                                              ; preds = %37, %46, %55, %70, %125, %72
  ret void
}

declare dso_local i64 @xkb_state_key_get_one_sym(%struct.xkb_state*, i32) #1

declare dso_local i64 @xkb_state_key_get_layout(%struct.xkb_state*, i32) #1

declare dso_local i32 @xkb_state_key_get_level(%struct.xkb_state*, i32, i64) #1

declare dso_local i32 @ADD_TRANSLATED_KEY(i32, i32) #1

declare dso_local i32 @DLOG(i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
