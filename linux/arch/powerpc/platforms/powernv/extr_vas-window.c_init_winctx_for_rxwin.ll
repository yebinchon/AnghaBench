; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/powernv/extr_vas-window.c_init_winctx_for_rxwin.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/powernv/extr_vas-window.c_init_winctx_for_rxwin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vas_window = type { i32 }
%struct.vas_rx_win_attr = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i32, i32* }
%struct.vas_winctx = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i64, i32, i32, i64, i32, i32, i32, i32, i32, i32 }

@VAS_DMA_TYPE_INJECT = common dso_local global i32 0, align 4
@VAS_SCOPE_LOCAL = common dso_local global i32 0, align 4
@VAS_SCOPE_VECTORED_GROUP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vas_window*, %struct.vas_rx_win_attr*, %struct.vas_winctx*)* @init_winctx_for_rxwin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_winctx_for_rxwin(%struct.vas_window* %0, %struct.vas_rx_win_attr* %1, %struct.vas_winctx* %2) #0 {
  %4 = alloca %struct.vas_window*, align 8
  %5 = alloca %struct.vas_rx_win_attr*, align 8
  %6 = alloca %struct.vas_winctx*, align 8
  store %struct.vas_window* %0, %struct.vas_window** %4, align 8
  store %struct.vas_rx_win_attr* %1, %struct.vas_rx_win_attr** %5, align 8
  store %struct.vas_winctx* %2, %struct.vas_winctx** %6, align 8
  %7 = load %struct.vas_winctx*, %struct.vas_winctx** %6, align 8
  %8 = call i32 @memset(%struct.vas_winctx* %7, i32 0, i32 120)
  %9 = load %struct.vas_rx_win_attr*, %struct.vas_rx_win_attr** %5, align 8
  %10 = getelementptr inbounds %struct.vas_rx_win_attr, %struct.vas_rx_win_attr* %9, i32 0, i32 16
  %11 = load i32*, i32** %10, align 8
  %12 = load %struct.vas_winctx*, %struct.vas_winctx** %6, align 8
  %13 = getelementptr inbounds %struct.vas_winctx, %struct.vas_winctx* %12, i32 0, i32 15
  store i32* %11, i32** %13, align 8
  %14 = load %struct.vas_rx_win_attr*, %struct.vas_rx_win_attr** %5, align 8
  %15 = getelementptr inbounds %struct.vas_rx_win_attr, %struct.vas_rx_win_attr* %14, i32 0, i32 15
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.vas_winctx*, %struct.vas_winctx** %6, align 8
  %18 = getelementptr inbounds %struct.vas_winctx, %struct.vas_winctx* %17, i32 0, i32 25
  store i32 %16, i32* %18, align 4
  %19 = load %struct.vas_window*, %struct.vas_window** %4, align 8
  %20 = getelementptr inbounds %struct.vas_window, %struct.vas_window* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.vas_winctx*, %struct.vas_winctx** %6, align 8
  %23 = getelementptr inbounds %struct.vas_winctx, %struct.vas_winctx* %22, i32 0, i32 24
  store i32 %21, i32* %23, align 8
  %24 = load %struct.vas_rx_win_attr*, %struct.vas_rx_win_attr** %5, align 8
  %25 = getelementptr inbounds %struct.vas_rx_win_attr, %struct.vas_rx_win_attr* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.vas_winctx*, %struct.vas_winctx** %6, align 8
  %28 = getelementptr inbounds %struct.vas_winctx, %struct.vas_winctx* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 8
  %29 = load %struct.vas_rx_win_attr*, %struct.vas_rx_win_attr** %5, align 8
  %30 = getelementptr inbounds %struct.vas_rx_win_attr, %struct.vas_rx_win_attr* %29, i32 0, i32 14
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.vas_winctx*, %struct.vas_winctx** %6, align 8
  %33 = getelementptr inbounds %struct.vas_winctx, %struct.vas_winctx* %32, i32 0, i32 19
  store i64 %31, i64* %33, align 8
  %34 = load %struct.vas_rx_win_attr*, %struct.vas_rx_win_attr** %5, align 8
  %35 = getelementptr inbounds %struct.vas_rx_win_attr, %struct.vas_rx_win_attr* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.vas_winctx*, %struct.vas_winctx** %6, align 8
  %38 = getelementptr inbounds %struct.vas_winctx, %struct.vas_winctx* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 4
  %39 = load %struct.vas_rx_win_attr*, %struct.vas_rx_win_attr** %5, align 8
  %40 = getelementptr inbounds %struct.vas_rx_win_attr, %struct.vas_rx_win_attr* %39, i32 0, i32 13
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.vas_winctx*, %struct.vas_winctx** %6, align 8
  %43 = getelementptr inbounds %struct.vas_winctx, %struct.vas_winctx* %42, i32 0, i32 16
  store i64 %41, i64* %43, align 8
  %44 = load %struct.vas_rx_win_attr*, %struct.vas_rx_win_attr** %5, align 8
  %45 = getelementptr inbounds %struct.vas_rx_win_attr, %struct.vas_rx_win_attr* %44, i32 0, i32 12
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.vas_winctx*, %struct.vas_winctx** %6, align 8
  %48 = getelementptr inbounds %struct.vas_winctx, %struct.vas_winctx* %47, i32 0, i32 23
  store i32 %46, i32* %48, align 4
  %49 = load %struct.vas_rx_win_attr*, %struct.vas_rx_win_attr** %5, align 8
  %50 = getelementptr inbounds %struct.vas_rx_win_attr, %struct.vas_rx_win_attr* %49, i32 0, i32 11
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.vas_winctx*, %struct.vas_winctx** %6, align 8
  %53 = getelementptr inbounds %struct.vas_winctx, %struct.vas_winctx* %52, i32 0, i32 18
  store i32 %51, i32* %53, align 4
  %54 = load %struct.vas_rx_win_attr*, %struct.vas_rx_win_attr** %5, align 8
  %55 = getelementptr inbounds %struct.vas_rx_win_attr, %struct.vas_rx_win_attr* %54, i32 0, i32 10
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.vas_winctx*, %struct.vas_winctx** %6, align 8
  %58 = getelementptr inbounds %struct.vas_winctx, %struct.vas_winctx* %57, i32 0, i32 17
  store i32 %56, i32* %58, align 8
  %59 = load %struct.vas_rx_win_attr*, %struct.vas_rx_win_attr** %5, align 8
  %60 = getelementptr inbounds %struct.vas_rx_win_attr, %struct.vas_rx_win_attr* %59, i32 0, i32 9
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.vas_winctx*, %struct.vas_winctx** %6, align 8
  %63 = getelementptr inbounds %struct.vas_winctx, %struct.vas_winctx* %62, i32 0, i32 22
  store i32 %61, i32* %63, align 8
  %64 = load %struct.vas_rx_win_attr*, %struct.vas_rx_win_attr** %5, align 8
  %65 = getelementptr inbounds %struct.vas_rx_win_attr, %struct.vas_rx_win_attr* %64, i32 0, i32 8
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.vas_winctx*, %struct.vas_winctx** %6, align 8
  %68 = getelementptr inbounds %struct.vas_winctx, %struct.vas_winctx* %67, i32 0, i32 21
  store i32 %66, i32* %68, align 4
  %69 = load %struct.vas_rx_win_attr*, %struct.vas_rx_win_attr** %5, align 8
  %70 = getelementptr inbounds %struct.vas_rx_win_attr, %struct.vas_rx_win_attr* %69, i32 0, i32 7
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.vas_winctx*, %struct.vas_winctx** %6, align 8
  %73 = getelementptr inbounds %struct.vas_winctx, %struct.vas_winctx* %72, i32 0, i32 20
  store i32 %71, i32* %73, align 8
  %74 = load %struct.vas_winctx*, %struct.vas_winctx** %6, align 8
  %75 = getelementptr inbounds %struct.vas_winctx, %struct.vas_winctx* %74, i32 0, i32 19
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %107

