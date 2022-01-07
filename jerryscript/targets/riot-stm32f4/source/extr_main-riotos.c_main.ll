; ModuleID = '/home/carl/AnghaBench/jerryscript/targets/riot-stm32f4/source/extr_main-riotos.c_main.c'
source_filename = "/home/carl/AnghaBench/jerryscript/targets/riot-stm32f4/source/extr_main-riotos.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [40 x i8] c"You are running RIOT on a(n) %s board.\0A\00", align 1
@RIOT_BOARD = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [34 x i8] c"This board features a(n) %s MCU.\0A\00", align 1
@RIOT_MCU = common dso_local global i8* null, align 8
@SHELL_DEFAULT_BUFSIZE = common dso_local global i32 0, align 4
@shell_commands = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  store i32 0, i32* %1, align 4
  %4 = call i64 (...) @jerry_port_get_current_time()
  %5 = trunc i64 %4 to i32
  %6 = call i32 @srand(i32 %5)
  %7 = load i8*, i8** @RIOT_BOARD, align 8
  %8 = call i32 @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i8* %7)
  %9 = load i8*, i8** @RIOT_MCU, align 8
  %10 = call i32 @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i8* %9)
  %11 = load i32, i32* @SHELL_DEFAULT_BUFSIZE, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %2, align 8
  %14 = alloca i8, i64 %12, align 16
  store i64 %12, i64* %3, align 8
  %15 = load i32, i32* @shell_commands, align 4
  %16 = load i32, i32* @SHELL_DEFAULT_BUFSIZE, align 4
  %17 = call i32 @shell_run(i32 %15, i8* %14, i32 %16)
  store i32 0, i32* %1, align 4
  %18 = load i8*, i8** %2, align 8
  call void @llvm.stackrestore(i8* %18)
  %19 = load i32, i32* %1, align 4
  ret i32 %19
}

declare dso_local i32 @srand(i32) #1

declare dso_local i64 @jerry_port_get_current_time(...) #1

declare dso_local i32 @printf(i8*, i8*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @shell_run(i32, i8*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
