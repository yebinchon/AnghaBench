; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_rtasd.c_pSeries_log_error.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_rtasd.c_pSeries_log_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [22 x i8] c"rtasd: logging event\0A\00", align 1
@rtasd_log_lock = common dso_local global i32 0, align 4
@ERR_TYPE_MASK = common dso_local global i32 0, align 4
@ERR_FLAG_BOOT = common dso_local global i32 0, align 4
@error_log_cnt = common dso_local global i32 0, align 4
@logging_enabled = common dso_local global i64 0, align 8
@rtas_error_log_buffer_max = common dso_local global i32 0, align 4
@rtas_log_start = common dso_local global i32 0, align 4
@rtas_log_size = common dso_local global i32 0, align 4
@LOG_NUMBER_MASK = common dso_local global i32 0, align 4
@rtas_log_buf = common dso_local global i32* null, align 8
@LOG_NUMBER = common dso_local global i32 0, align 4
@rtas_log_wait = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pSeries_log_error(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %9, align 4
  %10 = call i32 @pr_debug(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %11 = load i8*, i8** %4, align 8
  %12 = icmp eq i8* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  br label %115

14:                                               ; preds = %3
  %15 = load i64, i64* %8, align 8
  %16 = call i32 @spin_lock_irqsave(i32* @rtasd_log_lock, i64 %15)
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @ERR_TYPE_MASK, align 4
  %19 = and i32 %17, %18
  switch i32 %19, label %32 [
    i32 128, label %20
    i32 129, label %31
  ]

20:                                               ; preds = %14
  %21 = load i8*, i8** %4, align 8
  %22 = call i32 @log_rtas_len(i8* %21)
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @ERR_FLAG_BOOT, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %20
  %28 = load i32, i32* @error_log_cnt, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* @error_log_cnt, align 4
  br label %30

30:                                               ; preds = %27, %20
  br label %40

31:                                               ; preds = %14
  br label %32

32:                                               ; preds = %14, %31
  %33 = call i32 (...) @irqs_disabled()
  %34 = icmp ne i32 %33, 0
  %35 = xor i1 %34, true
  %36 = zext i1 %35 to i32
  %37 = call i32 @WARN_ON_ONCE(i32 %36)
  %38 = load i64, i64* %8, align 8
  %39 = call i32 @spin_unlock_irqrestore(i32* @rtasd_log_lock, i64 %38)
  br label %115

40:                                               ; preds = %30
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* @ERR_TYPE_MASK, align 4
  %43 = and i32 %41, %42
  %44 = icmp eq i32 %43, 128
  br i1 %44, label %45, label %49

45:                                               ; preds = %40
  %46 = load i8*, i8** %4, align 8
  %47 = load i32, i32* %9, align 4
  %48 = call i32 @printk_log_rtas(i8* %46, i32 %47)
  br label %49

49:                                               ; preds = %45, %40
  %50 = load i32, i32* %6, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %55, label %52

52:                                               ; preds = %49
  %53 = load i64, i64* @logging_enabled, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %63, label %55

55:                                               ; preds = %52, %49
  store i64 0, i64* @logging_enabled, align 8
  %56 = call i32 (...) @irqs_disabled()
  %57 = icmp ne i32 %56, 0
  %58 = xor i1 %57, true
  %59 = zext i1 %58 to i32
  %60 = call i32 @WARN_ON_ONCE(i32 %59)
  %61 = load i64, i64* %8, align 8
  %62 = call i32 @spin_unlock_irqrestore(i32* @rtasd_log_lock, i64 %61)
  br label %115

63:                                               ; preds = %52
  %64 = load i32, i32* %5, align 4
  %65 = load i32, i32* @ERR_TYPE_MASK, align 4
  %66 = and i32 %64, %65
  switch i32 %66, label %107 [
    i32 128, label %67
    i32 129, label %106
  ]

67:                                               ; preds = %63
  %68 = load i32, i32* @rtas_error_log_buffer_max, align 4
  %69 = load i32, i32* @rtas_log_start, align 4
  %70 = load i32, i32* @rtas_log_size, align 4
  %71 = add nsw i32 %69, %70
  %72 = load i32, i32* @LOG_NUMBER_MASK, align 4
  %73 = and i32 %71, %72
  %74 = mul nsw i32 %68, %73
  %75 = sext i32 %74 to i64
  store i64 %75, i64* %7, align 8
  %76 = load i32*, i32** @rtas_log_buf, align 8
  %77 = load i64, i64* %7, align 8
  %78 = getelementptr inbounds i32, i32* %76, i64 %77
  %79 = call i32 @memcpy(i32* %78, i8* bitcast (i32* @error_log_cnt to i8*), i32 4)
  %80 = load i64, i64* %7, align 8
  %81 = add i64 %80, 4
  store i64 %81, i64* %7, align 8
  %82 = load i32*, i32** @rtas_log_buf, align 8
  %83 = load i64, i64* %7, align 8
  %84 = getelementptr inbounds i32, i32* %82, i64 %83
  %85 = load i8*, i8** %4, align 8
  %86 = load i32, i32* %9, align 4
  %87 = call i32 @memcpy(i32* %84, i8* %85, i32 %86)
  %88 = load i32, i32* @rtas_log_size, align 4
  %89 = load i32, i32* @LOG_NUMBER, align 4
  %90 = icmp slt i32 %88, %89
  br i1 %90, label %91, label %94

91:                                               ; preds = %67
  %92 = load i32, i32* @rtas_log_size, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* @rtas_log_size, align 4
  br label %97

94:                                               ; preds = %67
  %95 = load i32, i32* @rtas_log_start, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* @rtas_log_start, align 4
  br label %97

97:                                               ; preds = %94, %91
  %98 = call i32 (...) @irqs_disabled()
  %99 = icmp ne i32 %98, 0
  %100 = xor i1 %99, true
  %101 = zext i1 %100 to i32
  %102 = call i32 @WARN_ON_ONCE(i32 %101)
  %103 = load i64, i64* %8, align 8
  %104 = call i32 @spin_unlock_irqrestore(i32* @rtasd_log_lock, i64 %103)
  %105 = call i32 @wake_up_interruptible(i32* @rtas_log_wait)
  br label %115

106:                                              ; preds = %63
  br label %107

107:                                              ; preds = %63, %106
  %108 = call i32 (...) @irqs_disabled()
  %109 = icmp ne i32 %108, 0
  %110 = xor i1 %109, true
  %111 = zext i1 %110 to i32
  %112 = call i32 @WARN_ON_ONCE(i32 %111)
  %113 = load i64, i64* %8, align 8
  %114 = call i32 @spin_unlock_irqrestore(i32* @rtasd_log_lock, i64 %113)
  br label %115

115:                                              ; preds = %13, %32, %55, %107, %97
  ret void
}

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @log_rtas_len(i8*) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @irqs_disabled(...) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @printk_log_rtas(i8*, i32) #1

declare dso_local i32 @memcpy(i32*, i8*, i32) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
