; ModuleID = '/home/carl/AnghaBench/linux/drivers/base/extr_swnode.c_property_entry_free_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/base/extr_swnode.c_property_entry_free_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.property_entry = type { i64, i32, i8*, %struct.TYPE_3__, %struct.TYPE_4__, i64 }
%struct.TYPE_3__ = type { i8* }
%struct.TYPE_4__ = type { i8** }

@DEV_PROP_STRING = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.property_entry*)* @property_entry_free_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @property_entry_free_data(%struct.property_entry* %0) #0 {
  %2 = alloca %struct.property_entry*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.property_entry* %0, %struct.property_entry** %2, align 8
  %6 = load %struct.property_entry*, %struct.property_entry** %2, align 8
  %7 = call i8* @property_get_pointer(%struct.property_entry* %6)
  store i8* %7, i8** %3, align 8
  %8 = load %struct.property_entry*, %struct.property_entry** %2, align 8
  %9 = getelementptr inbounds %struct.property_entry, %struct.property_entry* %8, i32 0, i32 5
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %50

12:                                               ; preds = %1
  %13 = load %struct.property_entry*, %struct.property_entry** %2, align 8
  %14 = getelementptr inbounds %struct.property_entry, %struct.property_entry* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @DEV_PROP_STRING, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %47

18:                                               ; preds = %12
  %19 = load %struct.property_entry*, %struct.property_entry** %2, align 8
  %20 = getelementptr inbounds %struct.property_entry, %struct.property_entry* %19, i32 0, i32 4
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i8**, i8*** %21, align 8
  %23 = icmp ne i8** %22, null
  br i1 %23, label %24, label %47

24:                                               ; preds = %18
  %25 = load %struct.property_entry*, %struct.property_entry** %2, align 8
  %26 = getelementptr inbounds %struct.property_entry, %struct.property_entry* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = sext i32 %27 to i64
  %29 = udiv i64 %28, 8
  store i64 %29, i64* %5, align 8
  store i64 0, i64* %4, align 8
  br label %30

30:                                               ; preds = %43, %24
  %31 = load i64, i64* %4, align 8
  %32 = load i64, i64* %5, align 8
  %33 = icmp ult i64 %31, %32
  br i1 %33, label %34, label %46

34:                                               ; preds = %30
  %35 = load %struct.property_entry*, %struct.property_entry** %2, align 8
  %36 = getelementptr inbounds %struct.property_entry, %struct.property_entry* %35, i32 0, i32 4
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i8**, i8*** %37, align 8
  %39 = load i64, i64* %4, align 8
  %40 = getelementptr inbounds i8*, i8** %38, i64 %39
  %41 = load i8*, i8** %40, align 8
  %42 = call i32 @kfree(i8* %41)
  br label %43

43:                                               ; preds = %34
  %44 = load i64, i64* %4, align 8
  %45 = add i64 %44, 1
  store i64 %45, i64* %4, align 8
  br label %30

46:                                               ; preds = %30
  br label %47

47:                                               ; preds = %46, %18, %12
  %48 = load i8*, i8** %3, align 8
  %49 = call i32 @kfree(i8* %48)
  br label %63

50:                                               ; preds = %1
  %51 = load %struct.property_entry*, %struct.property_entry** %2, align 8
  %52 = getelementptr inbounds %struct.property_entry, %struct.property_entry* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @DEV_PROP_STRING, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %62

56:                                               ; preds = %50
  %57 = load %struct.property_entry*, %struct.property_entry** %2, align 8
  %58 = getelementptr inbounds %struct.property_entry, %struct.property_entry* %57, i32 0, i32 3
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = load i8*, i8** %59, align 8
  %61 = call i32 @kfree(i8* %60)
  br label %62

62:                                               ; preds = %56, %50
  br label %63

63:                                               ; preds = %62, %47
  %64 = load %struct.property_entry*, %struct.property_entry** %2, align 8
  %65 = getelementptr inbounds %struct.property_entry, %struct.property_entry* %64, i32 0, i32 2
  %66 = load i8*, i8** %65, align 8
  %67 = call i32 @kfree(i8* %66)
  ret void
}

declare dso_local i8* @property_get_pointer(%struct.property_entry*) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
