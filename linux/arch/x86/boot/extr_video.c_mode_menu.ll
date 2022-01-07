; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/boot/extr_video.c_mode_menu.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/boot/extr_video.c_mode_menu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [81 x i8] c"Press <ENTER> to see video modes available, <SPACE> to continue, or wait 30 sec\0A\00", align 1
@VIDEO_CURRENT_MODE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [60 x i8] c"Enter a video mode or \22scan\22 to scan for additional modes: \00", align 1
@SCAN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @mode_menu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mode_menu() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = call i32 @puts(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str, i64 0, i64 0))
  %5 = call i32 (...) @kbd_flush()
  br label %6

6:                                                ; preds = %0, %19
  %7 = call i32 (...) @getchar_timeout()
  store i32 %7, i32* %2, align 4
  %8 = load i32, i32* %2, align 4
  %9 = icmp eq i32 %8, 32
  br i1 %9, label %13, label %10

10:                                               ; preds = %6
  %11 = load i32, i32* %2, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %10, %6
  %14 = load i32, i32* @VIDEO_CURRENT_MODE, align 4
  store i32 %14, i32* %1, align 4
  br label %33

15:                                               ; preds = %10
  %16 = load i32, i32* %2, align 4
  %17 = icmp eq i32 %16, 13
  br i1 %17, label %18, label %19

18:                                               ; preds = %15
  br label %21

19:                                               ; preds = %15
  %20 = call i32 @putchar(i8 signext 7)
  br label %6

21:                                               ; preds = %18
  br label %22

22:                                               ; preds = %31, %21
  %23 = call i32 (...) @display_menu()
  %24 = call i32 @puts(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.1, i64 0, i64 0))
  %25 = call i32 (...) @get_entry()
  store i32 %25, i32* %3, align 4
  %26 = load i32, i32* %3, align 4
  %27 = load i32, i32* @SCAN, align 4
  %28 = icmp ne i32 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %22
  %30 = load i32, i32* %3, align 4
  store i32 %30, i32* %1, align 4
  br label %33

31:                                               ; preds = %22
  %32 = call i32 @probe_cards(i32 1)
  br label %22

33:                                               ; preds = %29, %13
  %34 = load i32, i32* %1, align 4
  ret i32 %34
}

declare dso_local i32 @puts(i8*) #1

declare dso_local i32 @kbd_flush(...) #1

declare dso_local i32 @getchar_timeout(...) #1

declare dso_local i32 @putchar(i8 signext) #1

declare dso_local i32 @display_menu(...) #1

declare dso_local i32 @get_entry(...) #1

declare dso_local i32 @probe_cards(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
