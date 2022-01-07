; ModuleID = '/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_prom_common.c_of_set_property.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_prom_common.c_of_set_property.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_node = type { i32, %struct.property* }
%struct.property = type { i32, %struct.property*, i8*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@of_set_property_mutex = common dso_local global i32 0, align 4
@devtree_lock = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @of_set_property(%struct.device_node* %0, i8* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.property**, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.property*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  store %struct.device_node* %0, %struct.device_node** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %17 = load i8*, i8** %8, align 8
  %18 = load i32, i32* %9, align 4
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call i8* @kmemdup(i8* %17, i32 %18, i32 %19)
  store i8* %20, i8** %12, align 8
  %21 = load i8*, i8** %12, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %4
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %5, align 4
  br label %88

26:                                               ; preds = %4
  %27 = load i32, i32* @ENODEV, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %13, align 4
  %29 = call i32 @mutex_lock(i32* @of_set_property_mutex)
  %30 = load i64, i64* %11, align 8
  %31 = call i32 @raw_spin_lock_irqsave(i32* @devtree_lock, i64 %30)
  %32 = load %struct.device_node*, %struct.device_node** %6, align 8
  %33 = getelementptr inbounds %struct.device_node, %struct.device_node* %32, i32 0, i32 1
  store %struct.property** %33, %struct.property*** %10, align 8
  br label %34

34:                                               ; preds = %79, %26
  %35 = load %struct.property**, %struct.property*** %10, align 8
  %36 = load %struct.property*, %struct.property** %35, align 8
  %37 = icmp ne %struct.property* %36, null
  br i1 %37, label %38, label %83

38:                                               ; preds = %34
  %39 = load %struct.property**, %struct.property*** %10, align 8
  %40 = load %struct.property*, %struct.property** %39, align 8
  store %struct.property* %40, %struct.property** %14, align 8
  %41 = load %struct.property*, %struct.property** %14, align 8
  %42 = getelementptr inbounds %struct.property, %struct.property* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 8
  %44 = load i8*, i8** %7, align 8
  %45 = call i32 @strcasecmp(i32 %43, i8* %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %79, label %47

47:                                               ; preds = %38
  %48 = load %struct.property*, %struct.property** %14, align 8
  %49 = getelementptr inbounds %struct.property, %struct.property* %48, i32 0, i32 2
  %50 = load i8*, i8** %49, align 8
  store i8* %50, i8** %15, align 8
  %51 = load %struct.device_node*, %struct.device_node** %6, align 8
  %52 = getelementptr inbounds %struct.device_node, %struct.device_node* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i8*, i8** %7, align 8
  %55 = load i8*, i8** %8, align 8
  %56 = load i32, i32* %9, align 4
  %57 = call i32 @prom_setprop(i32 %53, i8* %54, i8* %55, i32 %56)
  store i32 %57, i32* %16, align 4
  %58 = load i32, i32* @EINVAL, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %13, align 4
  %60 = load i32, i32* %16, align 4
  %61 = icmp sge i32 %60, 0
  br i1 %61, label %62, label %78

62:                                               ; preds = %47
  %63 = load i8*, i8** %12, align 8
  %64 = load %struct.property*, %struct.property** %14, align 8
  %65 = getelementptr inbounds %struct.property, %struct.property* %64, i32 0, i32 2
  store i8* %63, i8** %65, align 8
  %66 = load i32, i32* %9, align 4
  %67 = load %struct.property*, %struct.property** %14, align 8
  %68 = getelementptr inbounds %struct.property, %struct.property* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 8
  %69 = load %struct.property*, %struct.property** %14, align 8
  %70 = call i64 @OF_IS_DYNAMIC(%struct.property* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %62
  %73 = load i8*, i8** %15, align 8
  %74 = call i32 @kfree(i8* %73)
  br label %75

75:                                               ; preds = %72, %62
  %76 = load %struct.property*, %struct.property** %14, align 8
  %77 = call i32 @OF_MARK_DYNAMIC(%struct.property* %76)
  store i32 0, i32* %13, align 4
  br label %78

78:                                               ; preds = %75, %47
  br label %83

79:                                               ; preds = %38
  %80 = load %struct.property**, %struct.property*** %10, align 8
  %81 = load %struct.property*, %struct.property** %80, align 8
  %82 = getelementptr inbounds %struct.property, %struct.property* %81, i32 0, i32 1
  store %struct.property** %82, %struct.property*** %10, align 8
  br label %34

83:                                               ; preds = %78, %34
  %84 = load i64, i64* %11, align 8
  %85 = call i32 @raw_spin_unlock_irqrestore(i32* @devtree_lock, i64 %84)
  %86 = call i32 @mutex_unlock(i32* @of_set_property_mutex)
  %87 = load i32, i32* %13, align 4
  store i32 %87, i32* %5, align 4
  br label %88

88:                                               ; preds = %83, %23
  %89 = load i32, i32* %5, align 4
  ret i32 %89
}

declare dso_local i8* @kmemdup(i8*, i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @raw_spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @strcasecmp(i32, i8*) #1

declare dso_local i32 @prom_setprop(i32, i8*, i8*, i32) #1

declare dso_local i64 @OF_IS_DYNAMIC(%struct.property*) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @OF_MARK_DYNAMIC(%struct.property*) #1

declare dso_local i32 @raw_spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
