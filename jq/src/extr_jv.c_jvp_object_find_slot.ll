; ModuleID = '/home/carl/AnghaBench/jq/src/extr_jv.c_jvp_object_find_slot.c'
source_filename = "/home/carl/AnghaBench/jq/src/extr_jv.c_jvp_object_find_slot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.object_slot = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.object_slot* (i32, i32, i32*)* @jvp_object_find_slot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.object_slot* @jvp_object_find_slot(i32 %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.object_slot*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.object_slot*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %10 = load i32, i32* %6, align 4
  %11 = call i64 @jvp_string_hash(i32 %10)
  store i64 %11, i64* %8, align 8
  %12 = load i32, i32* %5, align 4
  %13 = load i32*, i32** %7, align 8
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.object_slot* @jvp_object_get_slot(i32 %12, i32 %14)
  store %struct.object_slot* %15, %struct.object_slot** %9, align 8
  br label %16

16:                                               ; preds = %35, %3
  %17 = load %struct.object_slot*, %struct.object_slot** %9, align 8
  %18 = icmp ne %struct.object_slot* %17, null
  br i1 %18, label %19, label %39

19:                                               ; preds = %16
  %20 = load %struct.object_slot*, %struct.object_slot** %9, align 8
  %21 = getelementptr inbounds %struct.object_slot, %struct.object_slot* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* %8, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %34

25:                                               ; preds = %19
  %26 = load i32, i32* %6, align 4
  %27 = load %struct.object_slot*, %struct.object_slot** %9, align 8
  %28 = getelementptr inbounds %struct.object_slot, %struct.object_slot* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = call i64 @jvp_string_equal(i32 %26, i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %25
  %33 = load %struct.object_slot*, %struct.object_slot** %9, align 8
  store %struct.object_slot* %33, %struct.object_slot** %4, align 8
  br label %40

34:                                               ; preds = %25, %19
  br label %35

35:                                               ; preds = %34
  %36 = load i32, i32* %5, align 4
  %37 = load %struct.object_slot*, %struct.object_slot** %9, align 8
  %38 = call %struct.object_slot* @jvp_object_next_slot(i32 %36, %struct.object_slot* %37)
  store %struct.object_slot* %38, %struct.object_slot** %9, align 8
  br label %16

39:                                               ; preds = %16
  store %struct.object_slot* null, %struct.object_slot** %4, align 8
  br label %40

40:                                               ; preds = %39, %32
  %41 = load %struct.object_slot*, %struct.object_slot** %4, align 8
  ret %struct.object_slot* %41
}

declare dso_local i64 @jvp_string_hash(i32) #1

declare dso_local %struct.object_slot* @jvp_object_get_slot(i32, i32) #1

declare dso_local i64 @jvp_string_equal(i32, i32) #1

declare dso_local %struct.object_slot* @jvp_object_next_slot(i32, %struct.object_slot*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
