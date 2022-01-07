; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/powernv/extr_vas-window.c_vas_rx_win_open.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/powernv/extr_vas-window.c_vas_rx_win_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vas_window = type { i32, i32, i32, i32, i64, i32 }
%struct.vas_rx_win_attr = type { i64, i64, i32 }
%struct.vas_winctx = type { i32 }
%struct.vas_instance = type { i32 }

@current = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"vasid %d not found!\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"Found instance %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"Unable to allocate memory for Rx window\0A\00", align 1
@VAS_WCREDS_DEFAULT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.vas_window* @vas_rx_win_open(i32 %0, i32 %1, %struct.vas_rx_win_attr* %2) #0 {
  %4 = alloca %struct.vas_window*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.vas_rx_win_attr*, align 8
  %8 = alloca %struct.vas_window*, align 8
  %9 = alloca %struct.vas_winctx, align 4
  %10 = alloca %struct.vas_instance*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store %struct.vas_rx_win_attr* %2, %struct.vas_rx_win_attr** %7, align 8
  %11 = load i32, i32* @current, align 4
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* %6, align 4
  %14 = load %struct.vas_rx_win_attr*, %struct.vas_rx_win_attr** %7, align 8
  %15 = call i32 @trace_vas_rx_win_open(i32 %11, i32 %12, i32 %13, %struct.vas_rx_win_attr* %14)
  %16 = load i32, i32* %6, align 4
  %17 = load %struct.vas_rx_win_attr*, %struct.vas_rx_win_attr** %7, align 8
  %18 = call i32 @rx_win_args_valid(i32 %16, %struct.vas_rx_win_attr* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %3
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  %23 = call %struct.vas_window* @ERR_PTR(i32 %22)
  store %struct.vas_window* %23, %struct.vas_window** %4, align 8
  br label %94

24:                                               ; preds = %3
  %25 = load i32, i32* %5, align 4
  %26 = call %struct.vas_instance* @find_vas_instance(i32 %25)
  store %struct.vas_instance* %26, %struct.vas_instance** %10, align 8
  %27 = load %struct.vas_instance*, %struct.vas_instance** %10, align 8
  %28 = icmp ne %struct.vas_instance* %27, null
  br i1 %28, label %35, label %29

29:                                               ; preds = %24
  %30 = load i32, i32* %5, align 4
  %31 = call i32 (i8*, ...) @pr_devel(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %30)
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  %34 = call %struct.vas_window* @ERR_PTR(i32 %33)
  store %struct.vas_window* %34, %struct.vas_window** %4, align 8
  br label %94

35:                                               ; preds = %24
  %36 = load i32, i32* %5, align 4
  %37 = call i32 (i8*, ...) @pr_devel(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %36)
  %38 = load %struct.vas_instance*, %struct.vas_instance** %10, align 8
  %39 = call %struct.vas_window* @vas_window_alloc(%struct.vas_instance* %38)
  store %struct.vas_window* %39, %struct.vas_window** %8, align 8
  %40 = load %struct.vas_window*, %struct.vas_window** %8, align 8
  %41 = call i64 @IS_ERR(%struct.vas_window* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %35
  %44 = call i32 (i8*, ...) @pr_devel(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  %45 = load %struct.vas_window*, %struct.vas_window** %8, align 8
  store %struct.vas_window* %45, %struct.vas_window** %4, align 8
  br label %94

46:                                               ; preds = %35
  %47 = load %struct.vas_window*, %struct.vas_window** %8, align 8
  %48 = getelementptr inbounds %struct.vas_window, %struct.vas_window* %47, i32 0, i32 0
  store i32 0, i32* %48, align 8
  %49 = load %struct.vas_rx_win_attr*, %struct.vas_rx_win_attr** %7, align 8
  %50 = getelementptr inbounds %struct.vas_rx_win_attr, %struct.vas_rx_win_attr* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.vas_window*, %struct.vas_window** %8, align 8
  %53 = getelementptr inbounds %struct.vas_window, %struct.vas_window* %52, i32 0, i32 5
  store i32 %51, i32* %53, align 8
  %54 = load %struct.vas_rx_win_attr*, %struct.vas_rx_win_attr** %7, align 8
  %55 = getelementptr inbounds %struct.vas_rx_win_attr, %struct.vas_rx_win_attr* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.vas_window*, %struct.vas_window** %8, align 8
  %58 = getelementptr inbounds %struct.vas_window, %struct.vas_window* %57, i32 0, i32 4
  store i64 %56, i64* %58, align 8
  %59 = load i32, i32* %6, align 4
  %60 = load %struct.vas_window*, %struct.vas_window** %8, align 8
  %61 = getelementptr inbounds %struct.vas_window, %struct.vas_window* %60, i32 0, i32 1
  store i32 %59, i32* %61, align 4
  %62 = load %struct.vas_rx_win_attr*, %struct.vas_rx_win_attr** %7, align 8
  %63 = getelementptr inbounds %struct.vas_rx_win_attr, %struct.vas_rx_win_attr* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %46
  br label %70

67:                                               ; preds = %46
  %68 = load i32, i32* @VAS_WCREDS_DEFAULT, align 4
  %69 = sext i32 %68 to i64
  br label %70

70:                                               ; preds = %67, %66
  %71 = phi i64 [ %64, %66 ], [ %69, %67 ]
  %72 = trunc i64 %71 to i32
  %73 = load %struct.vas_window*, %struct.vas_window** %8, align 8
  %74 = getelementptr inbounds %struct.vas_window, %struct.vas_window* %73, i32 0, i32 3
  store i32 %72, i32* %74, align 4
  %75 = load %struct.vas_rx_win_attr*, %struct.vas_rx_win_attr** %7, align 8
  %76 = getelementptr inbounds %struct.vas_rx_win_attr, %struct.vas_rx_win_attr* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %84

79:                                               ; preds = %70
  %80 = load i32, i32* @current, align 4
  %81 = call i32 @task_pid_vnr(i32 %80)
  %82 = load %struct.vas_window*, %struct.vas_window** %8, align 8
  %83 = getelementptr inbounds %struct.vas_window, %struct.vas_window* %82, i32 0, i32 2
  store i32 %81, i32* %83, align 8
  br label %84

84:                                               ; preds = %79, %70
  %85 = load %struct.vas_window*, %struct.vas_window** %8, align 8
  %86 = load %struct.vas_rx_win_attr*, %struct.vas_rx_win_attr** %7, align 8
  %87 = call i32 @init_winctx_for_rxwin(%struct.vas_window* %85, %struct.vas_rx_win_attr* %86, %struct.vas_winctx* %9)
  %88 = load %struct.vas_window*, %struct.vas_window** %8, align 8
  %89 = call i32 @init_winctx_regs(%struct.vas_window* %88, %struct.vas_winctx* %9)
  %90 = load %struct.vas_instance*, %struct.vas_instance** %10, align 8
  %91 = load %struct.vas_window*, %struct.vas_window** %8, align 8
  %92 = call i32 @set_vinst_win(%struct.vas_instance* %90, %struct.vas_window* %91)
  %93 = load %struct.vas_window*, %struct.vas_window** %8, align 8
  store %struct.vas_window* %93, %struct.vas_window** %4, align 8
  br label %94

94:                                               ; preds = %84, %43, %29, %20
  %95 = load %struct.vas_window*, %struct.vas_window** %4, align 8
  ret %struct.vas_window* %95
}

declare dso_local i32 @trace_vas_rx_win_open(i32, i32, i32, %struct.vas_rx_win_attr*) #1

declare dso_local i32 @rx_win_args_valid(i32, %struct.vas_rx_win_attr*) #1

declare dso_local %struct.vas_window* @ERR_PTR(i32) #1

declare dso_local %struct.vas_instance* @find_vas_instance(i32) #1

declare dso_local i32 @pr_devel(i8*, ...) #1

declare dso_local %struct.vas_window* @vas_window_alloc(%struct.vas_instance*) #1

declare dso_local i64 @IS_ERR(%struct.vas_window*) #1

declare dso_local i32 @task_pid_vnr(i32) #1

declare dso_local i32 @init_winctx_for_rxwin(%struct.vas_window*, %struct.vas_rx_win_attr*, %struct.vas_winctx*) #1

declare dso_local i32 @init_winctx_regs(%struct.vas_window*, %struct.vas_winctx*) #1

declare dso_local i32 @set_vinst_win(%struct.vas_instance*, %struct.vas_window*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
