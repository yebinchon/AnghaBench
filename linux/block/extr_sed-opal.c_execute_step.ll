; ModuleID = '/home/carl/AnghaBench/linux/block/extr_sed-opal.c_execute_step.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_sed-opal.c_execute_step.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.opal_dev = type { i32 }
%struct.opal_step = type { i32 (%struct.opal_dev.0*, i32)*, i32 }
%struct.opal_dev.0 = type opaque

@.str = private unnamed_addr constant [41 x i8] c"Step %zu (%pS) failed with error %d: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.opal_dev*, %struct.opal_step*, i64)* @execute_step to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @execute_step(%struct.opal_dev* %0, %struct.opal_step* %1, i64 %2) #0 {
  %4 = alloca %struct.opal_dev*, align 8
  %5 = alloca %struct.opal_step*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.opal_dev* %0, %struct.opal_dev** %4, align 8
  store %struct.opal_step* %1, %struct.opal_step** %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load %struct.opal_step*, %struct.opal_step** %5, align 8
  %9 = getelementptr inbounds %struct.opal_step, %struct.opal_step* %8, i32 0, i32 0
  %10 = load i32 (%struct.opal_dev.0*, i32)*, i32 (%struct.opal_dev.0*, i32)** %9, align 8
  %11 = load %struct.opal_dev*, %struct.opal_dev** %4, align 8
  %12 = bitcast %struct.opal_dev* %11 to %struct.opal_dev.0*
  %13 = load %struct.opal_step*, %struct.opal_step** %5, align 8
  %14 = getelementptr inbounds %struct.opal_step, %struct.opal_step* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = call i32 %10(%struct.opal_dev.0* %12, i32 %15)
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %29

19:                                               ; preds = %3
  %20 = load i64, i64* %6, align 8
  %21 = load %struct.opal_step*, %struct.opal_step** %5, align 8
  %22 = getelementptr inbounds %struct.opal_step, %struct.opal_step* %21, i32 0, i32 0
  %23 = load i32 (%struct.opal_dev.0*, i32)*, i32 (%struct.opal_dev.0*, i32)** %22, align 8
  %24 = bitcast i32 (%struct.opal_dev.0*, i32)* %23 to i32 (%struct.opal_dev*, i32)*
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @opal_error_to_human(i32 %26)
  %28 = call i32 @pr_debug(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i64 %20, i32 (%struct.opal_dev*, i32)* %24, i32 %25, i32 %27)
  br label %29

29:                                               ; preds = %19, %3
  %30 = load i32, i32* %7, align 4
  ret i32 %30
}

declare dso_local i32 @pr_debug(i8*, i64, i32 (%struct.opal_dev*, i32)*, i32, i32) #1

declare dso_local i32 @opal_error_to_human(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
