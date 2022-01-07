; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/boot/compressed/extr_kaslr.c_slots_fetch_random.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/boot/compressed/extr_kaslr.c_slots_fetch_random.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64 }

@slot_max = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [9 x i8] c"Physical\00", align 1
@slot_area_index = common dso_local global i32 0, align 4
@slot_areas = common dso_local global %struct.TYPE_2__* null, align 8
@CONFIG_PHYSICAL_ALIGN = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [31 x i8] c"slots_fetch_random() failed!?\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 ()* @slots_fetch_random to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @slots_fetch_random() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = load i64, i64* @slot_max, align 8
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %0
  store i64 0, i64* %1, align 8
  br label %54

7:                                                ; preds = %0
  %8 = call i64 @kaslr_get_random_long(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %9 = load i64, i64* @slot_max, align 8
  %10 = urem i64 %8, %9
  store i64 %10, i64* %2, align 8
  store i32 0, i32* %3, align 4
  br label %11

11:                                               ; preds = %44, %7
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* @slot_area_index, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %47

15:                                               ; preds = %11
  %16 = load i64, i64* %2, align 8
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** @slot_areas, align 8
  %18 = load i32, i32* %3, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp uge i64 %16, %22
  br i1 %23, label %24, label %33

24:                                               ; preds = %15
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** @slot_areas, align 8
  %26 = load i32, i32* %3, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* %2, align 8
  %32 = sub i64 %31, %30
  store i64 %32, i64* %2, align 8
  br label %44

33:                                               ; preds = %15
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** @slot_areas, align 8
  %35 = load i32, i32* %3, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* %2, align 8
  %41 = load i64, i64* @CONFIG_PHYSICAL_ALIGN, align 8
  %42 = mul i64 %40, %41
  %43 = add i64 %39, %42
  store i64 %43, i64* %1, align 8
  br label %54

44:                                               ; preds = %24
  %45 = load i32, i32* %3, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %3, align 4
  br label %11

47:                                               ; preds = %11
  %48 = load i32, i32* %3, align 4
  %49 = load i32, i32* @slot_area_index, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %47
  %52 = call i32 @debug_putstr(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  br label %53

53:                                               ; preds = %51, %47
  store i64 0, i64* %1, align 8
  br label %54

54:                                               ; preds = %53, %33, %6
  %55 = load i64, i64* %1, align 8
  ret i64 %55
}

declare dso_local i64 @kaslr_get_random_long(i8*) #1

declare dso_local i32 @debug_putstr(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
