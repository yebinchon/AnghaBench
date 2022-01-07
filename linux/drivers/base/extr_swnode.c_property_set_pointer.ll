; ModuleID = '/home/carl/AnghaBench/linux/drivers/base/extr_swnode.c_property_set_pointer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/base/extr_swnode.c_property_set_pointer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.property_entry = type { i32, %struct.TYPE_4__, %struct.TYPE_3__, i32 }
%struct.TYPE_4__ = type { i8*, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i8*, i8*, i8*, i8*, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.property_entry*, i8*)* @property_set_pointer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @property_set_pointer(%struct.property_entry* %0, i8* %1) #0 {
  %3 = alloca %struct.property_entry*, align 8
  %4 = alloca i8*, align 8
  store %struct.property_entry* %0, %struct.property_entry** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load %struct.property_entry*, %struct.property_entry** %3, align 8
  %6 = getelementptr inbounds %struct.property_entry, %struct.property_entry* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  switch i32 %7, label %96 [
    i32 128, label %8
    i32 131, label %26
    i32 130, label %44
    i32 129, label %62
    i32 132, label %80
  ]

8:                                                ; preds = %2
  %9 = load %struct.property_entry*, %struct.property_entry** %3, align 8
  %10 = getelementptr inbounds %struct.property_entry, %struct.property_entry* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 8
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %8
  %14 = load i8*, i8** %4, align 8
  %15 = load %struct.property_entry*, %struct.property_entry** %3, align 8
  %16 = getelementptr inbounds %struct.property_entry, %struct.property_entry* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 4
  store i8* %14, i8** %17, align 8
  br label %25

18:                                               ; preds = %8
  %19 = load i8*, i8** %4, align 8
  %20 = bitcast i8* %19 to i32*
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.property_entry*, %struct.property_entry** %3, align 8
  %23 = getelementptr inbounds %struct.property_entry, %struct.property_entry* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 4
  store i32 %21, i32* %24, align 4
  br label %25

25:                                               ; preds = %18, %13
  br label %97

26:                                               ; preds = %2
  %27 = load %struct.property_entry*, %struct.property_entry** %3, align 8
  %28 = getelementptr inbounds %struct.property_entry, %struct.property_entry* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 8
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %26
  %32 = load i8*, i8** %4, align 8
  %33 = load %struct.property_entry*, %struct.property_entry** %3, align 8
  %34 = getelementptr inbounds %struct.property_entry, %struct.property_entry* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 3
  store i8* %32, i8** %35, align 8
  br label %43

36:                                               ; preds = %26
  %37 = load i8*, i8** %4, align 8
  %38 = bitcast i8* %37 to i32*
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.property_entry*, %struct.property_entry** %3, align 8
  %41 = getelementptr inbounds %struct.property_entry, %struct.property_entry* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 3
  store i32 %39, i32* %42, align 8
  br label %43

43:                                               ; preds = %36, %31
  br label %97

44:                                               ; preds = %2
  %45 = load %struct.property_entry*, %struct.property_entry** %3, align 8
  %46 = getelementptr inbounds %struct.property_entry, %struct.property_entry* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 8
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %44
  %50 = load i8*, i8** %4, align 8
  %51 = load %struct.property_entry*, %struct.property_entry** %3, align 8
  %52 = getelementptr inbounds %struct.property_entry, %struct.property_entry* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 2
  store i8* %50, i8** %53, align 8
  br label %61

54:                                               ; preds = %44
  %55 = load i8*, i8** %4, align 8
  %56 = bitcast i8* %55 to i32*
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.property_entry*, %struct.property_entry** %3, align 8
  %59 = getelementptr inbounds %struct.property_entry, %struct.property_entry* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 2
  store i32 %57, i32* %60, align 4
  br label %61

61:                                               ; preds = %54, %49
  br label %97

62:                                               ; preds = %2
  %63 = load %struct.property_entry*, %struct.property_entry** %3, align 8
  %64 = getelementptr inbounds %struct.property_entry, %struct.property_entry* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 8
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %62
  %68 = load i8*, i8** %4, align 8
  %69 = load %struct.property_entry*, %struct.property_entry** %3, align 8
  %70 = getelementptr inbounds %struct.property_entry, %struct.property_entry* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 1
  store i8* %68, i8** %71, align 8
  br label %79

72:                                               ; preds = %62
  %73 = load i8*, i8** %4, align 8
  %74 = bitcast i8* %73 to i32*
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.property_entry*, %struct.property_entry** %3, align 8
  %77 = getelementptr inbounds %struct.property_entry, %struct.property_entry* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 1
  store i32 %75, i32* %78, align 8
  br label %79

79:                                               ; preds = %72, %67
  br label %97

80:                                               ; preds = %2
  %81 = load %struct.property_entry*, %struct.property_entry** %3, align 8
  %82 = getelementptr inbounds %struct.property_entry, %struct.property_entry* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 8
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %90

85:                                               ; preds = %80
  %86 = load i8*, i8** %4, align 8
  %87 = load %struct.property_entry*, %struct.property_entry** %3, align 8
  %88 = getelementptr inbounds %struct.property_entry, %struct.property_entry* %87, i32 0, i32 2
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 0
  store i8* %86, i8** %89, align 8
  br label %95

90:                                               ; preds = %80
  %91 = load i8*, i8** %4, align 8
  %92 = load %struct.property_entry*, %struct.property_entry** %3, align 8
  %93 = getelementptr inbounds %struct.property_entry, %struct.property_entry* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 0
  store i8* %91, i8** %94, align 8
  br label %95

95:                                               ; preds = %90, %85
  br label %97

96:                                               ; preds = %2
  br label %97

97:                                               ; preds = %96, %95, %79, %61, %43, %25
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
