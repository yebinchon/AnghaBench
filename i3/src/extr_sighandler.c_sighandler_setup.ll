; ModuleID = '/home/carl/AnghaBench/i3/src/extr_sighandler.c_sighandler_setup.c'
source_filename = "/home/carl/AnghaBench/i3/src/extr_sighandler.c_sighandler_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@border_width = common dso_local global i32 0, align 4
@margin = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"i3 has just crashed. Please report a bug for this.\00", align 1
@message_intro = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [87 x i8] c"To debug this problem, you can either attach gdb or choose from the following options:\00", align 1
@message_intro2 = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [41 x i8] c"- 'b' to save a backtrace (requires gdb)\00", align 1
@message_option_backtrace = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [29 x i8] c"- 'r' to restart i3 in-place\00", align 1
@message_option_restart = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [51 x i8] c"- 'f' to forget the previous layout and restart i3\00", align 1
@message_option_forget = common dso_local global i8* null, align 8
@dialog_width = common dso_local global i32 0, align 4
@config = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@dialog_height = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @sighandler_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sighandler_setup() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i32, i32* @border_width, align 4
  %4 = call i32 @logical_px(i32 %3)
  store i32 %4, i32* @border_width, align 4
  %5 = load i32, i32* @margin, align 4
  %6 = call i32 @logical_px(i32 %5)
  store i32 %6, i32* @margin, align 4
  store i32 5, i32* %1, align 4
  %7 = call i8* @i3string_from_utf8(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0))
  store i8* %7, i8** @message_intro, align 8
  %8 = call i8* @i3string_from_utf8(i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str.1, i64 0, i64 0))
  store i8* %8, i8** @message_intro2, align 8
  %9 = call i8* @i3string_from_utf8(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  store i8* %9, i8** @message_option_backtrace, align 8
  %10 = call i8* @i3string_from_utf8(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  store i8* %10, i8** @message_option_restart, align 8
  %11 = call i8* @i3string_from_utf8(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.4, i64 0, i64 0))
  store i8* %11, i8** @message_option_forget, align 8
  %12 = load i8*, i8** @message_intro2, align 8
  %13 = call i32 @predict_text_width(i8* %12)
  store i32 %13, i32* %2, align 4
  %14 = load i32, i32* %2, align 4
  %15 = load i32, i32* @border_width, align 4
  %16 = mul nsw i32 2, %15
  %17 = add nsw i32 %14, %16
  %18 = load i32, i32* @margin, align 4
  %19 = mul nsw i32 2, %18
  %20 = add nsw i32 %17, %19
  store i32 %20, i32* @dialog_width, align 4
  %21 = load i32, i32* %1, align 4
  %22 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @config, i32 0, i32 0, i32 0), align 4
  %23 = mul nsw i32 %21, %22
  %24 = load i32, i32* @border_width, align 4
  %25 = mul nsw i32 2, %24
  %26 = add nsw i32 %23, %25
  %27 = load i32, i32* @margin, align 4
  %28 = mul nsw i32 2, %27
  %29 = add nsw i32 %26, %28
  store i32 %29, i32* @dialog_height, align 4
  ret void
}

declare dso_local i32 @logical_px(i32) #1

declare dso_local i8* @i3string_from_utf8(i8*) #1

declare dso_local i32 @predict_text_width(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
