; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/extr_sbs.c_acpi_sbs_callback.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/extr_sbs.c_acpi_sbs_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_sbs = type { i64, i32, %struct.acpi_battery*, i64, %struct.TYPE_6__*, i64 }
%struct.acpi_battery = type { i64, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@KOBJ_CHANGE = common dso_local global i32 0, align 4
@MAX_SBS_BAT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @acpi_sbs_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @acpi_sbs_callback(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.acpi_sbs*, align 8
  %5 = alloca %struct.acpi_battery*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %8 = load i8*, i8** %2, align 8
  %9 = bitcast i8* %8 to %struct.acpi_sbs*
  store %struct.acpi_sbs* %9, %struct.acpi_sbs** %4, align 8
  %10 = load %struct.acpi_sbs*, %struct.acpi_sbs** %4, align 8
  %11 = getelementptr inbounds %struct.acpi_sbs, %struct.acpi_sbs* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  store i64 %12, i64* %6, align 8
  %13 = load %struct.acpi_sbs*, %struct.acpi_sbs** %4, align 8
  %14 = getelementptr inbounds %struct.acpi_sbs, %struct.acpi_sbs* %13, i32 0, i32 5
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %34

17:                                               ; preds = %1
  %18 = load %struct.acpi_sbs*, %struct.acpi_sbs** %4, align 8
  %19 = call i32 @acpi_ac_get_present(%struct.acpi_sbs* %18)
  %20 = load %struct.acpi_sbs*, %struct.acpi_sbs** %4, align 8
  %21 = getelementptr inbounds %struct.acpi_sbs, %struct.acpi_sbs* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* %6, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %33

25:                                               ; preds = %17
  %26 = load %struct.acpi_sbs*, %struct.acpi_sbs** %4, align 8
  %27 = getelementptr inbounds %struct.acpi_sbs, %struct.acpi_sbs* %26, i32 0, i32 4
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load i32, i32* @KOBJ_CHANGE, align 4
  %32 = call i32 @kobject_uevent(i32* %30, i32 %31)
  br label %33

33:                                               ; preds = %25, %17
  br label %34

34:                                               ; preds = %33, %1
  %35 = load %struct.acpi_sbs*, %struct.acpi_sbs** %4, align 8
  %36 = getelementptr inbounds %struct.acpi_sbs, %struct.acpi_sbs* %35, i32 0, i32 3
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %83

39:                                               ; preds = %34
  store i32 0, i32* %3, align 4
  br label %40

40:                                               ; preds = %79, %39
  %41 = load i32, i32* %3, align 4
  %42 = load i32, i32* @MAX_SBS_BAT, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %82

44:                                               ; preds = %40
  %45 = load %struct.acpi_sbs*, %struct.acpi_sbs** %4, align 8
  %46 = getelementptr inbounds %struct.acpi_sbs, %struct.acpi_sbs* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* %3, align 4
  %49 = shl i32 1, %48
  %50 = and i32 %47, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %44
  br label %79

53:                                               ; preds = %44
  %54 = load %struct.acpi_sbs*, %struct.acpi_sbs** %4, align 8
  %55 = getelementptr inbounds %struct.acpi_sbs, %struct.acpi_sbs* %54, i32 0, i32 2
  %56 = load %struct.acpi_battery*, %struct.acpi_battery** %55, align 8
  %57 = load i32, i32* %3, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.acpi_battery, %struct.acpi_battery* %56, i64 %58
  store %struct.acpi_battery* %59, %struct.acpi_battery** %5, align 8
  %60 = load %struct.acpi_battery*, %struct.acpi_battery** %5, align 8
  %61 = getelementptr inbounds %struct.acpi_battery, %struct.acpi_battery* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  store i64 %62, i64* %7, align 8
  %63 = load %struct.acpi_battery*, %struct.acpi_battery** %5, align 8
  %64 = call i32 @acpi_battery_read(%struct.acpi_battery* %63)
  %65 = load i64, i64* %7, align 8
  %66 = load %struct.acpi_battery*, %struct.acpi_battery** %5, align 8
  %67 = getelementptr inbounds %struct.acpi_battery, %struct.acpi_battery* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = icmp eq i64 %65, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %53
  br label %79

71:                                               ; preds = %53
  %72 = load %struct.acpi_battery*, %struct.acpi_battery** %5, align 8
  %73 = getelementptr inbounds %struct.acpi_battery, %struct.acpi_battery* %72, i32 0, i32 1
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 0
  %77 = load i32, i32* @KOBJ_CHANGE, align 4
  %78 = call i32 @kobject_uevent(i32* %76, i32 %77)
  br label %79

79:                                               ; preds = %71, %70, %52
  %80 = load i32, i32* %3, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %3, align 4
  br label %40

82:                                               ; preds = %40
  br label %83

83:                                               ; preds = %82, %34
  ret void
}

declare dso_local i32 @acpi_ac_get_present(%struct.acpi_sbs*) #1

declare dso_local i32 @kobject_uevent(i32*, i32) #1

declare dso_local i32 @acpi_battery_read(%struct.acpi_battery*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
