; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_actlog.c___drbd_change_sync.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/drbd/extr_drbd_actlog.c___drbd_change_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drbd_device = type { i32 }

@SET_OUT_OF_SYNC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"%s: sector=%llus size=%d nonsense!\0A\00", align 1
@drbd_change_sync_fname = common dso_local global i32* null, align 8
@SET_IN_SYNC = common dso_local global i32 0, align 4
@BM_SECT_PER_BIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__drbd_change_sync(%struct.drbd_device* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.drbd_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.drbd_device* %0, %struct.drbd_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i64 0, i64* %13, align 8
  %16 = load i32, i32* %9, align 4
  %17 = load i32, i32* @SET_OUT_OF_SYNC, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %23

19:                                               ; preds = %4
  %20 = load i32, i32* %8, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %19
  store i32 0, i32* %5, align 4
  br label %124

23:                                               ; preds = %19, %4
  %24 = load i32, i32* %8, align 4
  %25 = call i32 @plausible_request_size(i32 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %38, label %27

27:                                               ; preds = %23
  %28 = load %struct.drbd_device*, %struct.drbd_device** %6, align 8
  %29 = load i32*, i32** @drbd_change_sync_fname, align 8
  %30 = load i32, i32* %9, align 4
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %7, align 4
  %35 = sext i32 %34 to i64
  %36 = load i32, i32* %8, align 4
  %37 = call i32 @drbd_err(%struct.drbd_device* %28, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %33, i64 %35, i32 %36)
  store i32 0, i32* %5, align 4
  br label %124

38:                                               ; preds = %23
  %39 = load %struct.drbd_device*, %struct.drbd_device** %6, align 8
  %40 = call i32 @get_ldev(%struct.drbd_device* %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %38
  store i32 0, i32* %5, align 4
  br label %124

43:                                               ; preds = %38
  %44 = load %struct.drbd_device*, %struct.drbd_device** %6, align 8
  %45 = getelementptr inbounds %struct.drbd_device, %struct.drbd_device* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @drbd_get_capacity(i32 %46)
  store i32 %47, i32* %15, align 4
  %48 = load i32, i32* %7, align 4
  %49 = load i32, i32* %8, align 4
  %50 = ashr i32 %49, 9
  %51 = add nsw i32 %48, %50
  %52 = sub nsw i32 %51, 1
  store i32 %52, i32* %14, align 4
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* %15, align 4
  %55 = icmp slt i32 %53, %54
  %56 = zext i1 %55 to i32
  %57 = call i32 @expect(i32 %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %43
  br label %119

60:                                               ; preds = %43
  %61 = load i32, i32* %14, align 4
  %62 = load i32, i32* %15, align 4
  %63 = icmp slt i32 %61, %62
  %64 = zext i1 %63 to i32
  %65 = call i32 @expect(i32 %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %70, label %67

67:                                               ; preds = %60
  %68 = load i32, i32* %15, align 4
  %69 = sub nsw i32 %68, 1
  store i32 %69, i32* %14, align 4
  br label %70

70:                                               ; preds = %67, %60
  %71 = load i32, i32* %15, align 4
  %72 = sub nsw i32 %71, 1
  %73 = call i64 @BM_SECT_TO_BIT(i32 %72)
  store i64 %73, i64* %12, align 8
  %74 = load i32, i32* %9, align 4
  %75 = load i32, i32* @SET_IN_SYNC, align 4
  %76 = icmp eq i32 %74, %75
  br i1 %76, label %77, label %108

77:                                               ; preds = %70
  %78 = load i32, i32* %14, align 4
  %79 = load i32, i32* @BM_SECT_PER_BIT, align 4
  %80 = sub nsw i32 %79, 1
  %81 = icmp slt i32 %78, %80
  %82 = zext i1 %81 to i32
  %83 = call i64 @unlikely(i32 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %77
  br label %119

86:                                               ; preds = %77
  %87 = load i32, i32* %14, align 4
  %88 = load i32, i32* %15, align 4
  %89 = sub nsw i32 %88, 1
  %90 = icmp eq i32 %87, %89
  %91 = zext i1 %90 to i32
  %92 = call i64 @unlikely(i32 %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %86
  %95 = load i64, i64* %12, align 8
  store i64 %95, i64* %11, align 8
  br label %102

96:                                               ; preds = %86
  %97 = load i32, i32* %14, align 4
  %98 = load i32, i32* @BM_SECT_PER_BIT, align 4
  %99 = sub nsw i32 %98, 1
  %100 = sub nsw i32 %97, %99
  %101 = call i64 @BM_SECT_TO_BIT(i32 %100)
  store i64 %101, i64* %11, align 8
  br label %102

102:                                              ; preds = %96, %94
  %103 = load i32, i32* %7, align 4
  %104 = load i32, i32* @BM_SECT_PER_BIT, align 4
  %105 = add nsw i32 %103, %104
  %106 = sub nsw i32 %105, 1
  %107 = call i64 @BM_SECT_TO_BIT(i32 %106)
  store i64 %107, i64* %10, align 8
  br label %113

108:                                              ; preds = %70
  %109 = load i32, i32* %7, align 4
  %110 = call i64 @BM_SECT_TO_BIT(i32 %109)
  store i64 %110, i64* %10, align 8
  %111 = load i32, i32* %14, align 4
  %112 = call i64 @BM_SECT_TO_BIT(i32 %111)
  store i64 %112, i64* %11, align 8
  br label %113

113:                                              ; preds = %108, %102
  %114 = load %struct.drbd_device*, %struct.drbd_device** %6, align 8
  %115 = load i64, i64* %10, align 8
  %116 = load i64, i64* %11, align 8
  %117 = load i32, i32* %9, align 4
  %118 = call i64 @update_sync_bits(%struct.drbd_device* %114, i64 %115, i64 %116, i32 %117)
  store i64 %118, i64* %13, align 8
  br label %119

119:                                              ; preds = %113, %85, %59
  %120 = load %struct.drbd_device*, %struct.drbd_device** %6, align 8
  %121 = call i32 @put_ldev(%struct.drbd_device* %120)
  %122 = load i64, i64* %13, align 8
  %123 = trunc i64 %122 to i32
  store i32 %123, i32* %5, align 4
  br label %124

124:                                              ; preds = %119, %42, %27, %22
  %125 = load i32, i32* %5, align 4
  ret i32 %125
}

declare dso_local i32 @plausible_request_size(i32) #1

declare dso_local i32 @drbd_err(%struct.drbd_device*, i8*, i32, i64, i32) #1

declare dso_local i32 @get_ldev(%struct.drbd_device*) #1

declare dso_local i32 @drbd_get_capacity(i32) #1

declare dso_local i32 @expect(i32) #1

declare dso_local i64 @BM_SECT_TO_BIT(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @update_sync_bits(%struct.drbd_device*, i64, i64, i32) #1

declare dso_local i32 @put_ldev(%struct.drbd_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
