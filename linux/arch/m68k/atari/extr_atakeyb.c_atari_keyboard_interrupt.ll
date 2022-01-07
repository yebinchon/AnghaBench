; ModuleID = '/home/carl/AnghaBench/linux/arch/m68k/atari/extr_atakeyb.c_atari_keyboard_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/arch/m68k/atari/extr_atakeyb.c_atari_keyboard_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.TYPE_3__ = type { i32, i32, i32* }

@acia = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@ACIA_IRQ = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@ACIA_OVRN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"Keyboard overrun\0A\00", align 1
@ikbd_self_test = common dso_local global i64 0, align 8
@kb_state = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@ACIA_RDRF = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@self_test_last_rcv = common dso_local global i32 0, align 4
@BREAK_MASK = common dso_local global i32 0, align 4
@broken_keys = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"Key with scancode %d \00", align 1
@KT_LATIN = common dso_local global i32 0, align 4
@KT_LETTER = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"('^%c') \00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"('%c') \00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"is broken -- will be ignored.\0A\00", align 1
@ACIA_FE = common dso_local global i32 0, align 4
@ACIA_PE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [33 x i8] c"Error in keyboard communication\0A\00", align 1
@ACIA_CTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @atari_keyboard_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atari_keyboard_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  br label %10

10:                                               ; preds = %198, %45, %2
  %11 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @acia, i32 0, i32 0), align 4
  %12 = load i32, i32* @ACIA_IRQ, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %10
  br i1 true, label %16, label %18

16:                                               ; preds = %15
  %17 = call i32 (...) @atari_MIDI_interrupt_hook()
  br label %18

18:                                               ; preds = %16, %15
  br label %19

19:                                               ; preds = %18, %10
  %20 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @acia, i32 0, i32 1), align 4
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @acia, i32 0, i32 0), align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @ACIA_IRQ, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %19
  %28 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %28

29:                                               ; preds = %19
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* @ACIA_OVRN, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %46

34:                                               ; preds = %29
  %35 = call i32 @pr_debug(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %36 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @acia, i32 0, i32 2), align 4
  store i32 %36, i32* %6, align 4
  %37 = load i64, i64* @ikbd_self_test, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %34
  br label %53

40:                                               ; preds = %34
  %41 = load i32, i32* %6, align 4
  %42 = call i64 @IS_SYNC_CODE(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %40
  store i32 130, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @kb_state, i32 0, i32 0), align 8
  br label %53

45:                                               ; preds = %40
  store i32 129, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @kb_state, i32 0, i32 0), align 8
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @kb_state, i32 0, i32 1), align 4
  br label %10

46:                                               ; preds = %29
  %47 = load i32, i32* %5, align 4
  %48 = load i32, i32* @ACIA_RDRF, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %189

51:                                               ; preds = %46
  %52 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @acia, i32 0, i32 2), align 4
  store i32 %52, i32* %6, align 4
  br label %53

53:                                               ; preds = %184, %51, %44, %39
  %54 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @kb_state, i32 0, i32 0), align 8
  switch i32 %54, label %188 [
    i32 130, label %55
    i32 133, label %136
    i32 128, label %147
    i32 131, label %162
    i32 132, label %166
    i32 129, label %177
  ]

55:                                               ; preds = %53
  %56 = load i32, i32* %6, align 4
  switch i32 %56, label %75 [
    i32 247, label %57
    i32 248, label %58
    i32 249, label %58
    i32 250, label %58
    i32 251, label %58
    i32 252, label %62
    i32 254, label %63
    i32 255, label %63
    i32 241, label %67
  ]

57:                                               ; preds = %55
  store i32 133, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @kb_state, i32 0, i32 0), align 8
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @kb_state, i32 0, i32 1), align 4
  br label %135

58:                                               ; preds = %55, %55, %55, %55
  store i32 128, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @kb_state, i32 0, i32 0), align 8
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @kb_state, i32 0, i32 1), align 4
  %59 = load i32, i32* %6, align 4
  %60 = load i32*, i32** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @kb_state, i32 0, i32 2), align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 0
  store i32 %59, i32* %61, align 4
  br label %135

62:                                               ; preds = %55
  store i32 132, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @kb_state, i32 0, i32 0), align 8
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @kb_state, i32 0, i32 1), align 4
  br label %135

63:                                               ; preds = %55, %55
  store i32 131, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @kb_state, i32 0, i32 0), align 8
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @kb_state, i32 0, i32 1), align 4
  %64 = load i32, i32* %6, align 4
  %65 = load i32*, i32** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @kb_state, i32 0, i32 2), align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 0
  store i32 %64, i32* %66, align 4
  br label %135

