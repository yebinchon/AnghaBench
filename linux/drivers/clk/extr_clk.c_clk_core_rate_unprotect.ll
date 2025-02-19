; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/extr_clk.c_clk_core_rate_unprotect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/extr_clk.c_clk_core_rate_unprotect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_core = type { i64, %struct.clk_core*, i32 }

@prepare_lock = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"%s already unprotected\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.clk_core*)* @clk_core_rate_unprotect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @clk_core_rate_unprotect(%struct.clk_core* %0) #0 {
  %2 = alloca %struct.clk_core*, align 8
  store %struct.clk_core* %0, %struct.clk_core** %2, align 8
  %3 = call i32 @lockdep_assert_held(i32* @prepare_lock)
  %4 = load %struct.clk_core*, %struct.clk_core** %2, align 8
  %5 = icmp ne %struct.clk_core* %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  br label %30

7:                                                ; preds = %1
  %8 = load %struct.clk_core*, %struct.clk_core** %2, align 8
  %9 = getelementptr inbounds %struct.clk_core, %struct.clk_core* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp eq i64 %10, 0
  %12 = zext i1 %11 to i32
  %13 = load %struct.clk_core*, %struct.clk_core** %2, align 8
  %14 = getelementptr inbounds %struct.clk_core, %struct.clk_core* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  %16 = call i64 @WARN(i32 %12, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %7
  br label %30

19:                                               ; preds = %7
  %20 = load %struct.clk_core*, %struct.clk_core** %2, align 8
  %21 = getelementptr inbounds %struct.clk_core, %struct.clk_core* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = add nsw i64 %22, -1
  store i64 %23, i64* %21, align 8
  %24 = icmp sgt i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  br label %30

26:                                               ; preds = %19
  %27 = load %struct.clk_core*, %struct.clk_core** %2, align 8
  %28 = getelementptr inbounds %struct.clk_core, %struct.clk_core* %27, i32 0, i32 1
  %29 = load %struct.clk_core*, %struct.clk_core** %28, align 8
  call void @clk_core_rate_unprotect(%struct.clk_core* %29)
  br label %30

30:                                               ; preds = %26, %25, %18, %6
  ret void
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i64 @WARN(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
