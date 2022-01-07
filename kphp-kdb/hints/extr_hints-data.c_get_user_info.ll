; ModuleID = '/home/carl/AnghaBench/kphp-kdb/hints/extr_hints-data.c_get_user_info.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/hints/extr_hints-data.c_get_user_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@max_memory = common dso_local global i32 0, align 4
@MEMORY_CHANGES_PERCENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_user_info(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_4__*, align 8
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call i32 @get_local_user_id(i32 %7)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp eq i32 %9, -1
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i32 -3, i32* %2, align 4
  br label %37

12:                                               ; preds = %1
  %13 = load i32, i32* %4, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %12
  store i32 -1, i32* %5, align 4
  br label %25

16:                                               ; preds = %12
  %17 = load i32, i32* %3, align 4
  %18 = call %struct.TYPE_4__* @conv_user_id(i32 %17)
  store %struct.TYPE_4__* %18, %struct.TYPE_4__** %6, align 8
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %20 = call i32 @assert(%struct.TYPE_4__* %19)
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @GET_USER_INFO(i32 %23)
  store i32 %24, i32* %5, align 4
  br label %25

25:                                               ; preds = %16, %15
  %26 = load i32, i32* %5, align 4
  %27 = icmp eq i32 %26, -1
  br i1 %27, label %28, label %35

28:                                               ; preds = %25
  %29 = call i32 (...) @get_changes_memory()
  %30 = load i32, i32* @max_memory, align 4
  %31 = load i32, i32* @MEMORY_CHANGES_PERCENT, align 4
  %32 = mul nsw i32 %30, %31
  %33 = icmp sgt i32 %29, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %28
  store i32 -2, i32* %5, align 4
  br label %35

35:                                               ; preds = %34, %28, %25
  %36 = load i32, i32* %5, align 4
  store i32 %36, i32* %2, align 4
  br label %37

37:                                               ; preds = %35, %11
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

declare dso_local i32 @get_local_user_id(i32) #1

declare dso_local %struct.TYPE_4__* @conv_user_id(i32) #1

declare dso_local i32 @assert(%struct.TYPE_4__*) #1

declare dso_local i32 @GET_USER_INFO(i32) #1

declare dso_local i32 @get_changes_memory(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
