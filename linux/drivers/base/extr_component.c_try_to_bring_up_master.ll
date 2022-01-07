; ModuleID = '/home/carl/AnghaBench/linux/drivers/base/extr_component.c_try_to_bring_up_master.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/base/extr_component.c_try_to_bring_up_master.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.master = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (i32)* }
%struct.component = type { i32, %struct.master* }

@.str = private unnamed_addr constant [27 x i8] c"trying to bring up master\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"master has incomplete components\0A\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"master is not for this component (%s)\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [24 x i8] c"master bind failed: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.master*, %struct.component*)* @try_to_bring_up_master to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @try_to_bring_up_master(%struct.master* %0, %struct.component* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.master*, align 8
  %5 = alloca %struct.component*, align 8
  %6 = alloca i32, align 4
  store %struct.master* %0, %struct.master** %4, align 8
  store %struct.component* %1, %struct.component** %5, align 8
  %7 = load %struct.master*, %struct.master** %4, align 8
  %8 = getelementptr inbounds %struct.master, %struct.master* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = call i32 (i32, i8*, ...) @dev_dbg(i32 %9, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.master*, %struct.master** %4, align 8
  %12 = call i64 @find_components(%struct.master* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %2
  %15 = load %struct.master*, %struct.master** %4, align 8
  %16 = getelementptr inbounds %struct.master, %struct.master* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 (i32, i8*, ...) @dev_dbg(i32 %17, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %73

19:                                               ; preds = %2
  %20 = load %struct.component*, %struct.component** %5, align 8
  %21 = icmp ne %struct.component* %20, null
  br i1 %21, label %22, label %37

22:                                               ; preds = %19
  %23 = load %struct.component*, %struct.component** %5, align 8
  %24 = getelementptr inbounds %struct.component, %struct.component* %23, i32 0, i32 1
  %25 = load %struct.master*, %struct.master** %24, align 8
  %26 = load %struct.master*, %struct.master** %4, align 8
  %27 = icmp ne %struct.master* %25, %26
  br i1 %27, label %28, label %37

28:                                               ; preds = %22
  %29 = load %struct.master*, %struct.master** %4, align 8
  %30 = getelementptr inbounds %struct.master, %struct.master* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.component*, %struct.component** %5, align 8
  %33 = getelementptr inbounds %struct.component, %struct.component* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @dev_name(i32 %34)
  %36 = call i32 (i32, i8*, ...) @dev_dbg(i32 %31, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %35)
  store i32 0, i32* %3, align 4
  br label %73

37:                                               ; preds = %22, %19
  %38 = load %struct.master*, %struct.master** %4, align 8
  %39 = getelementptr inbounds %struct.master, %struct.master* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @GFP_KERNEL, align 4
  %42 = call i32 @devres_open_group(i32 %40, i32* null, i32 %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %37
  %45 = load i32, i32* @ENOMEM, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %3, align 4
  br label %73

47:                                               ; preds = %37
  %48 = load %struct.master*, %struct.master** %4, align 8
  %49 = getelementptr inbounds %struct.master, %struct.master* %48, i32 0, i32 2
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32 (i32)*, i32 (i32)** %51, align 8
  %53 = load %struct.master*, %struct.master** %4, align 8
  %54 = getelementptr inbounds %struct.master, %struct.master* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = call i32 %52(i32 %55)
  store i32 %56, i32* %6, align 4
  %57 = load i32, i32* %6, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %70

59:                                               ; preds = %47
  %60 = load %struct.master*, %struct.master** %4, align 8
  %61 = getelementptr inbounds %struct.master, %struct.master* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @devres_release_group(i32 %62, i32* null)
  %64 = load %struct.master*, %struct.master** %4, align 8
  %65 = getelementptr inbounds %struct.master, %struct.master* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* %6, align 4
  %68 = call i32 @dev_info(i32 %66, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32 %67)
  %69 = load i32, i32* %6, align 4
  store i32 %69, i32* %3, align 4
  br label %73

70:                                               ; preds = %47
  %71 = load %struct.master*, %struct.master** %4, align 8
  %72 = getelementptr inbounds %struct.master, %struct.master* %71, i32 0, i32 0
  store i32 1, i32* %72, align 8
  store i32 1, i32* %3, align 4
  br label %73

73:                                               ; preds = %70, %59, %44, %28, %14
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

declare dso_local i32 @dev_dbg(i32, i8*, ...) #1

declare dso_local i64 @find_components(%struct.master*) #1

declare dso_local i32 @dev_name(i32) #1

declare dso_local i32 @devres_open_group(i32, i32*, i32) #1

declare dso_local i32 @devres_release_group(i32, i32*) #1

declare dso_local i32 @dev_info(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
