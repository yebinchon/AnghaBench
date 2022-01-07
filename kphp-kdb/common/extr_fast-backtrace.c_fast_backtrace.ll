; ModuleID = '/home/carl/AnghaBench/kphp-kdb/common/extr_fast-backtrace.c_fast_backtrace.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/common/extr_fast-backtrace.c_fast_backtrace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stack_frame = type { %struct.stack_frame*, i8* }

@__libc_stack_end = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fast_backtrace(i8** %0, i32 %1) #0 {
  %3 = alloca i8**, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.stack_frame*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.stack_frame*, align 8
  store i8** %0, i8*** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = call %struct.stack_frame* (...) @get_bp()
  store %struct.stack_frame* %9, %struct.stack_frame** %5, align 8
  store i32 0, i32* %6, align 4
  br label %10

10:                                               ; preds = %44, %2
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %25

14:                                               ; preds = %10
  %15 = load %struct.stack_frame*, %struct.stack_frame** %5, align 8
  %16 = bitcast %struct.stack_frame* %15 to i8*
  %17 = load i8*, i8** @__libc_stack_end, align 8
  %18 = icmp ule i8* %16, %17
  br i1 %18, label %19, label %25

19:                                               ; preds = %14
  %20 = load %struct.stack_frame*, %struct.stack_frame** %5, align 8
  %21 = ptrtoint %struct.stack_frame* %20 to i64
  %22 = and i64 %21, 7
  %23 = icmp ne i64 %22, 0
  %24 = xor i1 %23, true
  br label %25

25:                                               ; preds = %19, %14, %10
  %26 = phi i1 [ false, %14 ], [ false, %10 ], [ %24, %19 ]
  br i1 %26, label %27, label %46

27:                                               ; preds = %25
  %28 = load %struct.stack_frame*, %struct.stack_frame** %5, align 8
  %29 = getelementptr inbounds %struct.stack_frame, %struct.stack_frame* %28, i32 0, i32 1
  %30 = load i8*, i8** %29, align 8
  store i8* %30, i8** %7, align 8
  %31 = load i8*, i8** %7, align 8
  %32 = load i8**, i8*** %3, align 8
  %33 = load i32, i32* %6, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %6, align 4
  %35 = sext i32 %33 to i64
  %36 = getelementptr inbounds i8*, i8** %32, i64 %35
  store i8* %31, i8** %36, align 8
  %37 = load %struct.stack_frame*, %struct.stack_frame** %5, align 8
  %38 = getelementptr inbounds %struct.stack_frame, %struct.stack_frame* %37, i32 0, i32 0
  %39 = load %struct.stack_frame*, %struct.stack_frame** %38, align 8
  store %struct.stack_frame* %39, %struct.stack_frame** %8, align 8
  %40 = load %struct.stack_frame*, %struct.stack_frame** %8, align 8
  %41 = load %struct.stack_frame*, %struct.stack_frame** %5, align 8
  %42 = icmp ule %struct.stack_frame* %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %27
  br label %46

44:                                               ; preds = %27
  %45 = load %struct.stack_frame*, %struct.stack_frame** %8, align 8
  store %struct.stack_frame* %45, %struct.stack_frame** %5, align 8
  br label %10

46:                                               ; preds = %43, %25
  %47 = load i32, i32* %6, align 4
  ret i32 %47
}

declare dso_local %struct.stack_frame* @get_bp(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
