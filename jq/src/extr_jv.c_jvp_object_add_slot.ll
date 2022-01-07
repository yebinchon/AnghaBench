; ModuleID = '/home/carl/AnghaBench/jq/src/extr_jv.c_jvp_object_add_slot.c'
source_filename = "/home/carl/AnghaBench/jq/src/extr_jv.c_jvp_object_add_slot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.object_slot = type { i32, i32, i32 }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.object_slot* (i32, i32, i32*)* @jvp_object_add_slot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.object_slot* @jvp_object_add_slot(i32 %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.object_slot*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_3__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.object_slot*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %11 = load i32, i32* %5, align 4
  %12 = call %struct.TYPE_3__* @jvp_object_ptr(i32 %11)
  store %struct.TYPE_3__* %12, %struct.TYPE_3__** %8, align 8
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* %9, align 4
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @jvp_object_size(i32 %17)
  %19 = icmp eq i32 %16, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %3
  store %struct.object_slot* null, %struct.object_slot** %4, align 8
  br label %43

21:                                               ; preds = %3
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* %9, align 4
  %24 = call %struct.object_slot* @jvp_object_get_slot(i32 %22, i32 %23)
  store %struct.object_slot* %24, %struct.object_slot** %10, align 8
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %26, align 4
  %29 = load i32*, i32** %7, align 8
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.object_slot*, %struct.object_slot** %10, align 8
  %32 = getelementptr inbounds %struct.object_slot, %struct.object_slot* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 4
  %33 = load i32, i32* %9, align 4
  %34 = load i32*, i32** %7, align 8
  store i32 %33, i32* %34, align 4
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @jvp_string_hash(i32 %35)
  %37 = load %struct.object_slot*, %struct.object_slot** %10, align 8
  %38 = getelementptr inbounds %struct.object_slot, %struct.object_slot* %37, i32 0, i32 2
  store i32 %36, i32* %38, align 4
  %39 = load i32, i32* %6, align 4
  %40 = load %struct.object_slot*, %struct.object_slot** %10, align 8
  %41 = getelementptr inbounds %struct.object_slot, %struct.object_slot* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 4
  %42 = load %struct.object_slot*, %struct.object_slot** %10, align 8
  store %struct.object_slot* %42, %struct.object_slot** %4, align 8
  br label %43

43:                                               ; preds = %21, %20
  %44 = load %struct.object_slot*, %struct.object_slot** %4, align 8
  ret %struct.object_slot* %44
}

declare dso_local %struct.TYPE_3__* @jvp_object_ptr(i32) #1

declare dso_local i32 @jvp_object_size(i32) #1

declare dso_local %struct.object_slot* @jvp_object_get_slot(i32, i32) #1

declare dso_local i32 @jvp_string_hash(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
