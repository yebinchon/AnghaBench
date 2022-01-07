; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/powernv/extr_vas-window.c_vas_tx_win_open.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/powernv/extr_vas-window.c_vas_tx_win_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vas_window = type { i32, i32, %struct.vas_window*, i32, i32, i32, i32, %struct.vas_window* }
%struct.vas_tx_win_attr = type { i64, i32, i32, i32 }
%struct.vas_winctx = type { i32 }
%struct.vas_instance = type { i32 }

@current = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"vasid %d not found!\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"No RxWin for vasid %d, cop %d\0A\00", align 1
@VAS_WCREDS_DEFAULT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.vas_window* @vas_tx_win_open(i32 %0, i32 %1, %struct.vas_tx_win_attr* %2) #0 {
  %4 = alloca %struct.vas_window*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.vas_tx_win_attr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.vas_window*, align 8
  %10 = alloca %struct.vas_window*, align 8
  %11 = alloca %struct.vas_winctx, align 4
  %12 = alloca %struct.vas_instance*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store %struct.vas_tx_win_attr* %2, %struct.vas_tx_win_attr** %7, align 8
  %13 = load i32, i32* @current, align 4
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* %6, align 4
  %16 = load %struct.vas_tx_win_attr*, %struct.vas_tx_win_attr** %7, align 8
  %17 = call i32 @trace_vas_tx_win_open(i32 %13, i32 %14, i32 %15, %struct.vas_tx_win_attr* %16)
  %18 = load i32, i32* %6, align 4
  %19 = load %struct.vas_tx_win_attr*, %struct.vas_tx_win_attr** %7, align 8
  %20 = call i32 @tx_win_args_valid(i32 %18, %struct.vas_tx_win_attr* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %3
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  %25 = call %struct.vas_window* @ERR_PTR(i32 %24)
  store %struct.vas_window* %25, %struct.vas_window** %4, align 8
  br label %157

26:                                               ; preds = %3
  %27 = load i32, i32* %5, align 4
  %28 = icmp eq i32 %27, -1
  br i1 %28, label %29, label %39

29:                                               ; preds = %26
  %30 = load %struct.vas_tx_win_attr*, %struct.vas_tx_win_attr** %7, align 8
  %31 = getelementptr inbounds %struct.vas_tx_win_attr, %struct.vas_tx_win_attr* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 8
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %29
  %35 = load %struct.vas_tx_win_attr*, %struct.vas_tx_win_attr** %7, align 8
  %36 = getelementptr inbounds %struct.vas_tx_win_attr, %struct.vas_tx_win_attr* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @decode_pswid(i32 %37, i32* %5, i32* null)
  br label %39

39:                                               ; preds = %34, %29, %26
  %40 = load i32, i32* %5, align 4
  %41 = call %struct.vas_instance* @find_vas_instance(i32 %40)
  store %struct.vas_instance* %41, %struct.vas_instance** %12, align 8
  %42 = load %struct.vas_instance*, %struct.vas_instance** %12, align 8
  %43 = icmp ne %struct.vas_instance* %42, null
  br i1 %43, label %50, label %44

44:                                               ; preds = %39
  %45 = load i32, i32* %5, align 4
  %46 = call i32 (i8*, i32, ...) @pr_devel(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %45)
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  %49 = call %struct.vas_window* @ERR_PTR(i32 %48)
  store %struct.vas_window* %49, %struct.vas_window** %4, align 8
  br label %157

50:                                               ; preds = %39
  %51 = load %struct.vas_instance*, %struct.vas_instance** %12, align 8
  %52 = load i32, i32* %6, align 4
  %53 = load %struct.vas_tx_win_attr*, %struct.vas_tx_win_attr** %7, align 8
  %54 = getelementptr inbounds %struct.vas_tx_win_attr, %struct.vas_tx_win_attr* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 8
  %56 = call %struct.vas_window* @get_vinst_rxwin(%struct.vas_instance* %51, i32 %52, i32 %55)
  store %struct.vas_window* %56, %struct.vas_window** %10, align 8
  %57 = load %struct.vas_window*, %struct.vas_window** %10, align 8
  %58 = call i64 @IS_ERR(%struct.vas_window* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %50
  %61 = load i32, i32* %5, align 4
  %62 = load i32, i32* %6, align 4
  %63 = call i32 (i8*, i32, ...) @pr_devel(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %61, i32 %62)
  %64 = load %struct.vas_window*, %struct.vas_window** %10, align 8
  store %struct.vas_window* %64, %struct.vas_window** %4, align 8
  br label %157

65:                                               ; preds = %50
  %66 = load %struct.vas_instance*, %struct.vas_instance** %12, align 8
  %67 = call %struct.vas_window* @vas_window_alloc(%struct.vas_instance* %66)
  store %struct.vas_window* %67, %struct.vas_window** %9, align 8
  %68 = load %struct.vas_window*, %struct.vas_window** %9, align 8
  %69 = call i64 @IS_ERR(%struct.vas_window* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %65
  %72 = load %struct.vas_window*, %struct.vas_window** %9, align 8
  %73 = call i32 @PTR_ERR(%struct.vas_window* %72)
  store i32 %73, i32* %8, align 4
  br label %152

74:                                               ; preds = %65
  %75 = load i32, i32* %6, align 4
  %76 = load %struct.vas_window*, %struct.vas_window** %9, align 8
  %77 = getelementptr inbounds %struct.vas_window, %struct.vas_window* %76, i32 0, i32 0
  store i32 %75, i32* %77, align 8
  %78 = load %struct.vas_window*, %struct.vas_window** %9, align 8
  %79 = getelementptr inbounds %struct.vas_window, %struct.vas_window* %78, i32 0, i32 1
  store i32 1, i32* %79, align 4
  %80 = load %struct.vas_window*, %struct.vas_window** %10, align 8
  %81 = load %struct.vas_window*, %struct.vas_window** %9, align 8
  %82 = getelementptr inbounds %struct.vas_window, %struct.vas_window* %81, i32 0, i32 7
  store %struct.vas_window* %80, %struct.vas_window** %82, align 8
  %83 = load %struct.vas_window*, %struct.vas_window** %9, align 8
  %84 = getelementptr inbounds %struct.vas_window, %struct.vas_window* %83, i32 0, i32 7
  %85 = load %struct.vas_window*, %struct.vas_window** %84, align 8
  %86 = getelementptr inbounds %struct.vas_window, %struct.vas_window* %85, i32 0, i32 6
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.vas_window*, %struct.vas_window** %9, align 8
  %89 = getelementptr inbounds %struct.vas_window, %struct.vas_window* %88, i32 0, i32 6
  store i32 %87, i32* %89, align 4
  %90 = load %struct.vas_tx_win_attr*, %struct.vas_tx_win_attr** %7, align 8
  %91 = getelementptr inbounds %struct.vas_tx_win_attr, %struct.vas_tx_win_attr* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.vas_window*, %struct.vas_window** %9, align 8
  %94 = getelementptr inbounds %struct.vas_window, %struct.vas_window* %93, i32 0, i32 5
  store i32 %92, i32* %94, align 8
  %95 = load %struct.vas_tx_win_attr*, %struct.vas_tx_win_attr** %7, align 8
  %96 = getelementptr inbounds %struct.vas_tx_win_attr, %struct.vas_tx_win_attr* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.vas_window*, %struct.vas_window** %9, align 8
  %99 = getelementptr inbounds %struct.vas_window, %struct.vas_window* %98, i32 0, i32 3
  store i32 %97, i32* %99, align 8
  %100 = load %struct.vas_tx_win_attr*, %struct.vas_tx_win_attr** %7, align 8
  %101 = getelementptr inbounds %struct.vas_tx_win_attr, %struct.vas_tx_win_attr* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %74
  br label %108

105:                                              ; preds = %74
  %106 = load i32, i32* @VAS_WCREDS_DEFAULT, align 4
  %107 = sext i32 %106 to i64
  br label %108

108:                                              ; preds = %105, %104
  %109 = phi i64 [ %102, %104 ], [ %107, %105 ]
  %110 = trunc i64 %109 to i32
  %111 = load %struct.vas_window*, %struct.vas_window** %9, align 8
  %112 = getelementptr inbounds %struct.vas_window, %struct.vas_window* %111, i32 0, i32 4
  store i32 %110, i32* %112, align 4
  %113 = load %struct.vas_window*, %struct.vas_window** %9, align 8
  %114 = load %struct.vas_tx_win_attr*, %struct.vas_tx_win_attr** %7, align 8
  %115 = call i32 @init_winctx_for_txwin(%struct.vas_window* %113, %struct.vas_tx_win_attr* %114, %struct.vas_winctx* %11)
  %116 = load %struct.vas_window*, %struct.vas_window** %9, align 8
  %117 = call i32 @init_winctx_regs(%struct.vas_window* %116, %struct.vas_winctx* %11)
  %118 = load %struct.vas_window*, %struct.vas_window** %9, align 8
  %119 = getelementptr inbounds %struct.vas_window, %struct.vas_window* %118, i32 0, i32 3
  %120 = load i32, i32* %119, align 8
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %138, label %122

122:                                              ; preds = %108
  %123 = load %struct.vas_window*, %struct.vas_window** %9, align 8
  %124 = call %struct.vas_window* @map_paste_region(%struct.vas_window* %123)
  %125 = load %struct.vas_window*, %struct.vas_window** %9, align 8
  %126 = getelementptr inbounds %struct.vas_window, %struct.vas_window* %125, i32 0, i32 2
  store %struct.vas_window* %124, %struct.vas_window** %126, align 8
  %127 = load %struct.vas_window*, %struct.vas_window** %9, align 8
  %128 = getelementptr inbounds %struct.vas_window, %struct.vas_window* %127, i32 0, i32 2
  %129 = load %struct.vas_window*, %struct.vas_window** %128, align 8
  %130 = call i64 @IS_ERR(%struct.vas_window* %129)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %137

132:                                              ; preds = %122
  %133 = load %struct.vas_window*, %struct.vas_window** %9, align 8
  %134 = getelementptr inbounds %struct.vas_window, %struct.vas_window* %133, i32 0, i32 2
  %135 = load %struct.vas_window*, %struct.vas_window** %134, align 8
  %136 = call i32 @PTR_ERR(%struct.vas_window* %135)
  store i32 %136, i32* %8, align 4
  br label %149

137:                                              ; preds = %122
  br label %144

138:                                              ; preds = %108
  %139 = call i32 (...) @set_thread_uses_vas()
  store i32 %139, i32* %8, align 4
  %140 = load i32, i32* %8, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %143

142:                                              ; preds = %138
  br label %149

143:                                              ; preds = %138
  br label %144

144:                                              ; preds = %143, %137
  %145 = load %struct.vas_instance*, %struct.vas_instance** %12, align 8
  %146 = load %struct.vas_window*, %struct.vas_window** %9, align 8
  %147 = call i32 @set_vinst_win(%struct.vas_instance* %145, %struct.vas_window* %146)
  %148 = load %struct.vas_window*, %struct.vas_window** %9, align 8
  store %struct.vas_window* %148, %struct.vas_window** %4, align 8
  br label %157

149:                                              ; preds = %142, %132
  %150 = load %struct.vas_window*, %struct.vas_window** %9, align 8
  %151 = call i32 @vas_window_free(%struct.vas_window* %150)
  br label %152

152:                                              ; preds = %149, %71
  %153 = load %struct.vas_window*, %struct.vas_window** %10, align 8
  %154 = call i32 @put_rx_win(%struct.vas_window* %153)
  %155 = load i32, i32* %8, align 4
  %156 = call %struct.vas_window* @ERR_PTR(i32 %155)
  store %struct.vas_window* %156, %struct.vas_window** %4, align 8
  br label %157

157:                                              ; preds = %152, %144, %60, %44, %22
  %158 = load %struct.vas_window*, %struct.vas_window** %4, align 8
  ret %struct.vas_window* %158
}

declare dso_local i32 @trace_vas_tx_win_open(i32, i32, i32, %struct.vas_tx_win_attr*) #1

declare dso_local i32 @tx_win_args_valid(i32, %struct.vas_tx_win_attr*) #1

declare dso_local %struct.vas_window* @ERR_PTR(i32) #1

declare dso_local i32 @decode_pswid(i32, i32*, i32*) #1

declare dso_local %struct.vas_instance* @find_vas_instance(i32) #1

declare dso_local i32 @pr_devel(i8*, i32, ...) #1

declare dso_local %struct.vas_window* @get_vinst_rxwin(%struct.vas_instance*, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.vas_window*) #1

declare dso_local %struct.vas_window* @vas_window_alloc(%struct.vas_instance*) #1

declare dso_local i32 @PTR_ERR(%struct.vas_window*) #1

declare dso_local i32 @init_winctx_for_txwin(%struct.vas_window*, %struct.vas_tx_win_attr*, %struct.vas_winctx*) #1

declare dso_local i32 @init_winctx_regs(%struct.vas_window*, %struct.vas_winctx*) #1

declare dso_local %struct.vas_window* @map_paste_region(%struct.vas_window*) #1

declare dso_local i32 @set_thread_uses_vas(...) #1

declare dso_local i32 @set_vinst_win(%struct.vas_instance*, %struct.vas_window*) #1

declare dso_local i32 @vas_window_free(%struct.vas_window*) #1

declare dso_local i32 @put_rx_win(%struct.vas_window*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
