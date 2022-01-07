; ModuleID = '/home/carl/AnghaBench/lab/engine/code/sys/extr_con_tty.c_CON_Init.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/sys/extr_con_tty.c_CON_Init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.termios = type { i32*, i32, i32 }

@SIGTTIN = common dso_local global i32 0, align 4
@SIG_IGN = common dso_local global i32 0, align 4
@SIGTTOU = common dso_local global i32 0, align 4
@SIGCONT = common dso_local global i32 0, align 4
@CON_SigCont = common dso_local global i32 0, align 4
@STDIN_FILENO = common dso_local global i32 0, align 4
@F_SETFL = common dso_local global i32 0, align 4
@F_GETFL = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@stdinIsATTY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"tty console mode disabled\0A\00", align 1
@qfalse = common dso_local global i8* null, align 8
@ttycon_on = common dso_local global i8* null, align 8
@qtrue = common dso_local global i8* null, align 8
@stdin_active = common dso_local global i8* null, align 8
@TTY_con = common dso_local global i32 0, align 4
@TTY_tc = common dso_local global %struct.termios zeroinitializer, align 8
@VERASE = common dso_local global i64 0, align 8
@TTY_erase = common dso_local global i32 0, align 4
@VEOF = common dso_local global i64 0, align 8
@TTY_eof = common dso_local global i32 0, align 4
@ECHO = common dso_local global i32 0, align 4
@ICANON = common dso_local global i32 0, align 4
@ISTRIP = common dso_local global i32 0, align 4
@INPCK = common dso_local global i32 0, align 4
@VMIN = common dso_local global i64 0, align 8
@VTIME = common dso_local global i64 0, align 8
@TCSADRAIN = common dso_local global i32 0, align 4
@ttycon_hide = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CON_Init() #0 {
  %1 = alloca %struct.termios, align 8
  %2 = load i32, i32* @SIGTTIN, align 4
  %3 = load i32, i32* @SIG_IGN, align 4
  %4 = call i32 @signal(i32 %2, i32 %3)
  %5 = load i32, i32* @SIGTTOU, align 4
  %6 = load i32, i32* @SIG_IGN, align 4
  %7 = call i32 @signal(i32 %5, i32 %6)
  %8 = load i32, i32* @SIGCONT, align 4
  %9 = load i32, i32* @CON_SigCont, align 4
  %10 = call i32 @signal(i32 %8, i32 %9)
  %11 = load i32, i32* @STDIN_FILENO, align 4
  %12 = load i32, i32* @F_SETFL, align 4
  %13 = load i32, i32* @STDIN_FILENO, align 4
  %14 = load i32, i32* @F_GETFL, align 4
  %15 = call i32 @fcntl(i32 %13, i32 %14, i32 0)
  %16 = load i32, i32* @O_NONBLOCK, align 4
  %17 = or i32 %15, %16
  %18 = call i32 @fcntl(i32 %11, i32 %12, i32 %17)
  %19 = load i32, i32* @stdinIsATTY, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %0
  %22 = call i32 @Com_Printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %23 = load i8*, i8** @qfalse, align 8
  store i8* %23, i8** @ttycon_on, align 8
  %24 = load i8*, i8** @qtrue, align 8
  store i8* %24, i8** @stdin_active, align 8
  br label %65

25:                                               ; preds = %0
  %26 = call i32 @Field_Clear(i32* @TTY_con)
  %27 = load i32, i32* @STDIN_FILENO, align 4
  %28 = call i32 @tcgetattr(i32 %27, %struct.termios* @TTY_tc)
  %29 = load i32*, i32** getelementptr inbounds (%struct.termios, %struct.termios* @TTY_tc, i32 0, i32 0), align 8
  %30 = load i64, i64* @VERASE, align 8
  %31 = getelementptr inbounds i32, i32* %29, i64 %30
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* @TTY_erase, align 4
  %33 = load i32*, i32** getelementptr inbounds (%struct.termios, %struct.termios* @TTY_tc, i32 0, i32 0), align 8
  %34 = load i64, i64* @VEOF, align 8
  %35 = getelementptr inbounds i32, i32* %33, i64 %34
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* @TTY_eof, align 4
  %37 = bitcast %struct.termios* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %37, i8* align 8 bitcast (%struct.termios* @TTY_tc to i8*), i64 16, i1 false)
  %38 = load i32, i32* @ECHO, align 4
  %39 = load i32, i32* @ICANON, align 4
  %40 = or i32 %38, %39
  %41 = xor i32 %40, -1
  %42 = getelementptr inbounds %struct.termios, %struct.termios* %1, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = and i32 %43, %41
  store i32 %44, i32* %42, align 8
  %45 = load i32, i32* @ISTRIP, align 4
  %46 = load i32, i32* @INPCK, align 4
  %47 = or i32 %45, %46
  %48 = xor i32 %47, -1
  %49 = getelementptr inbounds %struct.termios, %struct.termios* %1, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = and i32 %50, %48
  store i32 %51, i32* %49, align 4
  %52 = getelementptr inbounds %struct.termios, %struct.termios* %1, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = load i64, i64* @VMIN, align 8
  %55 = getelementptr inbounds i32, i32* %53, i64 %54
  store i32 1, i32* %55, align 4
  %56 = getelementptr inbounds %struct.termios, %struct.termios* %1, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = load i64, i64* @VTIME, align 8
  %59 = getelementptr inbounds i32, i32* %57, i64 %58
  store i32 0, i32* %59, align 4
  %60 = load i32, i32* @STDIN_FILENO, align 4
  %61 = load i32, i32* @TCSADRAIN, align 4
  %62 = call i32 @tcsetattr(i32 %60, i32 %61, %struct.termios* %1)
  %63 = load i8*, i8** @qtrue, align 8
  store i8* %63, i8** @ttycon_on, align 8
  store i32 1, i32* @ttycon_hide, align 4
  %64 = call i32 (...) @CON_Show()
  br label %65

65:                                               ; preds = %25, %21
  ret void
}

declare dso_local i32 @signal(i32, i32) #1

declare dso_local i32 @fcntl(i32, i32, i32) #1

declare dso_local i32 @Com_Printf(i8*) #1

declare dso_local i32 @Field_Clear(i32*) #1

declare dso_local i32 @tcgetattr(i32, %struct.termios*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @tcsetattr(i32, i32, %struct.termios*) #1

declare dso_local i32 @CON_Show(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
