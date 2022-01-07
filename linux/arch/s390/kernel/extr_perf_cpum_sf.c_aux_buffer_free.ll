; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/kernel/extr_perf_cpum_sf.c_aux_buffer_free.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/kernel/extr_perf_cpum_sf.c_aux_buffer_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aux_buffer = type { %struct.aux_buffer*, %struct.aux_buffer*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@sfdbg = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"aux_buffer_free: free %lu SDBTs\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @aux_buffer_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aux_buffer_free(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.aux_buffer*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = bitcast i8* %6 to %struct.aux_buffer*
  store %struct.aux_buffer* %7, %struct.aux_buffer** %3, align 8
  %8 = load %struct.aux_buffer*, %struct.aux_buffer** %3, align 8
  %9 = icmp ne %struct.aux_buffer* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %44

11:                                               ; preds = %1
  %12 = load %struct.aux_buffer*, %struct.aux_buffer** %3, align 8
  %13 = getelementptr inbounds %struct.aux_buffer, %struct.aux_buffer* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %5, align 8
  store i64 0, i64* %4, align 8
  br label %16

16:                                               ; preds = %27, %11
  %17 = load i64, i64* %4, align 8
  %18 = load i64, i64* %5, align 8
  %19 = icmp ult i64 %17, %18
  br i1 %19, label %20, label %30

20:                                               ; preds = %16
  %21 = load %struct.aux_buffer*, %struct.aux_buffer** %3, align 8
  %22 = getelementptr inbounds %struct.aux_buffer, %struct.aux_buffer* %21, i32 0, i32 1
  %23 = load %struct.aux_buffer*, %struct.aux_buffer** %22, align 8
  %24 = load i64, i64* %4, align 8
  %25 = getelementptr inbounds %struct.aux_buffer, %struct.aux_buffer* %23, i64 %24
  %26 = call i32 @free_page(%struct.aux_buffer* byval(%struct.aux_buffer) align 8 %25)
  br label %27

27:                                               ; preds = %20
  %28 = load i64, i64* %4, align 8
  %29 = add i64 %28, 1
  store i64 %29, i64* %4, align 8
  br label %16

30:                                               ; preds = %16
  %31 = load %struct.aux_buffer*, %struct.aux_buffer** %3, align 8
  %32 = getelementptr inbounds %struct.aux_buffer, %struct.aux_buffer* %31, i32 0, i32 1
  %33 = load %struct.aux_buffer*, %struct.aux_buffer** %32, align 8
  %34 = call i32 @kfree(%struct.aux_buffer* %33)
  %35 = load %struct.aux_buffer*, %struct.aux_buffer** %3, align 8
  %36 = getelementptr inbounds %struct.aux_buffer, %struct.aux_buffer* %35, i32 0, i32 0
  %37 = load %struct.aux_buffer*, %struct.aux_buffer** %36, align 8
  %38 = call i32 @kfree(%struct.aux_buffer* %37)
  %39 = load %struct.aux_buffer*, %struct.aux_buffer** %3, align 8
  %40 = call i32 @kfree(%struct.aux_buffer* %39)
  %41 = load i32, i32* @sfdbg, align 4
  %42 = load i64, i64* %5, align 8
  %43 = call i32 @debug_sprintf_event(i32 %41, i32 4, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i64 %42)
  br label %44

44:                                               ; preds = %30, %10
  ret void
}

declare dso_local i32 @free_page(%struct.aux_buffer* byval(%struct.aux_buffer) align 8) #1

declare dso_local i32 @kfree(%struct.aux_buffer*) #1

declare dso_local i32 @debug_sprintf_event(i32, i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