78:                                               ; preds = %3
  %79 = load %struct.vas_winctx*, %struct.vas_winctx** %6, align 8
  %80 = getelementptr inbounds %struct.vas_winctx, %struct.vas_winctx* %79, i32 0, i32 2
  store i32 1, i32* %80, align 8
  %81 = load %struct.vas_winctx*, %struct.vas_winctx** %6, align 8
  %82 = getelementptr inbounds %struct.vas_winctx, %struct.vas_winctx* %81, i32 0, i32 3
  store i32 1, i32* %82, align 4
  %83 = load %struct.vas_winctx*, %struct.vas_winctx** %6, align 8
  %84 = getelementptr inbounds %struct.vas_winctx, %struct.vas_winctx* %83, i32 0, i32 0
  store i32 1, i32* %84, align 8
  %85 = load %struct.vas_winctx*, %struct.vas_winctx** %6, align 8
  %86 = getelementptr inbounds %struct.vas_winctx, %struct.vas_winctx* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @WARN_ON_ONCE(i32 %87)
  %89 = load %struct.vas_winctx*, %struct.vas_winctx** %6, align 8
  %90 = getelementptr inbounds %struct.vas_winctx, %struct.vas_winctx* %89, i32 0, i32 18
  %91 = load i32, i32* %90, align 4
  %92 = icmp ne i32 %91, 0
  %93 = xor i1 %92, true
  %94 = zext i1 %93 to i32
  %95 = call i32 @WARN_ON_ONCE(i32 %94)
  %96 = load %struct.vas_winctx*, %struct.vas_winctx** %6, align 8
  %97 = getelementptr inbounds %struct.vas_winctx, %struct.vas_winctx* %96, i32 0, i32 17
  %98 = load i32, i32* %97, align 8
  %99 = icmp ne i32 %98, 0
  %100 = xor i1 %99, true
  %101 = zext i1 %100 to i32
  %102 = call i32 @WARN_ON_ONCE(i32 %101)
  %103 = load %struct.vas_winctx*, %struct.vas_winctx** %6, align 8
  %104 = getelementptr inbounds %struct.vas_winctx, %struct.vas_winctx* %103, i32 0, i32 4
  %105 = load i32, i32* %104, align 8
  %106 = call i32 @WARN_ON_ONCE(i32 %105)
  br label %129

