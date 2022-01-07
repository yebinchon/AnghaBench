; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/sysdev/extr_fsl_soc.c_get_immrbase.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/sysdev/extr_fsl_soc.c_get_immrbase.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_node = type { i32 }

@immrbase = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"soc\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"#address-cells\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"ranges\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_immrbase() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.device_node*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = load i32, i32* @immrbase, align 4
  %7 = icmp ne i32 %6, -1
  br i1 %7, label %8, label %10

8:                                                ; preds = %0
  %9 = load i32, i32* @immrbase, align 4
  store i32 %9, i32* %1, align 4
  br label %43

10:                                               ; preds = %0
  %11 = call %struct.device_node* @of_find_node_by_type(i32* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store %struct.device_node* %11, %struct.device_node** %2, align 8
  %12 = load %struct.device_node*, %struct.device_node** %2, align 8
  %13 = icmp ne %struct.device_node* %12, null
  br i1 %13, label %14, label %41

14:                                               ; preds = %10
  %15 = load %struct.device_node*, %struct.device_node** %2, align 8
  %16 = call i32* @of_get_property(%struct.device_node* %15, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32* %3)
  store i32* %16, i32** %5, align 8
  %17 = load i32*, i32** %5, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %19, label %25

19:                                               ; preds = %14
  %20 = load i32, i32* %3, align 4
  %21 = icmp eq i32 %20, 4
  br i1 %21, label %22, label %25

22:                                               ; preds = %19
  %23 = load i32*, i32** %5, align 8
  %24 = call i32 @be32_to_cpup(i32* %23)
  store i32 %24, i32* %4, align 4
  br label %26

25:                                               ; preds = %19, %14
  store i32 2, i32* %4, align 4
  br label %26

26:                                               ; preds = %25, %22
  %27 = load %struct.device_node*, %struct.device_node** %2, align 8
  %28 = call i32* @of_get_property(%struct.device_node* %27, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32* %3)
  store i32* %28, i32** %5, align 8
  %29 = load i32*, i32** %5, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %31, label %38

31:                                               ; preds = %26
  %32 = load %struct.device_node*, %struct.device_node** %2, align 8
  %33 = load i32*, i32** %5, align 8
  %34 = load i32, i32* %4, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = call i32 @of_translate_address(%struct.device_node* %32, i32* %36)
  store i32 %37, i32* @immrbase, align 4
  br label %38

38:                                               ; preds = %31, %26
  %39 = load %struct.device_node*, %struct.device_node** %2, align 8
  %40 = call i32 @of_node_put(%struct.device_node* %39)
  br label %41

41:                                               ; preds = %38, %10
  %42 = load i32, i32* @immrbase, align 4
  store i32 %42, i32* %1, align 4
  br label %43

43:                                               ; preds = %41, %8
  %44 = load i32, i32* %1, align 4
  ret i32 %44
}

declare dso_local %struct.device_node* @of_find_node_by_type(i32*, i8*) #1

declare dso_local i32* @of_get_property(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @be32_to_cpup(i32*) #1

declare dso_local i32 @of_translate_address(%struct.device_node*, i32*) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
