; ModuleID = '/home/carl/AnghaBench/jq/src/extr_jv.c_jvp_object_equal.c'
source_filename = "/home/carl/AnghaBench/jq/src/extr_jv.c_jvp_object_equal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.object_slot = type { i32, i32 }

@JV_KIND_NULL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @jvp_object_equal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jvp_object_equal(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.object_slot*, align 8
  %10 = alloca i32*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = call i32 @jvp_object_length(i32 %11)
  store i32 %12, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %13

13:                                               ; preds = %52, %2
  %14 = load i32, i32* %8, align 4
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @jvp_object_size(i32 %15)
  %17 = icmp slt i32 %14, %16
  br i1 %17, label %18, label %55

18:                                               ; preds = %13
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* %8, align 4
  %21 = call %struct.object_slot* @jvp_object_get_slot(i32 %19, i32 %20)
  store %struct.object_slot* %21, %struct.object_slot** %9, align 8
  %22 = load %struct.object_slot*, %struct.object_slot** %9, align 8
  %23 = getelementptr inbounds %struct.object_slot, %struct.object_slot* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @jv_get_kind(i32 %24)
  %26 = load i64, i64* @JV_KIND_NULL, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %18
  br label %52

29:                                               ; preds = %18
  %30 = load i32, i32* %5, align 4
  %31 = load %struct.object_slot*, %struct.object_slot** %9, align 8
  %32 = getelementptr inbounds %struct.object_slot, %struct.object_slot* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32* @jvp_object_read(i32 %30, i32 %33)
  store i32* %34, i32** %10, align 8
  %35 = load i32*, i32** %10, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %29
  store i32 0, i32* %3, align 4
  br label %60

38:                                               ; preds = %29
  %39 = load %struct.object_slot*, %struct.object_slot** %9, align 8
  %40 = getelementptr inbounds %struct.object_slot, %struct.object_slot* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @jv_copy(i32 %41)
  %43 = load i32*, i32** %10, align 8
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @jv_copy(i32 %44)
  %46 = call i32 @jv_equal(i32 %42, i32 %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %38
  store i32 0, i32* %3, align 4
  br label %60

49:                                               ; preds = %38
  %50 = load i32, i32* %7, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %7, align 4
  br label %52

52:                                               ; preds = %49, %28
  %53 = load i32, i32* %8, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %8, align 4
  br label %13

55:                                               ; preds = %13
  %56 = load i32, i32* %7, align 4
  %57 = load i32, i32* %6, align 4
  %58 = icmp eq i32 %56, %57
  %59 = zext i1 %58 to i32
  store i32 %59, i32* %3, align 4
  br label %60

60:                                               ; preds = %55, %48, %37
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local i32 @jvp_object_length(i32) #1

declare dso_local i32 @jvp_object_size(i32) #1

declare dso_local %struct.object_slot* @jvp_object_get_slot(i32, i32) #1

declare dso_local i64 @jv_get_kind(i32) #1

declare dso_local i32* @jvp_object_read(i32, i32) #1

declare dso_local i32 @jv_equal(i32, i32) #1

declare dso_local i32 @jv_copy(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
