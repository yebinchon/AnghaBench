; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/mm/book3s64/extr_pkeys.c_scan_pkey_feature.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/mm/book3s64/extr_pkeys.c_scan_pkey_feature.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_node = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"cpu\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"ibm,processor-storage-keys\00", align 1
@pkeys_total = common dso_local global i32 0, align 4
@pkeys_devtree_defined = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @scan_pkey_feature to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @scan_pkey_feature() #0 {
  %1 = alloca [2 x i32], align 4
  %2 = alloca %struct.device_node*, align 8
  %3 = call %struct.device_node* @of_find_node_by_type(i32* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store %struct.device_node* %3, %struct.device_node** %2, align 8
  %4 = load %struct.device_node*, %struct.device_node** %2, align 8
  %5 = icmp ne %struct.device_node* %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %0
  br label %16

7:                                                ; preds = %0
  %8 = load %struct.device_node*, %struct.device_node** %2, align 8
  %9 = getelementptr inbounds [2 x i32], [2 x i32]* %1, i64 0, i64 0
  %10 = call i64 @of_property_read_u32_array(%struct.device_node* %8, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32* %9, i32 2)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %7
  br label %16

13:                                               ; preds = %7
  %14 = getelementptr inbounds [2 x i32], [2 x i32]* %1, i64 0, i64 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* @pkeys_total, align 4
  store i32 1, i32* @pkeys_devtree_defined, align 4
  br label %16

16:                                               ; preds = %13, %12, %6
  ret void
}

declare dso_local %struct.device_node* @of_find_node_by_type(i32*, i8*) #1

declare dso_local i64 @of_property_read_u32_array(%struct.device_node*, i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
