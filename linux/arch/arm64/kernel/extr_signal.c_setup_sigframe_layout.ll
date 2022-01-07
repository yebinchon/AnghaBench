; ModuleID = '/home/carl/AnghaBench/linux/arch/arm64/kernel/extr_signal.c_setup_sigframe_layout.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm64/kernel/extr_signal.c_setup_sigframe_layout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i64 }
%struct.rt_sigframe_user_layout = type { i32, i32, i32 }

@current = common dso_local global %struct.TYPE_4__* null, align 8
@TIF_SVE = common dso_local global i32 0, align 4
@sve_max_vl = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rt_sigframe_user_layout*, i32)* @setup_sigframe_layout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @setup_sigframe_layout(%struct.rt_sigframe_user_layout* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rt_sigframe_user_layout*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.rt_sigframe_user_layout* %0, %struct.rt_sigframe_user_layout** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.rt_sigframe_user_layout*, %struct.rt_sigframe_user_layout** %4, align 8
  %10 = load %struct.rt_sigframe_user_layout*, %struct.rt_sigframe_user_layout** %4, align 8
  %11 = getelementptr inbounds %struct.rt_sigframe_user_layout, %struct.rt_sigframe_user_layout* %10, i32 0, i32 2
  %12 = call i32 @sigframe_alloc(%struct.rt_sigframe_user_layout* %9, i32* %11, i32 4)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* %6, align 4
  store i32 %16, i32* %3, align 4
  br label %73

17:                                               ; preds = %2
  %18 = load i32, i32* %5, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %26, label %20

20:                                               ; preds = %17
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %36

26:                                               ; preds = %20, %17
  %27 = load %struct.rt_sigframe_user_layout*, %struct.rt_sigframe_user_layout** %4, align 8
  %28 = load %struct.rt_sigframe_user_layout*, %struct.rt_sigframe_user_layout** %4, align 8
  %29 = getelementptr inbounds %struct.rt_sigframe_user_layout, %struct.rt_sigframe_user_layout* %28, i32 0, i32 1
  %30 = call i32 @sigframe_alloc(%struct.rt_sigframe_user_layout* %27, i32* %29, i32 4)
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %6, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %26
  %34 = load i32, i32* %6, align 4
  store i32 %34, i32* %3, align 4
  br label %73

35:                                               ; preds = %26
  br label %36

36:                                               ; preds = %35, %20
  %37 = call i64 (...) @system_supports_sve()
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %70

39:                                               ; preds = %36
  store i32 0, i32* %7, align 4
  %40 = load i32, i32* %5, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %46, label %42

42:                                               ; preds = %39
  %43 = load i32, i32* @TIF_SVE, align 4
  %44 = call i64 @test_thread_flag(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %58

46:                                               ; preds = %42, %39
  %47 = load i32, i32* @sve_max_vl, align 4
  store i32 %47, i32* %8, align 4
  %48 = load i32, i32* %5, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %55, label %50

50:                                               ; preds = %46
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  store i32 %54, i32* %8, align 4
  br label %55

55:                                               ; preds = %50, %46
  %56 = load i32, i32* %8, align 4
  %57 = call i32 @sve_vq_from_vl(i32 %56)
  store i32 %57, i32* %7, align 4
  br label %58

58:                                               ; preds = %55, %42
  %59 = load %struct.rt_sigframe_user_layout*, %struct.rt_sigframe_user_layout** %4, align 8
  %60 = load %struct.rt_sigframe_user_layout*, %struct.rt_sigframe_user_layout** %4, align 8
  %61 = getelementptr inbounds %struct.rt_sigframe_user_layout, %struct.rt_sigframe_user_layout* %60, i32 0, i32 0
  %62 = load i32, i32* %7, align 4
  %63 = call i32 @SVE_SIG_CONTEXT_SIZE(i32 %62)
  %64 = call i32 @sigframe_alloc(%struct.rt_sigframe_user_layout* %59, i32* %61, i32 %63)
  store i32 %64, i32* %6, align 4
  %65 = load i32, i32* %6, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %58
  %68 = load i32, i32* %6, align 4
  store i32 %68, i32* %3, align 4
  br label %73

69:                                               ; preds = %58
  br label %70

70:                                               ; preds = %69, %36
  %71 = load %struct.rt_sigframe_user_layout*, %struct.rt_sigframe_user_layout** %4, align 8
  %72 = call i32 @sigframe_alloc_end(%struct.rt_sigframe_user_layout* %71)
  store i32 %72, i32* %3, align 4
  br label %73

73:                                               ; preds = %70, %67, %33, %15
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

declare dso_local i32 @sigframe_alloc(%struct.rt_sigframe_user_layout*, i32*, i32) #1

declare dso_local i64 @system_supports_sve(...) #1

declare dso_local i64 @test_thread_flag(i32) #1

declare dso_local i32 @sve_vq_from_vl(i32) #1

declare dso_local i32 @SVE_SIG_CONTEXT_SIZE(i32) #1

declare dso_local i32 @sigframe_alloc_end(%struct.rt_sigframe_user_layout*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
