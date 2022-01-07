; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/agp/extr_nvidia-agp.c_nvidia_remove_memory.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/agp/extr_nvidia-agp.c_nvidia_remove_memory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_4__*, i64, i32 }
%struct.TYPE_4__ = type { i32 (%struct.agp_memory*)* }
%struct.agp_memory = type { i32, i32, i32 }
%struct.TYPE_5__ = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@agp_bridge = common dso_local global %struct.TYPE_6__* null, align 8
@nvidia_private = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.agp_memory*, i32, i32)* @nvidia_remove_memory to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvidia_remove_memory(%struct.agp_memory* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.agp_memory*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.agp_memory* %0, %struct.agp_memory** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load %struct.agp_memory*, %struct.agp_memory** %5, align 8
  %11 = getelementptr inbounds %struct.agp_memory, %struct.agp_memory* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* %7, align 4
  %14 = call i32 @agp_generic_type_to_mask_type(i32 %12, i32 %13)
  store i32 %14, i32* %9, align 4
  %15 = load i32, i32* %9, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %23, label %17

17:                                               ; preds = %3
  %18 = load i32, i32* %7, align 4
  %19 = load %struct.agp_memory*, %struct.agp_memory** %5, align 8
  %20 = getelementptr inbounds %struct.agp_memory, %struct.agp_memory* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %18, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %17, %3
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %4, align 4
  br label %66

26:                                               ; preds = %17
  %27 = load %struct.agp_memory*, %struct.agp_memory** %5, align 8
  %28 = getelementptr inbounds %struct.agp_memory, %struct.agp_memory* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  store i32 0, i32* %4, align 4
  br label %66

32:                                               ; preds = %26
  %33 = load i32, i32* %6, align 4
  store i32 %33, i32* %8, align 4
  br label %34

34:                                               ; preds = %55, %32
  %35 = load i32, i32* %8, align 4
  %36 = load %struct.agp_memory*, %struct.agp_memory** %5, align 8
  %37 = getelementptr inbounds %struct.agp_memory, %struct.agp_memory* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %6, align 4
  %40 = add nsw i32 %38, %39
  %41 = icmp slt i32 %35, %40
  br i1 %41, label %42, label %58

42:                                               ; preds = %34
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** @agp_bridge, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** @agp_bridge, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @nvidia_private, i32 0, i32 0), align 8
  %50 = add nsw i64 %48, %49
  %51 = load i32, i32* %8, align 4
  %52 = sext i32 %51 to i64
  %53 = add nsw i64 %50, %52
  %54 = call i32 @writel(i32 %45, i64 %53)
  br label %55

55:                                               ; preds = %42
  %56 = load i32, i32* %8, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %8, align 4
  br label %34

58:                                               ; preds = %34
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** @agp_bridge, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load i32 (%struct.agp_memory*)*, i32 (%struct.agp_memory*)** %62, align 8
  %64 = load %struct.agp_memory*, %struct.agp_memory** %5, align 8
  %65 = call i32 %63(%struct.agp_memory* %64)
  store i32 0, i32* %4, align 4
  br label %66

66:                                               ; preds = %58, %31, %23
  %67 = load i32, i32* %4, align 4
  ret i32 %67
}

declare dso_local i32 @agp_generic_type_to_mask_type(i32, i32) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
