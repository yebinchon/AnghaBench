; ModuleID = '/home/carl/AnghaBench/jq/src/extr_execute.c__jq_path_append.c'
source_filename = "/home/carl/AnghaBench/jq/src/extr_execute.c__jq_path_append.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32, i32 }

@JV_KIND_ARRAY = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_jq_path_append(%struct.TYPE_3__* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %25, label %14

14:                                               ; preds = %4
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = call i64 @jv_get_kind(i32 %17)
  %19 = load i64, i64* @JV_KIND_ARRAY, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %25, label %21

21:                                               ; preds = %14
  %22 = load i32, i32* %9, align 4
  %23 = call i32 @jv_is_valid(i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %31, label %25

25:                                               ; preds = %21, %14, %4
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @jv_free(i32 %26)
  %28 = load i32, i32* %8, align 4
  %29 = call i32 @jv_free(i32 %28)
  %30 = load i32, i32* %9, align 4
  store i32 %30, i32* %5, align 4
  br label %73

31:                                               ; preds = %21
  %32 = load i32, i32* %7, align 4
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @jv_copy(i32 %35)
  %37 = call i32 @jv_identical(i32 %32, i32 %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %43, label %39

39:                                               ; preds = %31
  %40 = load i32, i32* %8, align 4
  %41 = call i32 @jv_free(i32 %40)
  %42 = load i32, i32* %9, align 4
  store i32 %42, i32* %5, align 4
  br label %73

43:                                               ; preds = %31
  %44 = load i32, i32* %8, align 4
  %45 = call i64 @jv_get_kind(i32 %44)
  %46 = load i64, i64* @JV_KIND_ARRAY, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %56

48:                                               ; preds = %43
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %8, align 4
  %53 = call i32 @jv_array_concat(i32 %51, i32 %52)
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 2
  store i32 %53, i32* %55, align 4
  br label %64

56:                                               ; preds = %43
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %8, align 4
  %61 = call i32 @jv_array_append(i32 %59, i32 %60)
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 2
  store i32 %61, i32* %63, align 4
  br label %64

64:                                               ; preds = %56, %48
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @jv_free(i32 %67)
  %69 = load i32, i32* %9, align 4
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 1
  store i32 %69, i32* %71, align 8
  %72 = call i32 @jv_copy(i32 %69)
  store i32 %72, i32* %5, align 4
  br label %73

73:                                               ; preds = %64, %39, %25
  %74 = load i32, i32* %5, align 4
  ret i32 %74
}

declare dso_local i64 @jv_get_kind(i32) #1

declare dso_local i32 @jv_is_valid(i32) #1

declare dso_local i32 @jv_free(i32) #1

declare dso_local i32 @jv_identical(i32, i32) #1

declare dso_local i32 @jv_copy(i32) #1

declare dso_local i32 @jv_array_concat(i32, i32) #1

declare dso_local i32 @jv_array_append(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
