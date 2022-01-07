; ModuleID = '/home/carl/AnghaBench/lab/engine/code/deepmind/extr_headless_osmesa_glimp.c_GLimp_MakeCurrent.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/deepmind/extr_headless_osmesa_glimp.c_GLimp_MakeCurrent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@osmesa_ctx = common dso_local global i32 0, align 4
@osmesa_frame_buffer = common dso_local global i32 0, align 4
@GL_UNSIGNED_BYTE = common dso_local global i32 0, align 4
@glConfig = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@.str = private unnamed_addr constant [28 x i8] c"GLimp_MakeCurrent - Failed!\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @GLimp_MakeCurrent() #0 {
  %1 = load i32, i32* @osmesa_ctx, align 4
  %2 = load i32, i32* @osmesa_frame_buffer, align 4
  %3 = load i32, i32* @GL_UNSIGNED_BYTE, align 4
  %4 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @glConfig, i32 0, i32 1), align 4
  %5 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @glConfig, i32 0, i32 0), align 4
  %6 = call i32 @OSMesaMakeCurrent(i32 %1, i32 %2, i32 %3, i32 %4, i32 %5)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %0
  %9 = call i32 @Sys_Error(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %10

10:                                               ; preds = %8, %0
  ret void
}

declare dso_local i32 @OSMesaMakeCurrent(i32, i32, i32, i32, i32) #1

declare dso_local i32 @Sys_Error(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
