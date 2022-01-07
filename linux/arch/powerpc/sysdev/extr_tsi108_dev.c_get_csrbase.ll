; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/sysdev/extr_tsi108_dev.c_get_csrbase.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/sysdev/extr_tsi108_dev.c_get_csrbase.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_node = type { i32 }

@tsi108_csr_base = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"tsi-bridge\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"reg\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_csrbase() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.device_node*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = load i32, i32* @tsi108_csr_base, align 4
  %6 = icmp ne i32 %5, -1
  br i1 %6, label %7, label %9

7:                                                ; preds = %0
  %8 = load i32, i32* @tsi108_csr_base, align 4
  store i32 %8, i32* %1, align 4
  br label %23

9:                                                ; preds = %0
  %10 = call %struct.device_node* @of_find_node_by_type(i32* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  store %struct.device_node* %10, %struct.device_node** %2, align 8
  %11 = load %struct.device_node*, %struct.device_node** %2, align 8
  %12 = icmp ne %struct.device_node* %11, null
  br i1 %12, label %13, label %21

13:                                               ; preds = %9
  %14 = load %struct.device_node*, %struct.device_node** %2, align 8
  %15 = call i8* @of_get_property(%struct.device_node* %14, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32* %3)
  store i8* %15, i8** %4, align 8
  %16 = load %struct.device_node*, %struct.device_node** %2, align 8
  %17 = load i8*, i8** %4, align 8
  %18 = call i32 @of_translate_address(%struct.device_node* %16, i8* %17)
  store i32 %18, i32* @tsi108_csr_base, align 4
  %19 = load %struct.device_node*, %struct.device_node** %2, align 8
  %20 = call i32 @of_node_put(%struct.device_node* %19)
  br label %21

21:                                               ; preds = %13, %9
  %22 = load i32, i32* @tsi108_csr_base, align 4
  store i32 %22, i32* %1, align 4
  br label %23

23:                                               ; preds = %21, %7
  %24 = load i32, i32* %1, align 4
  ret i32 %24
}

declare dso_local %struct.device_node* @of_find_node_by_type(i32*, i8*) #1

declare dso_local i8* @of_get_property(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @of_translate_address(%struct.device_node*, i8*) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
