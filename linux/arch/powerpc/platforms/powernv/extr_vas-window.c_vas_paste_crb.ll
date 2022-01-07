; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/powernv/extr_vas-window.c_vas_paste_crb.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/powernv/extr_vas-window.c_vas_paste_crb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vas_window = type { i32, i8*, i64 }

@current = common dso_local global i32 0, align 4
@RMA_LSMP_REPORT_ENABLE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Txwin #%d: Msg count %llu\0A\00", align 1
@LRFIFO_PUSH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vas_paste_crb(%struct.vas_window* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.vas_window*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct.vas_window* %0, %struct.vas_window** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* @current, align 4
  %11 = load %struct.vas_window*, %struct.vas_window** %4, align 8
  %12 = call i32 @trace_vas_paste_crb(i32 %10, %struct.vas_window* %11)
  %13 = load %struct.vas_window*, %struct.vas_window** %4, align 8
  %14 = getelementptr inbounds %struct.vas_window, %struct.vas_window* %13, i32 0, i32 2
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %3
  %18 = load i32, i32* %6, align 4
  %19 = icmp ne i32 %18, 0
  %20 = xor i1 %19, true
  br label %21

21:                                               ; preds = %17, %3
  %22 = phi i1 [ false, %3 ], [ %20, %17 ]
  %23 = zext i1 %22 to i32
  %24 = call i32 @WARN_ON_ONCE(i32 %23)
  %25 = load %struct.vas_window*, %struct.vas_window** %4, align 8
  %26 = getelementptr inbounds %struct.vas_window, %struct.vas_window* %25, i32 0, i32 1
  %27 = load i8*, i8** %26, align 8
  store i8* %27, i8** %8, align 8
  %28 = load i32, i32* %6, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %21
  %31 = load i32, i32* @RMA_LSMP_REPORT_ENABLE, align 4
  %32 = call i32 @SET_FIELD(i32 %31, i64 0, i32 1)
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* %9, align 4
  %34 = load i8*, i8** %8, align 8
  %35 = sext i32 %33 to i64
  %36 = getelementptr i8, i8* %34, i64 %35
  store i8* %36, i8** %8, align 8
  br label %37

37:                                               ; preds = %30, %21
  %38 = load i8*, i8** %8, align 8
  %39 = load i32, i32* %5, align 4
  %40 = call i32 @vas_paste(i8* %38, i32 %39)
  store i32 %40, i32* %7, align 4
  %41 = load i32, i32* %7, align 4
  %42 = icmp eq i32 %41, 2
  br i1 %42, label %43, label %44

43:                                               ; preds = %37
  store i32 0, i32* %7, align 4
  br label %47

44:                                               ; preds = %37
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %7, align 4
  br label %47

47:                                               ; preds = %44, %43
  %48 = load %struct.vas_window*, %struct.vas_window** %4, align 8
  %49 = getelementptr inbounds %struct.vas_window, %struct.vas_window* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.vas_window*, %struct.vas_window** %4, align 8
  %52 = load i32, i32* @LRFIFO_PUSH, align 4
  %53 = call i32 @VREG(i32 %52)
  %54 = call i32 @read_hvwc_reg(%struct.vas_window* %51, i32 %53)
  %55 = call i32 @pr_debug(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %50, i32 %54)
  %56 = load i32, i32* %7, align 4
  ret i32 %56
}

declare dso_local i32 @trace_vas_paste_crb(i32, %struct.vas_window*) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @SET_FIELD(i32, i64, i32) #1

declare dso_local i32 @vas_paste(i8*, i32) #1

declare dso_local i32 @pr_debug(i8*, i32, i32) #1

declare dso_local i32 @read_hvwc_reg(%struct.vas_window*, i32) #1

declare dso_local i32 @VREG(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
