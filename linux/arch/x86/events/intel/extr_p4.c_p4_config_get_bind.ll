; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/events/intel/extr_p4.c_p4_config_get_bind.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/events/intel/extr_p4.c_p4_config_get_bind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.p4_event_bind = type { i32 }

@p4_event_bind_map = common dso_local global %struct.p4_event_bind* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.p4_event_bind* (i32)* @p4_config_get_bind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.p4_event_bind* @p4_config_get_bind(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.p4_event_bind*, align 8
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = call i32 @p4_config_unpack_event(i32 %5)
  store i32 %6, i32* %3, align 4
  store %struct.p4_event_bind* null, %struct.p4_event_bind** %4, align 8
  %7 = load i32, i32* %3, align 4
  %8 = load %struct.p4_event_bind*, %struct.p4_event_bind** @p4_event_bind_map, align 8
  %9 = call i32 @ARRAY_SIZE(%struct.p4_event_bind* %8)
  %10 = icmp ult i32 %7, %9
  br i1 %10, label %11, label %16

11:                                               ; preds = %1
  %12 = load %struct.p4_event_bind*, %struct.p4_event_bind** @p4_event_bind_map, align 8
  %13 = load i32, i32* %3, align 4
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds %struct.p4_event_bind, %struct.p4_event_bind* %12, i64 %14
  store %struct.p4_event_bind* %15, %struct.p4_event_bind** %4, align 8
  br label %16

16:                                               ; preds = %11, %1
  %17 = load %struct.p4_event_bind*, %struct.p4_event_bind** %4, align 8
  ret %struct.p4_event_bind* %17
}

declare dso_local i32 @p4_config_unpack_event(i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.p4_event_bind*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
