; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/powernv/extr_opal-sensor-groups.c_add_attr_group.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/powernv/extr_opal-sensor-groups.c_add_attr_group.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64 }
%struct.sensor_group = type { %struct.TYPE_7__, %struct.TYPE_9__* }
%struct.TYPE_7__ = type { i32** }
%struct.TYPE_9__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@ops_info = common dso_local global %struct.TYPE_8__* null, align 8
@sg_kobj = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, %struct.sensor_group*, i32)* @add_attr_group to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_attr_group(i32* %0, i32 %1, %struct.sensor_group* %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sensor_group*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.sensor_group* %2, %struct.sensor_group** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %9, align 4
  br label %12

12:                                               ; preds = %68, %4
  %13 = load i32, i32* %9, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %71

16:                                               ; preds = %12
  store i32 0, i32* %10, align 4
  br label %17

17:                                               ; preds = %64, %16
  %18 = load i32, i32* %10, align 4
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** @ops_info, align 8
  %20 = call i32 @ARRAY_SIZE(%struct.TYPE_8__* %19)
  %21 = icmp slt i32 %18, %20
  br i1 %21, label %22, label %67

22:                                               ; preds = %17
  %23 = load i32*, i32** %5, align 8
  %24 = load i32, i32* %9, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = call i64 @be32_to_cpu(i32 %27)
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** @ops_info, align 8
  %30 = load i32, i32* %10, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp eq i64 %28, %34
  br i1 %35, label %36, label %63

36:                                               ; preds = %22
  %37 = load i32, i32* %8, align 4
  %38 = load %struct.sensor_group*, %struct.sensor_group** %7, align 8
  %39 = getelementptr inbounds %struct.sensor_group, %struct.sensor_group* %38, i32 0, i32 1
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %39, align 8
  %41 = load i32, i32* %11, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i64 %42
  %44 = load i32, i32* %10, align 4
  %45 = call i32 @add_attr(i32 %37, %struct.TYPE_9__* %43, i32 %44)
  %46 = load %struct.sensor_group*, %struct.sensor_group** %7, align 8
  %47 = getelementptr inbounds %struct.sensor_group, %struct.sensor_group* %46, i32 0, i32 1
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %47, align 8
  %49 = load i32, i32* %11, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = load %struct.sensor_group*, %struct.sensor_group** %7, align 8
  %55 = getelementptr inbounds %struct.sensor_group, %struct.sensor_group* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 0
  %57 = load i32**, i32*** %56, align 8
  %58 = load i32, i32* %11, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32*, i32** %57, i64 %59
  store i32* %53, i32** %60, align 8
  %61 = load i32, i32* %11, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %11, align 4
  br label %63

63:                                               ; preds = %36, %22
  br label %64

64:                                               ; preds = %63
  %65 = load i32, i32* %10, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %10, align 4
  br label %17

67:                                               ; preds = %17
  br label %68

68:                                               ; preds = %67
  %69 = load i32, i32* %9, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %9, align 4
  br label %12

71:                                               ; preds = %12
  %72 = load i32, i32* @sg_kobj, align 4
  %73 = load %struct.sensor_group*, %struct.sensor_group** %7, align 8
  %74 = getelementptr inbounds %struct.sensor_group, %struct.sensor_group* %73, i32 0, i32 0
  %75 = call i32 @sysfs_create_group(i32 %72, %struct.TYPE_7__* %74)
  ret i32 %75
}

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_8__*) #1

declare dso_local i64 @be32_to_cpu(i32) #1

declare dso_local i32 @add_attr(i32, %struct.TYPE_9__*, i32) #1

declare dso_local i32 @sysfs_create_group(i32, %struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
