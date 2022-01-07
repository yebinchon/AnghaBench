; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/cell/extr_cbe_regs.c_cbe_find_map.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/cell/extr_cbe_regs.c_cbe_find_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cbe_regs_map = type { %struct.device_node*, %struct.device_node* }
%struct.device_node = type { %struct.cbe_regs_map*, %struct.device_node* }

@.str = private unnamed_addr constant [4 x i8] c"spe\00", align 1
@cbe_regs_map_count = common dso_local global i32 0, align 4
@cbe_regs_maps = common dso_local global %struct.cbe_regs_map* null, align 8
@.str.1 = private unnamed_addr constant [4 x i8] c"cpu\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"be\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.cbe_regs_map* (%struct.device_node*)* @cbe_find_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.cbe_regs_map* @cbe_find_map(%struct.device_node* %0) #0 {
  %2 = alloca %struct.cbe_regs_map*, align 8
  %3 = alloca %struct.device_node*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.device_node*, align 8
  store %struct.device_node* %0, %struct.device_node** %3, align 8
  %6 = load %struct.device_node*, %struct.device_node** %3, align 8
  %7 = call i32 @of_node_is_type(%struct.device_node* %6, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %42, label %9

9:                                                ; preds = %1
  store i32 0, i32* %4, align 4
  br label %10

10:                                               ; preds = %38, %9
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @cbe_regs_map_count, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %41

14:                                               ; preds = %10
  %15 = load %struct.cbe_regs_map*, %struct.cbe_regs_map** @cbe_regs_maps, align 8
  %16 = load i32, i32* %4, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.cbe_regs_map, %struct.cbe_regs_map* %15, i64 %17
  %19 = getelementptr inbounds %struct.cbe_regs_map, %struct.cbe_regs_map* %18, i32 0, i32 1
  %20 = load %struct.device_node*, %struct.device_node** %19, align 8
  %21 = load %struct.device_node*, %struct.device_node** %3, align 8
  %22 = icmp eq %struct.device_node* %20, %21
  br i1 %22, label %32, label %23

23:                                               ; preds = %14
  %24 = load %struct.cbe_regs_map*, %struct.cbe_regs_map** @cbe_regs_maps, align 8
  %25 = load i32, i32* %4, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.cbe_regs_map, %struct.cbe_regs_map* %24, i64 %26
  %28 = getelementptr inbounds %struct.cbe_regs_map, %struct.cbe_regs_map* %27, i32 0, i32 0
  %29 = load %struct.device_node*, %struct.device_node** %28, align 8
  %30 = load %struct.device_node*, %struct.device_node** %3, align 8
  %31 = icmp eq %struct.device_node* %29, %30
  br i1 %31, label %32, label %37

32:                                               ; preds = %23, %14
  %33 = load %struct.cbe_regs_map*, %struct.cbe_regs_map** @cbe_regs_maps, align 8
  %34 = load i32, i32* %4, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.cbe_regs_map, %struct.cbe_regs_map* %33, i64 %35
  store %struct.cbe_regs_map* %36, %struct.cbe_regs_map** %2, align 8
  br label %81

37:                                               ; preds = %23
  br label %38

38:                                               ; preds = %37
  %39 = load i32, i32* %4, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %4, align 4
  br label %10

41:                                               ; preds = %10
  store %struct.cbe_regs_map* null, %struct.cbe_regs_map** %2, align 8
  br label %81

42:                                               ; preds = %1
  %43 = load %struct.device_node*, %struct.device_node** %3, align 8
  %44 = getelementptr inbounds %struct.device_node, %struct.device_node* %43, i32 0, i32 0
  %45 = load %struct.cbe_regs_map*, %struct.cbe_regs_map** %44, align 8
  %46 = icmp ne %struct.cbe_regs_map* %45, null
  br i1 %46, label %47, label %51

47:                                               ; preds = %42
  %48 = load %struct.device_node*, %struct.device_node** %3, align 8
  %49 = getelementptr inbounds %struct.device_node, %struct.device_node* %48, i32 0, i32 0
  %50 = load %struct.cbe_regs_map*, %struct.cbe_regs_map** %49, align 8
  store %struct.cbe_regs_map* %50, %struct.cbe_regs_map** %2, align 8
  br label %81

51:                                               ; preds = %42
  %52 = load %struct.device_node*, %struct.device_node** %3, align 8
  store %struct.device_node* %52, %struct.device_node** %5, align 8
  br label %53

53:                                               ; preds = %71, %51
  %54 = load %struct.device_node*, %struct.device_node** %5, align 8
  %55 = getelementptr inbounds %struct.device_node, %struct.device_node* %54, i32 0, i32 1
  %56 = load %struct.device_node*, %struct.device_node** %55, align 8
  store %struct.device_node* %56, %struct.device_node** %5, align 8
  %57 = load %struct.device_node*, %struct.device_node** %5, align 8
  %58 = icmp ne %struct.device_node* %57, null
  %59 = xor i1 %58, true
  %60 = zext i1 %59 to i32
  %61 = call i32 @BUG_ON(i32 %60)
  br label %62

62:                                               ; preds = %53
  %63 = load %struct.device_node*, %struct.device_node** %5, align 8
  %64 = call i32 @of_node_is_type(%struct.device_node* %63, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %62
  %67 = load %struct.device_node*, %struct.device_node** %5, align 8
  %68 = call i32 @of_node_is_type(%struct.device_node* %67, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %69 = icmp ne i32 %68, 0
  %70 = xor i1 %69, true
  br label %71

71:                                               ; preds = %66, %62
  %72 = phi i1 [ true, %62 ], [ %70, %66 ]
  br i1 %72, label %53, label %73

73:                                               ; preds = %71
  %74 = load %struct.device_node*, %struct.device_node** %5, align 8
  %75 = call %struct.cbe_regs_map* @cbe_find_map(%struct.device_node* %74)
  %76 = load %struct.device_node*, %struct.device_node** %3, align 8
  %77 = getelementptr inbounds %struct.device_node, %struct.device_node* %76, i32 0, i32 0
  store %struct.cbe_regs_map* %75, %struct.cbe_regs_map** %77, align 8
  %78 = load %struct.device_node*, %struct.device_node** %3, align 8
  %79 = getelementptr inbounds %struct.device_node, %struct.device_node* %78, i32 0, i32 0
  %80 = load %struct.cbe_regs_map*, %struct.cbe_regs_map** %79, align 8
  store %struct.cbe_regs_map* %80, %struct.cbe_regs_map** %2, align 8
  br label %81

81:                                               ; preds = %73, %47, %41, %32
  %82 = load %struct.cbe_regs_map*, %struct.cbe_regs_map** %2, align 8
  ret %struct.cbe_regs_map* %82
}

declare dso_local i32 @of_node_is_type(%struct.device_node*, i8*) #1

declare dso_local i32 @BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
