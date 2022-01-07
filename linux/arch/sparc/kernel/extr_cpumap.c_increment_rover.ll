; ModuleID = '/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_cpumap.c_increment_rover.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_cpumap.c_increment_rover.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpuinfo_tree = type { %struct.cpuinfo_node* }
%struct.cpuinfo_node = type { i32, i64, i64, i64, i64 }

@ROVER_INC_PARENT_ON_LOOP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cpuinfo_tree*, i32, i32, i32*)* @increment_rover to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @increment_rover(%struct.cpuinfo_tree* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.cpuinfo_tree*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.cpuinfo_node*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.cpuinfo_tree* %0, %struct.cpuinfo_tree** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %12 = load %struct.cpuinfo_tree*, %struct.cpuinfo_tree** %5, align 8
  %13 = getelementptr inbounds %struct.cpuinfo_tree, %struct.cpuinfo_tree* %12, i32 0, i32 0
  %14 = load %struct.cpuinfo_node*, %struct.cpuinfo_node** %13, align 8
  %15 = load i32, i32* %6, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.cpuinfo_node, %struct.cpuinfo_node* %14, i64 %16
  store %struct.cpuinfo_node* %17, %struct.cpuinfo_node** %9, align 8
  %18 = load %struct.cpuinfo_tree*, %struct.cpuinfo_tree** %5, align 8
  %19 = getelementptr inbounds %struct.cpuinfo_tree, %struct.cpuinfo_tree* %18, i32 0, i32 0
  %20 = load %struct.cpuinfo_node*, %struct.cpuinfo_node** %19, align 8
  %21 = load i32, i32* %7, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.cpuinfo_node, %struct.cpuinfo_node* %20, i64 %22
  %24 = getelementptr inbounds %struct.cpuinfo_node, %struct.cpuinfo_node* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* %10, align 4
  %26 = load %struct.cpuinfo_node*, %struct.cpuinfo_node** %9, align 8
  %27 = getelementptr inbounds %struct.cpuinfo_node, %struct.cpuinfo_node* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  store i32 %28, i32* %11, align 4
  br label %29

29:                                               ; preds = %73, %4
  %30 = load i32, i32* %11, align 4
  %31 = load i32, i32* %10, align 4
  %32 = icmp sge i32 %30, %31
  br i1 %32, label %33, label %76

33:                                               ; preds = %29
  %34 = load %struct.cpuinfo_node*, %struct.cpuinfo_node** %9, align 8
  %35 = getelementptr inbounds %struct.cpuinfo_node, %struct.cpuinfo_node* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = add nsw i64 %36, 1
  store i64 %37, i64* %35, align 8
  %38 = load %struct.cpuinfo_node*, %struct.cpuinfo_node** %9, align 8
  %39 = getelementptr inbounds %struct.cpuinfo_node, %struct.cpuinfo_node* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.cpuinfo_node*, %struct.cpuinfo_node** %9, align 8
  %42 = getelementptr inbounds %struct.cpuinfo_node, %struct.cpuinfo_node* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = icmp sle i64 %40, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %33
  br label %76

46:                                               ; preds = %33
  %47 = load %struct.cpuinfo_node*, %struct.cpuinfo_node** %9, align 8
  %48 = getelementptr inbounds %struct.cpuinfo_node, %struct.cpuinfo_node* %47, i32 0, i32 3
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.cpuinfo_node*, %struct.cpuinfo_node** %9, align 8
  %51 = getelementptr inbounds %struct.cpuinfo_node, %struct.cpuinfo_node* %50, i32 0, i32 1
  store i64 %49, i64* %51, align 8
  %52 = load i32, i32* %11, align 4
  %53 = load i32, i32* %10, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %64, label %55

55:                                               ; preds = %46
  %56 = load i32*, i32** %8, align 8
  %57 = load i32, i32* %11, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @ROVER_INC_PARENT_ON_LOOP, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %65, label %64

64:                                               ; preds = %55, %46
  br label %76

65:                                               ; preds = %55
  %66 = load %struct.cpuinfo_tree*, %struct.cpuinfo_tree** %5, align 8
  %67 = getelementptr inbounds %struct.cpuinfo_tree, %struct.cpuinfo_tree* %66, i32 0, i32 0
  %68 = load %struct.cpuinfo_node*, %struct.cpuinfo_node** %67, align 8
  %69 = load %struct.cpuinfo_node*, %struct.cpuinfo_node** %9, align 8
  %70 = getelementptr inbounds %struct.cpuinfo_node, %struct.cpuinfo_node* %69, i32 0, i32 4
  %71 = load i64, i64* %70, align 8
  %72 = getelementptr inbounds %struct.cpuinfo_node, %struct.cpuinfo_node* %68, i64 %71
  store %struct.cpuinfo_node* %72, %struct.cpuinfo_node** %9, align 8
  br label %73

73:                                               ; preds = %65
  %74 = load i32, i32* %11, align 4
  %75 = add nsw i32 %74, -1
  store i32 %75, i32* %11, align 4
  br label %29

76:                                               ; preds = %45, %64, %29
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
