; ModuleID = '/home/carl/AnghaBench/libuv/src/unix/extr_linux-core.c_uv_get_total_memory.c'
source_filename = "/home/carl/AnghaBench/libuv/src/unix/extr_linux-core.c_uv_get_total_memory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sysinfo = type { i64, i64 }

@.str = private unnamed_addr constant [10 x i8] c"MemTotal:\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @uv_get_total_memory() #0 {
  %1 = alloca i64, align 8
  %2 = alloca %struct.sysinfo, align 8
  %3 = alloca i64, align 8
  %4 = call i64 @uv__read_proc_meminfo(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  store i64 %4, i64* %3, align 8
  %5 = load i64, i64* %3, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %0
  %8 = load i64, i64* %3, align 8
  store i64 %8, i64* %1, align 8
  br label %19

9:                                                ; preds = %0
  %10 = call i64 @sysinfo(%struct.sysinfo* %2)
  %11 = icmp eq i64 0, %10
  br i1 %11, label %12, label %18

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.sysinfo, %struct.sysinfo* %2, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = getelementptr inbounds %struct.sysinfo, %struct.sysinfo* %2, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = mul nsw i64 %14, %16
  store i64 %17, i64* %1, align 8
  br label %19

18:                                               ; preds = %9
  store i64 0, i64* %1, align 8
  br label %19

19:                                               ; preds = %18, %12, %7
  %20 = load i64, i64* %1, align 8
  ret i64 %20
}

declare dso_local i64 @uv__read_proc_meminfo(i8*) #1

declare dso_local i64 @sysinfo(%struct.sysinfo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