107:                                              ; preds = %3
  %108 = load %struct.vas_winctx*, %struct.vas_winctx** %6, align 8
  %109 = getelementptr inbounds %struct.vas_winctx, %struct.vas_winctx* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %115

112:                                              ; preds = %107
  %113 = load %struct.vas_winctx*, %struct.vas_winctx** %6, align 8
  %114 = getelementptr inbounds %struct.vas_winctx, %struct.vas_winctx* %113, i32 0, i32 5
  store i32 1, i32* %114, align 4
  br label %128

115:                                              ; preds = %107
  %116 = load %struct.vas_winctx*, %struct.vas_winctx** %6, align 8
  %117 = getelementptr inbounds %struct.vas_winctx, %struct.vas_winctx* %116, i32 0, i32 16
  %118 = load i64, i64* %117, align 8
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %127

120:                                              ; preds = %115
  %121 = load %struct.vas_winctx*, %struct.vas_winctx** %6, align 8
  %122 = getelementptr inbounds %struct.vas_winctx, %struct.vas_winctx* %121, i32 0, i32 6
  store i32 1, i32* %122, align 8
  %123 = load %struct.vas_winctx*, %struct.vas_winctx** %6, align 8
  %124 = getelementptr inbounds %struct.vas_winctx, %struct.vas_winctx* %123, i32 0, i32 3
  store i32 1, i32* %124, align 4
  %125 = load %struct.vas_winctx*, %struct.vas_winctx** %6, align 8
  %126 = getelementptr inbounds %struct.vas_winctx, %struct.vas_winctx* %125, i32 0, i32 15
  store i32* null, i32** %126, align 8
  br label %127

