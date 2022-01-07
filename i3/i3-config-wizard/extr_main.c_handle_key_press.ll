; ModuleID = '/home/carl/AnghaBench/i3/i3-config-wizard/extr_main.c_handle_key_press.c'
source_filename = "/home/carl/AnghaBench/i3/i3-config-wizard/extr_main.c_handle_key_press.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32 }

@.str = private unnamed_addr constant [29 x i8] c"Keypress %d, state raw = %d\0A\00", align 1
@xcb_numlock_mask = common dso_local global i32 0, align 4
@XCB_MOD_MASK_LOCK = common dso_local global i32 0, align 4
@symbols = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"sym = %c (%d)\0A\00", align 1
@XK_Return = common dso_local global i32 0, align 4
@XK_KP_Enter = common dso_local global i32 0, align 4
@current_step = common dso_local global i64 0, align 8
@STEP_WELCOME = common dso_local global i64 0, align 8
@STEP_GENERATE = common dso_local global i64 0, align 8
@XCB_PROP_MODE_REPLACE = common dso_local global i32 0, align 4
@win = common dso_local global i32 0, align 4
@A__NET_WM_NAME = common dso_local global i32 0, align 4
@A_UTF8_STRING = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"i3: generate config\00", align 1
@XK_Up = common dso_local global i32 0, align 4
@XK_Down = common dso_local global i32 0, align 4
@modifier = common dso_local global i64 0, align 8
@MOD_Mod1 = common dso_local global i64 0, align 8
@MOD_Mod4 = common dso_local global i64 0, align 8
@XK_Escape = common dso_local global i32 0, align 4
@modmap_reply = common dso_local global %struct.TYPE_7__* null, align 8
@XCB_NONE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [35 x i8] c"Modifier keycode for Mod1: 0x%02x\0A\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"This is Mod1!\0A\00", align 1
@.str.5 = private unnamed_addr constant [35 x i8] c"Modifier keycode for Mod4: 0x%02x\0A\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"This is Mod4!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*, %struct.TYPE_6__*)* @handle_key_press to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_key_press(i8* %0, i32* %1, %struct.TYPE_6__* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.TYPE_6__* %2, %struct.TYPE_6__** %6, align 8
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %17, i32 %20)
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @xcb_numlock_mask, align 4
  %26 = load i32, i32* @XCB_MOD_MASK_LOCK, align 4
  %27 = or i32 %25, %26
  %28 = xor i32 %27, -1
  %29 = and i32 %24, %28
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %7, align 4
  %31 = and i32 %30, 255
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* @symbols, align 4
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %34 = load i32, i32* %7, align 4
  %35 = call i32 @xcb_key_press_lookup_keysym(i32 %32, %struct.TYPE_6__* %33, i32 %34)
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* %8, align 4
  %38 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %36, i32 %37)
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* @XK_Return, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %46, label %42

42:                                               ; preds = %3
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* @XK_KP_Enter, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %64

46:                                               ; preds = %42, %3
  %47 = load i64, i64* @current_step, align 8
  %48 = load i64, i64* @STEP_WELCOME, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %61

