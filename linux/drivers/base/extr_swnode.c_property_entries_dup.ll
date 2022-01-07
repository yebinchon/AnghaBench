; ModuleID = '/home/carl/AnghaBench/linux/drivers/base/extr_swnode.c_property_entries_dup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/base/extr_swnode.c_property_entries_dup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.property_entry = type { i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.property_entry* @property_entries_dup(%struct.property_entry* %0) #0 {
  %2 = alloca %struct.property_entry*, align 8
  %3 = alloca %struct.property_entry*, align 8
  %4 = alloca %struct.property_entry*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.property_entry* %0, %struct.property_entry** %3, align 8
  store i32 0, i32* %6, align 4
  %8 = load %struct.property_entry*, %struct.property_entry** %3, align 8
  %9 = icmp ne %struct.property_entry* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  store %struct.property_entry* null, %struct.property_entry** %2, align 8
  br label %73

11:                                               ; preds = %1
  br label %12

12:                                               ; preds = %20, %11
  %13 = load %struct.property_entry*, %struct.property_entry** %3, align 8
  %14 = load i32, i32* %6, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.property_entry, %struct.property_entry* %13, i64 %15
  %17 = getelementptr inbounds %struct.property_entry, %struct.property_entry* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %12
  %21 = load i32, i32* %6, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %6, align 4
  br label %12

23:                                               ; preds = %12
  %24 = load i32, i32* %6, align 4
  %25 = add nsw i32 %24, 1
  %26 = load i32, i32* @GFP_KERNEL, align 4
  %27 = call %struct.property_entry* @kcalloc(i32 %25, i32 8, i32 %26)
  store %struct.property_entry* %27, %struct.property_entry** %4, align 8
  %28 = load %struct.property_entry*, %struct.property_entry** %4, align 8
  %29 = icmp ne %struct.property_entry* %28, null
  br i1 %29, label %34, label %30

30:                                               ; preds = %23
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  %33 = call %struct.property_entry* @ERR_PTR(i32 %32)
  store %struct.property_entry* %33, %struct.property_entry** %2, align 8
  br label %73

34:                                               ; preds = %23
  store i32 0, i32* %5, align 4
  br label %35

35:                                               ; preds = %68, %34
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* %6, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %71

39:                                               ; preds = %35
  %40 = load %struct.property_entry*, %struct.property_entry** %4, align 8
  %41 = load i32, i32* %5, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.property_entry, %struct.property_entry* %40, i64 %42
  %44 = load %struct.property_entry*, %struct.property_entry** %3, align 8
  %45 = load i32, i32* %5, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.property_entry, %struct.property_entry* %44, i64 %46
  %48 = call i32 @property_entry_copy_data(%struct.property_entry* %43, %struct.property_entry* %47)
  store i32 %48, i32* %7, align 4
  %49 = load i32, i32* %7, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %67

51:                                               ; preds = %39
  br label %52

52:                                               ; preds = %56, %51
  %53 = load i32, i32* %5, align 4
  %54 = add nsw i32 %53, -1
  store i32 %54, i32* %5, align 4
  %55 = icmp sge i32 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %52
  %57 = load %struct.property_entry*, %struct.property_entry** %4, align 8
  %58 = load i32, i32* %5, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.property_entry, %struct.property_entry* %57, i64 %59
  %61 = call i32 @property_entry_free_data(%struct.property_entry* %60)
  br label %52

62:                                               ; preds = %52
  %63 = load %struct.property_entry*, %struct.property_entry** %4, align 8
  %64 = call i32 @kfree(%struct.property_entry* %63)
  %65 = load i32, i32* %7, align 4
  %66 = call %struct.property_entry* @ERR_PTR(i32 %65)
  store %struct.property_entry* %66, %struct.property_entry** %2, align 8
  br label %73

67:                                               ; preds = %39
  br label %68

68:                                               ; preds = %67
  %69 = load i32, i32* %5, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %5, align 4
  br label %35

71:                                               ; preds = %35
  %72 = load %struct.property_entry*, %struct.property_entry** %4, align 8
  store %struct.property_entry* %72, %struct.property_entry** %2, align 8
  br label %73

73:                                               ; preds = %71, %62, %30, %10
  %74 = load %struct.property_entry*, %struct.property_entry** %2, align 8
  ret %struct.property_entry* %74
}

declare dso_local %struct.property_entry* @kcalloc(i32, i32, i32) #1

declare dso_local %struct.property_entry* @ERR_PTR(i32) #1

declare dso_local i32 @property_entry_copy_data(%struct.property_entry*, %struct.property_entry*) #1

declare dso_local i32 @property_entry_free_data(%struct.property_entry*) #1

declare dso_local i32 @kfree(%struct.property_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
