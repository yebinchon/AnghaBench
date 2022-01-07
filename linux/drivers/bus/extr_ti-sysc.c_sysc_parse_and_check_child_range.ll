; ModuleID = '/home/carl/AnghaBench/linux/drivers/bus/extr_ti-sysc.c_sysc_parse_and_check_child_range.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bus/extr_ti-sysc.c_sysc_parse_and_check_child_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sysc = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.device_node* }
%struct.device_node = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"ranges\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"missing ranges for %pOF\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"incomplete ranges for %pOF\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [15 x i8] c"#address-cells\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"#size-cells\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"invalid ranges for %pOF\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sysc*)* @sysc_parse_and_check_child_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sysc_parse_and_check_child_range(%struct.sysc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sysc*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.sysc* %0, %struct.sysc** %3, align 8
  %10 = load %struct.sysc*, %struct.sysc** %3, align 8
  %11 = getelementptr inbounds %struct.sysc, %struct.sysc* %10, i32 0, i32 2
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load %struct.device_node*, %struct.device_node** %13, align 8
  store %struct.device_node* %14, %struct.device_node** %4, align 8
  %15 = load %struct.device_node*, %struct.device_node** %4, align 8
  %16 = call i32* @of_get_property(%struct.device_node* %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32* %8)
  store i32* %16, i32** %5, align 8
  %17 = load i32*, i32** %5, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %27, label %19

19:                                               ; preds = %1
  %20 = load %struct.sysc*, %struct.sysc** %3, align 8
  %21 = getelementptr inbounds %struct.sysc, %struct.sysc* %20, i32 0, i32 2
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = load %struct.device_node*, %struct.device_node** %4, align 8
  %24 = call i32 @dev_err(%struct.TYPE_2__* %22, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), %struct.device_node* %23)
  %25 = load i32, i32* @ENOENT, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %86

27:                                               ; preds = %1
  %28 = load i32, i32* %8, align 4
  %29 = sext i32 %28 to i64
  %30 = udiv i64 %29, 4
  %31 = trunc i64 %30 to i32
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %8, align 4
  %33 = icmp slt i32 %32, 3
  br i1 %33, label %34, label %42

34:                                               ; preds = %27
  %35 = load %struct.sysc*, %struct.sysc** %3, align 8
  %36 = getelementptr inbounds %struct.sysc, %struct.sysc* %35, i32 0, i32 2
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = load %struct.device_node*, %struct.device_node** %4, align 8
  %39 = call i32 @dev_err(%struct.TYPE_2__* %37, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), %struct.device_node* %38)
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %2, align 4
  br label %86

42:                                               ; preds = %27
  %43 = load %struct.device_node*, %struct.device_node** %4, align 8
  %44 = call i32 @of_property_read_u32(%struct.device_node* %43, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32* %6)
  store i32 %44, i32* %9, align 4
  %45 = load i32, i32* %9, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %42
  %48 = load i32, i32* @ENOENT, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %2, align 4
  br label %86

50:                                               ; preds = %42
  %51 = load %struct.device_node*, %struct.device_node** %4, align 8
  %52 = call i32 @of_property_read_u32(%struct.device_node* %51, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i32* %7)
  store i32 %52, i32* %9, align 4
  %53 = load i32, i32* %9, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %50
  %56 = load i32, i32* @ENOENT, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %2, align 4
  br label %86

58:                                               ; preds = %50
  %59 = load i32, i32* %6, align 4
  %60 = icmp ne i32 %59, 1
  br i1 %60, label %64, label %61

61:                                               ; preds = %58
  %62 = load i32, i32* %7, align 4
  %63 = icmp ne i32 %62, 1
  br i1 %63, label %64, label %72

64:                                               ; preds = %61, %58
  %65 = load %struct.sysc*, %struct.sysc** %3, align 8
  %66 = getelementptr inbounds %struct.sysc, %struct.sysc* %65, i32 0, i32 2
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %66, align 8
  %68 = load %struct.device_node*, %struct.device_node** %4, align 8
  %69 = call i32 @dev_err(%struct.TYPE_2__* %67, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0), %struct.device_node* %68)
  %70 = load i32, i32* @EINVAL, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %2, align 4
  br label %86

72:                                               ; preds = %61
  %73 = load i32*, i32** %5, align 8
  %74 = getelementptr inbounds i32, i32* %73, i32 1
  store i32* %74, i32** %5, align 8
  %75 = load %struct.device_node*, %struct.device_node** %4, align 8
  %76 = load i32*, i32** %5, align 8
  %77 = getelementptr inbounds i32, i32* %76, i32 1
  store i32* %77, i32** %5, align 8
  %78 = ptrtoint i32* %76 to i32
  %79 = call i32 @of_translate_address(%struct.device_node* %75, i32 %78)
  %80 = load %struct.sysc*, %struct.sysc** %3, align 8
  %81 = getelementptr inbounds %struct.sysc, %struct.sysc* %80, i32 0, i32 1
  store i32 %79, i32* %81, align 4
  %82 = load i32*, i32** %5, align 8
  %83 = call i32 @be32_to_cpup(i32* %82)
  %84 = load %struct.sysc*, %struct.sysc** %3, align 8
  %85 = getelementptr inbounds %struct.sysc, %struct.sysc* %84, i32 0, i32 0
  store i32 %83, i32* %85, align 8
  store i32 0, i32* %2, align 4
  br label %86

86:                                               ; preds = %72, %64, %55, %47, %34, %19
  %87 = load i32, i32* %2, align 4
  ret i32 %87
}

declare dso_local i32* @of_get_property(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @dev_err(%struct.TYPE_2__*, i8*, %struct.device_node*) #1

declare dso_local i32 @of_property_read_u32(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @of_translate_address(%struct.device_node*, i32) #1

declare dso_local i32 @be32_to_cpup(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