67:                                               ; preds = %55
  %68 = load i64, i64* @ikbd_self_test, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %67
  %71 = load i64, i64* @ikbd_self_test, align 8
  %72 = add nsw i64 %71, 1
  store i64 %72, i64* @ikbd_self_test, align 8
  %73 = load i32, i32* @jiffies, align 4
  store i32 %73, i32* @self_test_last_rcv, align 4
  br label %135

74:                                               ; preds = %67
  br label %75

75:                                               ; preds = %55, %74
  %76 = load i32, i32* %6, align 4
  %77 = load i32, i32* @BREAK_MASK, align 4
  %78 = and i32 %76, %77
  store i32 %78, i32* %7, align 4
  %79 = load i32, i32* @BREAK_MASK, align 4
  %80 = xor i32 %79, -1
  %81 = load i32, i32* %6, align 4
  %82 = and i32 %81, %80
  store i32 %82, i32* %6, align 4
  %83 = load i64, i64* @ikbd_self_test, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %118

85:                                               ; preds = %75
  %86 = load i32, i32* %6, align 4
  %87 = load i32, i32* @broken_keys, align 4
  %88 = call i32 @set_bit(i32 %86, i32 %87)
  %89 = load i32, i32* @jiffies, align 4
  store i32 %89, i32* @self_test_last_rcv, align 4
  %90 = load i32, i32* %6, align 4
  store i32 %90, i32* %8, align 4
  %91 = load i32, i32* %8, align 4
  %92 = call i32 @KTYP(i32 %91)
  %93 = sub nsw i32 %92, 240
  store i32 %93, i32* %9, align 4
  %94 = load i32, i32* %8, align 4
  %95 = call i32 @KVAL(i32 %94)
  store i32 %95, i32* %8, align 4
  %96 = load i32, i32* %6, align 4
  %97 = call i32 @pr_warn(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %96)
  %98 = load i32, i32* %9, align 4
  %99 = load i32, i32* @KT_LATIN, align 4
  %100 = icmp eq i32 %98, %99
  br i1 %100, label %105, label %101

101:                                              ; preds = %85
  %102 = load i32, i32* %9, align 4
  %103 = load i32, i32* @KT_LETTER, align 4
  %104 = icmp eq i32 %102, %103
  br i1 %104, label %105, label %116

105:                                              ; preds = %101, %85
  %106 = load i32, i32* %8, align 4
  %107 = icmp slt i32 %106, 32
  br i1 %107, label %108, label %112

108:                                              ; preds = %105
  %109 = load i32, i32* %8, align 4
  %110 = add nsw i32 %109, 64
  %111 = call i32 (i8*, ...) @pr_cont(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 %110)
  br label %115

112:                                              ; preds = %105
  %113 = load i32, i32* %8, align 4
  %114 = call i32 (i8*, ...) @pr_cont(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 %113)
  br label %115

115:                                              ; preds = %112, %108
  br label %116

116:                                              ; preds = %115, %101
  %117 = call i32 (i8*, ...) @pr_cont(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0))
  br label %135

118:                                              ; preds = %75
  %119 = load i32, i32* %6, align 4
  %120 = load i32, i32* @broken_keys, align 4
  %121 = call i32 @test_bit(i32 %119, i32 %120)
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %118
  br label %135

124:                                              ; preds = %118
  br label %125

125:                                              ; preds = %124
  br i1 true, label %126, label %134

126:                                              ; preds = %125
  %127 = load i32, i32* %6, align 4
  %128 = trunc i32 %127 to i8
  %129 = load i32, i32* %7, align 4
  %130 = icmp ne i32 %129, 0
  %131 = xor i1 %130, true
  %132 = zext i1 %131 to i32
  %133 = call i32 @atari_input_keyboard_interrupt_hook(i8 zeroext %128, i32 %132)
  br label %134

134:                                              ; preds = %126, %125
  br label %135

135:                                              ; preds = %134, %123, %116, %70, %63, %62, %58, %57
  br label %188

136:                                              ; preds = %53
  %137 = load i32, i32* %6, align 4
  %138 = load i32*, i32** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @kb_state, i32 0, i32 2), align 8
  %139 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @kb_state, i32 0, i32 1), align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @kb_state, i32 0, i32 1), align 4
  %141 = sext i32 %139 to i64
  %142 = getelementptr inbounds i32, i32* %138, i64 %141
  store i32 %137, i32* %142, align 4
  %143 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @kb_state, i32 0, i32 1), align 4
  %144 = icmp eq i32 %143, 5
  br i1 %144, label %145, label %146

