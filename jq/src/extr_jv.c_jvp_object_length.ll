; ModuleID = '/home/carl/AnghaBench/jq/src/extr_jv.c_jvp_object_length.c'
source_filename = "/home/carl/AnghaBench/jq/src/extr_jv.c_jvp_object_length.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.object_slot = type { i32 }

@JV_KIND_NULL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @jvp_object_length to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jvp_object_length(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.object_slot*, align 8
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  br label %6

6:                                                ; preds = %25, %1
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* %2, align 4
  %9 = call i32 @jvp_object_size(i32 %8)
  %10 = icmp slt i32 %7, %9
  br i1 %10, label %11, label %28

11:                                               ; preds = %6
  %12 = load i32, i32* %2, align 4
  %13 = load i32, i32* %4, align 4
  %14 = call %struct.object_slot* @jvp_object_get_slot(i32 %12, i32 %13)
  store %struct.object_slot* %14, %struct.object_slot** %5, align 8
  %15 = load %struct.object_slot*, %struct.object_slot** %5, align 8
  %16 = getelementptr inbounds %struct.object_slot, %struct.object_slot* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i64 @jv_get_kind(i32 %17)
  %19 = load i64, i64* @JV_KIND_NULL, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %11
  %22 = load i32, i32* %3, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %3, align 4
  br label %24

24:                                               ; preds = %21, %11
  br label %25

25:                                               ; preds = %24
  %26 = load i32, i32* %4, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %4, align 4
  br label %6

28:                                               ; preds = %6
  %29 = load i32, i32* %3, align 4
  ret i32 %29
}

declare dso_local i32 @jvp_object_size(i32) #1

declare dso_local %struct.object_slot* @jvp_object_get_slot(i32, i32) #1

declare dso_local i64 @jv_get_kind(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
