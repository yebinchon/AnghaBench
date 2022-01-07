; ModuleID = '/home/carl/AnghaBench/linux/drivers/base/extr_core.c_device_get_devnode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/base/extr_core.c_device_get_devnode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i8* (%struct.device*, i32*)* }
%struct.TYPE_3__ = type { i8* (%struct.device*, i32*, i32*, i32*)* }

@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @device_get_devnode(%struct.device* %0, i32* %1, i32* %2, i32* %3, i8** %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i8*, align 8
  store %struct.device* %0, %struct.device** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i8** %4, i8*** %11, align 8
  %13 = load i8**, i8*** %11, align 8
  store i8* null, i8** %13, align 8
  %14 = load %struct.device*, %struct.device** %7, align 8
  %15 = getelementptr inbounds %struct.device, %struct.device* %14, i32 0, i32 1
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = icmp ne %struct.TYPE_3__* %16, null
  br i1 %17, label %18, label %37

18:                                               ; preds = %5
  %19 = load %struct.device*, %struct.device** %7, align 8
  %20 = getelementptr inbounds %struct.device, %struct.device* %19, i32 0, i32 1
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i8* (%struct.device*, i32*, i32*, i32*)*, i8* (%struct.device*, i32*, i32*, i32*)** %22, align 8
  %24 = icmp ne i8* (%struct.device*, i32*, i32*, i32*)* %23, null
  br i1 %24, label %25, label %37

25:                                               ; preds = %18
  %26 = load %struct.device*, %struct.device** %7, align 8
  %27 = getelementptr inbounds %struct.device, %struct.device* %26, i32 0, i32 1
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i8* (%struct.device*, i32*, i32*, i32*)*, i8* (%struct.device*, i32*, i32*, i32*)** %29, align 8
  %31 = load %struct.device*, %struct.device** %7, align 8
  %32 = load i32*, i32** %8, align 8
  %33 = load i32*, i32** %9, align 8
  %34 = load i32*, i32** %10, align 8
  %35 = call i8* %30(%struct.device* %31, i32* %32, i32* %33, i32* %34)
  %36 = load i8**, i8*** %11, align 8
  store i8* %35, i8** %36, align 8
  br label %37

37:                                               ; preds = %25, %18, %5
  %38 = load i8**, i8*** %11, align 8
  %39 = load i8*, i8** %38, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %41, label %44

41:                                               ; preds = %37
  %42 = load i8**, i8*** %11, align 8
  %43 = load i8*, i8** %42, align 8
  store i8* %43, i8** %6, align 8
  br label %94

44:                                               ; preds = %37
  %45 = load %struct.device*, %struct.device** %7, align 8
  %46 = getelementptr inbounds %struct.device, %struct.device* %45, i32 0, i32 0
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = icmp ne %struct.TYPE_4__* %47, null
  br i1 %48, label %49, label %66

49:                                               ; preds = %44
  %50 = load %struct.device*, %struct.device** %7, align 8
  %51 = getelementptr inbounds %struct.device, %struct.device* %50, i32 0, i32 0
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i8* (%struct.device*, i32*)*, i8* (%struct.device*, i32*)** %53, align 8
  %55 = icmp ne i8* (%struct.device*, i32*)* %54, null
  br i1 %55, label %56, label %66

56:                                               ; preds = %49
  %57 = load %struct.device*, %struct.device** %7, align 8
  %58 = getelementptr inbounds %struct.device, %struct.device* %57, i32 0, i32 0
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load i8* (%struct.device*, i32*)*, i8* (%struct.device*, i32*)** %60, align 8
  %62 = load %struct.device*, %struct.device** %7, align 8
  %63 = load i32*, i32** %8, align 8
  %64 = call i8* %61(%struct.device* %62, i32* %63)
  %65 = load i8**, i8*** %11, align 8
  store i8* %64, i8** %65, align 8
  br label %66

66:                                               ; preds = %56, %49, %44
  %67 = load i8**, i8*** %11, align 8
  %68 = load i8*, i8** %67, align 8
  %69 = icmp ne i8* %68, null
  br i1 %69, label %70, label %73

70:                                               ; preds = %66
  %71 = load i8**, i8*** %11, align 8
  %72 = load i8*, i8** %71, align 8
  store i8* %72, i8** %6, align 8
  br label %94

73:                                               ; preds = %66
  %74 = load %struct.device*, %struct.device** %7, align 8
  %75 = call i8* @dev_name(%struct.device* %74)
  %76 = call i32* @strchr(i8* %75, i8 signext 33)
  %77 = icmp eq i32* %76, null
  br i1 %77, label %78, label %81

78:                                               ; preds = %73
  %79 = load %struct.device*, %struct.device** %7, align 8
  %80 = call i8* @dev_name(%struct.device* %79)
  store i8* %80, i8** %6, align 8
  br label %94

81:                                               ; preds = %73
  %82 = load %struct.device*, %struct.device** %7, align 8
  %83 = call i8* @dev_name(%struct.device* %82)
  %84 = load i32, i32* @GFP_KERNEL, align 4
  %85 = call i8* @kstrdup(i8* %83, i32 %84)
  store i8* %85, i8** %12, align 8
  %86 = load i8*, i8** %12, align 8
  %87 = icmp ne i8* %86, null
  br i1 %87, label %89, label %88

88:                                               ; preds = %81
  store i8* null, i8** %6, align 8
  br label %94

89:                                               ; preds = %81
  %90 = load i8*, i8** %12, align 8
  %91 = call i32 @strreplace(i8* %90, i8 signext 33, i8 signext 47)
  %92 = load i8*, i8** %12, align 8
  %93 = load i8**, i8*** %11, align 8
  store i8* %92, i8** %93, align 8
  store i8* %92, i8** %6, align 8
  br label %94

94:                                               ; preds = %89, %88, %78, %70, %41
  %95 = load i8*, i8** %6, align 8
  ret i8* %95
}

declare dso_local i32* @strchr(i8*, i8 signext) #1

declare dso_local i8* @dev_name(%struct.device*) #1

declare dso_local i8* @kstrdup(i8*, i32) #1

declare dso_local i32 @strreplace(i8*, i8 signext, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