50:                                               ; preds = %46
  %51 = load i64, i64* @STEP_GENERATE, align 8
  store i64 %51, i64* @current_step, align 8
  %52 = load i32*, i32** %5, align 8
  %53 = load i32, i32* @XCB_PROP_MODE_REPLACE, align 4
  %54 = load i32, i32* @win, align 4
  %55 = load i32, i32* @A__NET_WM_NAME, align 4
  %56 = load i32, i32* @A_UTF8_STRING, align 4
  %57 = call i32 @strlen(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %58 = call i32 @xcb_change_property(i32* %52, i32 %53, i32 %54, i32 %55, i32 %56, i32 8, i32 %57, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %59 = load i32*, i32** %5, align 8
  %60 = call i32 @xcb_flush(i32* %59)
  br label %63

61:                                               ; preds = %46
  %62 = call i32 (...) @finish()
  br label %63

63:                                               ; preds = %61, %50
  br label %64

64:                                               ; preds = %63, %42
  %65 = load i32, i32* %8, align 4
  %66 = load i32, i32* @XK_Up, align 4
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %72, label %68

68:                                               ; preds = %64
  %69 = load i32, i32* %8, align 4
  %70 = load i32, i32* @XK_Down, align 4
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %72, label %83

72:                                               ; preds = %68, %64
  %73 = load i64, i64* @modifier, align 8
  %74 = load i64, i64* @MOD_Mod1, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %78

76:                                               ; preds = %72
  %77 = load i64, i64* @MOD_Mod4, align 8
  br label %80

78:                                               ; preds = %72
  %79 = load i64, i64* @MOD_Mod1, align 8
  br label %80

80:                                               ; preds = %78, %76
  %81 = phi i64 [ %77, %76 ], [ %79, %78 ]
  store i64 %81, i64* @modifier, align 8
  %82 = call i32 (...) @handle_expose()
  br label %83

83:                                               ; preds = %80, %68
  %84 = load i32, i32* %8, align 4
  %85 = load i32, i32* @XK_Escape, align 4
  %86 = icmp eq i32 %84, %85
  br i1 %86, label %87, label %89

87:                                               ; preds = %83
  %88 = call i32 @exit(i32 0) #3
  unreachable

89:                                               ; preds = %83
  %90 = load %struct.TYPE_7__*, %struct.TYPE_7__** @modmap_reply, align 8
  %91 = call i64* @xcb_get_modifier_mapping_keycodes(%struct.TYPE_7__* %90)
  store i64* %91, i64** %9, align 8
  store i32 3, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %92

92:                                               ; preds = %127, %89
  %93 = load i32, i32* %11, align 4
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** @modmap_reply, align 8
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = icmp slt i32 %93, %96
  br i1 %97, label %98, label %130

98:                                               ; preds = %92
  %99 = load i64*, i64** %9, align 8
  %100 = load i32, i32* %10, align 4
  %101 = load %struct.TYPE_7__*, %struct.TYPE_7__** @modmap_reply, align 8
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = mul nsw i32 %100, %103
  %105 = load i32, i32* %11, align 4
  %106 = add nsw i32 %104, %105
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i64, i64* %99, i64 %107
  %109 = load i64, i64* %108, align 8
  store i64 %109, i64* %12, align 8
  %110 = load i64, i64* %12, align 8
  %111 = load i64, i64* @XCB_NONE, align 8
  %112 = icmp eq i64 %110, %111
  br i1 %112, label %113, label %114

113:                                              ; preds = %98
  br label %127

114:                                              ; preds = %98
  %115 = load i64, i64* %12, align 8
  %116 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i64 %115)
  %117 = load i64, i64* %12, align 8
  %118 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = sext i32 %120 to i64
  %122 = icmp eq i64 %117, %121
  br i1 %122, label %123, label %126

123:                                              ; preds = %114
  %124 = load i64, i64* @MOD_Mod1, align 8
  store i64 %124, i64* @modifier, align 8
  %125 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0))
  br label %126

126:                                              ; preds = %123, %114
  br label %127

127:                                              ; preds = %126, %113
  %128 = load i32, i32* %11, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %11, align 4
  br label %92

130:                                              ; preds = %92
  store i32 6, i32* %10, align 4
  store i32 0, i32* %13, align 4
  br label %131

131:                                              ; preds = %166, %130
  %132 = load i32, i32* %13, align 4
  %133 = load %struct.TYPE_7__*, %struct.TYPE_7__** @modmap_reply, align 8
  %134 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = icmp slt i32 %132, %135
  br i1 %136, label %137, label %169

137:                                              ; preds = %131
  %138 = load i64*, i64** %9, align 8
  %139 = load i32, i32* %10, align 4
  %140 = load %struct.TYPE_7__*, %struct.TYPE_7__** @modmap_reply, align 8
  %141 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = mul nsw i32 %139, %142
  %144 = load i32, i32* %13, align 4
  %145 = add nsw i32 %143, %144
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i64, i64* %138, i64 %146
  %148 = load i64, i64* %147, align 8
  store i64 %148, i64* %14, align 8
  %149 = load i64, i64* %14, align 8
  %150 = load i64, i64* @XCB_NONE, align 8
  %151 = icmp eq i64 %149, %150
  br i1 %151, label %152, label %153

152:                                              ; preds = %137
  br label %166

153:                                              ; preds = %137
  %154 = load i64, i64* %14, align 8
  %155 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0), i64 %154)
  %156 = load i64, i64* %14, align 8
  %157 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %158 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = sext i32 %159 to i64
  %161 = icmp eq i64 %156, %160
  br i1 %161, label %162, label %165

162:                                              ; preds = %153
  %163 = load i64, i64* @MOD_Mod4, align 8
  store i64 %163, i64* @modifier, align 8
  %164 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0))
  br label %165

165:                                              ; preds = %162, %153
  br label %166

166:                                              ; preds = %165, %152
  %167 = load i32, i32* %13, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %13, align 4
  br label %131

169:                                              ; preds = %131
  %170 = call i32 (...) @handle_expose()
  ret i32 1
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @xcb_key_press_lookup_keysym(i32, %struct.TYPE_6__*, i32) #1

declare dso_local i32 @xcb_change_property(i32*, i32, i32, i32, i32, i32, i32, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @xcb_flush(i32*) #1

declare dso_local i32 @finish(...) #1

declare dso_local i32 @handle_expose(...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i64* @xcb_get_modifier_mapping_keycodes(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
