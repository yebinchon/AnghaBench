; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/mm/extr_numa.c_of_get_assoc_arrays.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/mm/extr_numa.c_of_get_assoc_arrays.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.assoc_arrays = type { i32, i32, i32* }
%struct.device_node = type { i32 }

@.str = private unnamed_addr constant [36 x i8] c"/ibm,dynamic-reconfiguration-memory\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"ibm,associativity-lookup-arrays\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.assoc_arrays*)* @of_get_assoc_arrays to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @of_get_assoc_arrays(%struct.assoc_arrays* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.assoc_arrays*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store %struct.assoc_arrays* %0, %struct.assoc_arrays** %3, align 8
  %7 = call %struct.device_node* @of_find_node_by_path(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  store %struct.device_node* %7, %struct.device_node** %4, align 8
  %8 = load %struct.device_node*, %struct.device_node** %4, align 8
  %9 = icmp ne %struct.device_node* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %58

11:                                               ; preds = %1
  %12 = load %struct.device_node*, %struct.device_node** %4, align 8
  %13 = call i32* @of_get_property(%struct.device_node* %12, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32* %6)
  store i32* %13, i32** %5, align 8
  %14 = load i32*, i32** %5, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %16, label %20

16:                                               ; preds = %11
  %17 = load i32, i32* %6, align 4
  %18 = sext i32 %17 to i64
  %19 = icmp ult i64 %18, 8
  br i1 %19, label %20, label %23

20:                                               ; preds = %16, %11
  %21 = load %struct.device_node*, %struct.device_node** %4, align 8
  %22 = call i32 @of_node_put(%struct.device_node* %21)
  store i32 -1, i32* %2, align 4
  br label %58

23:                                               ; preds = %16
  %24 = load i32*, i32** %5, align 8
  %25 = getelementptr inbounds i32, i32* %24, i32 1
  store i32* %25, i32** %5, align 8
  %26 = ptrtoint i32* %24 to i32
  %27 = call i8* @of_read_number(i32 %26, i32 1)
  %28 = ptrtoint i8* %27 to i32
  %29 = load %struct.assoc_arrays*, %struct.assoc_arrays** %3, align 8
  %30 = getelementptr inbounds %struct.assoc_arrays, %struct.assoc_arrays* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 8
  %31 = load i32*, i32** %5, align 8
  %32 = getelementptr inbounds i32, i32* %31, i32 1
  store i32* %32, i32** %5, align 8
  %33 = ptrtoint i32* %31 to i32
  %34 = call i8* @of_read_number(i32 %33, i32 1)
  %35 = ptrtoint i8* %34 to i32
  %36 = load %struct.assoc_arrays*, %struct.assoc_arrays** %3, align 8
  %37 = getelementptr inbounds %struct.assoc_arrays, %struct.assoc_arrays* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 4
  %38 = load %struct.device_node*, %struct.device_node** %4, align 8
  %39 = call i32 @of_node_put(%struct.device_node* %38)
  %40 = load i32, i32* %6, align 4
  %41 = sext i32 %40 to i64
  %42 = load %struct.assoc_arrays*, %struct.assoc_arrays** %3, align 8
  %43 = getelementptr inbounds %struct.assoc_arrays, %struct.assoc_arrays* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.assoc_arrays*, %struct.assoc_arrays** %3, align 8
  %46 = getelementptr inbounds %struct.assoc_arrays, %struct.assoc_arrays* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = mul nsw i32 %44, %47
  %49 = add nsw i32 %48, 2
  %50 = sext i32 %49 to i64
  %51 = mul i64 %50, 4
  %52 = icmp ult i64 %41, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %23
  store i32 -1, i32* %2, align 4
  br label %58

54:                                               ; preds = %23
  %55 = load i32*, i32** %5, align 8
  %56 = load %struct.assoc_arrays*, %struct.assoc_arrays** %3, align 8
  %57 = getelementptr inbounds %struct.assoc_arrays, %struct.assoc_arrays* %56, i32 0, i32 2
  store i32* %55, i32** %57, align 8
  store i32 0, i32* %2, align 4
  br label %58

58:                                               ; preds = %54, %53, %20, %10
  %59 = load i32, i32* %2, align 4
  ret i32 %59
}

declare dso_local %struct.device_node* @of_find_node_by_path(i8*) #1

declare dso_local i32* @of_get_property(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

declare dso_local i8* @of_read_number(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
