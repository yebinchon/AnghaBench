; ModuleID = '/home/carl/AnghaBench/lede/package/kernel/gpio-button-hotplug/src/extr_gpio-button-hotplug.c_button_hotplug_create_event.c'
source_filename = "/home/carl/AnghaBench/lede/package/kernel/gpio-button-hotplug/src/extr_gpio-button-hotplug.c_button_hotplug_create_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bh_event = type { i8*, i32, i64, i8*, i32 }

@.str = private unnamed_addr constant [45 x i8] c"create event, name=%s, seen=%lu, pressed=%d\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"pressed\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"released\00", align 1
@button_hotplug_work = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i64, i32)* @button_hotplug_create_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @button_hotplug_create_event(i8* %0, i32 %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.bh_event*, align 8
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load i8*, i8** %6, align 8
  %12 = load i64, i64* %8, align 8
  %13 = load i32, i32* %9, align 4
  %14 = call i32 @BH_DBG(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i8* %11, i64 %12, i32 %13)
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.bh_event* @kzalloc(i32 40, i32 %15)
  store %struct.bh_event* %16, %struct.bh_event** %10, align 8
  %17 = load %struct.bh_event*, %struct.bh_event** %10, align 8
  %18 = icmp ne %struct.bh_event* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %4
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %5, align 4
  br label %46

22:                                               ; preds = %4
  %23 = load i8*, i8** %6, align 8
  %24 = load %struct.bh_event*, %struct.bh_event** %10, align 8
  %25 = getelementptr inbounds %struct.bh_event, %struct.bh_event* %24, i32 0, i32 0
  store i8* %23, i8** %25, align 8
  %26 = load i32, i32* %7, align 4
  %27 = load %struct.bh_event*, %struct.bh_event** %10, align 8
  %28 = getelementptr inbounds %struct.bh_event, %struct.bh_event* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 8
  %29 = load i64, i64* %8, align 8
  %30 = load %struct.bh_event*, %struct.bh_event** %10, align 8
  %31 = getelementptr inbounds %struct.bh_event, %struct.bh_event* %30, i32 0, i32 2
  store i64 %29, i64* %31, align 8
  %32 = load i32, i32* %9, align 4
  %33 = icmp ne i32 %32, 0
  %34 = zext i1 %33 to i64
  %35 = select i1 %33, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0)
  %36 = load %struct.bh_event*, %struct.bh_event** %10, align 8
  %37 = getelementptr inbounds %struct.bh_event, %struct.bh_event* %36, i32 0, i32 3
  store i8* %35, i8** %37, align 8
  %38 = load %struct.bh_event*, %struct.bh_event** %10, align 8
  %39 = getelementptr inbounds %struct.bh_event, %struct.bh_event* %38, i32 0, i32 4
  %40 = load i64, i64* @button_hotplug_work, align 8
  %41 = inttoptr i64 %40 to i8*
  %42 = call i32 @INIT_WORK(i32* %39, i8* %41)
  %43 = load %struct.bh_event*, %struct.bh_event** %10, align 8
  %44 = getelementptr inbounds %struct.bh_event, %struct.bh_event* %43, i32 0, i32 4
  %45 = call i32 @schedule_work(i32* %44)
  store i32 0, i32* %5, align 4
  br label %46

46:                                               ; preds = %22, %19
  %47 = load i32, i32* %5, align 4
  ret i32 %47
}

declare dso_local i32 @BH_DBG(i8*, i8*, i64, i32) #1

declare dso_local %struct.bh_event* @kzalloc(i32, i32) #1

declare dso_local i32 @INIT_WORK(i32*, i8*) #1

declare dso_local i32 @schedule_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
