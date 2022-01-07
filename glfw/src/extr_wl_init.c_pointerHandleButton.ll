; ModuleID = '/home/carl/AnghaBench/glfw/src/extr_wl_init.c_pointerHandleButton.c'
source_filename = "/home/carl/AnghaBench/glfw/src/extr_wl_init.c_pointerHandleButton.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { %struct.TYPE_12__, i64, i32, %struct.TYPE_14__* }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_14__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__, i64, i64, %struct.TYPE_9__, i64 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i64 }
%struct.wl_pointer = type { i32 }

@_glfw = common dso_local global %struct.TYPE_15__ zeroinitializer, align 8
@XDG_TOPLEVEL_RESIZE_EDGE_NONE = common dso_local global i64 0, align 8
@BTN_LEFT = common dso_local global i64 0, align 8
@_GLFW_DECORATION_WIDTH = common dso_local global i64 0, align 8
@XDG_TOPLEVEL_RESIZE_EDGE_TOP = common dso_local global i64 0, align 8
@XDG_TOPLEVEL_RESIZE_EDGE_TOP_LEFT = common dso_local global i64 0, align 8
@XDG_TOPLEVEL_RESIZE_EDGE_LEFT = common dso_local global i64 0, align 8
@XDG_TOPLEVEL_RESIZE_EDGE_TOP_RIGHT = common dso_local global i64 0, align 8
@XDG_TOPLEVEL_RESIZE_EDGE_RIGHT = common dso_local global i64 0, align 8
@XDG_TOPLEVEL_RESIZE_EDGE_BOTTOM_LEFT = common dso_local global i64 0, align 8
@XDG_TOPLEVEL_RESIZE_EDGE_BOTTOM_RIGHT = common dso_local global i64 0, align 8
@XDG_TOPLEVEL_RESIZE_EDGE_BOTTOM = common dso_local global i64 0, align 8
@BTN_RIGHT = common dso_local global i64 0, align 8
@WL_POINTER_BUTTON_STATE_PRESSED = common dso_local global i64 0, align 8
@GLFW_PRESS = common dso_local global i32 0, align 4
@GLFW_RELEASE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.wl_pointer*, i64, i64, i64, i64)* @pointerHandleButton to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pointerHandleButton(i8* %0, %struct.wl_pointer* %1, i64 %2, i64 %3, i64 %4, i64 %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca %struct.wl_pointer*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_14__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  store i8* %0, i8** %7, align 8
  store %struct.wl_pointer* %1, %struct.wl_pointer** %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  store i64 %5, i64* %12, align 8
  %16 = load %struct.TYPE_14__*, %struct.TYPE_14__** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @_glfw, i32 0, i32 0, i32 3), align 8
  store %struct.TYPE_14__* %16, %struct.TYPE_14__** %13, align 8
  %17 = load i64, i64* @XDG_TOPLEVEL_RESIZE_EDGE_NONE, align 8
  store i64 %17, i64* %15, align 8
  %18 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %19 = icmp ne %struct.TYPE_14__* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %6
  br label %183

21:                                               ; preds = %6
  %22 = load i64, i64* %11, align 8
  %23 = load i64, i64* @BTN_LEFT, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %119

25:                                               ; preds = %21
  %26 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %27 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  switch i32 %30, label %102 [
    i32 130, label %31
    i32 128, label %32
    i32 131, label %51
    i32 129, label %63
    i32 132, label %75
  ]

31:                                               ; preds = %25
  br label %104

32:                                               ; preds = %25
  %33 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %34 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @_GLFW_DECORATION_WIDTH, align 8
  %38 = icmp slt i64 %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %32
  %40 = load i64, i64* @XDG_TOPLEVEL_RESIZE_EDGE_TOP, align 8
  store i64 %40, i64* %15, align 8
  br label %50

41:                                               ; preds = %32
  %42 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %43 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 3
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @_glfw, i32 0, i32 0, i32 2), align 8
  %48 = load i64, i64* %9, align 8
  %49 = call i32 @xdg_toplevel_move(i64 %46, i32 %47, i64 %48)
  br label %50

50:                                               ; preds = %41, %39
  br label %104

51:                                               ; preds = %25
  %52 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %53 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @_GLFW_DECORATION_WIDTH, align 8
  %57 = icmp slt i64 %55, %56
  br i1 %57, label %58, label %60

58:                                               ; preds = %51
  %59 = load i64, i64* @XDG_TOPLEVEL_RESIZE_EDGE_TOP_LEFT, align 8
  store i64 %59, i64* %15, align 8
  br label %62

60:                                               ; preds = %51
  %61 = load i64, i64* @XDG_TOPLEVEL_RESIZE_EDGE_LEFT, align 8
  store i64 %61, i64* %15, align 8
  br label %62

62:                                               ; preds = %60, %58
  br label %104

63:                                               ; preds = %25
  %64 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %65 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @_GLFW_DECORATION_WIDTH, align 8
  %69 = icmp slt i64 %67, %68
  br i1 %69, label %70, label %72

70:                                               ; preds = %63
  %71 = load i64, i64* @XDG_TOPLEVEL_RESIZE_EDGE_TOP_RIGHT, align 8
  store i64 %71, i64* %15, align 8
  br label %74

72:                                               ; preds = %63
  %73 = load i64, i64* @XDG_TOPLEVEL_RESIZE_EDGE_RIGHT, align 8
  store i64 %73, i64* %15, align 8
  br label %74

