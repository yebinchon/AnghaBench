; ModuleID = '/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-weights.c_targ_weights_update.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-weights.c_targ_weights_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32* }

@weights_coords = common dso_local global i32 0, align 4
@TAT = common dso_local global i32* null, align 8
@weights_updates = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @targ_weights_update(i32 %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_4__*, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %12 = load i32, i32* %8, align 4
  %13 = load i32, i32* @weights_coords, align 4
  %14 = icmp ne i32 %12, %13
  br i1 %14, label %18, label %15

15:                                               ; preds = %4
  %16 = load i32*, i32** @TAT, align 8
  %17 = icmp eq i32* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %15, %4
  store i32 -1, i32* %5, align 4
  br label %62

19:                                               ; preds = %15
  %20 = load i32, i32* %6, align 4
  %21 = call %struct.TYPE_4__* @get_user(i32 %20)
  store %struct.TYPE_4__* %21, %struct.TYPE_4__** %10, align 8
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %23 = icmp eq %struct.TYPE_4__* %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  store i32 -1, i32* %5, align 4
  br label %62

25:                                               ; preds = %19
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %27, align 8
  %29 = icmp eq %struct.TYPE_5__* %28, null
  br i1 %29, label %30, label %34

30:                                               ; preds = %25
  %31 = call %struct.TYPE_5__* (...) @targ_weights_vector_alloc()
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  store %struct.TYPE_5__* %31, %struct.TYPE_5__** %33, align 8
  br label %34

34:                                               ; preds = %30, %25
  store i32 0, i32* %11, align 4
  br label %35

35:                                               ; preds = %56, %34
  %36 = load i32, i32* %11, align 4
  %37 = load i32, i32* @weights_coords, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %59

39:                                               ; preds = %35
  %40 = load i32*, i32** %9, align 8
  %41 = load i32, i32* %11, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = sitofp i32 %44 to double
  %46 = fmul double %45, 0x3E10000000000000
  %47 = fptosi double %46 to i32
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = load i32, i32* %11, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  store i32 %47, i32* %55, align 4
  br label %56

56:                                               ; preds = %39
  %57 = load i32, i32* %11, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %11, align 4
  br label %35

59:                                               ; preds = %35
  %60 = load i32, i32* @weights_updates, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* @weights_updates, align 4
  store i32 0, i32* %5, align 4
  br label %62

62:                                               ; preds = %59, %24, %18
  %63 = load i32, i32* %5, align 4
  ret i32 %63
}

declare dso_local %struct.TYPE_4__* @get_user(i32) #1

declare dso_local %struct.TYPE_5__* @targ_weights_vector_alloc(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
