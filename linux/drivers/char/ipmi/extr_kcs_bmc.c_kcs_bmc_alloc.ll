; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/ipmi/extr_kcs_bmc.c_kcs_bmc_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/ipmi/extr_kcs_bmc.c_kcs_bmc_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kcs_bmc = type { %struct.TYPE_2__, i8*, i8*, i8*, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32*, i32, i32 }
%struct.device = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@KCS_MSG_BUFSIZ = common dso_local global i32 0, align 4
@MISC_DYNAMIC_MINOR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"%s%u\00", align 1
@DEVICE_NAME = common dso_local global i32 0, align 4
@kcs_bmc_fops = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.kcs_bmc* @kcs_bmc_alloc(%struct.device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.kcs_bmc*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.kcs_bmc*, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load %struct.device*, %struct.device** %5, align 8
  %10 = load i32, i32* %6, align 4
  %11 = sext i32 %10 to i64
  %12 = add i64 56, %11
  %13 = trunc i64 %12 to i32
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.kcs_bmc* @devm_kzalloc(%struct.device* %9, i32 %13, i32 %14)
  store %struct.kcs_bmc* %15, %struct.kcs_bmc** %8, align 8
  %16 = load %struct.kcs_bmc*, %struct.kcs_bmc** %8, align 8
  %17 = icmp ne %struct.kcs_bmc* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %3
  store %struct.kcs_bmc* null, %struct.kcs_bmc** %4, align 8
  br label %88

19:                                               ; preds = %3
  %20 = load %struct.kcs_bmc*, %struct.kcs_bmc** %8, align 8
  %21 = getelementptr inbounds %struct.kcs_bmc, %struct.kcs_bmc* %20, i32 0, i32 7
  %22 = call i32 @spin_lock_init(i32* %21)
  %23 = load i32, i32* %7, align 4
  %24 = load %struct.kcs_bmc*, %struct.kcs_bmc** %8, align 8
  %25 = getelementptr inbounds %struct.kcs_bmc, %struct.kcs_bmc* %24, i32 0, i32 6
  store i32 %23, i32* %25, align 8
  %26 = load %struct.kcs_bmc*, %struct.kcs_bmc** %8, align 8
  %27 = getelementptr inbounds %struct.kcs_bmc, %struct.kcs_bmc* %26, i32 0, i32 5
  %28 = call i32 @mutex_init(i32* %27)
  %29 = load %struct.kcs_bmc*, %struct.kcs_bmc** %8, align 8
  %30 = getelementptr inbounds %struct.kcs_bmc, %struct.kcs_bmc* %29, i32 0, i32 4
  %31 = call i32 @init_waitqueue_head(i32* %30)
  %32 = load %struct.device*, %struct.device** %5, align 8
  %33 = load i32, i32* @KCS_MSG_BUFSIZ, align 4
  %34 = load i32, i32* @GFP_KERNEL, align 4
  %35 = call i8* @devm_kmalloc(%struct.device* %32, i32 %33, i32 %34)
  %36 = load %struct.kcs_bmc*, %struct.kcs_bmc** %8, align 8
  %37 = getelementptr inbounds %struct.kcs_bmc, %struct.kcs_bmc* %36, i32 0, i32 3
  store i8* %35, i8** %37, align 8
  %38 = load %struct.device*, %struct.device** %5, align 8
  %39 = load i32, i32* @KCS_MSG_BUFSIZ, align 4
  %40 = load i32, i32* @GFP_KERNEL, align 4
  %41 = call i8* @devm_kmalloc(%struct.device* %38, i32 %39, i32 %40)
  %42 = load %struct.kcs_bmc*, %struct.kcs_bmc** %8, align 8
  %43 = getelementptr inbounds %struct.kcs_bmc, %struct.kcs_bmc* %42, i32 0, i32 2
  store i8* %41, i8** %43, align 8
  %44 = load %struct.device*, %struct.device** %5, align 8
  %45 = load i32, i32* @KCS_MSG_BUFSIZ, align 4
  %46 = load i32, i32* @GFP_KERNEL, align 4
  %47 = call i8* @devm_kmalloc(%struct.device* %44, i32 %45, i32 %46)
  %48 = load %struct.kcs_bmc*, %struct.kcs_bmc** %8, align 8
  %49 = getelementptr inbounds %struct.kcs_bmc, %struct.kcs_bmc* %48, i32 0, i32 1
  store i8* %47, i8** %49, align 8
  %50 = load i32, i32* @MISC_DYNAMIC_MINOR, align 4
  %51 = load %struct.kcs_bmc*, %struct.kcs_bmc** %8, align 8
  %52 = getelementptr inbounds %struct.kcs_bmc, %struct.kcs_bmc* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 2
  store i32 %50, i32* %53, align 4
  %54 = load %struct.device*, %struct.device** %5, align 8
  %55 = load i32, i32* @GFP_KERNEL, align 4
  %56 = load i32, i32* @DEVICE_NAME, align 4
  %57 = load i32, i32* %7, align 4
  %58 = call i32 @devm_kasprintf(%struct.device* %54, i32 %55, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %56, i32 %57)
  %59 = load %struct.kcs_bmc*, %struct.kcs_bmc** %8, align 8
  %60 = getelementptr inbounds %struct.kcs_bmc, %struct.kcs_bmc* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 1
  store i32 %58, i32* %61, align 8
  %62 = load %struct.kcs_bmc*, %struct.kcs_bmc** %8, align 8
  %63 = getelementptr inbounds %struct.kcs_bmc, %struct.kcs_bmc* %62, i32 0, i32 3
  %64 = load i8*, i8** %63, align 8
  %65 = icmp ne i8* %64, null
  br i1 %65, label %66, label %82

66:                                               ; preds = %19
  %67 = load %struct.kcs_bmc*, %struct.kcs_bmc** %8, align 8
  %68 = getelementptr inbounds %struct.kcs_bmc, %struct.kcs_bmc* %67, i32 0, i32 2
  %69 = load i8*, i8** %68, align 8
  %70 = icmp ne i8* %69, null
  br i1 %70, label %71, label %82

71:                                               ; preds = %66
  %72 = load %struct.kcs_bmc*, %struct.kcs_bmc** %8, align 8
  %73 = getelementptr inbounds %struct.kcs_bmc, %struct.kcs_bmc* %72, i32 0, i32 1
  %74 = load i8*, i8** %73, align 8
  %75 = icmp ne i8* %74, null
  br i1 %75, label %76, label %82

76:                                               ; preds = %71
  %77 = load %struct.kcs_bmc*, %struct.kcs_bmc** %8, align 8
  %78 = getelementptr inbounds %struct.kcs_bmc, %struct.kcs_bmc* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %83, label %82

82:                                               ; preds = %76, %71, %66, %19
  store %struct.kcs_bmc* null, %struct.kcs_bmc** %4, align 8
  br label %88

83:                                               ; preds = %76
  %84 = load %struct.kcs_bmc*, %struct.kcs_bmc** %8, align 8
  %85 = getelementptr inbounds %struct.kcs_bmc, %struct.kcs_bmc* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 0
  store i32* @kcs_bmc_fops, i32** %86, align 8
  %87 = load %struct.kcs_bmc*, %struct.kcs_bmc** %8, align 8
  store %struct.kcs_bmc* %87, %struct.kcs_bmc** %4, align 8
  br label %88

88:                                               ; preds = %83, %82, %18
  %89 = load %struct.kcs_bmc*, %struct.kcs_bmc** %4, align 8
  ret %struct.kcs_bmc* %89
}

declare dso_local %struct.kcs_bmc* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i8* @devm_kmalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @devm_kasprintf(%struct.device*, i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
