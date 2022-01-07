; ModuleID = '/home/carl/AnghaBench/lede/package/kernel/gpio-button-hotplug/src/extr_gpio-button-hotplug.c_button_hotplug_fill_event.c'
source_filename = "/home/carl/AnghaBench/lede/package/kernel/gpio-button-hotplug/src/extr_gpio-button-hotplug.c_button_hotplug_fill_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bh_event = type { i8*, i8*, i64, i8* }

@.str = private unnamed_addr constant [8 x i8] c"HOME=%s\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"PATH=%s\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"/sbin:/bin:/usr/sbin:/usr/bin\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"SUBSYSTEM=%s\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"button\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"ACTION=%s\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"BUTTON=%s\00", align 1
@EV_SW = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [8 x i8] c"TYPE=%s\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"switch\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"SEEN=%ld\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"SEQNUM=%llu\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bh_event*)* @button_hotplug_fill_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @button_hotplug_fill_event(%struct.bh_event* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bh_event*, align 8
  %4 = alloca i32, align 4
  store %struct.bh_event* %0, %struct.bh_event** %3, align 8
  %5 = load %struct.bh_event*, %struct.bh_event** %3, align 8
  %6 = call i32 @bh_event_add_var(%struct.bh_event* %5, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load i32, i32* %4, align 4
  store i32 %10, i32* %2, align 4
  br label %74

11:                                               ; preds = %1
  %12 = load %struct.bh_event*, %struct.bh_event** %3, align 8
  %13 = call i32 @bh_event_add_var(%struct.bh_event* %12, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %11
  %17 = load i32, i32* %4, align 4
  store i32 %17, i32* %2, align 4
  br label %74

18:                                               ; preds = %11
  %19 = load %struct.bh_event*, %struct.bh_event** %3, align 8
  %20 = call i32 @bh_event_add_var(%struct.bh_event* %19, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* %4, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %18
  %24 = load i32, i32* %4, align 4
  store i32 %24, i32* %2, align 4
  br label %74

25:                                               ; preds = %18
  %26 = load %struct.bh_event*, %struct.bh_event** %3, align 8
  %27 = load %struct.bh_event*, %struct.bh_event** %3, align 8
  %28 = getelementptr inbounds %struct.bh_event, %struct.bh_event* %27, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  %30 = call i32 @bh_event_add_var(%struct.bh_event* %26, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i8* %29)
  store i32 %30, i32* %4, align 4
  %31 = load i32, i32* %4, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %25
  %34 = load i32, i32* %4, align 4
  store i32 %34, i32* %2, align 4
  br label %74

35:                                               ; preds = %25
  %36 = load %struct.bh_event*, %struct.bh_event** %3, align 8
  %37 = load %struct.bh_event*, %struct.bh_event** %3, align 8
  %38 = getelementptr inbounds %struct.bh_event, %struct.bh_event* %37, i32 0, i32 1
  %39 = load i8*, i8** %38, align 8
  %40 = call i32 @bh_event_add_var(%struct.bh_event* %36, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i8* %39)
  store i32 %40, i32* %4, align 4
  %41 = load i32, i32* %4, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %35
  %44 = load i32, i32* %4, align 4
  store i32 %44, i32* %2, align 4
  br label %74

45:                                               ; preds = %35
  %46 = load %struct.bh_event*, %struct.bh_event** %3, align 8
  %47 = getelementptr inbounds %struct.bh_event, %struct.bh_event* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @EV_SW, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %59

51:                                               ; preds = %45
  %52 = load %struct.bh_event*, %struct.bh_event** %3, align 8
  %53 = call i32 @bh_event_add_var(%struct.bh_event* %52, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0))
  store i32 %53, i32* %4, align 4
  %54 = load i32, i32* %4, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %51
  %57 = load i32, i32* %4, align 4
  store i32 %57, i32* %2, align 4
  br label %74

58:                                               ; preds = %51
  br label %59

59:                                               ; preds = %58, %45
  %60 = load %struct.bh_event*, %struct.bh_event** %3, align 8
  %61 = load %struct.bh_event*, %struct.bh_event** %3, align 8
  %62 = getelementptr inbounds %struct.bh_event, %struct.bh_event* %61, i32 0, i32 3
  %63 = load i8*, i8** %62, align 8
  %64 = call i32 @bh_event_add_var(%struct.bh_event* %60, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0), i8* %63)
  store i32 %64, i32* %4, align 4
  %65 = load i32, i32* %4, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %59
  %68 = load i32, i32* %4, align 4
  store i32 %68, i32* %2, align 4
  br label %74

69:                                               ; preds = %59
  %70 = load %struct.bh_event*, %struct.bh_event** %3, align 8
  %71 = call i8* (...) @uevent_next_seqnum()
  %72 = call i32 @bh_event_add_var(%struct.bh_event* %70, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i64 0, i64 0), i8* %71)
  store i32 %72, i32* %4, align 4
  %73 = load i32, i32* %4, align 4
  store i32 %73, i32* %2, align 4
  br label %74

74:                                               ; preds = %69, %67, %56, %43, %33, %23, %16, %9
  %75 = load i32, i32* %2, align 4
  ret i32 %75
}

declare dso_local i32 @bh_event_add_var(%struct.bh_event*, i32, i8*, i8*) #1

declare dso_local i8* @uevent_next_seqnum(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
