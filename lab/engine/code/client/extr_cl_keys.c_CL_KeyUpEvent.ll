; ModuleID = '/home/carl/AnghaBench/lab/engine/code/client/extr_cl_keys.c_CL_KeyUpEvent.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/client/extr_cl_keys.c_CL_KeyUpEvent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i64 }

@keys = common dso_local global %struct.TYPE_2__* null, align 8
@qfalse = common dso_local global i32 0, align 4
@anykeydown = common dso_local global i64 0, align 8
@K_CONSOLE = common dso_local global i32 0, align 4
@K_ESCAPE = common dso_local global i32 0, align 4
@K_SHIFT = common dso_local global i64 0, align 8
@KEYCATCH_UI = common dso_local global i32 0, align 4
@uivm = common dso_local global i64 0, align 8
@UI_KEY_EVENT = common dso_local global i32 0, align 4
@KEYCATCH_CGAME = common dso_local global i32 0, align 4
@cgvm = common dso_local global i64 0, align 8
@CG_KEY_EVENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CL_KeyUpEvent(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** @keys, align 8
  %6 = load i32, i32* %3, align 4
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i64 %7
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 1
  store i64 0, i64* %9, align 8
  %10 = load i32, i32* @qfalse, align 4
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** @keys, align 8
  %12 = load i32, i32* %3, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i64 %13
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  store i32 %10, i32* %15, align 8
  %16 = load i64, i64* @anykeydown, align 8
  %17 = add nsw i64 %16, -1
  store i64 %17, i64* @anykeydown, align 8
  %18 = load i64, i64* @anykeydown, align 8
  %19 = icmp slt i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  store i64 0, i64* @anykeydown, align 8
  br label %21

21:                                               ; preds = %20, %2
  %22 = load i32, i32* %3, align 4
  %23 = load i32, i32* @K_CONSOLE, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %36, label %25

25:                                               ; preds = %21
  %26 = load i32, i32* %3, align 4
  %27 = load i32, i32* @K_ESCAPE, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %37

29:                                               ; preds = %25
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** @keys, align 8
  %31 = load i64, i64* @K_SHIFT, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %29, %21
  br label %70

37:                                               ; preds = %29, %25
  %38 = load i32, i32* %3, align 4
  %39 = load i32, i32* @qfalse, align 4
  %40 = load i32, i32* %4, align 4
  %41 = call i32 @CL_ParseBinding(i32 %38, i32 %39, i32 %40)
  %42 = call i32 (...) @Key_GetCatcher()
  %43 = load i32, i32* @KEYCATCH_UI, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %55

46:                                               ; preds = %37
  %47 = load i64, i64* @uivm, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %46
  %50 = load i64, i64* @uivm, align 8
  %51 = load i32, i32* @UI_KEY_EVENT, align 4
  %52 = load i32, i32* %3, align 4
  %53 = load i32, i32* @qfalse, align 4
  %54 = call i32 @VM_Call(i64 %50, i32 %51, i32 %52, i32 %53)
  br label %70

55:                                               ; preds = %46, %37
  %56 = call i32 (...) @Key_GetCatcher()
  %57 = load i32, i32* @KEYCATCH_CGAME, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %69

60:                                               ; preds = %55
  %61 = load i64, i64* @cgvm, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %69

63:                                               ; preds = %60
  %64 = load i64, i64* @cgvm, align 8
  %65 = load i32, i32* @CG_KEY_EVENT, align 4
  %66 = load i32, i32* %3, align 4
  %67 = load i32, i32* @qfalse, align 4
  %68 = call i32 @VM_Call(i64 %64, i32 %65, i32 %66, i32 %67)
  br label %69

69:                                               ; preds = %63, %60, %55
  br label %70

70:                                               ; preds = %36, %69, %49
  ret void
}

declare dso_local i32 @CL_ParseBinding(i32, i32, i32) #1

declare dso_local i32 @Key_GetCatcher(...) #1

declare dso_local i32 @VM_Call(i64, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
