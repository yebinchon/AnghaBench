; ModuleID = '/home/carl/AnghaBench/libevent/extr_event.c_event_get_assignment.c'
source_filename = "/home/carl/AnghaBench/libevent/extr_event.c_event_get_assignment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.event = type { i16, i8*, i32, i32, %struct.event_base* }
%struct.event_base = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @event_get_assignment(%struct.event* %0, %struct.event_base** %1, i32* %2, i16* %3, i32* %4, i8** %5) #0 {
  %7 = alloca %struct.event*, align 8
  %8 = alloca %struct.event_base**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i16*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8**, align 8
  store %struct.event* %0, %struct.event** %7, align 8
  store %struct.event_base** %1, %struct.event_base*** %8, align 8
  store i32* %2, i32** %9, align 8
  store i16* %3, i16** %10, align 8
  store i32* %4, i32** %11, align 8
  store i8** %5, i8*** %12, align 8
  %13 = load %struct.event*, %struct.event** %7, align 8
  %14 = call i32 @event_debug_assert_is_setup_(%struct.event* %13)
  %15 = load %struct.event_base**, %struct.event_base*** %8, align 8
  %16 = icmp ne %struct.event_base** %15, null
  br i1 %16, label %17, label %22

17:                                               ; preds = %6
  %18 = load %struct.event*, %struct.event** %7, align 8
  %19 = getelementptr inbounds %struct.event, %struct.event* %18, i32 0, i32 4
  %20 = load %struct.event_base*, %struct.event_base** %19, align 8
  %21 = load %struct.event_base**, %struct.event_base*** %8, align 8
  store %struct.event_base* %20, %struct.event_base** %21, align 8
  br label %22

22:                                               ; preds = %17, %6
  %23 = load i32*, i32** %9, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %25, label %30

25:                                               ; preds = %22
  %26 = load %struct.event*, %struct.event** %7, align 8
  %27 = getelementptr inbounds %struct.event, %struct.event* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = load i32*, i32** %9, align 8
  store i32 %28, i32* %29, align 4
  br label %30

30:                                               ; preds = %25, %22
  %31 = load i16*, i16** %10, align 8
  %32 = icmp ne i16* %31, null
  br i1 %32, label %33, label %38

33:                                               ; preds = %30
  %34 = load %struct.event*, %struct.event** %7, align 8
  %35 = getelementptr inbounds %struct.event, %struct.event* %34, i32 0, i32 0
  %36 = load i16, i16* %35, align 8
  %37 = load i16*, i16** %10, align 8
  store i16 %36, i16* %37, align 2
  br label %38

38:                                               ; preds = %33, %30
  %39 = load i32*, i32** %11, align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %41, label %46

41:                                               ; preds = %38
  %42 = load %struct.event*, %struct.event** %7, align 8
  %43 = getelementptr inbounds %struct.event, %struct.event* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = load i32*, i32** %11, align 8
  store i32 %44, i32* %45, align 4
  br label %46

46:                                               ; preds = %41, %38
  %47 = load i8**, i8*** %12, align 8
  %48 = icmp ne i8** %47, null
  br i1 %48, label %49, label %54

49:                                               ; preds = %46
  %50 = load %struct.event*, %struct.event** %7, align 8
  %51 = getelementptr inbounds %struct.event, %struct.event* %50, i32 0, i32 1
  %52 = load i8*, i8** %51, align 8
  %53 = load i8**, i8*** %12, align 8
  store i8* %52, i8** %53, align 8
  br label %54

54:                                               ; preds = %49, %46
  ret void
}

declare dso_local i32 @event_debug_assert_is_setup_(%struct.event*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
