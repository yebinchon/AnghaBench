; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_pci-common.c_reparent_resources.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_pci-common.c_reparent_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.resource = type { i64, i64, i32, %struct.resource*, %struct.resource*, %struct.resource* }

@.str = private unnamed_addr constant [33 x i8] c"PCI: Reparented %s %pR under %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.resource*, %struct.resource*)* @reparent_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @reparent_resources(%struct.resource* %0, %struct.resource* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.resource*, align 8
  %5 = alloca %struct.resource*, align 8
  %6 = alloca %struct.resource*, align 8
  %7 = alloca %struct.resource**, align 8
  %8 = alloca %struct.resource**, align 8
  store %struct.resource* %0, %struct.resource** %4, align 8
  store %struct.resource* %1, %struct.resource** %5, align 8
  store %struct.resource** null, %struct.resource*** %8, align 8
  %9 = load %struct.resource*, %struct.resource** %4, align 8
  %10 = getelementptr inbounds %struct.resource, %struct.resource* %9, i32 0, i32 5
  store %struct.resource** %10, %struct.resource*** %7, align 8
  br label %11

11:                                               ; preds = %56, %2
  %12 = load %struct.resource**, %struct.resource*** %7, align 8
  %13 = load %struct.resource*, %struct.resource** %12, align 8
  store %struct.resource* %13, %struct.resource** %6, align 8
  %14 = icmp ne %struct.resource* %13, null
  br i1 %14, label %15, label %59

15:                                               ; preds = %11
  %16 = load %struct.resource*, %struct.resource** %6, align 8
  %17 = getelementptr inbounds %struct.resource, %struct.resource* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.resource*, %struct.resource** %5, align 8
  %20 = getelementptr inbounds %struct.resource, %struct.resource* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp slt i64 %18, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %15
  br label %56

24:                                               ; preds = %15
  %25 = load %struct.resource*, %struct.resource** %5, align 8
  %26 = getelementptr inbounds %struct.resource, %struct.resource* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.resource*, %struct.resource** %6, align 8
  %29 = getelementptr inbounds %struct.resource, %struct.resource* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp slt i64 %27, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %24
  br label %59

33:                                               ; preds = %24
  %34 = load %struct.resource*, %struct.resource** %6, align 8
  %35 = getelementptr inbounds %struct.resource, %struct.resource* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.resource*, %struct.resource** %5, align 8
  %38 = getelementptr inbounds %struct.resource, %struct.resource* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = icmp slt i64 %36, %39
  br i1 %40, label %49, label %41

41:                                               ; preds = %33
  %42 = load %struct.resource*, %struct.resource** %6, align 8
  %43 = getelementptr inbounds %struct.resource, %struct.resource* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.resource*, %struct.resource** %5, align 8
  %46 = getelementptr inbounds %struct.resource, %struct.resource* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp sgt i64 %44, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %41, %33
  store i32 -1, i32* %3, align 4
  br label %101

50:                                               ; preds = %41
  %51 = load %struct.resource**, %struct.resource*** %8, align 8
  %52 = icmp eq %struct.resource** %51, null
  br i1 %52, label %53, label %55

53:                                               ; preds = %50
  %54 = load %struct.resource**, %struct.resource*** %7, align 8
  store %struct.resource** %54, %struct.resource*** %8, align 8
  br label %55

55:                                               ; preds = %53, %50
  br label %56

56:                                               ; preds = %55, %23
  %57 = load %struct.resource*, %struct.resource** %6, align 8
  %58 = getelementptr inbounds %struct.resource, %struct.resource* %57, i32 0, i32 4
  store %struct.resource** %58, %struct.resource*** %7, align 8
  br label %11

59:                                               ; preds = %32, %11
  %60 = load %struct.resource**, %struct.resource*** %8, align 8
  %61 = icmp eq %struct.resource** %60, null
  br i1 %61, label %62, label %63

62:                                               ; preds = %59
  store i32 -1, i32* %3, align 4
  br label %101

63:                                               ; preds = %59
  %64 = load %struct.resource*, %struct.resource** %4, align 8
  %65 = load %struct.resource*, %struct.resource** %5, align 8
  %66 = getelementptr inbounds %struct.resource, %struct.resource* %65, i32 0, i32 3
  store %struct.resource* %64, %struct.resource** %66, align 8
  %67 = load %struct.resource**, %struct.resource*** %8, align 8
  %68 = load %struct.resource*, %struct.resource** %67, align 8
  %69 = load %struct.resource*, %struct.resource** %5, align 8
  %70 = getelementptr inbounds %struct.resource, %struct.resource* %69, i32 0, i32 5
  store %struct.resource* %68, %struct.resource** %70, align 8
  %71 = load %struct.resource**, %struct.resource*** %7, align 8
  %72 = load %struct.resource*, %struct.resource** %71, align 8
  %73 = load %struct.resource*, %struct.resource** %5, align 8
  %74 = getelementptr inbounds %struct.resource, %struct.resource* %73, i32 0, i32 4
  store %struct.resource* %72, %struct.resource** %74, align 8
  %75 = load %struct.resource*, %struct.resource** %5, align 8
  %76 = load %struct.resource**, %struct.resource*** %8, align 8
  store %struct.resource* %75, %struct.resource** %76, align 8
  %77 = load %struct.resource**, %struct.resource*** %7, align 8
  store %struct.resource* null, %struct.resource** %77, align 8
  %78 = load %struct.resource*, %struct.resource** %5, align 8
  %79 = getelementptr inbounds %struct.resource, %struct.resource* %78, i32 0, i32 5
  %80 = load %struct.resource*, %struct.resource** %79, align 8
  store %struct.resource* %80, %struct.resource** %6, align 8
  br label %81

81:                                               ; preds = %96, %63
  %82 = load %struct.resource*, %struct.resource** %6, align 8
  %83 = icmp ne %struct.resource* %82, null
  br i1 %83, label %84, label %100

84:                                               ; preds = %81
  %85 = load %struct.resource*, %struct.resource** %5, align 8
  %86 = load %struct.resource*, %struct.resource** %6, align 8
  %87 = getelementptr inbounds %struct.resource, %struct.resource* %86, i32 0, i32 3
  store %struct.resource* %85, %struct.resource** %87, align 8
  %88 = load %struct.resource*, %struct.resource** %6, align 8
  %89 = getelementptr inbounds %struct.resource, %struct.resource* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.resource*, %struct.resource** %6, align 8
  %92 = load %struct.resource*, %struct.resource** %5, align 8
  %93 = getelementptr inbounds %struct.resource, %struct.resource* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @pr_debug(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %90, %struct.resource* %91, i32 %94)
  br label %96

96:                                               ; preds = %84
  %97 = load %struct.resource*, %struct.resource** %6, align 8
  %98 = getelementptr inbounds %struct.resource, %struct.resource* %97, i32 0, i32 4
  %99 = load %struct.resource*, %struct.resource** %98, align 8
  store %struct.resource* %99, %struct.resource** %6, align 8
  br label %81

100:                                              ; preds = %81
  store i32 0, i32* %3, align 4
  br label %101

101:                                              ; preds = %100, %62, %49
  %102 = load i32, i32* %3, align 4
  ret i32 %102
}

declare dso_local i32 @pr_debug(i8*, i32, %struct.resource*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
