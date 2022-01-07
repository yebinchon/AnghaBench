; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_mce.c_get_mce_event.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_mce.c_get_mce_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.machine_check_event = type { i64 }

@mce_nest_count = common dso_local global i32 0, align 4
@MAX_MC_EVT = common dso_local global i32 0, align 4
@mce_event = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_mce_event(%struct.machine_check_event* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.machine_check_event*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.machine_check_event*, align 8
  %8 = alloca i32, align 4
  store %struct.machine_check_event* %0, %struct.machine_check_event** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* @mce_nest_count, align 4
  %10 = call i32 @__this_cpu_read(i32 %9)
  %11 = sub nsw i32 %10, 1
  store i32 %11, i32* %6, align 4
  store i32 0, i32* %8, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* %8, align 4
  store i32 %15, i32* %3, align 4
  br label %48

16:                                               ; preds = %2
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* @MAX_MC_EVT, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %40

20:                                               ; preds = %16
  %21 = load i32*, i32** @mce_event, align 8
  %22 = load i32, i32* %6, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  %25 = call %struct.machine_check_event* @this_cpu_ptr(i32* %24)
  store %struct.machine_check_event* %25, %struct.machine_check_event** %7, align 8
  %26 = load %struct.machine_check_event*, %struct.machine_check_event** %4, align 8
  %27 = icmp ne %struct.machine_check_event* %26, null
  br i1 %27, label %28, label %33

28:                                               ; preds = %20
  %29 = load %struct.machine_check_event*, %struct.machine_check_event** %4, align 8
  %30 = load %struct.machine_check_event*, %struct.machine_check_event** %7, align 8
  %31 = bitcast %struct.machine_check_event* %29 to i8*
  %32 = bitcast %struct.machine_check_event* %30 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %31, i8* align 8 %32, i64 8, i1 false)
  br label %33

33:                                               ; preds = %28, %20
  %34 = load i32, i32* %5, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %33
  %37 = load %struct.machine_check_event*, %struct.machine_check_event** %7, align 8
  %38 = getelementptr inbounds %struct.machine_check_event, %struct.machine_check_event* %37, i32 0, i32 0
  store i64 0, i64* %38, align 8
  br label %39

39:                                               ; preds = %36, %33
  store i32 1, i32* %8, align 4
  br label %40

40:                                               ; preds = %39, %16
  %41 = load i32, i32* %5, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %40
  %44 = load i32, i32* @mce_nest_count, align 4
  %45 = call i32 @__this_cpu_dec(i32 %44)
  br label %46

46:                                               ; preds = %43, %40
  %47 = load i32, i32* %8, align 4
  store i32 %47, i32* %3, align 4
  br label %48

48:                                               ; preds = %46, %14
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local i32 @__this_cpu_read(i32) #1

declare dso_local %struct.machine_check_event* @this_cpu_ptr(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @__this_cpu_dec(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