74:                                               ; preds = %72, %70
  br label %104

75:                                               ; preds = %25
  %76 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %77 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %77, i32 0, i32 2
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @_GLFW_DECORATION_WIDTH, align 8
  %81 = icmp slt i64 %79, %80
  br i1 %81, label %82, label %84

82:                                               ; preds = %75
  %83 = load i64, i64* @XDG_TOPLEVEL_RESIZE_EDGE_BOTTOM_LEFT, align 8
  store i64 %83, i64* %15, align 8
  br label %101

84:                                               ; preds = %75
  %85 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %86 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %86, i32 0, i32 2
  %88 = load i64, i64* %87, align 8
  %89 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %90 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %90, i32 0, i32 4
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @_GLFW_DECORATION_WIDTH, align 8
  %94 = add nsw i64 %92, %93
  %95 = icmp sgt i64 %88, %94
  br i1 %95, label %96, label %98

96:                                               ; preds = %84
  %97 = load i64, i64* @XDG_TOPLEVEL_RESIZE_EDGE_BOTTOM_RIGHT, align 8
  store i64 %97, i64* %15, align 8
  br label %100

98:                                               ; preds = %84
  %99 = load i64, i64* @XDG_TOPLEVEL_RESIZE_EDGE_BOTTOM, align 8
  store i64 %99, i64* %15, align 8
  br label %100

100:                                              ; preds = %98, %96
  br label %101

101:                                              ; preds = %100, %82
  br label %104

102:                                              ; preds = %25
  %103 = call i32 @assert(i32 0)
  br label %104

104:                                              ; preds = %102, %101, %74, %62, %50, %31
  %105 = load i64, i64* %15, align 8
  %106 = load i64, i64* @XDG_TOPLEVEL_RESIZE_EDGE_NONE, align 8
  %107 = icmp ne i64 %105, %106
  br i1 %107, label %108, label %118

108:                                              ; preds = %104
  %109 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %110 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %110, i32 0, i32 3
  %112 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @_glfw, i32 0, i32 0, i32 2), align 8
  %115 = load i64, i64* %9, align 8
  %116 = load i64, i64* %15, align 8
  %117 = call i32 @xdg_toplevel_resize(i64 %113, i32 %114, i64 %115, i64 %116)
  br label %118

118:                                              ; preds = %108, %104
  br label %156

119:                                              ; preds = %21
  %120 = load i64, i64* %11, align 8
  %121 = load i64, i64* @BTN_RIGHT, align 8
  %122 = icmp eq i64 %120, %121
  br i1 %122, label %123, label %155

123:                                              ; preds = %119
  %124 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %125 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = icmp ne i32 %128, 130
  br i1 %129, label %130, label %154

130:                                              ; preds = %123
  %131 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %132 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %132, i32 0, i32 3
  %134 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %154

137:                                              ; preds = %130
  %138 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %139 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %139, i32 0, i32 3
  %141 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @_glfw, i32 0, i32 0, i32 2), align 8
  %144 = load i64, i64* %9, align 8
  %145 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %146 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %146, i32 0, i32 2
  %148 = load i64, i64* %147, align 8
  %149 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %150 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %150, i32 0, i32 1
  %152 = load i64, i64* %151, align 8
  %153 = call i32 @xdg_toplevel_show_window_menu(i64 %142, i32 %143, i64 %144, i64 %148, i64 %152)
  br label %183

154:                                              ; preds = %130, %123
  br label %155

155:                                              ; preds = %154, %119
  br label %156

156:                                              ; preds = %155, %118
  %157 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %158 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = icmp ne i32 %161, 130
  br i1 %162, label %163, label %164

163:                                              ; preds = %156
  br label %183

164:                                              ; preds = %156
  %165 = load i64, i64* %9, align 8
  store i64 %165, i64* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @_glfw, i32 0, i32 0, i32 1), align 8
  %166 = load i64, i64* %11, align 8
  %167 = load i64, i64* @BTN_LEFT, align 8
  %168 = sub nsw i64 %166, %167
  %169 = trunc i64 %168 to i32
  store i32 %169, i32* %14, align 4
  %170 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %171 = load i32, i32* %14, align 4
  %172 = load i64, i64* %12, align 8
  %173 = load i64, i64* @WL_POINTER_BUTTON_STATE_PRESSED, align 8
  %174 = icmp eq i64 %172, %173
  br i1 %174, label %175, label %177

175:                                              ; preds = %164
  %176 = load i32, i32* @GLFW_PRESS, align 4
  br label %179

177:                                              ; preds = %164
  %178 = load i32, i32* @GLFW_RELEASE, align 4
  br label %179

179:                                              ; preds = %177, %175
  %180 = phi i32 [ %176, %175 ], [ %178, %177 ]
  %181 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @_glfw, i32 0, i32 0, i32 0, i32 0), align 8
  %182 = call i32 @_glfwInputMouseClick(%struct.TYPE_14__* %170, i32 %171, i32 %180, i32 %181)
  br label %183

183:                                              ; preds = %179, %163, %137, %20
  ret void
}

declare dso_local i32 @xdg_toplevel_move(i64, i32, i64) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @xdg_toplevel_resize(i64, i32, i64, i64) #1

declare dso_local i32 @xdg_toplevel_show_window_menu(i64, i32, i64, i64, i64) #1

declare dso_local i32 @_glfwInputMouseClick(%struct.TYPE_14__*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
