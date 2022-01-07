; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_null_blk_main.c_nullb_device_badblocks_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_null_blk_main.c_nullb_device_badblocks_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config_item = type { i32 }
%struct.nullb_device = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.config_item*, i8*, i64)* @nullb_device_badblocks_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nullb_device_badblocks_store(%struct.config_item* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.config_item*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.nullb_device*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.config_item* %0, %struct.config_item** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %15 = load %struct.config_item*, %struct.config_item** %5, align 8
  %16 = call %struct.nullb_device* @to_nullb_device(%struct.config_item* %15)
  store %struct.nullb_device* %16, %struct.nullb_device** %8, align 8
  %17 = load i8*, i8** %6, align 8
  %18 = load i64, i64* %7, align 8
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call i8* @kstrndup(i8* %17, i64 %18, i32 %19)
  store i8* %20, i8** %9, align 8
  %21 = load i8*, i8** %9, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %3
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %4, align 4
  br label %111

26:                                               ; preds = %3
  %27 = load i8*, i8** %9, align 8
  %28 = call i8* @strstrip(i8* %27)
  store i8* %28, i8** %10, align 8
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %14, align 4
  %31 = load i8*, i8** %10, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 0
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp ne i32 %34, 43
  br i1 %35, label %36, label %43

36:                                               ; preds = %26
  %37 = load i8*, i8** %10, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 0
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp ne i32 %40, 45
  br i1 %41, label %42, label %43

42:                                               ; preds = %36
  br label %107

43:                                               ; preds = %36, %26
  %44 = load i8*, i8** %10, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 1
  %46 = call i8* @strchr(i8* %45, i8 signext 45)
  store i8* %46, i8** %11, align 8
  %47 = load i8*, i8** %11, align 8
  %48 = icmp ne i8* %47, null
  br i1 %48, label %50, label %49

49:                                               ; preds = %43
  br label %107

50:                                               ; preds = %43
  %51 = load i8*, i8** %11, align 8
  store i8 0, i8* %51, align 1
  %52 = load i8*, i8** %10, align 8
  %53 = getelementptr inbounds i8, i8* %52, i64 1
  %54 = call i32 @kstrtoull(i8* %53, i32 0, i64* %12)
  store i32 %54, i32* %14, align 4
  %55 = load i32, i32* %14, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %50
  br label %107

58:                                               ; preds = %50
  %59 = load i8*, i8** %11, align 8
  %60 = getelementptr inbounds i8, i8* %59, i64 1
  %61 = call i32 @kstrtoull(i8* %60, i32 0, i64* %13)
  store i32 %61, i32* %14, align 4
  %62 = load i32, i32* %14, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %58
  br label %107

65:                                               ; preds = %58
  %66 = load i32, i32* @EINVAL, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %14, align 4
  %68 = load i64, i64* %12, align 8
  %69 = load i64, i64* %13, align 8
  %70 = icmp sgt i64 %68, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %65
  br label %107

72:                                               ; preds = %65
  %73 = load %struct.nullb_device*, %struct.nullb_device** %8, align 8
  %74 = getelementptr inbounds %struct.nullb_device, %struct.nullb_device* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 0
  %76 = call i32 @cmpxchg(i32* %75, i32 -1, i32 0)
  %77 = load i8*, i8** %10, align 8
  %78 = getelementptr inbounds i8, i8* %77, i64 0
  %79 = load i8, i8* %78, align 1
  %80 = sext i8 %79 to i32
  %81 = icmp eq i32 %80, 43
  br i1 %81, label %82, label %91

82:                                               ; preds = %72
  %83 = load %struct.nullb_device*, %struct.nullb_device** %8, align 8
  %84 = getelementptr inbounds %struct.nullb_device, %struct.nullb_device* %83, i32 0, i32 0
  %85 = load i64, i64* %12, align 8
  %86 = load i64, i64* %13, align 8
  %87 = load i64, i64* %12, align 8
  %88 = sub nsw i64 %86, %87
  %89 = add nsw i64 %88, 1
  %90 = call i32 @badblocks_set(%struct.TYPE_3__* %84, i64 %85, i64 %89, i32 1)
  store i32 %90, i32* %14, align 4
  br label %100

91:                                               ; preds = %72
  %92 = load %struct.nullb_device*, %struct.nullb_device** %8, align 8
  %93 = getelementptr inbounds %struct.nullb_device, %struct.nullb_device* %92, i32 0, i32 0
  %94 = load i64, i64* %12, align 8
  %95 = load i64, i64* %13, align 8
  %96 = load i64, i64* %12, align 8
  %97 = sub nsw i64 %95, %96
  %98 = add nsw i64 %97, 1
  %99 = call i32 @badblocks_clear(%struct.TYPE_3__* %93, i64 %94, i64 %98)
  store i32 %99, i32* %14, align 4
  br label %100

100:                                              ; preds = %91, %82
  %101 = load i32, i32* %14, align 4
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %100
  %104 = load i64, i64* %7, align 8
  %105 = trunc i64 %104 to i32
  store i32 %105, i32* %14, align 4
  br label %106

106:                                              ; preds = %103, %100
  br label %107

107:                                              ; preds = %106, %71, %64, %57, %49, %42
  %108 = load i8*, i8** %9, align 8
  %109 = call i32 @kfree(i8* %108)
  %110 = load i32, i32* %14, align 4
  store i32 %110, i32* %4, align 4
  br label %111

111:                                              ; preds = %107, %23
  %112 = load i32, i32* %4, align 4
  ret i32 %112
}

declare dso_local %struct.nullb_device* @to_nullb_device(%struct.config_item*) #1

declare dso_local i8* @kstrndup(i8*, i64, i32) #1

declare dso_local i8* @strstrip(i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @kstrtoull(i8*, i32, i64*) #1

declare dso_local i32 @cmpxchg(i32*, i32, i32) #1

declare dso_local i32 @badblocks_set(%struct.TYPE_3__*, i64, i64, i32) #1

declare dso_local i32 @badblocks_clear(%struct.TYPE_3__*, i64, i64) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
