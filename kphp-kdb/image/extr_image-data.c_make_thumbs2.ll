; ModuleID = '/home/carl/AnghaBench/kphp-kdb/image/extr_image-data.c_make_thumbs2.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/image/extr_image-data.c_make_thumbs2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, i32 }
%struct.thumb2 = type { i32, i32, i32 }
%struct.forth_stack = type { i32 }
%struct.TYPE_15__ = type { i32, i32 }

@THUMB2_RESIZE_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"GENERATE_THUMBS2: gm_resize_image fail. %s\00", align 1
@THUMB2_CROP_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"GENERATE_THUMBS2: gm_crop_image fail. %s\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"GENERATE_THUMBS2: write_image fail. %s\00", align 1
@FORTH_PASS = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_16__*, %struct.thumb2*, %struct.forth_stack*, i32, i32)* @make_thumbs2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @make_thumbs2(%struct.TYPE_16__* %0, %struct.thumb2* %1, %struct.forth_stack* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_16__*, align 8
  %8 = alloca %struct.thumb2*, align 8
  %9 = alloca %struct.forth_stack*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_15__, align 4
  %15 = alloca %struct.TYPE_15__, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_16__*, align 8
  %18 = alloca %struct.TYPE_16__*, align 8
  %19 = alloca %struct.TYPE_16__*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %7, align 8
  store %struct.thumb2* %1, %struct.thumb2** %8, align 8
  store %struct.forth_stack* %2, %struct.forth_stack** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %20 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %12, align 4
  %23 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %13, align 4
  %26 = load i32, i32* %12, align 4
  %27 = load i32, i32* %13, align 4
  %28 = load %struct.thumb2*, %struct.thumb2** %8, align 8
  %29 = call i32 @get_thumb2_transforms(i32 %26, i32 %27, %struct.thumb2* %28, %struct.TYPE_15__* %14, %struct.TYPE_15__* %15)
  store i32 %29, i32* %16, align 4
  %30 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %31 = call %struct.TYPE_16__* @ReferenceImage(%struct.TYPE_16__* %30)
  store %struct.TYPE_16__* %31, %struct.TYPE_16__** %17, align 8
  %32 = load i32, i32* %16, align 4
  %33 = load i32, i32* @THUMB2_RESIZE_MASK, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %59

36:                                               ; preds = %5
  %37 = load %struct.forth_stack*, %struct.forth_stack** %9, align 8
  %38 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %39 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %14, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %14, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %10, align 4
  %44 = call %struct.TYPE_16__* @gm_resize_image(%struct.forth_stack* %37, %struct.TYPE_16__* %38, i32 %40, i32 %42, i32 0, i32 %43)
  store %struct.TYPE_16__* %44, %struct.TYPE_16__** %18, align 8
  %45 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  %46 = icmp eq %struct.TYPE_16__* %45, null
  br i1 %46, label %47, label %55

47:                                               ; preds = %36
  %48 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %49 = call i32 @DestroyImage(%struct.TYPE_16__* %48)
  %50 = load %struct.forth_stack*, %struct.forth_stack** %9, align 8
  %51 = load %struct.thumb2*, %struct.thumb2** %8, align 8
  %52 = getelementptr inbounds %struct.thumb2, %struct.thumb2* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i8* @failf(%struct.forth_stack* %50, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %53)
  store i8* %54, i8** %6, align 8
  br label %107

55:                                               ; preds = %36
  %56 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %57 = call i32 @DestroyImage(%struct.TYPE_16__* %56)
  %58 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  store %struct.TYPE_16__* %58, %struct.TYPE_16__** %17, align 8
  br label %59

59:                                               ; preds = %55, %5
  %60 = load i32, i32* %16, align 4
  %61 = load i32, i32* @THUMB2_CROP_MASK, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %82

64:                                               ; preds = %59
  %65 = load %struct.forth_stack*, %struct.forth_stack** %9, align 8
  %66 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %67 = call %struct.TYPE_16__* @gm_crop_image(%struct.forth_stack* %65, %struct.TYPE_16__* %66, %struct.TYPE_15__* %15)
  store %struct.TYPE_16__* %67, %struct.TYPE_16__** %19, align 8
  %68 = load %struct.TYPE_16__*, %struct.TYPE_16__** %19, align 8
  %69 = icmp eq %struct.TYPE_16__* %68, null
  br i1 %69, label %70, label %78

70:                                               ; preds = %64
  %71 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %72 = call i32 @DestroyImage(%struct.TYPE_16__* %71)
  %73 = load %struct.forth_stack*, %struct.forth_stack** %9, align 8
  %74 = load %struct.thumb2*, %struct.thumb2** %8, align 8
  %75 = getelementptr inbounds %struct.thumb2, %struct.thumb2* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = call i8* @failf(%struct.forth_stack* %73, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %76)
  store i8* %77, i8** %6, align 8
  br label %107

78:                                               ; preds = %64
  %79 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %80 = call i32 @DestroyImage(%struct.TYPE_16__* %79)
  %81 = load %struct.TYPE_16__*, %struct.TYPE_16__** %19, align 8
  store %struct.TYPE_16__* %81, %struct.TYPE_16__** %17, align 8
  br label %82

82:                                               ; preds = %78, %59
  %83 = load %struct.forth_stack*, %struct.forth_stack** %9, align 8
  %84 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %85 = load %struct.thumb2*, %struct.thumb2** %8, align 8
  %86 = getelementptr inbounds %struct.thumb2, %struct.thumb2* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.thumb2*, %struct.thumb2** %8, align 8
  %89 = getelementptr inbounds %struct.thumb2, %struct.thumb2* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 4
  %91 = call i64 @gm_write_image(%struct.forth_stack* %83, %struct.TYPE_16__* %84, i32 %87, i32 %90)
  %92 = icmp slt i64 %91, 0
  br i1 %92, label %93, label %101

93:                                               ; preds = %82
  %94 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %95 = call i32 @DestroyImage(%struct.TYPE_16__* %94)
  %96 = load %struct.forth_stack*, %struct.forth_stack** %9, align 8
  %97 = load %struct.thumb2*, %struct.thumb2** %8, align 8
  %98 = getelementptr inbounds %struct.thumb2, %struct.thumb2* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = call i8* @failf(%struct.forth_stack* %96, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %99)
  store i8* %100, i8** %6, align 8
  br label %107

101:                                              ; preds = %82
  %102 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  %103 = call i32 @DestroyImage(%struct.TYPE_16__* %102)
  %104 = load %struct.thumb2*, %struct.thumb2** %8, align 8
  %105 = getelementptr inbounds %struct.thumb2, %struct.thumb2* %104, i32 0, i32 0
  store i32 1, i32* %105, align 4
  %106 = load i8*, i8** @FORTH_PASS, align 8
  store i8* %106, i8** %6, align 8
  br label %107

107:                                              ; preds = %101, %93, %70, %47
  %108 = load i8*, i8** %6, align 8
  ret i8* %108
}

declare dso_local i32 @get_thumb2_transforms(i32, i32, %struct.thumb2*, %struct.TYPE_15__*, %struct.TYPE_15__*) #1

declare dso_local %struct.TYPE_16__* @ReferenceImage(%struct.TYPE_16__*) #1

declare dso_local %struct.TYPE_16__* @gm_resize_image(%struct.forth_stack*, %struct.TYPE_16__*, i32, i32, i32, i32) #1

declare dso_local i32 @DestroyImage(%struct.TYPE_16__*) #1

declare dso_local i8* @failf(%struct.forth_stack*, i8*, i32) #1

declare dso_local %struct.TYPE_16__* @gm_crop_image(%struct.forth_stack*, %struct.TYPE_16__*, %struct.TYPE_15__*) #1

declare dso_local i64 @gm_write_image(%struct.forth_stack*, %struct.TYPE_16__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
