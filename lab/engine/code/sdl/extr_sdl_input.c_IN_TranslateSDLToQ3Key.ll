; ModuleID = '/home/carl/AnghaBench/lab/engine/code/sdl/extr_sdl_input.c_IN_TranslateSDLToQ3Key.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/sdl/extr_sdl_input.c_IN_TranslateSDLToQ3Key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i64, i32 }

@SDL_SCANCODE_1 = common dso_local global i64 0, align 8
@SDL_SCANCODE_0 = common dso_local global i64 0, align 8
@SDLK_SPACE = common dso_local global i32 0, align 4
@K_PGUP = common dso_local global i32 0, align 4
@K_KP_PGUP = common dso_local global i32 0, align 4
@K_PGDN = common dso_local global i32 0, align 4
@K_KP_PGDN = common dso_local global i32 0, align 4
@K_KP_HOME = common dso_local global i32 0, align 4
@K_HOME = common dso_local global i32 0, align 4
@K_KP_END = common dso_local global i32 0, align 4
@K_END = common dso_local global i32 0, align 4
@K_KP_LEFTARROW = common dso_local global i32 0, align 4
@K_LEFTARROW = common dso_local global i32 0, align 4
@K_KP_RIGHTARROW = common dso_local global i32 0, align 4
@K_RIGHTARROW = common dso_local global i32 0, align 4
@K_KP_DOWNARROW = common dso_local global i32 0, align 4
@K_DOWNARROW = common dso_local global i32 0, align 4
@K_KP_UPARROW = common dso_local global i32 0, align 4
@K_UPARROW = common dso_local global i32 0, align 4
@K_ESCAPE = common dso_local global i32 0, align 4
@K_KP_ENTER = common dso_local global i32 0, align 4
@K_ENTER = common dso_local global i32 0, align 4
@K_TAB = common dso_local global i32 0, align 4
@K_F1 = common dso_local global i32 0, align 4
@K_F2 = common dso_local global i32 0, align 4
@K_F3 = common dso_local global i32 0, align 4
@K_F4 = common dso_local global i32 0, align 4
@K_F5 = common dso_local global i32 0, align 4
@K_F6 = common dso_local global i32 0, align 4
@K_F7 = common dso_local global i32 0, align 4
@K_F8 = common dso_local global i32 0, align 4
@K_F9 = common dso_local global i32 0, align 4
@K_F10 = common dso_local global i32 0, align 4
@K_F11 = common dso_local global i32 0, align 4
@K_F12 = common dso_local global i32 0, align 4
@K_F13 = common dso_local global i32 0, align 4
@K_F14 = common dso_local global i32 0, align 4
@K_F15 = common dso_local global i32 0, align 4
@K_BACKSPACE = common dso_local global i32 0, align 4
@K_KP_DEL = common dso_local global i32 0, align 4
@K_DEL = common dso_local global i32 0, align 4
@K_PAUSE = common dso_local global i32 0, align 4
@K_SHIFT = common dso_local global i32 0, align 4
@K_CTRL = common dso_local global i32 0, align 4
@K_SUPER = common dso_local global i32 0, align 4
@K_ALT = common dso_local global i32 0, align 4
@K_KP_5 = common dso_local global i32 0, align 4
@K_INS = common dso_local global i32 0, align 4
@K_KP_INS = common dso_local global i32 0, align 4
@K_KP_STAR = common dso_local global i32 0, align 4
@K_KP_PLUS = common dso_local global i32 0, align 4
@K_KP_MINUS = common dso_local global i32 0, align 4
@K_KP_SLASH = common dso_local global i32 0, align 4
@K_MODE = common dso_local global i32 0, align 4
@K_HELP = common dso_local global i32 0, align 4
@K_PRINT = common dso_local global i32 0, align 4
@K_SYSREQ = common dso_local global i32 0, align 4
@K_MENU = common dso_local global i32 0, align 4
@K_POWER = common dso_local global i32 0, align 4
@K_UNDO = common dso_local global i32 0, align 4
@K_SCROLLOCK = common dso_local global i32 0, align 4
@K_KP_NUMLOCK = common dso_local global i32 0, align 4
@K_CAPSLOCK = common dso_local global i32 0, align 4
@SDLK_SCANCODE_MASK = common dso_local global i32 0, align 4
@K_WORLD_0 = common dso_local global i32 0, align 4
@in_keyboardDebug = common dso_local global %struct.TYPE_6__* null, align 8
@K_CONSOLE = common dso_local global i32 0, align 4
@K_COMMAND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i32)* @IN_TranslateSDLToQ3Key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @IN_TranslateSDLToQ3Key(%struct.TYPE_5__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %6 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @SDL_SCANCODE_1, align 8
  %10 = icmp sge i64 %8, %9
  br i1 %10, label %11, label %33

11:                                               ; preds = %2
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @SDL_SCANCODE_0, align 8
  %16 = icmp sle i64 %14, %15
  br i1 %16, label %17, label %33

17:                                               ; preds = %11
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @SDL_SCANCODE_0, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %17
  store i32 48, i32* %5, align 4
  br label %32

24:                                               ; preds = %17
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = add nsw i64 49, %27
  %29 = load i64, i64* @SDL_SCANCODE_1, align 8
  %30 = sub nsw i64 %28, %29
  %31 = trunc i64 %30 to i32
  store i32 %31, i32* %5, align 4
  br label %32

32:                                               ; preds = %24, %23
  br label %196

33:                                               ; preds = %11, %2
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @SDLK_SPACE, align 4
  %38 = icmp sge i32 %36, %37
  br i1 %38, label %39, label %48

39:                                               ; preds = %33
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = icmp slt i32 %42, 189
  br i1 %43, label %44, label %48

44:                                               ; preds = %39
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  store i32 %47, i32* %5, align 4
  br label %195

48:                                               ; preds = %39, %33
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  switch i32 %51, label %174 [
    i32 142, label %52
    i32 158, label %54
    i32 143, label %56
    i32 164, label %58
    i32 160, label %60
    i32 169, label %62
    i32 166, label %64
    i32 187, label %66
    i32 163, label %68
    i32 149, label %70
    i32 161, label %72
    i32 134, label %74
    i32 165, label %76
    i32 188, label %78
    i32 159, label %80
    i32 128, label %82
    i32 186, label %84
    i32 156, label %86
    i32 136, label %88
    i32 130, label %90
    i32 185, label %92
    i32 178, label %94
    i32 177, label %96
    i32 176, label %98
    i32 175, label %100
    i32 174, label %102
    i32 173, label %104
    i32 172, label %106
    i32 171, label %108
    i32 184, label %110
    i32 183, label %112
    i32 182, label %114
    i32 181, label %116
    i32 180, label %118
    i32 179, label %120
    i32 191, label %122
    i32 153, label %124
    i32 189, label %126
    i32 141, label %128
    i32 147, label %130
    i32 133, label %130
    i32 150, label %132
    i32 137, label %132
    i32 135, label %134
    i32 148, label %134
    i32 138, label %136
    i32 151, label %136
    i32 162, label %138
    i32 168, label %140
    i32 167, label %142
    i32 154, label %144
    i32 152, label %146
    i32 155, label %148
    i32 157, label %150
    i32 145, label %152
    i32 170, label %154
    i32 139, label %156
    i32 131, label %158
    i32 146, label %160
    i32 192, label %162
    i32 140, label %164
    i32 129, label %166
    i32 132, label %168
    i32 144, label %170
    i32 190, label %172
  ]

52:                                               ; preds = %48
  %53 = load i32, i32* @K_PGUP, align 4
  store i32 %53, i32* %5, align 4
  br label %194

54:                                               ; preds = %48
  %55 = load i32, i32* @K_KP_PGUP, align 4
  store i32 %55, i32* %5, align 4
  br label %194

56:                                               ; preds = %48
  %57 = load i32, i32* @K_PGDN, align 4
  store i32 %57, i32* %5, align 4
  br label %194

58:                                               ; preds = %48
  %59 = load i32, i32* @K_KP_PGDN, align 4
  store i32 %59, i32* %5, align 4
  br label %194

60:                                               ; preds = %48
  %61 = load i32, i32* @K_KP_HOME, align 4
  store i32 %61, i32* %5, align 4
  br label %194

62:                                               ; preds = %48
  %63 = load i32, i32* @K_HOME, align 4
  store i32 %63, i32* %5, align 4
  br label %194

64:                                               ; preds = %48
  %65 = load i32, i32* @K_KP_END, align 4
  store i32 %65, i32* %5, align 4
  br label %194

66:                                               ; preds = %48
  %67 = load i32, i32* @K_END, align 4
  store i32 %67, i32* %5, align 4
  br label %194

68:                                               ; preds = %48
  %69 = load i32, i32* @K_KP_LEFTARROW, align 4
  store i32 %69, i32* %5, align 4
  br label %194

70:                                               ; preds = %48
  %71 = load i32, i32* @K_LEFTARROW, align 4
  store i32 %71, i32* %5, align 4
  br label %194

72:                                               ; preds = %48
  %73 = load i32, i32* @K_KP_RIGHTARROW, align 4
  store i32 %73, i32* %5, align 4
  br label %194

74:                                               ; preds = %48
  %75 = load i32, i32* @K_RIGHTARROW, align 4
  store i32 %75, i32* %5, align 4
  br label %194

76:                                               ; preds = %48
  %77 = load i32, i32* @K_KP_DOWNARROW, align 4
  store i32 %77, i32* %5, align 4
  br label %194

78:                                               ; preds = %48
  %79 = load i32, i32* @K_DOWNARROW, align 4
  store i32 %79, i32* %5, align 4
  br label %194

80:                                               ; preds = %48
  %81 = load i32, i32* @K_KP_UPARROW, align 4
  store i32 %81, i32* %5, align 4
  br label %194

82:                                               ; preds = %48
  %83 = load i32, i32* @K_UPARROW, align 4
  store i32 %83, i32* %5, align 4
  br label %194

84:                                               ; preds = %48
  %85 = load i32, i32* @K_ESCAPE, align 4
  store i32 %85, i32* %5, align 4
  br label %194

86:                                               ; preds = %48
  %87 = load i32, i32* @K_KP_ENTER, align 4
  store i32 %87, i32* %5, align 4
  br label %194

88:                                               ; preds = %48
  %89 = load i32, i32* @K_ENTER, align 4
  store i32 %89, i32* %5, align 4
  br label %194

90:                                               ; preds = %48
  %91 = load i32, i32* @K_TAB, align 4
  store i32 %91, i32* %5, align 4
  br label %194

92:                                               ; preds = %48
  %93 = load i32, i32* @K_F1, align 4
  store i32 %93, i32* %5, align 4
  br label %194

94:                                               ; preds = %48
  %95 = load i32, i32* @K_F2, align 4
  store i32 %95, i32* %5, align 4
  br label %194

96:                                               ; preds = %48
  %97 = load i32, i32* @K_F3, align 4
  store i32 %97, i32* %5, align 4
  br label %194

98:                                               ; preds = %48
  %99 = load i32, i32* @K_F4, align 4
  store i32 %99, i32* %5, align 4
  br label %194

100:                                              ; preds = %48
  %101 = load i32, i32* @K_F5, align 4
  store i32 %101, i32* %5, align 4
  br label %194

102:                                              ; preds = %48
  %103 = load i32, i32* @K_F6, align 4
  store i32 %103, i32* %5, align 4
  br label %194

104:                                              ; preds = %48
  %105 = load i32, i32* @K_F7, align 4
  store i32 %105, i32* %5, align 4
  br label %194

106:                                              ; preds = %48
  %107 = load i32, i32* @K_F8, align 4
  store i32 %107, i32* %5, align 4
  br label %194

108:                                              ; preds = %48
  %109 = load i32, i32* @K_F9, align 4
  store i32 %109, i32* %5, align 4
  br label %194

110:                                              ; preds = %48
  %111 = load i32, i32* @K_F10, align 4
  store i32 %111, i32* %5, align 4
  br label %194

112:                                              ; preds = %48
  %113 = load i32, i32* @K_F11, align 4
  store i32 %113, i32* %5, align 4
  br label %194

114:                                              ; preds = %48
  %115 = load i32, i32* @K_F12, align 4
  store i32 %115, i32* %5, align 4
  br label %194

116:                                              ; preds = %48
  %117 = load i32, i32* @K_F13, align 4
  store i32 %117, i32* %5, align 4
  br label %194

118:                                              ; preds = %48
  %119 = load i32, i32* @K_F14, align 4
  store i32 %119, i32* %5, align 4
  br label %194

120:                                              ; preds = %48
  %121 = load i32, i32* @K_F15, align 4
  store i32 %121, i32* %5, align 4
  br label %194

122:                                              ; preds = %48
  %123 = load i32, i32* @K_BACKSPACE, align 4
  store i32 %123, i32* %5, align 4
  br label %194

124:                                              ; preds = %48
  %125 = load i32, i32* @K_KP_DEL, align 4
  store i32 %125, i32* %5, align 4
  br label %194

126:                                              ; preds = %48
  %127 = load i32, i32* @K_DEL, align 4
  store i32 %127, i32* %5, align 4
  br label %194

128:                                              ; preds = %48
  %129 = load i32, i32* @K_PAUSE, align 4
  store i32 %129, i32* %5, align 4
  br label %194

130:                                              ; preds = %48, %48
  %131 = load i32, i32* @K_SHIFT, align 4
  store i32 %131, i32* %5, align 4
  br label %194

132:                                              ; preds = %48, %48
  %133 = load i32, i32* @K_CTRL, align 4
  store i32 %133, i32* %5, align 4
  br label %194

134:                                              ; preds = %48, %48
  %135 = load i32, i32* @K_SUPER, align 4
  store i32 %135, i32* %5, align 4
  br label %194

136:                                              ; preds = %48, %48
  %137 = load i32, i32* @K_ALT, align 4
  store i32 %137, i32* %5, align 4
  br label %194

138:                                              ; preds = %48
  %139 = load i32, i32* @K_KP_5, align 4
  store i32 %139, i32* %5, align 4
  br label %194

140:                                              ; preds = %48
  %141 = load i32, i32* @K_INS, align 4
  store i32 %141, i32* %5, align 4
  br label %194

142:                                              ; preds = %48
  %143 = load i32, i32* @K_KP_INS, align 4
  store i32 %143, i32* %5, align 4
  br label %194

144:                                              ; preds = %48
  %145 = load i32, i32* @K_KP_STAR, align 4
  store i32 %145, i32* %5, align 4
  br label %194

146:                                              ; preds = %48
  %147 = load i32, i32* @K_KP_PLUS, align 4
  store i32 %147, i32* %5, align 4
  br label %194

148:                                              ; preds = %48
  %149 = load i32, i32* @K_KP_MINUS, align 4
  store i32 %149, i32* %5, align 4
  br label %194

150:                                              ; preds = %48
  %151 = load i32, i32* @K_KP_SLASH, align 4
  store i32 %151, i32* %5, align 4
  br label %194

152:                                              ; preds = %48
  %153 = load i32, i32* @K_MODE, align 4
  store i32 %153, i32* %5, align 4
  br label %194

154:                                              ; preds = %48
  %155 = load i32, i32* @K_HELP, align 4
  store i32 %155, i32* %5, align 4
  br label %194

156:                                              ; preds = %48
  %157 = load i32, i32* @K_PRINT, align 4
  store i32 %157, i32* %5, align 4
  br label %194

158:                                              ; preds = %48
  %159 = load i32, i32* @K_SYSREQ, align 4
  store i32 %159, i32* %5, align 4
  br label %194

160:                                              ; preds = %48
  %161 = load i32, i32* @K_MENU, align 4
  store i32 %161, i32* %5, align 4
  br label %194

162:                                              ; preds = %48
  %163 = load i32, i32* @K_MENU, align 4
  store i32 %163, i32* %5, align 4
  br label %194

164:                                              ; preds = %48
  %165 = load i32, i32* @K_POWER, align 4
  store i32 %165, i32* %5, align 4
  br label %194

166:                                              ; preds = %48
  %167 = load i32, i32* @K_UNDO, align 4
  store i32 %167, i32* %5, align 4
  br label %194

168:                                              ; preds = %48
  %169 = load i32, i32* @K_SCROLLOCK, align 4
  store i32 %169, i32* %5, align 4
  br label %194

170:                                              ; preds = %48
  %171 = load i32, i32* @K_KP_NUMLOCK, align 4
  store i32 %171, i32* %5, align 4
  br label %194

172:                                              ; preds = %48
  %173 = load i32, i32* @K_CAPSLOCK, align 4
  store i32 %173, i32* %5, align 4
  br label %194

174:                                              ; preds = %48
  %175 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %176 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 8
  %178 = load i32, i32* @SDLK_SCANCODE_MASK, align 4
  %179 = and i32 %177, %178
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %193, label %181

181:                                              ; preds = %174
  %182 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %183 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %182, i32 0, i32 0
  %184 = load i64, i64* %183, align 8
  %185 = icmp sle i64 %184, 95
  br i1 %185, label %186, label %193

186:                                              ; preds = %181
  %187 = load i32, i32* @K_WORLD_0, align 4
  %188 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %189 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %188, i32 0, i32 0
  %190 = load i64, i64* %189, align 8
  %191 = trunc i64 %190 to i32
  %192 = add nsw i32 %187, %191
  store i32 %192, i32* %5, align 4
  br label %193

193:                                              ; preds = %186, %181, %174
  br label %194

194:                                              ; preds = %193, %172, %170, %168, %166, %164, %162, %160, %158, %156, %154, %152, %150, %148, %146, %144, %142, %140, %138, %136, %134, %132, %130, %128, %126, %124, %122, %120, %118, %116, %114, %112, %110, %108, %106, %104, %102, %100, %98, %96, %94, %92, %90, %88, %86, %84, %82, %80, %78, %76, %74, %72, %70, %68, %66, %64, %62, %60, %58, %56, %54, %52
  br label %195

195:                                              ; preds = %194, %44
  br label %196

196:                                              ; preds = %195, %32
  %197 = load %struct.TYPE_6__*, %struct.TYPE_6__** @in_keyboardDebug, align 8
  %198 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %197, i32 0, i32 0
  %199 = load i64, i64* %198, align 8
  %200 = icmp ne i64 %199, 0
  br i1 %200, label %201, label %206

201:                                              ; preds = %196
  %202 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %203 = load i32, i32* %5, align 4
  %204 = load i32, i32* %4, align 4
  %205 = call i32 @IN_PrintKey(%struct.TYPE_5__* %202, i32 %203, i32 %204)
  br label %206

206:                                              ; preds = %201, %196
  %207 = load i32, i32* %5, align 4
  %208 = call i64 @IN_IsConsoleKey(i32 %207, i32 0)
  %209 = icmp ne i64 %208, 0
  br i1 %209, label %210, label %212

210:                                              ; preds = %206
  %211 = load i32, i32* @K_CONSOLE, align 4
  store i32 %211, i32* %5, align 4
  br label %212

212:                                              ; preds = %210, %206
  %213 = load i32, i32* %5, align 4
  ret i32 %213
}

declare dso_local i32 @IN_PrintKey(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i64 @IN_IsConsoleKey(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