127:                                              ; preds = %120, %115
  br label %128

128:                                              ; preds = %127, %112
  br label %129

129:                                              ; preds = %128, %78
  %130 = load %struct.vas_rx_win_attr*, %struct.vas_rx_win_attr** %5, align 8
  %131 = getelementptr inbounds %struct.vas_rx_win_attr, %struct.vas_rx_win_attr* %130, i32 0, i32 6
  %132 = load i32, i32* %131, align 8
  %133 = load %struct.vas_winctx*, %struct.vas_winctx** %6, align 8
  %134 = getelementptr inbounds %struct.vas_winctx, %struct.vas_winctx* %133, i32 0, i32 14
  store i32 %132, i32* %134, align 8
  %135 = load %struct.vas_rx_win_attr*, %struct.vas_rx_win_attr** %5, align 8
  %136 = getelementptr inbounds %struct.vas_rx_win_attr, %struct.vas_rx_win_attr* %135, i32 0, i32 5
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.vas_winctx*, %struct.vas_winctx** %6, align 8
  %139 = getelementptr inbounds %struct.vas_winctx, %struct.vas_winctx* %138, i32 0, i32 13
  store i32 %137, i32* %139, align 4
  %140 = load %struct.vas_rx_win_attr*, %struct.vas_rx_win_attr** %5, align 8
  %141 = getelementptr inbounds %struct.vas_rx_win_attr, %struct.vas_rx_win_attr* %140, i32 0, i32 4
  %142 = load i32, i32* %141, align 8
  %143 = load %struct.vas_winctx*, %struct.vas_winctx** %6, align 8
  %144 = getelementptr inbounds %struct.vas_winctx, %struct.vas_winctx* %143, i32 0, i32 12
  store i32 %142, i32* %144, align 8
  %145 = load %struct.vas_rx_win_attr*, %struct.vas_rx_win_attr** %5, align 8
  %146 = getelementptr inbounds %struct.vas_rx_win_attr, %struct.vas_rx_win_attr* %145, i32 0, i32 3
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.vas_winctx*, %struct.vas_winctx** %6, align 8
  %149 = getelementptr inbounds %struct.vas_winctx, %struct.vas_winctx* %148, i32 0, i32 11
  store i32 %147, i32* %149, align 4
  %150 = load i32, i32* @VAS_DMA_TYPE_INJECT, align 4
  %151 = load %struct.vas_winctx*, %struct.vas_winctx** %6, align 8
  %152 = getelementptr inbounds %struct.vas_winctx, %struct.vas_winctx* %151, i32 0, i32 10
  store i32 %150, i32* %152, align 8
  %153 = load %struct.vas_rx_win_attr*, %struct.vas_rx_win_attr** %5, align 8
  %154 = getelementptr inbounds %struct.vas_rx_win_attr, %struct.vas_rx_win_attr* %153, i32 0, i32 2
  %155 = load i32, i32* %154, align 8
  %156 = load %struct.vas_winctx*, %struct.vas_winctx** %6, align 8
  %157 = getelementptr inbounds %struct.vas_winctx, %struct.vas_winctx* %156, i32 0, i32 9
  store i32 %155, i32* %157, align 4
  %158 = load i32, i32* @VAS_SCOPE_LOCAL, align 4
  %159 = load %struct.vas_winctx*, %struct.vas_winctx** %6, align 8
  %160 = getelementptr inbounds %struct.vas_winctx, %struct.vas_winctx* %159, i32 0, i32 8
  store i32 %158, i32* %160, align 8
  %161 = load i32, i32* @VAS_SCOPE_VECTORED_GROUP, align 4
  %162 = load %struct.vas_winctx*, %struct.vas_winctx** %6, align 8
  %163 = getelementptr inbounds %struct.vas_winctx, %struct.vas_winctx* %162, i32 0, i32 7
  store i32 %161, i32* %163, align 4
  ret void
}

declare dso_local i32 @memset(%struct.vas_winctx*, i32, i32) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
