; ModuleID = '/home/carl/AnghaBench/linux/drivers/base/extr_component.c_component_bind.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/base/extr_component.c_component_bind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.component = type { i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32 (i32, i32, i8*)* }
%struct.master = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"binding %s (ops %ps)\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"bound %s (ops %ps)\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"failed to bind %s (ops %ps): %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.component*, %struct.master*, i8*)* @component_bind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @component_bind(%struct.component* %0, %struct.master* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.component*, align 8
  %6 = alloca %struct.master*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.component* %0, %struct.component** %5, align 8
  store %struct.master* %1, %struct.master** %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = load %struct.master*, %struct.master** %6, align 8
  %10 = getelementptr inbounds %struct.master, %struct.master* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call i32 @devres_open_group(i32 %11, %struct.component* null, i32 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %4, align 4
  br label %105

18:                                               ; preds = %3
  %19 = load %struct.component*, %struct.component** %5, align 8
  %20 = getelementptr inbounds %struct.component, %struct.component* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.component*, %struct.component** %5, align 8
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = call i32 @devres_open_group(i32 %21, %struct.component* %22, i32 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %33, label %26

26:                                               ; preds = %18
  %27 = load %struct.master*, %struct.master** %6, align 8
  %28 = getelementptr inbounds %struct.master, %struct.master* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @devres_release_group(i32 %29, i32* null)
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %4, align 4
  br label %105

33:                                               ; preds = %18
  %34 = load %struct.master*, %struct.master** %6, align 8
  %35 = getelementptr inbounds %struct.master, %struct.master* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.component*, %struct.component** %5, align 8
  %38 = getelementptr inbounds %struct.component, %struct.component* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @dev_name(i32 %39)
  %41 = load %struct.component*, %struct.component** %5, align 8
  %42 = getelementptr inbounds %struct.component, %struct.component* %41, i32 0, i32 1
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = call i32 @dev_dbg(i32 %36, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %40, %struct.TYPE_4__* %43)
  %45 = load %struct.component*, %struct.component** %5, align 8
  %46 = getelementptr inbounds %struct.component, %struct.component* %45, i32 0, i32 1
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i32 (i32, i32, i8*)*, i32 (i32, i32, i8*)** %48, align 8
  %50 = load %struct.component*, %struct.component** %5, align 8
  %51 = getelementptr inbounds %struct.component, %struct.component* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.master*, %struct.master** %6, align 8
  %54 = getelementptr inbounds %struct.master, %struct.master* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i8*, i8** %7, align 8
  %57 = call i32 %49(i32 %52, i32 %55, i8* %56)
  store i32 %57, i32* %8, align 4
  %58 = load i32, i32* %8, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %82, label %60

60:                                               ; preds = %33
  %61 = load %struct.component*, %struct.component** %5, align 8
  %62 = getelementptr inbounds %struct.component, %struct.component* %61, i32 0, i32 0
  store i32 1, i32* %62, align 8
  %63 = load %struct.component*, %struct.component** %5, align 8
  %64 = getelementptr inbounds %struct.component, %struct.component* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @devres_close_group(i32 %65, i32* null)
  %67 = load %struct.master*, %struct.master** %6, align 8
  %68 = getelementptr inbounds %struct.master, %struct.master* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @devres_remove_group(i32 %69, i32* null)
  %71 = load %struct.master*, %struct.master** %6, align 8
  %72 = getelementptr inbounds %struct.master, %struct.master* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.component*, %struct.component** %5, align 8
  %75 = getelementptr inbounds %struct.component, %struct.component* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @dev_name(i32 %76)
  %78 = load %struct.component*, %struct.component** %5, align 8
  %79 = getelementptr inbounds %struct.component, %struct.component* %78, i32 0, i32 1
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %79, align 8
  %81 = call i32 @dev_info(i32 %73, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %77, %struct.TYPE_4__* %80)
  br label %103

82:                                               ; preds = %33
  %83 = load %struct.component*, %struct.component** %5, align 8
  %84 = getelementptr inbounds %struct.component, %struct.component* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @devres_release_group(i32 %85, i32* null)
  %87 = load %struct.master*, %struct.master** %6, align 8
  %88 = getelementptr inbounds %struct.master, %struct.master* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @devres_release_group(i32 %89, i32* null)
  %91 = load %struct.master*, %struct.master** %6, align 8
  %92 = getelementptr inbounds %struct.master, %struct.master* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.component*, %struct.component** %5, align 8
  %95 = getelementptr inbounds %struct.component, %struct.component* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 8
  %97 = call i32 @dev_name(i32 %96)
  %98 = load %struct.component*, %struct.component** %5, align 8
  %99 = getelementptr inbounds %struct.component, %struct.component* %98, i32 0, i32 1
  %100 = load %struct.TYPE_4__*, %struct.TYPE_4__** %99, align 8
  %101 = load i32, i32* %8, align 4
  %102 = call i32 @dev_err(i32 %93, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %97, %struct.TYPE_4__* %100, i32 %101)
  br label %103

103:                                              ; preds = %82, %60
  %104 = load i32, i32* %8, align 4
  store i32 %104, i32* %4, align 4
  br label %105

105:                                              ; preds = %103, %26, %15
  %106 = load i32, i32* %4, align 4
  ret i32 %106
}

declare dso_local i32 @devres_open_group(i32, %struct.component*, i32) #1

declare dso_local i32 @devres_release_group(i32, i32*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, %struct.TYPE_4__*) #1

declare dso_local i32 @dev_name(i32) #1

declare dso_local i32 @devres_close_group(i32, i32*) #1

declare dso_local i32 @devres_remove_group(i32, i32*) #1

declare dso_local i32 @dev_info(i32, i8*, i32, %struct.TYPE_4__*) #1

declare dso_local i32 @dev_err(i32, i8*, i32, %struct.TYPE_4__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
