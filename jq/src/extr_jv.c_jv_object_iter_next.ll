; ModuleID = '/home/carl/AnghaBench/jq/src/extr_jv.c_jv_object_iter_next.c'
source_filename = "/home/carl/AnghaBench/jq/src/extr_jv.c_jv_object_iter_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.object_slot = type { i32 }

@JV_KIND_OBJECT = common dso_local global i32 0, align 4
@ITER_FINISHED = common dso_local global i32 0, align 4
@JV_KIND_NULL = common dso_local global i64 0, align 8
@JV_KIND_STRING = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @jv_object_iter_next(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.object_slot*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* @JV_KIND_OBJECT, align 4
  %9 = call i32 @JVP_HAS_KIND(i32 %7, i32 %8)
  %10 = call i32 @assert(i32 %9)
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @ITER_FINISHED, align 4
  %13 = icmp ne i32 %11, %12
  %14 = zext i1 %13 to i32
  %15 = call i32 @assert(i32 %14)
  br label %16

16:                                               ; preds = %29, %2
  %17 = load i32, i32* %5, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @jvp_object_size(i32 %20)
  %22 = icmp sge i32 %19, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %16
  %24 = load i32, i32* @ITER_FINISHED, align 4
  store i32 %24, i32* %3, align 4
  br label %48

25:                                               ; preds = %16
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* %5, align 4
  %28 = call %struct.object_slot* @jvp_object_get_slot(i32 %26, i32 %27)
  store %struct.object_slot* %28, %struct.object_slot** %6, align 8
  br label %29

29:                                               ; preds = %25
  %30 = load %struct.object_slot*, %struct.object_slot** %6, align 8
  %31 = getelementptr inbounds %struct.object_slot, %struct.object_slot* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i64 @jv_get_kind(i32 %32)
  %34 = load i64, i64* @JV_KIND_NULL, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %16, label %36

36:                                               ; preds = %29
  %37 = load i32, i32* %4, align 4
  %38 = load i32, i32* %5, align 4
  %39 = call %struct.object_slot* @jvp_object_get_slot(i32 %37, i32 %38)
  %40 = getelementptr inbounds %struct.object_slot, %struct.object_slot* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i64 @jv_get_kind(i32 %41)
  %43 = load i64, i64* @JV_KIND_STRING, align 8
  %44 = icmp eq i64 %42, %43
  %45 = zext i1 %44 to i32
  %46 = call i32 @assert(i32 %45)
  %47 = load i32, i32* %5, align 4
  store i32 %47, i32* %3, align 4
  br label %48

48:                                               ; preds = %36, %23
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @JVP_HAS_KIND(i32, i32) #1

declare dso_local i32 @jvp_object_size(i32) #1

declare dso_local %struct.object_slot* @jvp_object_get_slot(i32, i32) #1

declare dso_local i64 @jv_get_kind(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
