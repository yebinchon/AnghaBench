; ModuleID = '/home/carl/AnghaBench/lab/q3map2/common/extr_polylib.c_FreeWindingAccu.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/common/extr_polylib.c_FreeWindingAccu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [33 x i8] c"FreeWindingAccu: winding is NULL\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"FreeWindingAccu: freed a freed winding\00", align 1
@numthreads = common dso_local global i32 0, align 4
@c_active_windings = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @FreeWindingAccu(i32* %0) #0 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %3 = load i32*, i32** %2, align 8
  %4 = icmp ne i32* %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = call i32 @Error(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %7

7:                                                ; preds = %5, %1
  %8 = load i32*, i32** %2, align 8
  %9 = load i32, i32* %8, align 4
  %10 = icmp eq i32 %9, -559030611
  br i1 %10, label %11, label %13

11:                                               ; preds = %7
  %12 = call i32 @Error(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  br label %13

13:                                               ; preds = %11, %7
  %14 = load i32*, i32** %2, align 8
  store i32 -559030611, i32* %14, align 4
  %15 = load i32, i32* @numthreads, align 4
  %16 = icmp eq i32 %15, 1
  br i1 %16, label %17, label %20

17:                                               ; preds = %13
  %18 = load i32, i32* @c_active_windings, align 4
  %19 = add nsw i32 %18, -1
  store i32 %19, i32* @c_active_windings, align 4
  br label %20

20:                                               ; preds = %17, %13
  %21 = load i32*, i32** %2, align 8
  %22 = call i32 @free(i32* %21)
  ret void
}

declare dso_local i32 @Error(i8*) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
