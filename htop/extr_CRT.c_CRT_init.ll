; ModuleID = '/home/carl/AnghaBench/htop/extr_CRT.c_CRT_init.c'
source_filename = "/home/carl/AnghaBench/htop/extr_CRT.c_CRT_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CRT_delay = common dso_local global i32 0, align 4
@CRT_colorSchemes = common dso_local global i32** null, align 8
@CRT_colors = common dso_local global i32* null, align 8
@CRT_colorScheme = common dso_local global i32 0, align 4
@LAST_COLORELEMENT = common dso_local global i32 0, align 4
@COLORSCHEME_DEFAULT = common dso_local global i64 0, align 8
@A_BOLD = common dso_local global i32 0, align 4
@ColorPairGrayBlack = common dso_local global i32 0, align 4
@White = common dso_local global i32 0, align 4
@Black = common dso_local global i32 0, align 4
@COLORSCHEME_BROKENGRAY = common dso_local global i64 0, align 8
@stdscr = common dso_local global i32 0, align 4
@CRT_hasColors = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"TERM\00", align 1
@CRT_termType = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"linux\00", align 1
@CRT_scrollHAmount = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"xterm\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"vt220\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"\1B[H\00", align 1
@KEY_HOME = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [4 x i8] c"\1B[F\00", align 1
@KEY_END = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [5 x i8] c"\1B[7~\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"\1B[8~\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"\1BOP\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"\1BOQ\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"\1BOR\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"\1BOS\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"\1B[11~\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"\1B[12~\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"\1B[13~\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"\1B[14~\00", align 1
@.str.16 = private unnamed_addr constant [8 x i8] c"\1B[17;2~\00", align 1
@__const.CRT_init.sequence = private unnamed_addr constant [3 x i8] c"\1Ba\00", align 1
@CRT_handleSIGSEGV = common dso_local global i32 0, align 4
@SIGTERM = common dso_local global i32 0, align 4
@CRT_handleSIGTERM = common dso_local global i32 0, align 4
@SIGQUIT = common dso_local global i32 0, align 4
@LC_CTYPE = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@CRT_treeStrAscii = common dso_local global i32 0, align 4
@CRT_treeStr = common dso_local global i32 0, align 4
@BUTTON1_RELEASED = common dso_local global i32 0, align 4
@BUTTON4_PRESSED = common dso_local global i32 0, align 4
@BUTTON5_PRESSED = common dso_local global i32 0, align 4
@CODESET = common dso_local global i32 0, align 4
@CRT_treeStrUtf8 = common dso_local global i32 0, align 4
@CRT_utf8 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CRT_init(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [3 x i8], align 1
  %8 = alloca i8, align 1
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %9 = call i32 (...) @initscr()
  %10 = call i32 (...) @noecho()
  %11 = load i32, i32* %3, align 4
  store i32 %11, i32* @CRT_delay, align 4
  %12 = load i32, i32* @CRT_delay, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store i32 1, i32* @CRT_delay, align 4
  br label %15

15:                                               ; preds = %14, %2
  %16 = load i32**, i32*** @CRT_colorSchemes, align 8
  %17 = load i32, i32* %4, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32*, i32** %16, i64 %18
  %20 = load i32*, i32** %19, align 8
  store i32* %20, i32** @CRT_colors, align 8
  %21 = load i32, i32* %4, align 4
  store i32 %21, i32* @CRT_colorScheme, align 4
  store i32 0, i32* %5, align 4
  br label %22

22:                                               ; preds = %55, %15
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @LAST_COLORELEMENT, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %58

26:                                               ; preds = %22
  %27 = load i32**, i32*** @CRT_colorSchemes, align 8
  %28 = load i64, i64* @COLORSCHEME_DEFAULT, align 8
  %29 = getelementptr inbounds i32*, i32** %27, i64 %28
  %30 = load i32*, i32** %29, align 8
  %31 = load i32, i32* %5, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* @A_BOLD, align 4
  %37 = load i32, i32* @ColorPairGrayBlack, align 4
  %38 = or i32 %36, %37
  %39 = icmp eq i32 %35, %38
  br i1 %39, label %40, label %44

40:                                               ; preds = %26
  %41 = load i32, i32* @White, align 4
  %42 = load i32, i32* @Black, align 4
  %43 = call i32 @ColorPair(i32 %41, i32 %42)
  br label %46

44:                                               ; preds = %26
  %45 = load i32, i32* %6, align 4
  br label %46

46:                                               ; preds = %44, %40
  %47 = phi i32 [ %43, %40 ], [ %45, %44 ]
  %48 = load i32**, i32*** @CRT_colorSchemes, align 8
  %49 = load i64, i64* @COLORSCHEME_BROKENGRAY, align 8
  %50 = getelementptr inbounds i32*, i32** %48, i64 %49
  %51 = load i32*, i32** %50, align 8
  %52 = load i32, i32* %5, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  store i32 %47, i32* %54, align 4
  br label %55

55:                                               ; preds = %46
  %56 = load i32, i32* %5, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %5, align 4
  br label %22

58:                                               ; preds = %22
  %59 = load i32, i32* @CRT_delay, align 4
  %60 = call i32 @halfdelay(i32 %59)
  %61 = call i32 (...) @nonl()
  %62 = load i32, i32* @stdscr, align 4
  %63 = call i32 @intrflush(i32 %62, i32 0)
  %64 = load i32, i32* @stdscr, align 4
  %65 = call i32 @keypad(i32 %64, i32 1)
  %66 = call i32 @mouseinterval(i32 0)
  %67 = call i32 @curs_set(i32 0)
  %68 = call i64 (...) @has_colors()
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %58
  %71 = call i32 (...) @start_color()
  store i32 1, i32* @CRT_hasColors, align 4
  br label %73

72:                                               ; preds = %58
  store i32 0, i32* @CRT_hasColors, align 4
  br label %73

73:                                               ; preds = %72, %70
  %74 = call i32 @getenv(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i32 %74, i32* @CRT_termType, align 4
  %75 = load i32, i32* @CRT_termType, align 4
  %76 = call i64 @String_eq(i32 %75, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %73
  store i32 20, i32* @CRT_scrollHAmount, align 4
  br label %80

79:                                               ; preds = %73
  store i32 5, i32* @CRT_scrollHAmount, align 4
  br label %80

80:                                               ; preds = %79, %78
  %81 = load i32, i32* @CRT_termType, align 4
  %82 = call i64 @String_startsWith(i32 %81, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %88, label %84

84:                                               ; preds = %80
  %85 = load i32, i32* @CRT_termType, align 4
  %86 = call i64 @String_eq(i32 %85, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %135

88:                                               ; preds = %84, %80
  %89 = load i32, i32* @KEY_HOME, align 4
  %90 = call i32 @define_key(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %89)
  %91 = load i32, i32* @KEY_END, align 4
  %92 = call i32 @define_key(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i32 %91)
  %93 = load i32, i32* @KEY_HOME, align 4
  %94 = call i32 @define_key(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i32 %93)
  %95 = load i32, i32* @KEY_END, align 4
  %96 = call i32 @define_key(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i32 %95)
  %97 = call i32 @KEY_F(i32 1)
  %98 = call i32 @define_key(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i32 %97)
  %99 = call i32 @KEY_F(i32 2)
  %100 = call i32 @define_key(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), i32 %99)
  %101 = call i32 @KEY_F(i32 3)
  %102 = call i32 @define_key(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), i32 %101)
  %103 = call i32 @KEY_F(i32 4)
  %104 = call i32 @define_key(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32 %103)
  %105 = call i32 @KEY_F(i32 1)
  %106 = call i32 @define_key(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0), i32 %105)
  %107 = call i32 @KEY_F(i32 2)
  %108 = call i32 @define_key(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i64 0, i64 0), i32 %107)
  %109 = call i32 @KEY_F(i32 3)
  %110 = call i32 @define_key(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i64 0, i64 0), i32 %109)
  %111 = call i32 @KEY_F(i32 4)
  %112 = call i32 @define_key(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i64 0, i64 0), i32 %111)
  %113 = call i32 @KEY_F(i32 18)
  %114 = call i32 @define_key(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i64 0, i64 0), i32 %113)
  %115 = bitcast [3 x i8]* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %115, i8* align 1 getelementptr inbounds ([3 x i8], [3 x i8]* @__const.CRT_init.sequence, i32 0, i32 0), i64 3, i1 false)
  store i8 97, i8* %8, align 1
  br label %116

