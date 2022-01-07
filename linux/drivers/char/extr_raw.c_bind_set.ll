; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/extr_raw.c_bind_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/extr_raw.c_bind_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.raw_device_data = type { i32*, i64 }

@max_raw_minors = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@raw_devices = common dso_local global %struct.raw_device_data* null, align 8
@CAP_SYS_ADMIN = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@raw_mutex = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@raw_class = common dso_local global i32 0, align 4
@RAW_MAJOR = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"raw%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64, i64)* @bind_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bind_set(i32 %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.raw_device_data*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = load i64, i64* %6, align 8
  %13 = load i64, i64* %7, align 8
  %14 = trunc i64 %13 to i32
  %15 = call i64 @MKDEV(i64 %12, i32 %14)
  store i64 %15, i64* %8, align 8
  store i32 0, i32* %10, align 4
  %16 = load i32, i32* %5, align 4
  %17 = icmp sle i32 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %3
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @max_raw_minors, align 4
  %21 = icmp sge i32 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %18, %3
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %121

25:                                               ; preds = %18
  %26 = load i64, i64* %8, align 8
  %27 = call i64 @MAJOR(i64 %26)
  %28 = load i64, i64* %6, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %35, label %30

30:                                               ; preds = %25
  %31 = load i64, i64* %8, align 8
  %32 = call i64 @MINOR(i64 %31)
  %33 = load i64, i64* %7, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %30, %25
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %4, align 4
  br label %121

38:                                               ; preds = %30
  %39 = load %struct.raw_device_data*, %struct.raw_device_data** @raw_devices, align 8
  %40 = load i32, i32* %5, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.raw_device_data, %struct.raw_device_data* %39, i64 %41
  store %struct.raw_device_data* %42, %struct.raw_device_data** %9, align 8
  %43 = load i32, i32* @CAP_SYS_ADMIN, align 4
  %44 = call i32 @capable(i32 %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %38
  %47 = load i32, i32* @EPERM, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %4, align 4
  br label %121

49:                                               ; preds = %38
  %50 = load i64, i64* %8, align 8
  %51 = call i64 @MAJOR(i64 %50)
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %49
  %54 = load i64, i64* %8, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %53
  %57 = load i32, i32* @EINVAL, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %4, align 4
  br label %121

59:                                               ; preds = %53, %49
  %60 = call i32 @mutex_lock(i32* @raw_mutex)
  %61 = load %struct.raw_device_data*, %struct.raw_device_data** %9, align 8
  %62 = getelementptr inbounds %struct.raw_device_data, %struct.raw_device_data* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %59
  %66 = call i32 @mutex_unlock(i32* @raw_mutex)
  %67 = load i32, i32* @EBUSY, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %4, align 4
  br label %121

69:                                               ; preds = %59
  %70 = load %struct.raw_device_data*, %struct.raw_device_data** %9, align 8
  %71 = getelementptr inbounds %struct.raw_device_data, %struct.raw_device_data* %70, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  %73 = icmp ne i32* %72, null
  br i1 %73, label %74, label %81

74:                                               ; preds = %69
  %75 = load %struct.raw_device_data*, %struct.raw_device_data** %9, align 8
  %76 = getelementptr inbounds %struct.raw_device_data, %struct.raw_device_data* %75, i32 0, i32 0
  %77 = load i32*, i32** %76, align 8
  %78 = call i32 @bdput(i32* %77)
  %79 = load i32, i32* @THIS_MODULE, align 4
  %80 = call i32 @module_put(i32 %79)
  br label %81

81:                                               ; preds = %74, %69
  %82 = load i64, i64* %8, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %92, label %84

84:                                               ; preds = %81
  %85 = load %struct.raw_device_data*, %struct.raw_device_data** %9, align 8
  %86 = getelementptr inbounds %struct.raw_device_data, %struct.raw_device_data* %85, i32 0, i32 0
  store i32* null, i32** %86, align 8
  %87 = load i32, i32* @raw_class, align 4
  %88 = load i64, i64* @RAW_MAJOR, align 8
  %89 = load i32, i32* %5, align 4
  %90 = call i64 @MKDEV(i64 %88, i32 %89)
  %91 = call i32 @device_destroy(i32 %87, i64 %90)
  br label %118

92:                                               ; preds = %81
  %93 = load i64, i64* %8, align 8
  %94 = call i32* @bdget(i64 %93)
  %95 = load %struct.raw_device_data*, %struct.raw_device_data** %9, align 8
  %96 = getelementptr inbounds %struct.raw_device_data, %struct.raw_device_data* %95, i32 0, i32 0
  store i32* %94, i32** %96, align 8
  %97 = load %struct.raw_device_data*, %struct.raw_device_data** %9, align 8
  %98 = getelementptr inbounds %struct.raw_device_data, %struct.raw_device_data* %97, i32 0, i32 0
  %99 = load i32*, i32** %98, align 8
  %100 = icmp eq i32* %99, null
  br i1 %100, label %101, label %104

101:                                              ; preds = %92
  %102 = load i32, i32* @ENOMEM, align 4
  %103 = sub nsw i32 0, %102
  store i32 %103, i32* %10, align 4
  br label %117

104:                                              ; preds = %92
  %105 = load i64, i64* @RAW_MAJOR, align 8
  %106 = load i32, i32* %5, align 4
  %107 = call i64 @MKDEV(i64 %105, i32 %106)
  store i64 %107, i64* %11, align 8
  %108 = load i32, i32* @THIS_MODULE, align 4
  %109 = call i32 @__module_get(i32 %108)
  %110 = load i32, i32* @raw_class, align 4
  %111 = load i64, i64* %11, align 8
  %112 = call i32 @device_destroy(i32 %110, i64 %111)
  %113 = load i32, i32* @raw_class, align 4
  %114 = load i64, i64* %11, align 8
  %115 = load i32, i32* %5, align 4
  %116 = call i32 @device_create(i32 %113, i32* null, i64 %114, i32* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %115)
  br label %117

117:                                              ; preds = %104, %101
  br label %118

118:                                              ; preds = %117, %84
  %119 = call i32 @mutex_unlock(i32* @raw_mutex)
  %120 = load i32, i32* %10, align 4
  store i32 %120, i32* %4, align 4
  br label %121

121:                                              ; preds = %118, %65, %56, %46, %35, %22
  %122 = load i32, i32* %4, align 4
  ret i32 %122
}

declare dso_local i64 @MKDEV(i64, i32) #1

declare dso_local i64 @MAJOR(i64) #1

declare dso_local i64 @MINOR(i64) #1

declare dso_local i32 @capable(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @bdput(i32*) #1

declare dso_local i32 @module_put(i32) #1

declare dso_local i32 @device_destroy(i32, i64) #1

declare dso_local i32* @bdget(i64) #1

declare dso_local i32 @__module_get(i32) #1

declare dso_local i32 @device_create(i32, i32*, i64, i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
