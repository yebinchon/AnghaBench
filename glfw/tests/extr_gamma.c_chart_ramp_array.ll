; ModuleID = '/home/carl/AnghaBench/glfw/tests/extr_gamma.c_chart_ramp_array.c'
source_filename = "/home/carl/AnghaBench/glfw/tests/extr_gamma.c_chart_ramp_array.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nk_context = type { i32 }
%struct.nk_color = type { i32 }

@NK_CHART_LINES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"#%u: %u (%0.5f) \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nk_context*, i32, i32, i16*)* @chart_ramp_array to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @chart_ramp_array(%struct.nk_context* %0, i32 %1, i32 %2, i16* %3) #0 {
  %5 = alloca %struct.nk_color, align 4
  %6 = alloca %struct.nk_context*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i16*, align 8
  %9 = alloca i32, align 4
  %10 = alloca [1024 x i8], align 16
  %11 = getelementptr inbounds %struct.nk_color, %struct.nk_color* %5, i32 0, i32 0
  store i32 %1, i32* %11, align 4
  store %struct.nk_context* %0, %struct.nk_context** %6, align 8
  store i32 %2, i32* %7, align 4
  store i16* %3, i16** %8, align 8
  %12 = load %struct.nk_context*, %struct.nk_context** %6, align 8
  %13 = load i32, i32* @NK_CHART_LINES, align 4
  %14 = call i32 @nk_rgb(i32 255, i32 255, i32 255)
  %15 = load i32, i32* %7, align 4
  %16 = getelementptr inbounds %struct.nk_color, %struct.nk_color* %5, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i64 @nk_chart_begin_colored(%struct.nk_context* %12, i32 %13, i32 %17, i32 %14, i32 %15, i32 0, i32 65535)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %62

20:                                               ; preds = %4
  store i32 0, i32* %9, align 4
  br label %21

21:                                               ; preds = %56, %20
  %22 = load i32, i32* %9, align 4
  %23 = load i32, i32* %7, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %59

25:                                               ; preds = %21
  %26 = load %struct.nk_context*, %struct.nk_context** %6, align 8
  %27 = load i16*, i16** %8, align 8
  %28 = load i32, i32* %9, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i16, i16* %27, i64 %29
  %31 = load i16, i16* %30, align 2
  %32 = call i64 @nk_chart_push(%struct.nk_context* %26, i16 zeroext %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %55

34:                                               ; preds = %25
  %35 = getelementptr inbounds [1024 x i8], [1024 x i8]* %10, i64 0, i64 0
  %36 = load i32, i32* %9, align 4
  %37 = load i16*, i16** %8, align 8
  %38 = load i32, i32* %9, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i16, i16* %37, i64 %39
  %41 = load i16, i16* %40, align 2
  %42 = load i16*, i16** %8, align 8
  %43 = load i32, i32* %9, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i16, i16* %42, i64 %44
  %46 = load i16, i16* %45, align 2
  %47 = zext i16 %46 to i32
  %48 = sitofp i32 %47 to float
  %49 = fdiv float %48, 6.553500e+04
  %50 = fptoui float %49 to i16
  %51 = call i32 @snprintf(i8* %35, i32 1024, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %36, i16 zeroext %41, i16 zeroext %50)
  %52 = load %struct.nk_context*, %struct.nk_context** %6, align 8
  %53 = getelementptr inbounds [1024 x i8], [1024 x i8]* %10, i64 0, i64 0
  %54 = call i32 @nk_tooltip(%struct.nk_context* %52, i8* %53)
  br label %55

55:                                               ; preds = %34, %25
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %9, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %9, align 4
  br label %21

59:                                               ; preds = %21
  %60 = load %struct.nk_context*, %struct.nk_context** %6, align 8
  %61 = call i32 @nk_chart_end(%struct.nk_context* %60)
  br label %62

62:                                               ; preds = %59, %4
  ret void
}

declare dso_local i64 @nk_chart_begin_colored(%struct.nk_context*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @nk_rgb(i32, i32, i32) #1

declare dso_local i64 @nk_chart_push(%struct.nk_context*, i16 zeroext) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, i16 zeroext, i16 zeroext) #1

declare dso_local i32 @nk_tooltip(%struct.nk_context*, i8*) #1

declare dso_local i32 @nk_chart_end(%struct.nk_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