116:                                              ; preds = %131, %88
  %117 = load i8, i8* %8, align 1
  %118 = sext i8 %117 to i32
  %119 = icmp sle i32 %118, 122
  br i1 %119, label %120, label %134

120:                                              ; preds = %116
  %121 = load i8, i8* %8, align 1
  %122 = getelementptr inbounds [3 x i8], [3 x i8]* %7, i64 0, i64 1
  store i8 %121, i8* %122, align 1
  %123 = getelementptr inbounds [3 x i8], [3 x i8]* %7, i64 0, i64 0
  %124 = load i8, i8* %8, align 1
  %125 = sext i8 %124 to i32
  %126 = sub nsw i32 %125, 97
  %127 = add nsw i32 65, %126
  %128 = trunc i32 %127 to i8
  %129 = call i32 @KEY_ALT(i8 signext %128)
  %130 = call i32 @define_key(i8* %123, i32 %129)
  br label %131

131:                                              ; preds = %120
  %132 = load i8, i8* %8, align 1
  %133 = add i8 %132, 1
  store i8 %133, i8* %8, align 1
  br label %116

134:                                              ; preds = %116
  br label %135

135:                                              ; preds = %134, %84
  %136 = load i32, i32* @CRT_handleSIGSEGV, align 4
  %137 = call i32 @signal(i32 11, i32 %136)
  %138 = load i32, i32* @SIGTERM, align 4
  %139 = load i32, i32* @CRT_handleSIGTERM, align 4
  %140 = call i32 @signal(i32 %138, i32 %139)
  %141 = load i32, i32* @SIGQUIT, align 4
  %142 = load i32, i32* @CRT_handleSIGTERM, align 4
  %143 = call i32 @signal(i32 %141, i32 %142)
  %144 = call i32 (...) @use_default_colors()
  %145 = call i64 (...) @has_colors()
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %148, label %147

