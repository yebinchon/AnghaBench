; ModuleID = '/home/carl/AnghaBench/linux/arch/um/drivers/extr_stdio_console.c_console_chan_setup.c'
source_filename = "/home/carl/AnghaBench/linux/arch/um/drivers/extr_stdio_console.c_console_chan_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"sole=\00", align 1
@vt_conf = common dso_local global i32 0, align 4
@MAX_TTYS = common dso_local global i32 0, align 4
@def_conf = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"console\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @console_chan_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @console_chan_setup(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %4 = load i8*, i8** %3, align 8
  %5 = call i32 @strncmp(i8* %4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 5)
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %13

8:                                                ; preds = %1
  %9 = load i32, i32* @vt_conf, align 4
  %10 = load i32, i32* @MAX_TTYS, align 4
  %11 = load i8*, i8** %3, align 8
  %12 = call i32 @line_setup(i32 %9, i32 %10, i32* @def_conf, i8* %11, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %13

13:                                               ; preds = %8, %7
  %14 = load i32, i32* %2, align 4
  ret i32 %14
}

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @line_setup(i32, i32, i32*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
