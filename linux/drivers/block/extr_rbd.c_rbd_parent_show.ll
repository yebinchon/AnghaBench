; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_rbd.c_rbd_parent_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_rbd.c_rbd_parent_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.rbd_device = type { i32, %struct.rbd_spec*, %struct.rbd_device* }
%struct.rbd_spec = type { i8*, i8*, i64, i32, i32, i64, i32 }

@.str = private unnamed_addr constant [19 x i8] c"(no parent image)\0A\00", align 1
@.str.1 = private unnamed_addr constant [105 x i8] c"%spool_id %llu\0Apool_name %s\0Apool_ns %s\0Aimage_id %s\0Aimage_name %s\0Asnap_id %llu\0Asnap_name %s\0Aoverlap %llu\0A\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"(unknown)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*)* @rbd_parent_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @rbd_parent_show(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.rbd_device*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.rbd_spec*, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = load %struct.device*, %struct.device** %5, align 8
  %12 = call %struct.rbd_device* @dev_to_rbd_dev(%struct.device* %11)
  store %struct.rbd_device* %12, %struct.rbd_device** %8, align 8
  store i64 0, i64* %9, align 8
  %13 = load %struct.rbd_device*, %struct.rbd_device** %8, align 8
  %14 = getelementptr inbounds %struct.rbd_device, %struct.rbd_device* %13, i32 0, i32 2
  %15 = load %struct.rbd_device*, %struct.rbd_device** %14, align 8
  %16 = icmp ne %struct.rbd_device* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %3
  %18 = load i8*, i8** %7, align 8
  %19 = call i64 (i8*, i8*, ...) @sprintf(i8* %18, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  store i64 %19, i64* %4, align 8
  br label %83

20:                                               ; preds = %3
  br label %21

21:                                               ; preds = %77, %20
  %22 = load %struct.rbd_device*, %struct.rbd_device** %8, align 8
  %23 = getelementptr inbounds %struct.rbd_device, %struct.rbd_device* %22, i32 0, i32 2
  %24 = load %struct.rbd_device*, %struct.rbd_device** %23, align 8
  %25 = icmp ne %struct.rbd_device* %24, null
  br i1 %25, label %26, label %81

26:                                               ; preds = %21
  %27 = load %struct.rbd_device*, %struct.rbd_device** %8, align 8
  %28 = getelementptr inbounds %struct.rbd_device, %struct.rbd_device* %27, i32 0, i32 1
  %29 = load %struct.rbd_spec*, %struct.rbd_spec** %28, align 8
  store %struct.rbd_spec* %29, %struct.rbd_spec** %10, align 8
  %30 = load i8*, i8** %7, align 8
  %31 = load i64, i64* %9, align 8
  %32 = getelementptr inbounds i8, i8* %30, i64 %31
  %33 = load i64, i64* %9, align 8
  %34 = icmp ne i64 %33, 0
  %35 = xor i1 %34, true
  %36 = zext i1 %35 to i64
  %37 = select i1 %35, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)
  %38 = load %struct.rbd_spec*, %struct.rbd_spec** %10, align 8
  %39 = getelementptr inbounds %struct.rbd_spec, %struct.rbd_spec* %38, i32 0, i32 0
  %40 = load i8*, i8** %39, align 8
  %41 = load %struct.rbd_spec*, %struct.rbd_spec** %10, align 8
  %42 = getelementptr inbounds %struct.rbd_spec, %struct.rbd_spec* %41, i32 0, i32 1
  %43 = load i8*, i8** %42, align 8
  %44 = load %struct.rbd_spec*, %struct.rbd_spec** %10, align 8
  %45 = getelementptr inbounds %struct.rbd_spec, %struct.rbd_spec* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %26
  %49 = inttoptr i64 %46 to i8*
  br label %51

50:                                               ; preds = %26
  br label %51

51:                                               ; preds = %50, %48
  %52 = phi i8* [ %49, %48 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), %50 ]
  %53 = load %struct.rbd_spec*, %struct.rbd_spec** %10, align 8
  %54 = getelementptr inbounds %struct.rbd_spec, %struct.rbd_spec* %53, i32 0, i32 6
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.rbd_spec*, %struct.rbd_spec** %10, align 8
  %57 = getelementptr inbounds %struct.rbd_spec, %struct.rbd_spec* %56, i32 0, i32 5
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %51
  %61 = inttoptr i64 %58 to i8*
  br label %63

62:                                               ; preds = %51
  br label %63

63:                                               ; preds = %62, %60
  %64 = phi i8* [ %61, %60 ], [ getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), %62 ]
  %65 = load %struct.rbd_spec*, %struct.rbd_spec** %10, align 8
  %66 = getelementptr inbounds %struct.rbd_spec, %struct.rbd_spec* %65, i32 0, i32 4
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.rbd_spec*, %struct.rbd_spec** %10, align 8
  %69 = getelementptr inbounds %struct.rbd_spec, %struct.rbd_spec* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.rbd_device*, %struct.rbd_device** %8, align 8
  %72 = getelementptr inbounds %struct.rbd_device, %struct.rbd_device* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = call i64 (i8*, i8*, ...) @sprintf(i8* %32, i8* getelementptr inbounds ([105 x i8], [105 x i8]* @.str.1, i64 0, i64 0), i8* %37, i8* %40, i8* %43, i8* %52, i32 %55, i8* %64, i32 %67, i32 %70, i32 %73)
  %75 = load i64, i64* %9, align 8
  %76 = add i64 %75, %74
  store i64 %76, i64* %9, align 8
  br label %77

77:                                               ; preds = %63
  %78 = load %struct.rbd_device*, %struct.rbd_device** %8, align 8
  %79 = getelementptr inbounds %struct.rbd_device, %struct.rbd_device* %78, i32 0, i32 2
  %80 = load %struct.rbd_device*, %struct.rbd_device** %79, align 8
  store %struct.rbd_device* %80, %struct.rbd_device** %8, align 8
  br label %21

81:                                               ; preds = %21
  %82 = load i64, i64* %9, align 8
  store i64 %82, i64* %4, align 8
  br label %83

83:                                               ; preds = %81, %17
  %84 = load i64, i64* %4, align 8
  ret i64 %84
}

declare dso_local %struct.rbd_device* @dev_to_rbd_dev(%struct.device*) #1

declare dso_local i64 @sprintf(i8*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
