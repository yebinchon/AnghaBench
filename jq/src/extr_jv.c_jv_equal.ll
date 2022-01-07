; ModuleID = '/home/carl/AnghaBench/jq/src/extr_jv.c_jv_equal.c'
source_filename = "/home/carl/AnghaBench/jq/src/extr_jv.c_jv_equal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i64, i64, %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @jv_equal(%struct.TYPE_17__* byval(%struct.TYPE_17__) align 8 %0, %struct.TYPE_17__* byval(%struct.TYPE_17__) align 8 %1) #0 {
  %3 = alloca i32, align 4
  %4 = call i32 @jv_get_kind(%struct.TYPE_17__* byval(%struct.TYPE_17__) align 8 %0)
  %5 = call i32 @jv_get_kind(%struct.TYPE_17__* byval(%struct.TYPE_17__) align 8 %1)
  %6 = icmp ne i32 %4, %5
  br i1 %6, label %7, label %8

7:                                                ; preds = %2
  store i32 0, i32* %3, align 4
  br label %48

8:                                                ; preds = %2
  %9 = call i64 @JVP_IS_ALLOCATED(%struct.TYPE_17__* byval(%struct.TYPE_17__) align 8 %0)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %35

11:                                               ; preds = %8
  %12 = call i64 @JVP_IS_ALLOCATED(%struct.TYPE_17__* byval(%struct.TYPE_17__) align 8 %1)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %35

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %0, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %1, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp eq i64 %16, %18
  br i1 %19, label %20, label %35

20:                                               ; preds = %14
  %21 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %0, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %1, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp eq i64 %22, %24
  br i1 %25, label %26, label %35

26:                                               ; preds = %20
  %27 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %0, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %1, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp eq i64 %29, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %26
  store i32 1, i32* %3, align 4
  br label %47

35:                                               ; preds = %26, %20, %14, %11, %8
  %36 = call i32 @jv_get_kind(%struct.TYPE_17__* byval(%struct.TYPE_17__) align 8 %0)
  switch i32 %36, label %45 [
    i32 130, label %37
    i32 131, label %39
    i32 128, label %41
    i32 129, label %43
  ]

37:                                               ; preds = %35
  %38 = call i32 @jvp_number_equal(%struct.TYPE_17__* byval(%struct.TYPE_17__) align 8 %0, %struct.TYPE_17__* byval(%struct.TYPE_17__) align 8 %1)
  store i32 %38, i32* %3, align 4
  br label %46

39:                                               ; preds = %35
  %40 = call i32 @jvp_array_equal(%struct.TYPE_17__* byval(%struct.TYPE_17__) align 8 %0, %struct.TYPE_17__* byval(%struct.TYPE_17__) align 8 %1)
  store i32 %40, i32* %3, align 4
  br label %46

41:                                               ; preds = %35
  %42 = call i32 @jvp_string_equal(%struct.TYPE_17__* byval(%struct.TYPE_17__) align 8 %0, %struct.TYPE_17__* byval(%struct.TYPE_17__) align 8 %1)
  store i32 %42, i32* %3, align 4
  br label %46

43:                                               ; preds = %35
  %44 = call i32 @jvp_object_equal(%struct.TYPE_17__* byval(%struct.TYPE_17__) align 8 %0, %struct.TYPE_17__* byval(%struct.TYPE_17__) align 8 %1)
  store i32 %44, i32* %3, align 4
  br label %46

45:                                               ; preds = %35
  store i32 1, i32* %3, align 4
  br label %46

46:                                               ; preds = %45, %43, %41, %39, %37
  br label %47

47:                                               ; preds = %46, %34
  br label %48

48:                                               ; preds = %47, %7
  %49 = call i32 @jv_free(%struct.TYPE_17__* byval(%struct.TYPE_17__) align 8 %0)
  %50 = call i32 @jv_free(%struct.TYPE_17__* byval(%struct.TYPE_17__) align 8 %1)
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local i32 @jv_get_kind(%struct.TYPE_17__* byval(%struct.TYPE_17__) align 8) #1

declare dso_local i64 @JVP_IS_ALLOCATED(%struct.TYPE_17__* byval(%struct.TYPE_17__) align 8) #1

declare dso_local i32 @jvp_number_equal(%struct.TYPE_17__* byval(%struct.TYPE_17__) align 8, %struct.TYPE_17__* byval(%struct.TYPE_17__) align 8) #1

declare dso_local i32 @jvp_array_equal(%struct.TYPE_17__* byval(%struct.TYPE_17__) align 8, %struct.TYPE_17__* byval(%struct.TYPE_17__) align 8) #1

declare dso_local i32 @jvp_string_equal(%struct.TYPE_17__* byval(%struct.TYPE_17__) align 8, %struct.TYPE_17__* byval(%struct.TYPE_17__) align 8) #1

declare dso_local i32 @jvp_object_equal(%struct.TYPE_17__* byval(%struct.TYPE_17__) align 8, %struct.TYPE_17__* byval(%struct.TYPE_17__) align 8) #1

declare dso_local i32 @jv_free(%struct.TYPE_17__* byval(%struct.TYPE_17__) align 8) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
