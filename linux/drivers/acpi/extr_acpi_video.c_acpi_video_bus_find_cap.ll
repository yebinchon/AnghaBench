; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/extr_acpi_video.c_acpi_video_bus_find_cap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/extr_acpi_video.c_acpi_video_bus_find_cap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_video_bus = type { %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"_DOS\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"_DOD\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"_ROM\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"_GPD\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"_SPD\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"_VPO\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.acpi_video_bus*)* @acpi_video_bus_find_cap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @acpi_video_bus_find_cap(%struct.acpi_video_bus* %0) #0 {
  %2 = alloca %struct.acpi_video_bus*, align 8
  store %struct.acpi_video_bus* %0, %struct.acpi_video_bus** %2, align 8
  %3 = load %struct.acpi_video_bus*, %struct.acpi_video_bus** %2, align 8
  %4 = getelementptr inbounds %struct.acpi_video_bus, %struct.acpi_video_bus* %3, i32 0, i32 1
  %5 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call i64 @acpi_has_method(i32 %7, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %1
  %11 = load %struct.acpi_video_bus*, %struct.acpi_video_bus** %2, align 8
  %12 = getelementptr inbounds %struct.acpi_video_bus, %struct.acpi_video_bus* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  store i32 1, i32* %13, align 8
  br label %14

14:                                               ; preds = %10, %1
  %15 = load %struct.acpi_video_bus*, %struct.acpi_video_bus** %2, align 8
  %16 = getelementptr inbounds %struct.acpi_video_bus, %struct.acpi_video_bus* %15, i32 0, i32 1
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i64 @acpi_has_method(i32 %19, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %14
  %23 = load %struct.acpi_video_bus*, %struct.acpi_video_bus** %2, align 8
  %24 = getelementptr inbounds %struct.acpi_video_bus, %struct.acpi_video_bus* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 1
  store i32 1, i32* %25, align 4
  br label %26

26:                                               ; preds = %22, %14
  %27 = load %struct.acpi_video_bus*, %struct.acpi_video_bus** %2, align 8
  %28 = getelementptr inbounds %struct.acpi_video_bus, %struct.acpi_video_bus* %27, i32 0, i32 1
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i64 @acpi_has_method(i32 %31, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %26
  %35 = load %struct.acpi_video_bus*, %struct.acpi_video_bus** %2, align 8
  %36 = getelementptr inbounds %struct.acpi_video_bus, %struct.acpi_video_bus* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 2
  store i32 1, i32* %37, align 8
  br label %38

38:                                               ; preds = %34, %26
  %39 = load %struct.acpi_video_bus*, %struct.acpi_video_bus** %2, align 8
  %40 = getelementptr inbounds %struct.acpi_video_bus, %struct.acpi_video_bus* %39, i32 0, i32 1
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i64 @acpi_has_method(i32 %43, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %38
  %47 = load %struct.acpi_video_bus*, %struct.acpi_video_bus** %2, align 8
  %48 = getelementptr inbounds %struct.acpi_video_bus, %struct.acpi_video_bus* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 3
  store i32 1, i32* %49, align 4
  br label %50

50:                                               ; preds = %46, %38
  %51 = load %struct.acpi_video_bus*, %struct.acpi_video_bus** %2, align 8
  %52 = getelementptr inbounds %struct.acpi_video_bus, %struct.acpi_video_bus* %51, i32 0, i32 1
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i64 @acpi_has_method(i32 %55, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %50
  %59 = load %struct.acpi_video_bus*, %struct.acpi_video_bus** %2, align 8
  %60 = getelementptr inbounds %struct.acpi_video_bus, %struct.acpi_video_bus* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 4
  store i32 1, i32* %61, align 8
  br label %62

62:                                               ; preds = %58, %50
  %63 = load %struct.acpi_video_bus*, %struct.acpi_video_bus** %2, align 8
  %64 = getelementptr inbounds %struct.acpi_video_bus, %struct.acpi_video_bus* %63, i32 0, i32 1
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i64 @acpi_has_method(i32 %67, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %62
  %71 = load %struct.acpi_video_bus*, %struct.acpi_video_bus** %2, align 8
  %72 = getelementptr inbounds %struct.acpi_video_bus, %struct.acpi_video_bus* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 5
  store i32 1, i32* %73, align 4
  br label %74

74:                                               ; preds = %70, %62
  ret void
}

declare dso_local i64 @acpi_has_method(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
