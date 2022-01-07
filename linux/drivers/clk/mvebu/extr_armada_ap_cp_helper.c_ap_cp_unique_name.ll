; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/mvebu/extr_armada_ap_cp_helper.c_ap_cp_unique_name.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/mvebu/extr_armada_ap_cp_helper.c_ap_cp_unique_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_node = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"%llx-%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @ap_cp_unique_name(%struct.device* %0, %struct.device_node* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_node* %1, %struct.device_node** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load i8*, i8** %7, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %3
  store i8* null, i8** %4, align 8
  br label %24

13:                                               ; preds = %3
  %14 = load %struct.device_node*, %struct.device_node** %6, align 8
  %15 = call i32* @of_get_property(%struct.device_node* %14, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32* null)
  store i32* %15, i32** %8, align 8
  %16 = load %struct.device_node*, %struct.device_node** %6, align 8
  %17 = load i32*, i32** %8, align 8
  %18 = call i64 @of_translate_address(%struct.device_node* %16, i32* %17)
  store i64 %18, i64* %9, align 8
  %19 = load %struct.device*, %struct.device** %5, align 8
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = load i64, i64* %9, align 8
  %22 = load i8*, i8** %7, align 8
  %23 = call i8* @devm_kasprintf(%struct.device* %19, i32 %20, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i64 %21, i8* %22)
  store i8* %23, i8** %4, align 8
  br label %24

24:                                               ; preds = %13, %12
  %25 = load i8*, i8** %4, align 8
  ret i8* %25
}

declare dso_local i32* @of_get_property(%struct.device_node*, i8*, i32*) #1

declare dso_local i64 @of_translate_address(%struct.device_node*, i32*) #1

declare dso_local i8* @devm_kasprintf(%struct.device*, i32, i8*, i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
