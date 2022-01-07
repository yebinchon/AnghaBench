; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/boot/extr_early_serial_console.c_parse_console_uart8250.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/boot/extr_early_serial_console.c_parse_console_uart8250.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DEFAULT_BAUD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"console\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"uart8250,io,\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"uart,io,\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @parse_console_uart8250 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parse_console_uart8250() #0 {
  %1 = alloca [64 x i8], align 16
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = load i32, i32* @DEFAULT_BAUD, align 4
  store i32 %5, i32* %3, align 4
  store i32 0, i32* %4, align 4
  %6 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 0
  %7 = call i64 @cmdline_find_option(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* %6, i32 64)
  %8 = icmp sle i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %0
  br label %52

10:                                               ; preds = %0
  %11 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 0
  store i8* %11, i8** %2, align 8
  %12 = load i8*, i8** %2, align 8
  %13 = call i32 @strncmp(i8* %12, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %10
  %16 = load i8*, i8** %2, align 8
  %17 = getelementptr inbounds i8, i8* %16, i64 12
  %18 = call i32 @simple_strtoull(i8* %17, i8** %2, i32 0)
  store i32 %18, i32* %4, align 4
  br label %29

19:                                               ; preds = %10
  %20 = load i8*, i8** %2, align 8
  %21 = call i32 @strncmp(i8* %20, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 8)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %19
  %24 = load i8*, i8** %2, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 8
  %26 = call i32 @simple_strtoull(i8* %25, i8** %2, i32 0)
  store i32 %26, i32* %4, align 4
  br label %28

27:                                               ; preds = %19
  br label %52

28:                                               ; preds = %23
  br label %29

29:                                               ; preds = %28, %15
  %30 = load i8*, i8** %2, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %32, label %42

32:                                               ; preds = %29
  %33 = load i8*, i8** %2, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 0
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp eq i32 %36, 44
  br i1 %37, label %38, label %42

38:                                               ; preds = %32
  %39 = load i8*, i8** %2, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 1
  %41 = call i32 @simple_strtoull(i8* %40, i8** %2, i32 0)
  store i32 %41, i32* %3, align 4
  br label %45

42:                                               ; preds = %32, %29
  %43 = load i32, i32* %4, align 4
  %44 = call i32 @probe_baud(i32 %43)
  store i32 %44, i32* %3, align 4
  br label %45

45:                                               ; preds = %42, %38
  %46 = load i32, i32* %4, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %45
  %49 = load i32, i32* %4, align 4
  %50 = load i32, i32* %3, align 4
  %51 = call i32 @early_serial_init(i32 %49, i32 %50)
  br label %52

52:                                               ; preds = %9, %27, %48, %45
  ret void
}

declare dso_local i64 @cmdline_find_option(i8*, i8*, i32) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @simple_strtoull(i8*, i8**, i32) #1

declare dso_local i32 @probe_baud(i32) #1

declare dso_local i32 @early_serial_init(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
