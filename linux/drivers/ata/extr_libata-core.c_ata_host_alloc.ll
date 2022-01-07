; ModuleID = '/home/carl/AnghaBench/linux/drivers/ata/extr_libata-core.c_ata_host_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ata/extr_libata-core.c_ata_host_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_host = type { i32, %struct.ata_port**, i32, %struct.device*, i32, i32 }
%struct.ata_port = type { i32 }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"ENTER\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ata_devres_release = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ata_host* @ata_host_alloc(%struct.device* %0, i32 %1) #0 {
  %3 = alloca %struct.ata_host*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ata_host*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.ata_port*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = call i32 @DPRINTK(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %12 = load i32, i32* %5, align 4
  %13 = add nsw i32 %12, 1
  %14 = sext i32 %13 to i64
  %15 = mul i64 %14, 8
  %16 = add i64 40, %15
  store i64 %16, i64* %7, align 8
  %17 = load i64, i64* %7, align 8
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call %struct.ata_host* @kzalloc(i64 %17, i32 %18)
  store %struct.ata_host* %19, %struct.ata_host** %6, align 8
  %20 = load %struct.ata_host*, %struct.ata_host** %6, align 8
  %21 = icmp ne %struct.ata_host* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %2
  store %struct.ata_host* null, %struct.ata_host** %3, align 8
  br label %92

23:                                               ; preds = %2
  %24 = load %struct.device*, %struct.device** %4, align 8
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = call i32 @devres_open_group(%struct.device* %24, i32* null, i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %23
  br label %89

29:                                               ; preds = %23
  %30 = load i32, i32* @ata_devres_release, align 4
  %31 = load i32, i32* @GFP_KERNEL, align 4
  %32 = call i8* @devres_alloc(i32 %30, i32 0, i32 %31)
  store i8* %32, i8** %9, align 8
  %33 = load i8*, i8** %9, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %29
  br label %86

36:                                               ; preds = %29
  %37 = load %struct.device*, %struct.device** %4, align 8
  %38 = load i8*, i8** %9, align 8
  %39 = call i32 @devres_add(%struct.device* %37, i8* %38)
  %40 = load %struct.device*, %struct.device** %4, align 8
  %41 = load %struct.ata_host*, %struct.ata_host** %6, align 8
  %42 = call i32 @dev_set_drvdata(%struct.device* %40, %struct.ata_host* %41)
  %43 = load %struct.ata_host*, %struct.ata_host** %6, align 8
  %44 = getelementptr inbounds %struct.ata_host, %struct.ata_host* %43, i32 0, i32 5
  %45 = call i32 @spin_lock_init(i32* %44)
  %46 = load %struct.ata_host*, %struct.ata_host** %6, align 8
  %47 = getelementptr inbounds %struct.ata_host, %struct.ata_host* %46, i32 0, i32 4
  %48 = call i32 @mutex_init(i32* %47)
  %49 = load %struct.device*, %struct.device** %4, align 8
  %50 = load %struct.ata_host*, %struct.ata_host** %6, align 8
  %51 = getelementptr inbounds %struct.ata_host, %struct.ata_host* %50, i32 0, i32 3
  store %struct.device* %49, %struct.device** %51, align 8
  %52 = load i32, i32* %5, align 4
  %53 = load %struct.ata_host*, %struct.ata_host** %6, align 8
  %54 = getelementptr inbounds %struct.ata_host, %struct.ata_host* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 8
  %55 = load %struct.ata_host*, %struct.ata_host** %6, align 8
  %56 = getelementptr inbounds %struct.ata_host, %struct.ata_host* %55, i32 0, i32 2
  %57 = call i32 @kref_init(i32* %56)
  store i32 0, i32* %8, align 4
  br label %58

58:                                               ; preds = %79, %36
  %59 = load i32, i32* %8, align 4
  %60 = load i32, i32* %5, align 4
  %61 = icmp slt i32 %59, %60
  br i1 %61, label %62, label %82

62:                                               ; preds = %58
  %63 = load %struct.ata_host*, %struct.ata_host** %6, align 8
  %64 = call %struct.ata_port* @ata_port_alloc(%struct.ata_host* %63)
  store %struct.ata_port* %64, %struct.ata_port** %10, align 8
  %65 = load %struct.ata_port*, %struct.ata_port** %10, align 8
  %66 = icmp ne %struct.ata_port* %65, null
  br i1 %66, label %68, label %67

67:                                               ; preds = %62
  br label %86

68:                                               ; preds = %62
  %69 = load i32, i32* %8, align 4
  %70 = load %struct.ata_port*, %struct.ata_port** %10, align 8
  %71 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 4
  %72 = load %struct.ata_port*, %struct.ata_port** %10, align 8
  %73 = load %struct.ata_host*, %struct.ata_host** %6, align 8
  %74 = getelementptr inbounds %struct.ata_host, %struct.ata_host* %73, i32 0, i32 1
  %75 = load %struct.ata_port**, %struct.ata_port*** %74, align 8
  %76 = load i32, i32* %8, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.ata_port*, %struct.ata_port** %75, i64 %77
  store %struct.ata_port* %72, %struct.ata_port** %78, align 8
  br label %79

79:                                               ; preds = %68
  %80 = load i32, i32* %8, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %8, align 4
  br label %58

82:                                               ; preds = %58
  %83 = load %struct.device*, %struct.device** %4, align 8
  %84 = call i32 @devres_remove_group(%struct.device* %83, i32* null)
  %85 = load %struct.ata_host*, %struct.ata_host** %6, align 8
  store %struct.ata_host* %85, %struct.ata_host** %3, align 8
  br label %92

86:                                               ; preds = %67, %35
  %87 = load %struct.device*, %struct.device** %4, align 8
  %88 = call i32 @devres_release_group(%struct.device* %87, i32* null)
  br label %89

89:                                               ; preds = %86, %28
  %90 = load %struct.ata_host*, %struct.ata_host** %6, align 8
  %91 = call i32 @kfree(%struct.ata_host* %90)
  store %struct.ata_host* null, %struct.ata_host** %3, align 8
  br label %92

92:                                               ; preds = %89, %82, %22
  %93 = load %struct.ata_host*, %struct.ata_host** %3, align 8
  ret %struct.ata_host* %93
}

declare dso_local i32 @DPRINTK(i8*) #1

declare dso_local %struct.ata_host* @kzalloc(i64, i32) #1

declare dso_local i32 @devres_open_group(%struct.device*, i32*, i32) #1

declare dso_local i8* @devres_alloc(i32, i32, i32) #1

declare dso_local i32 @devres_add(%struct.device*, i8*) #1

declare dso_local i32 @dev_set_drvdata(%struct.device*, %struct.ata_host*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @kref_init(i32*) #1

declare dso_local %struct.ata_port* @ata_port_alloc(%struct.ata_host*) #1

declare dso_local i32 @devres_remove_group(%struct.device*, i32*) #1

declare dso_local i32 @devres_release_group(%struct.device*, i32*) #1

declare dso_local i32 @kfree(%struct.ata_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
