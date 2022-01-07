; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/oprofile/extr_backtrace.c_dump_user_backtrace.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/oprofile/extr_backtrace.c_dump_user_backtrace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stack_frame = type { %struct.stack_frame*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.stack_frame* (%struct.stack_frame*)* @dump_user_backtrace to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.stack_frame* @dump_user_backtrace(%struct.stack_frame* %0) #0 {
  %2 = alloca %struct.stack_frame*, align 8
  %3 = alloca %struct.stack_frame*, align 8
  %4 = alloca [2 x %struct.stack_frame], align 16
  %5 = alloca i64, align 8
  store %struct.stack_frame* %0, %struct.stack_frame** %3, align 8
  %6 = getelementptr inbounds [2 x %struct.stack_frame], [2 x %struct.stack_frame]* %4, i64 0, i64 0
  %7 = load %struct.stack_frame*, %struct.stack_frame** %3, align 8
  %8 = call i64 @copy_from_user_nmi(%struct.stack_frame* %6, %struct.stack_frame* %7, i32 32)
  store i64 %8, i64* %5, align 8
  %9 = load i64, i64* %5, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store %struct.stack_frame* null, %struct.stack_frame** %2, align 8
  br label %27

12:                                               ; preds = %1
  %13 = getelementptr inbounds [2 x %struct.stack_frame], [2 x %struct.stack_frame]* %4, i64 0, i64 0
  %14 = getelementptr inbounds %struct.stack_frame, %struct.stack_frame* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @oprofile_add_trace(i32 %15)
  %17 = load %struct.stack_frame*, %struct.stack_frame** %3, align 8
  %18 = getelementptr inbounds [2 x %struct.stack_frame], [2 x %struct.stack_frame]* %4, i64 0, i64 0
  %19 = getelementptr inbounds %struct.stack_frame, %struct.stack_frame* %18, i32 0, i32 0
  %20 = load %struct.stack_frame*, %struct.stack_frame** %19, align 16
  %21 = icmp uge %struct.stack_frame* %17, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %12
  store %struct.stack_frame* null, %struct.stack_frame** %2, align 8
  br label %27

23:                                               ; preds = %12
  %24 = getelementptr inbounds [2 x %struct.stack_frame], [2 x %struct.stack_frame]* %4, i64 0, i64 0
  %25 = getelementptr inbounds %struct.stack_frame, %struct.stack_frame* %24, i32 0, i32 0
  %26 = load %struct.stack_frame*, %struct.stack_frame** %25, align 16
  store %struct.stack_frame* %26, %struct.stack_frame** %2, align 8
  br label %27

27:                                               ; preds = %23, %22, %11
  %28 = load %struct.stack_frame*, %struct.stack_frame** %2, align 8
  ret %struct.stack_frame* %28
}

declare dso_local i64 @copy_from_user_nmi(%struct.stack_frame*, %struct.stack_frame*, i32) #1

declare dso_local i32 @oprofile_add_trace(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
