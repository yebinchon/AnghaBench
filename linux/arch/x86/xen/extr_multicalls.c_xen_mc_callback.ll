; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/xen/extr_multicalls.c_xen_mc_callback.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/xen/extr_multicalls.c_xen_mc_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mc_buffer = type { i64, %struct.callback* }
%struct.callback = type { void (i8*)*, i8* }

@mc_buffer = common dso_local global i32 0, align 4
@MC_BATCH = common dso_local global i64 0, align 8
@XEN_MC_FL_CALLBACK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xen_mc_callback(void (i8*)* %0, i8* %1) #0 {
  %3 = alloca void (i8*)*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.mc_buffer*, align 8
  %6 = alloca %struct.callback*, align 8
  store void (i8*)* %0, void (i8*)** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = call %struct.mc_buffer* @this_cpu_ptr(i32* @mc_buffer)
  store %struct.mc_buffer* %7, %struct.mc_buffer** %5, align 8
  %8 = load %struct.mc_buffer*, %struct.mc_buffer** %5, align 8
  %9 = getelementptr inbounds %struct.mc_buffer, %struct.mc_buffer* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @MC_BATCH, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %17

13:                                               ; preds = %2
  %14 = load i32, i32* @XEN_MC_FL_CALLBACK, align 4
  %15 = call i32 @trace_xen_mc_flush_reason(i32 %14)
  %16 = call i32 (...) @xen_mc_flush()
  br label %17

17:                                               ; preds = %13, %2
  %18 = load void (i8*)*, void (i8*)** %3, align 8
  %19 = load i8*, i8** %4, align 8
  %20 = call i32 @trace_xen_mc_callback(void (i8*)* %18, i8* %19)
  %21 = load %struct.mc_buffer*, %struct.mc_buffer** %5, align 8
  %22 = getelementptr inbounds %struct.mc_buffer, %struct.mc_buffer* %21, i32 0, i32 1
  %23 = load %struct.callback*, %struct.callback** %22, align 8
  %24 = load %struct.mc_buffer*, %struct.mc_buffer** %5, align 8
  %25 = getelementptr inbounds %struct.mc_buffer, %struct.mc_buffer* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = add nsw i64 %26, 1
  store i64 %27, i64* %25, align 8
  %28 = getelementptr inbounds %struct.callback, %struct.callback* %23, i64 %26
  store %struct.callback* %28, %struct.callback** %6, align 8
  %29 = load void (i8*)*, void (i8*)** %3, align 8
  %30 = load %struct.callback*, %struct.callback** %6, align 8
  %31 = getelementptr inbounds %struct.callback, %struct.callback* %30, i32 0, i32 0
  store void (i8*)* %29, void (i8*)** %31, align 8
  %32 = load i8*, i8** %4, align 8
  %33 = load %struct.callback*, %struct.callback** %6, align 8
  %34 = getelementptr inbounds %struct.callback, %struct.callback* %33, i32 0, i32 1
  store i8* %32, i8** %34, align 8
  ret void
}

declare dso_local %struct.mc_buffer* @this_cpu_ptr(i32*) #1

declare dso_local i32 @trace_xen_mc_flush_reason(i32) #1

declare dso_local i32 @xen_mc_flush(...) #1

declare dso_local i32 @trace_xen_mc_callback(void (i8*)*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
