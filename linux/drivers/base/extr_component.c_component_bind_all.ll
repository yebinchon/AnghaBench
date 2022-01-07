; ModuleID = '/home/carl/AnghaBench/linux/drivers/base/extr_component.c_component_bind_all.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/base/extr_component.c_component_bind_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.master = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.component*, i32 }
%struct.component = type { i32 }

@component_mutex = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @component_bind_all(%struct.device* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.master*, align 8
  %7 = alloca %struct.component*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 0, i32* %9, align 4
  %10 = call i32 @mutex_is_locked(i32* @component_mutex)
  %11 = icmp ne i32 %10, 0
  %12 = xor i1 %11, true
  %13 = zext i1 %12 to i32
  %14 = call i32 @WARN_ON(i32 %13)
  %15 = load %struct.device*, %struct.device** %4, align 8
  %16 = call %struct.master* @__master_find(%struct.device* %15, i32* null)
  store %struct.master* %16, %struct.master** %6, align 8
  %17 = load %struct.master*, %struct.master** %6, align 8
  %18 = icmp ne %struct.master* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %2
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %105

22:                                               ; preds = %2
  store i64 0, i64* %8, align 8
  br label %23

23:                                               ; preds = %61, %22
  %24 = load i64, i64* %8, align 8
  %25 = load %struct.master*, %struct.master** %6, align 8
  %26 = getelementptr inbounds %struct.master, %struct.master* %25, i32 0, i32 0
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ult i64 %24, %29
  br i1 %30, label %31, label %64

31:                                               ; preds = %23
  %32 = load %struct.master*, %struct.master** %6, align 8
  %33 = getelementptr inbounds %struct.master, %struct.master* %32, i32 0, i32 0
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 1
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  %37 = load i64, i64* %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %60, label %42

42:                                               ; preds = %31
  %43 = load %struct.master*, %struct.master** %6, align 8
  %44 = getelementptr inbounds %struct.master, %struct.master* %43, i32 0, i32 0
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 1
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %46, align 8
  %48 = load i64, i64* %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load %struct.component*, %struct.component** %50, align 8
  store %struct.component* %51, %struct.component** %7, align 8
  %52 = load %struct.component*, %struct.component** %7, align 8
  %53 = load %struct.master*, %struct.master** %6, align 8
  %54 = load i8*, i8** %5, align 8
  %55 = call i32 @component_bind(%struct.component* %52, %struct.master* %53, i8* %54)
  store i32 %55, i32* %9, align 4
  %56 = load i32, i32* %9, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %42
  br label %64

59:                                               ; preds = %42
  br label %60

60:                                               ; preds = %59, %31
  br label %61

61:                                               ; preds = %60
  %62 = load i64, i64* %8, align 8
  %63 = add i64 %62, 1
  store i64 %63, i64* %8, align 8
  br label %23

64:                                               ; preds = %58, %23
  %65 = load i32, i32* %9, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %103

67:                                               ; preds = %64
  br label %68

68:                                               ; preds = %99, %67
  %69 = load i64, i64* %8, align 8
  %70 = icmp ugt i64 %69, 0
  br i1 %70, label %71, label %102

71:                                               ; preds = %68
  %72 = load %struct.master*, %struct.master** %6, align 8
  %73 = getelementptr inbounds %struct.master, %struct.master* %72, i32 0, i32 0
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 1
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %75, align 8
  %77 = load i64, i64* %8, align 8
  %78 = sub i64 %77, 1
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %98, label %83

83:                                               ; preds = %71
  %84 = load %struct.master*, %struct.master** %6, align 8
  %85 = getelementptr inbounds %struct.master, %struct.master* %84, i32 0, i32 0
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 1
  %88 = load %struct.TYPE_3__*, %struct.TYPE_3__** %87, align 8
  %89 = load i64, i64* %8, align 8
  %90 = sub i64 %89, 1
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 0
  %93 = load %struct.component*, %struct.component** %92, align 8
  store %struct.component* %93, %struct.component** %7, align 8
  %94 = load %struct.component*, %struct.component** %7, align 8
  %95 = load %struct.master*, %struct.master** %6, align 8
  %96 = load i8*, i8** %5, align 8
  %97 = call i32 @component_unbind(%struct.component* %94, %struct.master* %95, i8* %96)
  br label %98

98:                                               ; preds = %83, %71
  br label %99

99:                                               ; preds = %98
  %100 = load i64, i64* %8, align 8
  %101 = add i64 %100, -1
  store i64 %101, i64* %8, align 8
  br label %68

102:                                              ; preds = %68
  br label %103

103:                                              ; preds = %102, %64
  %104 = load i32, i32* %9, align 4
  store i32 %104, i32* %3, align 4
  br label %105

105:                                              ; preds = %103, %19
  %106 = load i32, i32* %3, align 4
  ret i32 %106
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @mutex_is_locked(i32*) #1

declare dso_local %struct.master* @__master_find(%struct.device*, i32*) #1

declare dso_local i32 @component_bind(%struct.component*, %struct.master*, i8*) #1

declare dso_local i32 @component_unbind(%struct.component*, %struct.master*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
