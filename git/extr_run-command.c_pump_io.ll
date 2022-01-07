; ModuleID = '/home/carl/AnghaBench/git/extr_run-command.c_pump_io.c'
source_filename = "/home/carl/AnghaBench/git/extr_run-command.c_pump_io.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.io_pump = type { i64 }
%struct.pollfd = type { i32 }

@errno = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.io_pump*, i32)* @pump_io to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pump_io(%struct.io_pump* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.io_pump*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.pollfd*, align 8
  %7 = alloca i32, align 4
  store %struct.io_pump* %0, %struct.io_pump** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %7, align 4
  br label %8

8:                                                ; preds = %18, %2
  %9 = load i32, i32* %7, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %21

12:                                               ; preds = %8
  %13 = load %struct.io_pump*, %struct.io_pump** %4, align 8
  %14 = load i32, i32* %7, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.io_pump, %struct.io_pump* %13, i64 %15
  %17 = getelementptr inbounds %struct.io_pump, %struct.io_pump* %16, i32 0, i32 0
  store i64 0, i64* %17, align 8
  br label %18

18:                                               ; preds = %12
  %19 = load i32, i32* %7, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %7, align 4
  br label %8

21:                                               ; preds = %8
  %22 = load %struct.pollfd*, %struct.pollfd** %6, align 8
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @ALLOC_ARRAY(%struct.pollfd* %22, i32 %23)
  br label %25

25:                                               ; preds = %31, %21
  %26 = load %struct.io_pump*, %struct.io_pump** %4, align 8
  %27 = load i32, i32* %5, align 4
  %28 = load %struct.pollfd*, %struct.pollfd** %6, align 8
  %29 = call i64 @pump_io_round(%struct.io_pump* %26, i32 %27, %struct.pollfd* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %25
  br label %25

32:                                               ; preds = %25
  %33 = load %struct.pollfd*, %struct.pollfd** %6, align 8
  %34 = call i32 @free(%struct.pollfd* %33)
  store i32 0, i32* %7, align 4
  br label %35

35:                                               ; preds = %55, %32
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* %5, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %58

39:                                               ; preds = %35
  %40 = load %struct.io_pump*, %struct.io_pump** %4, align 8
  %41 = load i32, i32* %7, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.io_pump, %struct.io_pump* %40, i64 %42
  %44 = getelementptr inbounds %struct.io_pump, %struct.io_pump* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %54

47:                                               ; preds = %39
  %48 = load %struct.io_pump*, %struct.io_pump** %4, align 8
  %49 = load i32, i32* %7, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.io_pump, %struct.io_pump* %48, i64 %50
  %52 = getelementptr inbounds %struct.io_pump, %struct.io_pump* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  store i64 %53, i64* @errno, align 8
  store i32 -1, i32* %3, align 4
  br label %59

54:                                               ; preds = %39
  br label %55

55:                                               ; preds = %54
  %56 = load i32, i32* %7, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %7, align 4
  br label %35

58:                                               ; preds = %35
  store i32 0, i32* %3, align 4
  br label %59

59:                                               ; preds = %58, %47
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local i32 @ALLOC_ARRAY(%struct.pollfd*, i32) #1

declare dso_local i64 @pump_io_round(%struct.io_pump*, i32, %struct.pollfd*) #1

declare dso_local i32 @free(%struct.pollfd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
