; ModuleID = '/home/carl/AnghaBench/linux/arch/ia64/oprofile/extr_backtrace.c_do_ia64_backtrace.c'
source_filename = "/home/carl/AnghaBench/linux/arch/ia64/oprofile/extr_backtrace.c_do_ia64_backtrace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.unw_frame_info = type { i32 }
%struct.TYPE_3__ = type { i32, i32, i64 }
%struct.switch_stack = type { i32 }

@current = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.unw_frame_info*, i8*)* @do_ia64_backtrace to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_ia64_backtrace(%struct.unw_frame_info* %0, i8* %1) #0 {
  %3 = alloca %struct.unw_frame_info*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca %struct.switch_stack*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.unw_frame_info* %0, %struct.unw_frame_info** %3, align 8
  store i8* %1, i8** %4, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %11, %struct.TYPE_3__** %5, align 8
  store i32 0, i32* %7, align 4
  %12 = load %struct.unw_frame_info*, %struct.unw_frame_info** %3, align 8
  %13 = getelementptr inbounds %struct.unw_frame_info, %struct.unw_frame_info* %12, i64 1
  %14 = bitcast %struct.unw_frame_info* %13 to %struct.switch_stack*
  store %struct.switch_stack* %14, %struct.switch_stack** %6, align 8
  %15 = load %struct.switch_stack*, %struct.switch_stack** %6, align 8
  %16 = ptrtoint %struct.switch_stack* %15 to i64
  %17 = add i64 %16, 15
  %18 = and i64 %17, -16
  %19 = inttoptr i64 %18 to %struct.switch_stack*
  store %struct.switch_stack* %19, %struct.switch_stack** %6, align 8
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* @current, align 4
  %23 = load %struct.switch_stack*, %struct.switch_stack** %6, align 8
  %24 = call i32 @unw_init_frame_info(i32* %21, i32 %22, %struct.switch_stack* %23)
  br label %25

25:                                               ; preds = %41, %2
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = call i32 @unw_get_sp(i32* %27, i64* %9)
  %29 = load i64, i64* %9, align 8
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = icmp sge i64 %29, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %25
  br label %45

35:                                               ; preds = %25
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %37 = call i64 @next_frame(%struct.TYPE_3__* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %35
  br label %70

40:                                               ; preds = %35
  br label %41

41:                                               ; preds = %40
  %42 = load i32, i32* %7, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %7, align 4
  %44 = icmp slt i32 %42, 200
  br i1 %44, label %25, label %45

45:                                               ; preds = %41, %34
  br label %46

46:                                               ; preds = %69, %45
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = add nsw i32 %49, -1
  store i32 %50, i32* %48, align 4
  %51 = icmp ne i32 %49, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %46
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %54 = call i64 @next_frame(%struct.TYPE_3__* %53)
  %55 = icmp ne i64 %54, 0
  br label %56

56:                                               ; preds = %52, %46
  %57 = phi i1 [ false, %46 ], [ %55, %52 ]
  br i1 %57, label %58, label %70

58:                                               ; preds = %56
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  %61 = call i32 @unw_get_ip(i32* %60, i64* %8)
  %62 = load i64, i64* %8, align 8
  %63 = call i32 @oprofile_add_trace(i64 %62)
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 0
  %66 = call i64 @unw_is_intr_frame(i32* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %58
  br label %70

69:                                               ; preds = %58
  br label %46

70:                                               ; preds = %39, %68, %56
  ret void
}

declare dso_local i32 @unw_init_frame_info(i32*, i32, %struct.switch_stack*) #1

declare dso_local i32 @unw_get_sp(i32*, i64*) #1

declare dso_local i64 @next_frame(%struct.TYPE_3__*) #1

declare dso_local i32 @unw_get_ip(i32*, i64*) #1

declare dso_local i32 @oprofile_add_trace(i64) #1

declare dso_local i64 @unw_is_intr_frame(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