145:                                              ; preds = %136
  store i32 130, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @kb_state, i32 0, i32 0), align 8
  br label %146

146:                                              ; preds = %145, %136
  br label %188

147:                                              ; preds = %53
  %148 = load i32, i32* %6, align 4
  %149 = load i32*, i32** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @kb_state, i32 0, i32 2), align 8
  %150 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @kb_state, i32 0, i32 1), align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @kb_state, i32 0, i32 1), align 4
  %152 = sext i32 %150 to i64
  %153 = getelementptr inbounds i32, i32* %149, i64 %152
  store i32 %148, i32* %153, align 4
  %154 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @kb_state, i32 0, i32 1), align 4
  %155 = icmp eq i32 %154, 3
  br i1 %155, label %156, label %161

156:                                              ; preds = %147
  store i32 130, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @kb_state, i32 0, i32 0), align 8
  br i1 true, label %157, label %160

157:                                              ; preds = %156
  %158 = load i32*, i32** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @kb_state, i32 0, i32 2), align 8
  %159 = call i32 @atari_input_mouse_interrupt_hook(i32* %158)
  br label %160

160:                                              ; preds = %157, %156
  br label %161

161:                                              ; preds = %160, %147
  br label %188

162:                                              ; preds = %53
  %163 = load i32, i32* %6, align 4
  %164 = load i32*, i32** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @kb_state, i32 0, i32 2), align 8
  %165 = getelementptr inbounds i32, i32* %164, i64 1
  store i32 %163, i32* %165, align 4
  store i32 130, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @kb_state, i32 0, i32 0), align 8
  br label %188

166:                                              ; preds = %53
  %167 = load i32, i32* %6, align 4
  %168 = load i32*, i32** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @kb_state, i32 0, i32 2), align 8
  %169 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @kb_state, i32 0, i32 1), align 4
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @kb_state, i32 0, i32 1), align 4
  %171 = sext i32 %169 to i64
  %172 = getelementptr inbounds i32, i32* %168, i64 %171
  store i32 %167, i32* %172, align 4
  %173 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @kb_state, i32 0, i32 1), align 4
  %174 = icmp eq i32 %173, 6
  br i1 %174, label %175, label %176

175:                                              ; preds = %166
  store i32 130, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @kb_state, i32 0, i32 0), align 8
  br label %176

176:                                              ; preds = %175, %166
  br label %188

177:                                              ; preds = %53
  %178 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @kb_state, i32 0, i32 1), align 4
  %179 = icmp sle i32 %178, 0
  br i1 %179, label %184, label %180

180:                                              ; preds = %177
  %181 = load i32, i32* %6, align 4
  %182 = call i64 @IS_SYNC_CODE(i32 %181)
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %184, label %185

184:                                              ; preds = %180, %177
  store i32 130, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @kb_state, i32 0, i32 0), align 8
  br label %53

185:                                              ; preds = %180
  %186 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @kb_state, i32 0, i32 1), align 4
  %187 = add nsw i32 %186, -1
  store i32 %187, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @kb_state, i32 0, i32 1), align 4
  br label %188

188:                                              ; preds = %53, %185, %176, %162, %161, %146, %135
  br label %189

189:                                              ; preds = %188, %46
  %190 = load i32, i32* %5, align 4
  %191 = load i32, i32* @ACIA_FE, align 4
  %192 = load i32, i32* @ACIA_PE, align 4
  %193 = or i32 %191, %192
  %194 = and i32 %190, %193
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %198

196:                                              ; preds = %189
  %197 = call i32 @pr_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0))
  br label %198

198:                                              ; preds = %196, %189
  br label %10
}

declare dso_local i32 @atari_MIDI_interrupt_hook(...) #1

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local i64 @IS_SYNC_CODE(i32) #1

declare dso_local i32 @set_bit(i32, i32) #1

declare dso_local i32 @KTYP(i32) #1

declare dso_local i32 @KVAL(i32) #1

declare dso_local i32 @pr_warn(i8*, i32) #1

declare dso_local i32 @pr_cont(i8*, ...) #1

declare dso_local i32 @test_bit(i32, i32) #1

declare dso_local i32 @atari_input_keyboard_interrupt_hook(i8 zeroext, i32) #1

declare dso_local i32 @atari_input_mouse_interrupt_hook(i32*) #1

declare dso_local i32 @pr_err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
