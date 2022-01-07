; ModuleID = '/home/carl/AnghaBench/linux/drivers/base/extr_swnode.c_property_entry_copy_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/base/extr_swnode.c_property_entry_copy_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.property_entry = type { i64, i8*, i64, i32, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i8* }
%struct.TYPE_3__ = type { i8* }

@ENODATA = common dso_local global i32 0, align 4
@DEV_PROP_STRING = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.property_entry*, %struct.property_entry*)* @property_entry_copy_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @property_entry_copy_data(%struct.property_entry* %0, %struct.property_entry* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.property_entry*, align 8
  %5 = alloca %struct.property_entry*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.property_entry* %0, %struct.property_entry** %4, align 8
  store %struct.property_entry* %1, %struct.property_entry** %5, align 8
  %9 = load %struct.property_entry*, %struct.property_entry** %5, align 8
  %10 = call i8* @property_get_pointer(%struct.property_entry* %9)
  store i8* %10, i8** %6, align 8
  %11 = load %struct.property_entry*, %struct.property_entry** %5, align 8
  %12 = getelementptr inbounds %struct.property_entry, %struct.property_entry* %11, i32 0, i32 2
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %56

15:                                               ; preds = %2
  %16 = load %struct.property_entry*, %struct.property_entry** %5, align 8
  %17 = getelementptr inbounds %struct.property_entry, %struct.property_entry* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %15
  %21 = load i32, i32* @ENODATA, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %121

23:                                               ; preds = %15
  %24 = load %struct.property_entry*, %struct.property_entry** %5, align 8
  %25 = getelementptr inbounds %struct.property_entry, %struct.property_entry* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @DEV_PROP_STRING, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %42

29:                                               ; preds = %23
  %30 = load %struct.property_entry*, %struct.property_entry** %4, align 8
  %31 = load %struct.property_entry*, %struct.property_entry** %5, align 8
  %32 = call i32 @property_copy_string_array(%struct.property_entry* %30, %struct.property_entry* %31)
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %8, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %29
  %36 = load i32, i32* %8, align 4
  store i32 %36, i32* %3, align 4
  br label %121

37:                                               ; preds = %29
  %38 = load %struct.property_entry*, %struct.property_entry** %4, align 8
  %39 = getelementptr inbounds %struct.property_entry, %struct.property_entry* %38, i32 0, i32 5
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i8*, i8** %40, align 8
  store i8* %41, i8** %7, align 8
  br label %55

42:                                               ; preds = %23
  %43 = load i8*, i8** %6, align 8
  %44 = load %struct.property_entry*, %struct.property_entry** %5, align 8
  %45 = getelementptr inbounds %struct.property_entry, %struct.property_entry* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @GFP_KERNEL, align 4
  %48 = call i8* @kmemdup(i8* %43, i32 %46, i32 %47)
  store i8* %48, i8** %7, align 8
  %49 = load i8*, i8** %7, align 8
  %50 = icmp ne i8* %49, null
  br i1 %50, label %54, label %51

51:                                               ; preds = %42
  %52 = load i32, i32* @ENOMEM, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %3, align 4
  br label %121

54:                                               ; preds = %42
  br label %55

55:                                               ; preds = %54, %37
  br label %84

56:                                               ; preds = %2
  %57 = load %struct.property_entry*, %struct.property_entry** %5, align 8
  %58 = getelementptr inbounds %struct.property_entry, %struct.property_entry* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @DEV_PROP_STRING, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %81

62:                                               ; preds = %56
  %63 = load %struct.property_entry*, %struct.property_entry** %5, align 8
  %64 = getelementptr inbounds %struct.property_entry, %struct.property_entry* %63, i32 0, i32 4
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = load i8*, i8** %65, align 8
  %67 = load i32, i32* @GFP_KERNEL, align 4
  %68 = call i8* @kstrdup(i8* %66, i32 %67)
  store i8* %68, i8** %7, align 8
  %69 = load i8*, i8** %7, align 8
  %70 = icmp ne i8* %69, null
  br i1 %70, label %80, label %71

71:                                               ; preds = %62
  %72 = load %struct.property_entry*, %struct.property_entry** %5, align 8
  %73 = getelementptr inbounds %struct.property_entry, %struct.property_entry* %72, i32 0, i32 4
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = load i8*, i8** %74, align 8
  %76 = icmp ne i8* %75, null
  br i1 %76, label %77, label %80

77:                                               ; preds = %71
  %78 = load i32, i32* @ENOMEM, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %3, align 4
  br label %121

80:                                               ; preds = %71, %62
  br label %83

81:                                               ; preds = %56
  %82 = load i8*, i8** %6, align 8
  store i8* %82, i8** %7, align 8
  br label %83

83:                                               ; preds = %81, %80
  br label %84

84:                                               ; preds = %83, %55
  %85 = load %struct.property_entry*, %struct.property_entry** %5, align 8
  %86 = getelementptr inbounds %struct.property_entry, %struct.property_entry* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.property_entry*, %struct.property_entry** %4, align 8
  %89 = getelementptr inbounds %struct.property_entry, %struct.property_entry* %88, i32 0, i32 3
  store i32 %87, i32* %89, align 8
  %90 = load %struct.property_entry*, %struct.property_entry** %5, align 8
  %91 = getelementptr inbounds %struct.property_entry, %struct.property_entry* %90, i32 0, i32 2
  %92 = load i64, i64* %91, align 8
  %93 = load %struct.property_entry*, %struct.property_entry** %4, align 8
  %94 = getelementptr inbounds %struct.property_entry, %struct.property_entry* %93, i32 0, i32 2
  store i64 %92, i64* %94, align 8
  %95 = load %struct.property_entry*, %struct.property_entry** %5, align 8
  %96 = getelementptr inbounds %struct.property_entry, %struct.property_entry* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load %struct.property_entry*, %struct.property_entry** %4, align 8
  %99 = getelementptr inbounds %struct.property_entry, %struct.property_entry* %98, i32 0, i32 0
  store i64 %97, i64* %99, align 8
  %100 = load %struct.property_entry*, %struct.property_entry** %4, align 8
  %101 = load i8*, i8** %7, align 8
  %102 = call i32 @property_set_pointer(%struct.property_entry* %100, i8* %101)
  %103 = load %struct.property_entry*, %struct.property_entry** %5, align 8
  %104 = getelementptr inbounds %struct.property_entry, %struct.property_entry* %103, i32 0, i32 1
  %105 = load i8*, i8** %104, align 8
  %106 = load i32, i32* @GFP_KERNEL, align 4
  %107 = call i8* @kstrdup(i8* %105, i32 %106)
  %108 = load %struct.property_entry*, %struct.property_entry** %4, align 8
  %109 = getelementptr inbounds %struct.property_entry, %struct.property_entry* %108, i32 0, i32 1
  store i8* %107, i8** %109, align 8
  %110 = load %struct.property_entry*, %struct.property_entry** %4, align 8
  %111 = getelementptr inbounds %struct.property_entry, %struct.property_entry* %110, i32 0, i32 1
  %112 = load i8*, i8** %111, align 8
  %113 = icmp ne i8* %112, null
  br i1 %113, label %115, label %114

114:                                              ; preds = %84
  br label %116

115:                                              ; preds = %84
  store i32 0, i32* %3, align 4
  br label %121

116:                                              ; preds = %114
  %117 = load %struct.property_entry*, %struct.property_entry** %4, align 8
  %118 = call i32 @property_entry_free_data(%struct.property_entry* %117)
  %119 = load i32, i32* @ENOMEM, align 4
  %120 = sub nsw i32 0, %119
  store i32 %120, i32* %3, align 4
  br label %121

121:                                              ; preds = %116, %115, %77, %51, %35, %20
  %122 = load i32, i32* %3, align 4
  ret i32 %122
}

declare dso_local i8* @property_get_pointer(%struct.property_entry*) #1

declare dso_local i32 @property_copy_string_array(%struct.property_entry*, %struct.property_entry*) #1

declare dso_local i8* @kmemdup(i8*, i32, i32) #1

declare dso_local i8* @kstrdup(i8*, i32) #1

declare dso_local i32 @property_set_pointer(%struct.property_entry*, i8*) #1

declare dso_local i32 @property_entry_free_data(%struct.property_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
