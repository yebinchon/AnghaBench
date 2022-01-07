; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/powernv/extr_opal-fadump.c_opal_fadump_register.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/powernv/extr_opal-fadump.c_opal_fadump_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.fw_dump = type { i32, i32, i32 }

@EIO = common dso_local global i32 0, align 4
@opal_fdm = common dso_local global %struct.TYPE_4__* null, align 8
@OPAL_MPIPL_ADD_RANGE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Registration is successful!\0A\00", align 1
@.str.1 = private unnamed_addr constant [71 x i8] c"%d regions could not be registered for MPIPL as MAX limit is reached!\0A\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"Failed to register. Parameter Error(%lld).\0A\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"Support not available.\0A\00", align 1
@.str.4 = private unnamed_addr constant [42 x i8] c"Failed to register. Unknown Error(%lld).\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fw_dump*)* @opal_fadump_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @opal_fadump_register(%struct.fw_dump* %0) #0 {
  %2 = alloca %struct.fw_dump*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.fw_dump* %0, %struct.fw_dump** %2, align 8
  store i32 130, i32* %3, align 4
  %6 = load i32, i32* @EIO, align 4
  %7 = sub nsw i32 0, %6
  store i32 %7, i32* %5, align 4
  store i32 0, i32* %4, align 4
  br label %8

8:                                                ; preds = %49, %1
  %9 = load i32, i32* %4, align 4
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** @opal_fdm, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp slt i32 %9, %12
  br i1 %13, label %14, label %52

14:                                               ; preds = %8
  %15 = load i32, i32* @OPAL_MPIPL_ADD_RANGE, align 4
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** @opal_fdm, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 2
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = load i32, i32* %4, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** @opal_fdm, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 2
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = load i32, i32* %4, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** @opal_fdm, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 2
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  %35 = load i32, i32* %4, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @opal_mpipl_update(i32 %15, i32 %23, i32 %31, i32 %39)
  store i32 %40, i32* %3, align 4
  %41 = load i32, i32* %3, align 4
  %42 = icmp ne i32 %41, 128
  br i1 %42, label %43, label %44

43:                                               ; preds = %14
  br label %52

44:                                               ; preds = %14
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** @opal_fdm, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = add nsw i64 %47, 1
  store i64 %48, i64* %46, align 8
  br label %49

49:                                               ; preds = %44
  %50 = load i32, i32* %4, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %4, align 4
  br label %8

52:                                               ; preds = %43, %8
  %53 = load i32, i32* %3, align 4
  switch i32 %53, label %79 [
    i32 128, label %54
    i32 129, label %58
    i32 130, label %70
    i32 131, label %73
  ]

54:                                               ; preds = %52
  %55 = call i32 @pr_info(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %56 = load %struct.fw_dump*, %struct.fw_dump** %2, align 8
  %57 = getelementptr inbounds %struct.fw_dump, %struct.fw_dump* %56, i32 0, i32 0
  store i32 1, i32* %57, align 4
  store i32 0, i32* %5, align 4
  br label %82

58:                                               ; preds = %52
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** @opal_fdm, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = sext i32 %61 to i64
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** @opal_fdm, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = sub nsw i64 %62, %65
  %67 = call i32 @pr_warn(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.1, i64 0, i64 0), i64 %66)
  %68 = load %struct.fw_dump*, %struct.fw_dump** %2, align 8
  %69 = getelementptr inbounds %struct.fw_dump, %struct.fw_dump* %68, i32 0, i32 0
  store i32 1, i32* %69, align 4
  store i32 0, i32* %5, align 4
  br label %82

70:                                               ; preds = %52
  %71 = load i32, i32* %3, align 4
  %72 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i32 %71)
  br label %82

73:                                               ; preds = %52
  %74 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  %75 = load %struct.fw_dump*, %struct.fw_dump** %2, align 8
  %76 = getelementptr inbounds %struct.fw_dump, %struct.fw_dump* %75, i32 0, i32 2
  store i32 0, i32* %76, align 4
  %77 = load %struct.fw_dump*, %struct.fw_dump** %2, align 8
  %78 = getelementptr inbounds %struct.fw_dump, %struct.fw_dump* %77, i32 0, i32 1
  store i32 0, i32* %78, align 4
  br label %82

79:                                               ; preds = %52
  %80 = load i32, i32* %3, align 4
  %81 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0), i32 %80)
  br label %82

82:                                               ; preds = %79, %73, %70, %58, %54
  %83 = load i32, i32* %5, align 4
  %84 = icmp slt i32 %83, 0
  br i1 %84, label %85, label %93

85:                                               ; preds = %82
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** @opal_fdm, align 8
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = icmp sgt i64 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %85
  %91 = load %struct.fw_dump*, %struct.fw_dump** %2, align 8
  %92 = call i32 @opal_fadump_unregister(%struct.fw_dump* %91)
  br label %93

93:                                               ; preds = %90, %85, %82
  %94 = load i32, i32* %5, align 4
  ret i32 %94
}

declare dso_local i32 @opal_mpipl_update(i32, i32, i32, i32) #1

declare dso_local i32 @pr_info(i8*) #1

declare dso_local i32 @pr_warn(i8*, i64) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i32 @opal_fadump_unregister(%struct.fw_dump*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
