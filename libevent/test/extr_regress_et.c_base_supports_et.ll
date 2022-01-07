; ModuleID = '/home/carl/AnghaBench/libevent/test/extr_regress_et.c_base_supports_et.c'
source_filename = "/home/carl/AnghaBench/libevent/test/extr_regress_et.c_base_supports_et.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.event_base = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"epoll\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"epoll (with changelist)\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"kqueue\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.event_base*)* @base_supports_et to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @base_supports_et(%struct.event_base* %0) #0 {
  %2 = alloca %struct.event_base*, align 8
  store %struct.event_base* %0, %struct.event_base** %2, align 8
  %3 = load %struct.event_base*, %struct.event_base** %2, align 8
  %4 = call i32 @event_base_get_method(%struct.event_base* %3)
  %5 = call i32 @strcmp(i32 %4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %18

7:                                                ; preds = %1
  %8 = load %struct.event_base*, %struct.event_base** %2, align 8
  %9 = call i32 @event_base_get_method(%struct.event_base* %8)
  %10 = call i32 @strcmp(i32 %9, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %7
  %13 = load %struct.event_base*, %struct.event_base** %2, align 8
  %14 = call i32 @event_base_get_method(%struct.event_base* %13)
  %15 = call i32 @strcmp(i32 %14, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %16 = icmp ne i32 %15, 0
  %17 = xor i1 %16, true
  br label %18

18:                                               ; preds = %12, %7, %1
  %19 = phi i1 [ true, %7 ], [ true, %1 ], [ %17, %12 ]
  %20 = zext i1 %19 to i32
  ret i32 %20
}

declare dso_local i32 @strcmp(i32, i8*) #1

declare dso_local i32 @event_base_get_method(%struct.event_base*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
