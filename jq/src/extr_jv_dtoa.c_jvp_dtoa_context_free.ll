; ModuleID = '/home/carl/AnghaBench/jq/src/extr_jv_dtoa.c_jvp_dtoa_context_free.c'
source_filename = "/home/carl/AnghaBench/jq/src/extr_jv_dtoa.c_jvp_dtoa_context_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dtoa_context = type { %struct.TYPE_4__**, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_4__* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @jvp_dtoa_context_free(%struct.dtoa_context* %0) #0 {
  %2 = alloca %struct.dtoa_context*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  store %struct.dtoa_context* %0, %struct.dtoa_context** %2, align 8
  br label %6

6:                                                ; preds = %11, %1
  %7 = load %struct.dtoa_context*, %struct.dtoa_context** %2, align 8
  %8 = getelementptr inbounds %struct.dtoa_context, %struct.dtoa_context* %7, i32 0, i32 1
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = icmp ne %struct.TYPE_4__* %9, null
  br i1 %10, label %11, label %23

11:                                               ; preds = %6
  %12 = load %struct.dtoa_context*, %struct.dtoa_context** %2, align 8
  %13 = getelementptr inbounds %struct.dtoa_context, %struct.dtoa_context* %12, i32 0, i32 1
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  store %struct.TYPE_4__* %14, %struct.TYPE_4__** %4, align 8
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = load %struct.dtoa_context*, %struct.dtoa_context** %2, align 8
  %19 = getelementptr inbounds %struct.dtoa_context, %struct.dtoa_context* %18, i32 0, i32 1
  store %struct.TYPE_4__* %17, %struct.TYPE_4__** %19, align 8
  %20 = load %struct.dtoa_context*, %struct.dtoa_context** %2, align 8
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %22 = call i32 @Bfree(%struct.dtoa_context* %20, %struct.TYPE_4__* %21)
  br label %6

23:                                               ; preds = %6
  store i32 0, i32* %3, align 4
  br label %24

24:                                               ; preds = %57, %23
  %25 = load i32, i32* %3, align 4
  %26 = icmp slt i32 %25, 1
  br i1 %26, label %27, label %60

27:                                               ; preds = %24
  br label %28

28:                                               ; preds = %37, %27
  %29 = load %struct.dtoa_context*, %struct.dtoa_context** %2, align 8
  %30 = getelementptr inbounds %struct.dtoa_context, %struct.dtoa_context* %29, i32 0, i32 0
  %31 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %30, align 8
  %32 = load i32, i32* %3, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %31, i64 %33
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = icmp ne %struct.TYPE_4__* %35, null
  br i1 %36, label %37, label %56

37:                                               ; preds = %28
  %38 = load %struct.dtoa_context*, %struct.dtoa_context** %2, align 8
  %39 = getelementptr inbounds %struct.dtoa_context, %struct.dtoa_context* %38, i32 0, i32 0
  %40 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %39, align 8
  %41 = load i32, i32* %3, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %40, i64 %42
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  store %struct.TYPE_4__* %44, %struct.TYPE_4__** %5, align 8
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = load %struct.dtoa_context*, %struct.dtoa_context** %2, align 8
  %49 = getelementptr inbounds %struct.dtoa_context, %struct.dtoa_context* %48, i32 0, i32 0
  %50 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %49, align 8
  %51 = load i32, i32* %3, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %50, i64 %52
  store %struct.TYPE_4__* %47, %struct.TYPE_4__** %53, align 8
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %55 = call i32 @FREE(%struct.TYPE_4__* %54)
  br label %28

56:                                               ; preds = %28
  br label %57

57:                                               ; preds = %56
  %58 = load i32, i32* %3, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %3, align 4
  br label %24

60:                                               ; preds = %24
  ret void
}

declare dso_local i32 @Bfree(%struct.dtoa_context*, %struct.TYPE_4__*) #1

declare dso_local i32 @FREE(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
