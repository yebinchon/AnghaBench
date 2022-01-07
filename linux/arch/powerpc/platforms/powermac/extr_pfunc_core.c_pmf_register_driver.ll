; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/powermac/extr_pfunc_core.c_pmf_register_driver.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/powermac/extr_pfunc_core.c_pmf_register_driver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_node = type { i32 }
%struct.pmf_handlers = type { i32 }
%struct.pmf_device = type { i32, i32, %struct.pmf_handlers*, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"pmf: registering driver for node %pOF\0A\00", align 1
@pmf_lock = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"pmf: already there !\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"pmf: no memory !\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [33 x i8] c"pmf: no functions, disposing.. \0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@pmf_devices = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pmf_register_driver(%struct.device_node* %0, %struct.pmf_handlers* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.pmf_handlers*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.pmf_device*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.device_node* %0, %struct.device_node** %5, align 8
  store %struct.pmf_handlers* %1, %struct.pmf_handlers** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 0, i32* %10, align 4
  %11 = load %struct.pmf_handlers*, %struct.pmf_handlers** %6, align 8
  %12 = icmp eq %struct.pmf_handlers* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %3
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %4, align 4
  br label %77

16:                                               ; preds = %3
  %17 = load %struct.device_node*, %struct.device_node** %5, align 8
  %18 = call i32 (i8*, ...) @DBG(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), %struct.device_node* %17)
  %19 = load i64, i64* %9, align 8
  %20 = call i32 @spin_lock_irqsave(i32* @pmf_lock, i64 %19)
  %21 = load %struct.device_node*, %struct.device_node** %5, align 8
  %22 = call %struct.pmf_device* @pmf_find_device(%struct.device_node* %21)
  store %struct.pmf_device* %22, %struct.pmf_device** %8, align 8
  %23 = load i64, i64* %9, align 8
  %24 = call i32 @spin_unlock_irqrestore(i32* @pmf_lock, i64 %23)
  %25 = load %struct.pmf_device*, %struct.pmf_device** %8, align 8
  %26 = icmp ne %struct.pmf_device* %25, null
  br i1 %26, label %27, label %33

27:                                               ; preds = %16
  %28 = call i32 (i8*, ...) @DBG(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %29 = load %struct.pmf_device*, %struct.pmf_device** %8, align 8
  %30 = call i32 @pmf_put_device(%struct.pmf_device* %29)
  %31 = load i32, i32* @EBUSY, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %4, align 4
  br label %77

33:                                               ; preds = %16
  %34 = load i32, i32* @GFP_KERNEL, align 4
  %35 = call %struct.pmf_device* @kzalloc(i32 24, i32 %34)
  store %struct.pmf_device* %35, %struct.pmf_device** %8, align 8
  %36 = load %struct.pmf_device*, %struct.pmf_device** %8, align 8
  %37 = icmp eq %struct.pmf_device* %36, null
  br i1 %37, label %38, label %42

38:                                               ; preds = %33
  %39 = call i32 (i8*, ...) @DBG(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  %40 = load i32, i32* @ENOMEM, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %4, align 4
  br label %77

42:                                               ; preds = %33
  %43 = load %struct.pmf_device*, %struct.pmf_device** %8, align 8
  %44 = getelementptr inbounds %struct.pmf_device, %struct.pmf_device* %43, i32 0, i32 4
  %45 = call i32 @kref_init(i32* %44)
  %46 = load %struct.device_node*, %struct.device_node** %5, align 8
  %47 = call i32 @of_node_get(%struct.device_node* %46)
  %48 = load %struct.pmf_device*, %struct.pmf_device** %8, align 8
  %49 = getelementptr inbounds %struct.pmf_device, %struct.pmf_device* %48, i32 0, i32 3
  store i32 %47, i32* %49, align 8
  %50 = load %struct.pmf_handlers*, %struct.pmf_handlers** %6, align 8
  %51 = load %struct.pmf_device*, %struct.pmf_device** %8, align 8
  %52 = getelementptr inbounds %struct.pmf_device, %struct.pmf_device* %51, i32 0, i32 2
  store %struct.pmf_handlers* %50, %struct.pmf_handlers** %52, align 8
  %53 = load %struct.pmf_device*, %struct.pmf_device** %8, align 8
  %54 = getelementptr inbounds %struct.pmf_device, %struct.pmf_device* %53, i32 0, i32 1
  %55 = call i32 @INIT_LIST_HEAD(i32* %54)
  %56 = load %struct.pmf_device*, %struct.pmf_device** %8, align 8
  %57 = load i8*, i8** %7, align 8
  %58 = call i32 @pmf_add_functions(%struct.pmf_device* %56, i8* %57)
  store i32 %58, i32* %10, align 4
  %59 = load i32, i32* %10, align 4
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %69

61:                                               ; preds = %42
  %62 = call i32 (i8*, ...) @DBG(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  %63 = load %struct.device_node*, %struct.device_node** %5, align 8
  %64 = call i32 @of_node_put(%struct.device_node* %63)
  %65 = load %struct.pmf_device*, %struct.pmf_device** %8, align 8
  %66 = call i32 @kfree(%struct.pmf_device* %65)
  %67 = load i32, i32* @ENODEV, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %4, align 4
  br label %77

69:                                               ; preds = %42
  %70 = load i64, i64* %9, align 8
  %71 = call i32 @spin_lock_irqsave(i32* @pmf_lock, i64 %70)
  %72 = load %struct.pmf_device*, %struct.pmf_device** %8, align 8
  %73 = getelementptr inbounds %struct.pmf_device, %struct.pmf_device* %72, i32 0, i32 0
  %74 = call i32 @list_add(i32* %73, i32* @pmf_devices)
  %75 = load i64, i64* %9, align 8
  %76 = call i32 @spin_unlock_irqrestore(i32* @pmf_lock, i64 %75)
  store i32 0, i32* %4, align 4
  br label %77

77:                                               ; preds = %69, %61, %38, %27, %13
  %78 = load i32, i32* %4, align 4
  ret i32 %78
}

declare dso_local i32 @DBG(i8*, ...) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.pmf_device* @pmf_find_device(%struct.device_node*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @pmf_put_device(%struct.pmf_device*) #1

declare dso_local %struct.pmf_device* @kzalloc(i32, i32) #1

declare dso_local i32 @kref_init(i32*) #1

declare dso_local i32 @of_node_get(%struct.device_node*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @pmf_add_functions(%struct.pmf_device*, i8*) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

declare dso_local i32 @kfree(%struct.pmf_device*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
