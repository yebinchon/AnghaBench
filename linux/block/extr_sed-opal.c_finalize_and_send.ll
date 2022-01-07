; ModuleID = '/home/carl/AnghaBench/linux/block/extr_sed-opal.c_finalize_and_send.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_sed-opal.c_finalize_and_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.opal_dev = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [37 x i8] c"Error finalizing command buffer: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.opal_dev*, i32)* @finalize_and_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @finalize_and_send(%struct.opal_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.opal_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.opal_dev* %0, %struct.opal_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.opal_dev*, %struct.opal_dev** %4, align 8
  %8 = load %struct.opal_dev*, %struct.opal_dev** %4, align 8
  %9 = getelementptr inbounds %struct.opal_dev, %struct.opal_dev* %8, i32 0, i32 3
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.opal_dev*, %struct.opal_dev** %4, align 8
  %12 = getelementptr inbounds %struct.opal_dev, %struct.opal_dev* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @cmd_finalize(%struct.opal_dev* %7, i32 %10, i32 %13)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %2
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @pr_debug(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load i32, i32* %6, align 4
  store i32 %20, i32* %3, align 4
  br label %32

21:                                               ; preds = %2
  %22 = load %struct.opal_dev*, %struct.opal_dev** %4, align 8
  %23 = getelementptr inbounds %struct.opal_dev, %struct.opal_dev* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.opal_dev*, %struct.opal_dev** %4, align 8
  %26 = getelementptr inbounds %struct.opal_dev, %struct.opal_dev* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @print_buffer(i32 %24, i32 %27)
  %29 = load %struct.opal_dev*, %struct.opal_dev** %4, align 8
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @opal_send_recv(%struct.opal_dev* %29, i32 %30)
  store i32 %31, i32* %3, align 4
  br label %32

32:                                               ; preds = %21, %17
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

declare dso_local i32 @cmd_finalize(%struct.opal_dev*, i32, i32) #1

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local i32 @print_buffer(i32, i32) #1

declare dso_local i32 @opal_send_recv(%struct.opal_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
