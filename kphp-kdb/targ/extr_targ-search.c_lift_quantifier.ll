; ModuleID = '/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-search.c_lift_quantifier.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-search.c_lift_quantifier.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i64, %struct.TYPE_9__*, %struct.TYPE_9__*, %struct.TYPE_9__* }

@q_and = common dso_local global i64 0, align 8
@q_or = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_9__* @lift_quantifier(i32 %0, %struct.TYPE_9__* %1) #0 {
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca %struct.TYPE_9__*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %5, align 8
  %9 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %10 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = and i32 %11, 1
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %2
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %16 = call i32 @Q_IS_SMALLISH(%struct.TYPE_9__* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %14, %2
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %3, align 8
  br label %93

19:                                               ; preds = %14
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @q_and, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %31, label %25

25:                                               ; preds = %19
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @q_or, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %89

31:                                               ; preds = %25, %19
  %32 = load i32, i32* %4, align 4
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 4
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %34, align 8
  %36 = call %struct.TYPE_9__* @lift_quantifier(i32 %32, %struct.TYPE_9__* %35)
  store %struct.TYPE_9__* %36, %struct.TYPE_9__** %6, align 8
  %37 = load i32, i32* %4, align 4
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 3
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %39, align 8
  %41 = call %struct.TYPE_9__* @lift_quantifier(i32 %37, %struct.TYPE_9__* %40)
  store %struct.TYPE_9__* %41, %struct.TYPE_9__** %7, align 8
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %43 = icmp ne %struct.TYPE_9__* %42, null
  br i1 %43, label %46, label %44

44:                                               ; preds = %31
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  store %struct.TYPE_9__* %45, %struct.TYPE_9__** %3, align 8
  br label %93

46:                                               ; preds = %31
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %48 = icmp ne %struct.TYPE_9__* %47, null
  br i1 %48, label %51, label %49

49:                                               ; preds = %46
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  store %struct.TYPE_9__* %50, %struct.TYPE_9__** %3, align 8
  br label %93

51:                                               ; preds = %46
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = call %struct.TYPE_9__* @new_qnode(i64 %54, i32 0)
  store %struct.TYPE_9__* %55, %struct.TYPE_9__** %8, align 8
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 4
  store %struct.TYPE_9__* %56, %struct.TYPE_9__** %58, align 8
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 3
  store %struct.TYPE_9__* %59, %struct.TYPE_9__** %61, align 8
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %63 = call i32 @relax_max_res(%struct.TYPE_9__* %62)
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = icmp eq i64 %66, %69
  br i1 %70, label %71, label %83

71:                                               ; preds = %51
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = and i32 %74, 1
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %83, label %77

77:                                               ; preds = %71
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 2
  %80 = load %struct.TYPE_9__*, %struct.TYPE_9__** %79, align 8
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 2
  store %struct.TYPE_9__* %80, %struct.TYPE_9__** %82, align 8
  br label %87

83:                                               ; preds = %71, %51
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %85 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 2
  store %struct.TYPE_9__* %84, %struct.TYPE_9__** %86, align 8
  br label %87

87:                                               ; preds = %83, %77
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  store %struct.TYPE_9__* %88, %struct.TYPE_9__** %3, align 8
  br label %93

89:                                               ; preds = %25
  %90 = load i32, i32* %4, align 4
  %91 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %92 = call %struct.TYPE_9__* @apply_quantifier(i32 %90, %struct.TYPE_9__* %91)
  store %struct.TYPE_9__* %92, %struct.TYPE_9__** %3, align 8
  br label %93

93:                                               ; preds = %89, %87, %49, %44, %18
  %94 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  ret %struct.TYPE_9__* %94
}

declare dso_local i32 @Q_IS_SMALLISH(%struct.TYPE_9__*) #1

declare dso_local %struct.TYPE_9__* @new_qnode(i64, i32) #1

declare dso_local i32 @relax_max_res(%struct.TYPE_9__*) #1

declare dso_local %struct.TYPE_9__* @apply_quantifier(i32, %struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
