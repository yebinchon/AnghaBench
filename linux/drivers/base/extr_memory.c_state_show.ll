; ModuleID = '/home/carl/AnghaBench/linux/drivers/base/extr_memory.c_state_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/base/extr_memory.c_state_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.memory_block = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"online\0A\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"offline\0A\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"going-offline\0A\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"ERROR-UNKNOWN-%ld\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @state_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @state_show(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_attribute*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.memory_block*, align 8
  %8 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load %struct.device*, %struct.device** %4, align 8
  %10 = call %struct.memory_block* @to_memory_block(%struct.device* %9)
  store %struct.memory_block* %10, %struct.memory_block** %7, align 8
  store i32 0, i32* %8, align 4
  %11 = load %struct.memory_block*, %struct.memory_block** %7, align 8
  %12 = getelementptr inbounds %struct.memory_block, %struct.memory_block* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  switch i32 %13, label %23 [
    i32 128, label %14
    i32 129, label %17
    i32 130, label %20
  ]

14:                                               ; preds = %3
  %15 = load i8*, i8** %6, align 8
  %16 = call i32 (i8*, i8*, ...) @sprintf(i8* %15, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store i32 %16, i32* %8, align 4
  br label %30

17:                                               ; preds = %3
  %18 = load i8*, i8** %6, align 8
  %19 = call i32 (i8*, i8*, ...) @sprintf(i8* %18, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  store i32 %19, i32* %8, align 4
  br label %30

20:                                               ; preds = %3
  %21 = load i8*, i8** %6, align 8
  %22 = call i32 (i8*, i8*, ...) @sprintf(i8* %21, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  store i32 %22, i32* %8, align 4
  br label %30

23:                                               ; preds = %3
  %24 = load i8*, i8** %6, align 8
  %25 = load %struct.memory_block*, %struct.memory_block** %7, align 8
  %26 = getelementptr inbounds %struct.memory_block, %struct.memory_block* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 (i8*, i8*, ...) @sprintf(i8* %24, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i32 %27)
  store i32 %28, i32* %8, align 4
  %29 = call i32 @WARN_ON(i32 1)
  br label %30

30:                                               ; preds = %23, %20, %17, %14
  %31 = load i32, i32* %8, align 4
  ret i32 %31
}

declare dso_local %struct.memory_block* @to_memory_block(%struct.device*) #1

declare dso_local i32 @sprintf(i8*, i8*, ...) #1

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
