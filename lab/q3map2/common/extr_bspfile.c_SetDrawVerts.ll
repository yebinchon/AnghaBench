; ModuleID = '/home/carl/AnghaBench/lab/q3map2/common/extr_bspfile.c_SetDrawVerts.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/common/extr_bspfile.c_SetDrawVerts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@drawVerts = common dso_local global i64 0, align 8
@numDrawVerts = common dso_local global i32 0, align 4
@numDrawVertsBuffer = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"IncDrawVerts\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SetDrawVerts(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i64, i64* @drawVerts, align 8
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %8

5:                                                ; preds = %1
  %6 = load i64, i64* @drawVerts, align 8
  %7 = call i32 @free(i64 %6)
  br label %8

8:                                                ; preds = %5, %1
  %9 = load i32, i32* %2, align 4
  store i32 %9, i32* @numDrawVerts, align 4
  %10 = load i32, i32* @numDrawVerts, align 4
  store i32 %10, i32* @numDrawVertsBuffer, align 4
  %11 = load i32, i32* @numDrawVertsBuffer, align 4
  %12 = sext i32 %11 to i64
  %13 = mul i64 4, %12
  %14 = trunc i64 %13 to i32
  %15 = call i64 @safe_malloc_info(i32 %14, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  store i64 %15, i64* @drawVerts, align 8
  %16 = load i64, i64* @drawVerts, align 8
  %17 = load i32, i32* %2, align 4
  %18 = sext i32 %17 to i64
  %19 = mul i64 %18, 4
  %20 = trunc i64 %19 to i32
  %21 = call i32 @memset(i64 %16, i32 0, i32 %20)
  ret void
}

declare dso_local i32 @free(i64) #1

declare dso_local i64 @safe_malloc_info(i32, i8*) #1

declare dso_local i32 @memset(i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
