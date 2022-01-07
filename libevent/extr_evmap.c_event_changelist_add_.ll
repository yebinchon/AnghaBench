; ModuleID = '/home/carl/AnghaBench/libevent/extr_evmap.c_event_changelist_add_.c'
source_filename = "/home/carl/AnghaBench/libevent/extr_evmap.c_event_changelist_add_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.event_base = type { %struct.event_changelist }
%struct.event_changelist = type { i32 }
%struct.event_changelist_fdinfo = type { i32 }
%struct.event_change = type { i8*, i8*, i8* }

@EV_CHANGE_ADD = common dso_local global i16 0, align 2
@EV_ET = common dso_local global i16 0, align 2
@EV_PERSIST = common dso_local global i16 0, align 2
@EV_SIGNAL = common dso_local global i16 0, align 2
@EV_READ = common dso_local global i16 0, align 2
@EV_WRITE = common dso_local global i16 0, align 2
@EV_CLOSED = common dso_local global i16 0, align 2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @event_changelist_add_(%struct.event_base* %0, i32 %1, i16 signext %2, i16 signext %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.event_base*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i16, align 2
  %10 = alloca i16, align 2
  %11 = alloca i8*, align 8
  %12 = alloca %struct.event_changelist*, align 8
  %13 = alloca %struct.event_changelist_fdinfo*, align 8
  %14 = alloca %struct.event_change*, align 8
  %15 = alloca i8*, align 8
  store %struct.event_base* %0, %struct.event_base** %7, align 8
  store i32 %1, i32* %8, align 4
  store i16 %2, i16* %9, align 2
  store i16 %3, i16* %10, align 2
  store i8* %4, i8** %11, align 8
  %16 = load %struct.event_base*, %struct.event_base** %7, align 8
  %17 = getelementptr inbounds %struct.event_base, %struct.event_base* %16, i32 0, i32 0
  store %struct.event_changelist* %17, %struct.event_changelist** %12, align 8
  %18 = load i8*, i8** %11, align 8
  %19 = bitcast i8* %18 to %struct.event_changelist_fdinfo*
  store %struct.event_changelist_fdinfo* %19, %struct.event_changelist_fdinfo** %13, align 8
  %20 = load i16, i16* @EV_CHANGE_ADD, align 2
  %21 = sext i16 %20 to i32
  %22 = load i16, i16* %10, align 2
  %23 = sext i16 %22 to i32
  %24 = load i16, i16* @EV_ET, align 2
  %25 = sext i16 %24 to i32
  %26 = load i16, i16* @EV_PERSIST, align 2
  %27 = sext i16 %26 to i32
  %28 = or i32 %25, %27
  %29 = load i16, i16* @EV_SIGNAL, align 2
  %30 = sext i16 %29 to i32
  %31 = or i32 %28, %30
  %32 = and i32 %23, %31
  %33 = or i32 %21, %32
  %34 = sext i32 %33 to i64
  %35 = inttoptr i64 %34 to i8*
  store i8* %35, i8** %15, align 8
  %36 = load %struct.event_base*, %struct.event_base** %7, align 8
  %37 = call i32 @event_changelist_check(%struct.event_base* %36)
  %38 = load %struct.event_changelist*, %struct.event_changelist** %12, align 8
  %39 = load i32, i32* %8, align 4
  %40 = load i16, i16* %9, align 2
  %41 = load %struct.event_changelist_fdinfo*, %struct.event_changelist_fdinfo** %13, align 8
  %42 = call %struct.event_change* @event_changelist_get_or_construct(%struct.event_changelist* %38, i32 %39, i16 signext %40, %struct.event_changelist_fdinfo* %41)
  store %struct.event_change* %42, %struct.event_change** %14, align 8
  %43 = load %struct.event_change*, %struct.event_change** %14, align 8
  %44 = icmp ne %struct.event_change* %43, null
  br i1 %44, label %46, label %45

45:                                               ; preds = %5
  store i32 -1, i32* %6, align 4
  br label %85

46:                                               ; preds = %5
  %47 = load i16, i16* %10, align 2
  %48 = sext i16 %47 to i32
  %49 = load i16, i16* @EV_READ, align 2
  %50 = sext i16 %49 to i32
  %51 = load i16, i16* @EV_SIGNAL, align 2
  %52 = sext i16 %51 to i32
  %53 = or i32 %50, %52
  %54 = and i32 %48, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %46
  %57 = load i8*, i8** %15, align 8
  %58 = load %struct.event_change*, %struct.event_change** %14, align 8
  %59 = getelementptr inbounds %struct.event_change, %struct.event_change* %58, i32 0, i32 2
  store i8* %57, i8** %59, align 8
  br label %60

60:                                               ; preds = %56, %46
  %61 = load i16, i16* %10, align 2
  %62 = sext i16 %61 to i32
  %63 = load i16, i16* @EV_WRITE, align 2
  %64 = sext i16 %63 to i32
  %65 = and i32 %62, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %60
  %68 = load i8*, i8** %15, align 8
  %69 = load %struct.event_change*, %struct.event_change** %14, align 8
  %70 = getelementptr inbounds %struct.event_change, %struct.event_change* %69, i32 0, i32 1
  store i8* %68, i8** %70, align 8
  br label %71

71:                                               ; preds = %67, %60
  %72 = load i16, i16* %10, align 2
  %73 = sext i16 %72 to i32
  %74 = load i16, i16* @EV_CLOSED, align 2
  %75 = sext i16 %74 to i32
  %76 = and i32 %73, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %71
  %79 = load i8*, i8** %15, align 8
  %80 = load %struct.event_change*, %struct.event_change** %14, align 8
  %81 = getelementptr inbounds %struct.event_change, %struct.event_change* %80, i32 0, i32 0
  store i8* %79, i8** %81, align 8
  br label %82

82:                                               ; preds = %78, %71
  %83 = load %struct.event_base*, %struct.event_base** %7, align 8
  %84 = call i32 @event_changelist_check(%struct.event_base* %83)
  store i32 0, i32* %6, align 4
  br label %85

85:                                               ; preds = %82, %45
  %86 = load i32, i32* %6, align 4
  ret i32 %86
}

declare dso_local i32 @event_changelist_check(%struct.event_base*) #1

declare dso_local %struct.event_change* @event_changelist_get_or_construct(%struct.event_changelist*, i32, i16 signext, %struct.event_changelist_fdinfo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
