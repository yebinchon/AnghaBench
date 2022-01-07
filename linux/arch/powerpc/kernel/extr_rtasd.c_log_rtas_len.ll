; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_rtasd.c_log_rtas_len.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_rtasd.c_log_rtas_len.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtas_error_log = type { i32 }

@rtas_error_log_max = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @log_rtas_len to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @log_rtas_len(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.rtas_error_log*, align 8
  %5 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  store i32 8, i32* %3, align 4
  %6 = load i8*, i8** %2, align 8
  %7 = bitcast i8* %6 to %struct.rtas_error_log*
  store %struct.rtas_error_log* %7, %struct.rtas_error_log** %4, align 8
  %8 = load %struct.rtas_error_log*, %struct.rtas_error_log** %4, align 8
  %9 = call i64 @rtas_error_extended_log_length(%struct.rtas_error_log* %8)
  store i64 %9, i64* %5, align 8
  %10 = load %struct.rtas_error_log*, %struct.rtas_error_log** %4, align 8
  %11 = call i64 @rtas_error_extended(%struct.rtas_error_log* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %22

13:                                               ; preds = %1
  %14 = load i64, i64* %5, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %13
  %17 = load i64, i64* %5, align 8
  %18 = load i32, i32* %3, align 4
  %19 = sext i32 %18 to i64
  %20 = add nsw i64 %19, %17
  %21 = trunc i64 %20 to i32
  store i32 %21, i32* %3, align 4
  br label %22

22:                                               ; preds = %16, %13, %1
  %23 = load i32, i32* @rtas_error_log_max, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %22
  %26 = call i32 (...) @rtas_get_error_log_max()
  store i32 %26, i32* @rtas_error_log_max, align 4
  br label %27

27:                                               ; preds = %25, %22
  %28 = load i32, i32* %3, align 4
  %29 = load i32, i32* @rtas_error_log_max, align 4
  %30 = icmp sgt i32 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %27
  %32 = load i32, i32* @rtas_error_log_max, align 4
  store i32 %32, i32* %3, align 4
  br label %33

33:                                               ; preds = %31, %27
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

declare dso_local i64 @rtas_error_extended_log_length(%struct.rtas_error_log*) #1

declare dso_local i64 @rtas_error_extended(%struct.rtas_error_log*) #1

declare dso_local i32 @rtas_get_error_log_max(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
