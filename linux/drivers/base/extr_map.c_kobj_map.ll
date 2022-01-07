; ModuleID = '/home/carl/AnghaBench/linux/drivers/base/extr_map.c_kobj_map.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/base/extr_map.c_kobj_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kobj_map = type { i32, %struct.probe** }
%struct.probe = type { i32 (i64, i8*)*, i64, %struct.probe*, i8*, i64, i32*, %struct.module* }
%struct.module = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kobj_map(%struct.kobj_map* %0, i64 %1, i64 %2, %struct.module* %3, i32* %4, i32 (i64, i8*)* %5, i8* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.kobj_map*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.module*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32 (i64, i8*)*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.probe*, align 8
  %20 = alloca %struct.probe**, align 8
  store %struct.kobj_map* %0, %struct.kobj_map** %9, align 8
  store i64 %1, i64* %10, align 8
  store i64 %2, i64* %11, align 8
  store %struct.module* %3, %struct.module** %12, align 8
  store i32* %4, i32** %13, align 8
  store i32 (i64, i8*)* %5, i32 (i64, i8*)** %14, align 8
  store i8* %6, i8** %15, align 8
  %21 = load i64, i64* %10, align 8
  %22 = load i64, i64* %11, align 8
  %23 = add i64 %21, %22
  %24 = sub i64 %23, 1
  %25 = call i32 @MAJOR(i64 %24)
  %26 = load i64, i64* %10, align 8
  %27 = call i32 @MAJOR(i64 %26)
  %28 = sub nsw i32 %25, %27
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %16, align 4
  %30 = load i64, i64* %10, align 8
  %31 = call i32 @MAJOR(i64 %30)
  store i32 %31, i32* %17, align 4
  %32 = load i32, i32* %16, align 4
  %33 = icmp ugt i32 %32, 255
  br i1 %33, label %34, label %35

34:                                               ; preds = %7
  store i32 255, i32* %16, align 4
  br label %35

35:                                               ; preds = %34, %7
  %36 = load i32, i32* %16, align 4
  %37 = load i32, i32* @GFP_KERNEL, align 4
  %38 = call %struct.probe* @kmalloc_array(i32 %36, i32 56, i32 %37)
  store %struct.probe* %38, %struct.probe** %19, align 8
  %39 = load %struct.probe*, %struct.probe** %19, align 8
  %40 = icmp eq %struct.probe* %39, null
  br i1 %40, label %41, label %44

41:                                               ; preds = %35
  %42 = load i32, i32* @ENOMEM, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %8, align 4
  br label %131

44:                                               ; preds = %35
  store i32 0, i32* %18, align 4
  br label %45

45:                                               ; preds = %68, %44
  %46 = load i32, i32* %18, align 4
  %47 = load i32, i32* %16, align 4
  %48 = icmp ult i32 %46, %47
  br i1 %48, label %49, label %73

49:                                               ; preds = %45
  %50 = load %struct.module*, %struct.module** %12, align 8
  %51 = load %struct.probe*, %struct.probe** %19, align 8
  %52 = getelementptr inbounds %struct.probe, %struct.probe* %51, i32 0, i32 6
  store %struct.module* %50, %struct.module** %52, align 8
  %53 = load i32*, i32** %13, align 8
  %54 = load %struct.probe*, %struct.probe** %19, align 8
  %55 = getelementptr inbounds %struct.probe, %struct.probe* %54, i32 0, i32 5
  store i32* %53, i32** %55, align 8
  %56 = load i32 (i64, i8*)*, i32 (i64, i8*)** %14, align 8
  %57 = load %struct.probe*, %struct.probe** %19, align 8
  %58 = getelementptr inbounds %struct.probe, %struct.probe* %57, i32 0, i32 0
  store i32 (i64, i8*)* %56, i32 (i64, i8*)** %58, align 8
  %59 = load i64, i64* %10, align 8
  %60 = load %struct.probe*, %struct.probe** %19, align 8
  %61 = getelementptr inbounds %struct.probe, %struct.probe* %60, i32 0, i32 4
  store i64 %59, i64* %61, align 8
  %62 = load i64, i64* %11, align 8
  %63 = load %struct.probe*, %struct.probe** %19, align 8
  %64 = getelementptr inbounds %struct.probe, %struct.probe* %63, i32 0, i32 1
  store i64 %62, i64* %64, align 8
  %65 = load i8*, i8** %15, align 8
  %66 = load %struct.probe*, %struct.probe** %19, align 8
  %67 = getelementptr inbounds %struct.probe, %struct.probe* %66, i32 0, i32 3
  store i8* %65, i8** %67, align 8
  br label %68

68:                                               ; preds = %49
  %69 = load i32, i32* %18, align 4
  %70 = add i32 %69, 1
  store i32 %70, i32* %18, align 4
  %71 = load %struct.probe*, %struct.probe** %19, align 8
  %72 = getelementptr inbounds %struct.probe, %struct.probe* %71, i32 1
  store %struct.probe* %72, %struct.probe** %19, align 8
  br label %45

73:                                               ; preds = %45
  %74 = load %struct.kobj_map*, %struct.kobj_map** %9, align 8
  %75 = getelementptr inbounds %struct.kobj_map, %struct.kobj_map* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @mutex_lock(i32 %76)
  store i32 0, i32* %18, align 4
  %78 = load i32, i32* %16, align 4
  %79 = load %struct.probe*, %struct.probe** %19, align 8
  %80 = zext i32 %78 to i64
  %81 = sub i64 0, %80
  %82 = getelementptr inbounds %struct.probe, %struct.probe* %79, i64 %81
  store %struct.probe* %82, %struct.probe** %19, align 8
  br label %83

83:                                               ; preds = %119, %73
  %84 = load i32, i32* %18, align 4
  %85 = load i32, i32* %16, align 4
  %86 = icmp ult i32 %84, %85
  br i1 %86, label %87, label %126

87:                                               ; preds = %83
  %88 = load %struct.kobj_map*, %struct.kobj_map** %9, align 8
  %89 = getelementptr inbounds %struct.kobj_map, %struct.kobj_map* %88, i32 0, i32 1
  %90 = load %struct.probe**, %struct.probe*** %89, align 8
  %91 = load i32, i32* %17, align 4
  %92 = urem i32 %91, 255
  %93 = zext i32 %92 to i64
  %94 = getelementptr inbounds %struct.probe*, %struct.probe** %90, i64 %93
  store %struct.probe** %94, %struct.probe*** %20, align 8
  br label %95

95:                                               ; preds = %108, %87
  %96 = load %struct.probe**, %struct.probe*** %20, align 8
  %97 = load %struct.probe*, %struct.probe** %96, align 8
  %98 = icmp ne %struct.probe* %97, null
  br i1 %98, label %99, label %106

99:                                               ; preds = %95
  %100 = load %struct.probe**, %struct.probe*** %20, align 8
  %101 = load %struct.probe*, %struct.probe** %100, align 8
  %102 = getelementptr inbounds %struct.probe, %struct.probe* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* %11, align 8
  %105 = icmp ult i64 %103, %104
  br label %106

106:                                              ; preds = %99, %95
  %107 = phi i1 [ false, %95 ], [ %105, %99 ]
  br i1 %107, label %108, label %112

108:                                              ; preds = %106
  %109 = load %struct.probe**, %struct.probe*** %20, align 8
  %110 = load %struct.probe*, %struct.probe** %109, align 8
  %111 = getelementptr inbounds %struct.probe, %struct.probe* %110, i32 0, i32 2
  store %struct.probe** %111, %struct.probe*** %20, align 8
  br label %95

112:                                              ; preds = %106
  %113 = load %struct.probe**, %struct.probe*** %20, align 8
  %114 = load %struct.probe*, %struct.probe** %113, align 8
  %115 = load %struct.probe*, %struct.probe** %19, align 8
  %116 = getelementptr inbounds %struct.probe, %struct.probe* %115, i32 0, i32 2
  store %struct.probe* %114, %struct.probe** %116, align 8
  %117 = load %struct.probe*, %struct.probe** %19, align 8
  %118 = load %struct.probe**, %struct.probe*** %20, align 8
  store %struct.probe* %117, %struct.probe** %118, align 8
  br label %119

119:                                              ; preds = %112
  %120 = load i32, i32* %18, align 4
  %121 = add i32 %120, 1
  store i32 %121, i32* %18, align 4
  %122 = load %struct.probe*, %struct.probe** %19, align 8
  %123 = getelementptr inbounds %struct.probe, %struct.probe* %122, i32 1
  store %struct.probe* %123, %struct.probe** %19, align 8
  %124 = load i32, i32* %17, align 4
  %125 = add i32 %124, 1
  store i32 %125, i32* %17, align 4
  br label %83

126:                                              ; preds = %83
  %127 = load %struct.kobj_map*, %struct.kobj_map** %9, align 8
  %128 = getelementptr inbounds %struct.kobj_map, %struct.kobj_map* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = call i32 @mutex_unlock(i32 %129)
  store i32 0, i32* %8, align 4
  br label %131

131:                                              ; preds = %126, %41
  %132 = load i32, i32* %8, align 4
  ret i32 %132
}

declare dso_local i32 @MAJOR(i64) #1

declare dso_local %struct.probe* @kmalloc_array(i32, i32, i32) #1

declare dso_local i32 @mutex_lock(i32) #1

declare dso_local i32 @mutex_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