147:                                              ; preds = %135
  store i32 1, i32* @CRT_colorScheme, align 4
  br label %148

148:                                              ; preds = %147, %135
  %149 = load i32, i32* @CRT_colorScheme, align 4
  %150 = call i32 @CRT_setColors(i32 %149)
  %151 = load i32, i32* @LC_CTYPE, align 4
  %152 = call i32 @setlocale(i32 %151, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.17, i64 0, i64 0))
  %153 = load i32, i32* @CRT_treeStrAscii, align 4
  store i32 %153, i32* @CRT_treeStr, align 4
  %154 = load i32, i32* @BUTTON1_RELEASED, align 4
  %155 = call i32 @mousemask(i32 %154, i32* null)
  ret void
}

declare dso_local i32 @initscr(...) #1

declare dso_local i32 @noecho(...) #1

declare dso_local i32 @ColorPair(i32, i32) #1

declare dso_local i32 @halfdelay(i32) #1

declare dso_local i32 @nonl(...) #1

declare dso_local i32 @intrflush(i32, i32) #1

declare dso_local i32 @keypad(i32, i32) #1

declare dso_local i32 @mouseinterval(i32) #1

declare dso_local i32 @curs_set(i32) #1

declare dso_local i64 @has_colors(...) #1

declare dso_local i32 @start_color(...) #1

declare dso_local i32 @getenv(i8*) #1

declare dso_local i64 @String_eq(i32, i8*) #1

declare dso_local i64 @String_startsWith(i32, i8*) #1

declare dso_local i32 @define_key(i8*, i32) #1

declare dso_local i32 @KEY_F(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @KEY_ALT(i8 signext) #1

declare dso_local i32 @signal(i32, i32) #1

declare dso_local i32 @use_default_colors(...) #1

declare dso_local i32 @CRT_setColors(i32) #1

declare dso_local i32 @setlocale(i32, i8*) #1

declare dso_local i32 @mousemask(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
