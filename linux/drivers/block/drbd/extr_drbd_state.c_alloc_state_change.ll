; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_state.c_alloc_state_change.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_state.c_alloc_state_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drbd_state_change = type { i32, i32, %struct.TYPE_6__*, %struct.TYPE_5__*, %struct.TYPE_4__*, i8* }
%struct.TYPE_6__ = type { i32* }
%struct.TYPE_5__ = type { i32* }
%struct.TYPE_4__ = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.drbd_state_change* (i32, i32, i32)* @alloc_state_change to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.drbd_state_change* @alloc_state_change(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.drbd_state_change*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.drbd_state_change*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* %5, align 4
  %12 = zext i32 %11 to i64
  %13 = mul i64 %12, 4
  %14 = add i64 40, %13
  %15 = load i32, i32* %6, align 4
  %16 = zext i32 %15 to i64
  %17 = mul i64 %16, 4
  %18 = add i64 %14, %17
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* %6, align 4
  %21 = mul i32 %19, %20
  %22 = zext i32 %21 to i64
  %23 = mul i64 %22, 4
  %24 = add i64 %18, %23
  %25 = trunc i64 %24 to i32
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* %7, align 4
  %28 = call %struct.drbd_state_change* @kmalloc(i32 %26, i32 %27)
  store %struct.drbd_state_change* %28, %struct.drbd_state_change** %8, align 8
  %29 = load %struct.drbd_state_change*, %struct.drbd_state_change** %8, align 8
  %30 = icmp ne %struct.drbd_state_change* %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %3
  store %struct.drbd_state_change* null, %struct.drbd_state_change** %4, align 8
  br label %101

32:                                               ; preds = %3
  %33 = load i32, i32* %5, align 4
  %34 = load %struct.drbd_state_change*, %struct.drbd_state_change** %8, align 8
  %35 = getelementptr inbounds %struct.drbd_state_change, %struct.drbd_state_change* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 8
  %36 = load i32, i32* %6, align 4
  %37 = load %struct.drbd_state_change*, %struct.drbd_state_change** %8, align 8
  %38 = getelementptr inbounds %struct.drbd_state_change, %struct.drbd_state_change* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 4
  %39 = load %struct.drbd_state_change*, %struct.drbd_state_change** %8, align 8
  %40 = getelementptr inbounds %struct.drbd_state_change, %struct.drbd_state_change* %39, i64 1
  %41 = bitcast %struct.drbd_state_change* %40 to i8*
  %42 = bitcast i8* %41 to %struct.TYPE_5__*
  %43 = load %struct.drbd_state_change*, %struct.drbd_state_change** %8, align 8
  %44 = getelementptr inbounds %struct.drbd_state_change, %struct.drbd_state_change* %43, i32 0, i32 3
  store %struct.TYPE_5__* %42, %struct.TYPE_5__** %44, align 8
  %45 = load %struct.drbd_state_change*, %struct.drbd_state_change** %8, align 8
  %46 = getelementptr inbounds %struct.drbd_state_change, %struct.drbd_state_change* %45, i32 0, i32 3
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %46, align 8
  %48 = load i32, i32* %5, align 4
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i64 %49
  %51 = bitcast %struct.TYPE_5__* %50 to i8*
  %52 = bitcast i8* %51 to %struct.TYPE_6__*
  %53 = load %struct.drbd_state_change*, %struct.drbd_state_change** %8, align 8
  %54 = getelementptr inbounds %struct.drbd_state_change, %struct.drbd_state_change* %53, i32 0, i32 2
  store %struct.TYPE_6__* %52, %struct.TYPE_6__** %54, align 8
  %55 = load %struct.drbd_state_change*, %struct.drbd_state_change** %8, align 8
  %56 = getelementptr inbounds %struct.drbd_state_change, %struct.drbd_state_change* %55, i32 0, i32 2
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %56, align 8
  %58 = load i32, i32* %6, align 4
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i64 %59
  %61 = bitcast %struct.TYPE_6__* %60 to i8*
  %62 = load %struct.drbd_state_change*, %struct.drbd_state_change** %8, align 8
  %63 = getelementptr inbounds %struct.drbd_state_change, %struct.drbd_state_change* %62, i32 0, i32 5
  store i8* %61, i8** %63, align 8
  %64 = load %struct.drbd_state_change*, %struct.drbd_state_change** %8, align 8
  %65 = getelementptr inbounds %struct.drbd_state_change, %struct.drbd_state_change* %64, i32 0, i32 4
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  store i32* null, i32** %67, align 8
  store i32 0, i32* %10, align 4
  br label %68

68:                                               ; preds = %80, %32
  %69 = load i32, i32* %10, align 4
  %70 = load i32, i32* %5, align 4
  %71 = icmp ult i32 %69, %70
  br i1 %71, label %72, label %83

72:                                               ; preds = %68
  %73 = load %struct.drbd_state_change*, %struct.drbd_state_change** %8, align 8
  %74 = getelementptr inbounds %struct.drbd_state_change, %struct.drbd_state_change* %73, i32 0, i32 3
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %74, align 8
  %76 = load i32, i32* %10, align 4
  %77 = zext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 0
  store i32* null, i32** %79, align 8
  br label %80

80:                                               ; preds = %72
  %81 = load i32, i32* %10, align 4
  %82 = add i32 %81, 1
  store i32 %82, i32* %10, align 4
  br label %68

83:                                               ; preds = %68
  store i32 0, i32* %10, align 4
  br label %84

84:                                               ; preds = %96, %83
  %85 = load i32, i32* %10, align 4
  %86 = load i32, i32* %6, align 4
  %87 = icmp ult i32 %85, %86
  br i1 %87, label %88, label %99

88:                                               ; preds = %84
  %89 = load %struct.drbd_state_change*, %struct.drbd_state_change** %8, align 8
  %90 = getelementptr inbounds %struct.drbd_state_change, %struct.drbd_state_change* %89, i32 0, i32 2
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %90, align 8
  %92 = load i32, i32* %10, align 4
  %93 = zext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 0
  store i32* null, i32** %95, align 8
  br label %96

96:                                               ; preds = %88
  %97 = load i32, i32* %10, align 4
  %98 = add i32 %97, 1
  store i32 %98, i32* %10, align 4
  br label %84

99:                                               ; preds = %84
  %100 = load %struct.drbd_state_change*, %struct.drbd_state_change** %8, align 8
  store %struct.drbd_state_change* %100, %struct.drbd_state_change** %4, align 8
  br label %101

101:                                              ; preds = %99, %31
  %102 = load %struct.drbd_state_change*, %struct.drbd_state_change** %4, align 8
  ret %struct.drbd_state_change* %102
}

declare dso_local %struct.drbd_state_change* @kmalloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
