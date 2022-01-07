; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/aoe/extr_aoecmd.c_addtgt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/aoe/extr_aoecmd.c_addtgt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aoetgt = type { i32, i32, i32, i32, i32, i32, %struct.aoedev* }
%struct.aoedev = type { i32, %struct.aoetgt** }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"aoe: cannot allocate memory to add target\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.aoetgt* (%struct.aoedev*, i8*, i32)* @addtgt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.aoetgt* @addtgt(%struct.aoedev* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.aoetgt*, align 8
  %5 = alloca %struct.aoedev*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.aoetgt*, align 8
  %9 = alloca %struct.aoetgt**, align 8
  %10 = alloca %struct.aoetgt**, align 8
  store %struct.aoedev* %0, %struct.aoedev** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.aoedev*, %struct.aoedev** %5, align 8
  %12 = getelementptr inbounds %struct.aoedev, %struct.aoedev* %11, i32 0, i32 1
  %13 = load %struct.aoetgt**, %struct.aoetgt*** %12, align 8
  store %struct.aoetgt** %13, %struct.aoetgt*** %9, align 8
  %14 = load %struct.aoetgt**, %struct.aoetgt*** %9, align 8
  %15 = load %struct.aoedev*, %struct.aoedev** %5, align 8
  %16 = getelementptr inbounds %struct.aoedev, %struct.aoedev* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.aoetgt*, %struct.aoetgt** %14, i64 %18
  store %struct.aoetgt** %19, %struct.aoetgt*** %10, align 8
  br label %20

20:                                               ; preds = %31, %3
  %21 = load %struct.aoetgt**, %struct.aoetgt*** %9, align 8
  %22 = load %struct.aoetgt**, %struct.aoetgt*** %10, align 8
  %23 = icmp ult %struct.aoetgt** %21, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %20
  %25 = load %struct.aoetgt**, %struct.aoetgt*** %9, align 8
  %26 = load %struct.aoetgt*, %struct.aoetgt** %25, align 8
  %27 = icmp ne %struct.aoetgt* %26, null
  br label %28

28:                                               ; preds = %24, %20
  %29 = phi i1 [ false, %20 ], [ %27, %24 ]
  br i1 %29, label %30, label %34

30:                                               ; preds = %28
  br label %31

31:                                               ; preds = %30
  %32 = load %struct.aoetgt**, %struct.aoetgt*** %9, align 8
  %33 = getelementptr inbounds %struct.aoetgt*, %struct.aoetgt** %32, i32 1
  store %struct.aoetgt** %33, %struct.aoetgt*** %9, align 8
  br label %20

34:                                               ; preds = %28
  %35 = load %struct.aoetgt**, %struct.aoetgt*** %9, align 8
  %36 = load %struct.aoetgt**, %struct.aoetgt*** %10, align 8
  %37 = icmp eq %struct.aoetgt** %35, %36
  br i1 %37, label %38, label %45

38:                                               ; preds = %34
  %39 = load %struct.aoedev*, %struct.aoedev** %5, align 8
  %40 = call %struct.aoetgt** @grow_targets(%struct.aoedev* %39)
  store %struct.aoetgt** %40, %struct.aoetgt*** %9, align 8
  %41 = load %struct.aoetgt**, %struct.aoetgt*** %9, align 8
  %42 = icmp ne %struct.aoetgt** %41, null
  br i1 %42, label %44, label %43

43:                                               ; preds = %38
  br label %81

44:                                               ; preds = %38
  br label %45

45:                                               ; preds = %44, %34
  %46 = load i32, i32* @GFP_ATOMIC, align 4
  %47 = call %struct.aoetgt* @kzalloc(i32 32, i32 %46)
  store %struct.aoetgt* %47, %struct.aoetgt** %8, align 8
  %48 = load %struct.aoetgt*, %struct.aoetgt** %8, align 8
  %49 = icmp ne %struct.aoetgt* %48, null
  br i1 %49, label %51, label %50

50:                                               ; preds = %45
  br label %81

51:                                               ; preds = %45
  %52 = load i32, i32* %7, align 4
  %53 = load %struct.aoetgt*, %struct.aoetgt** %8, align 8
  %54 = getelementptr inbounds %struct.aoetgt, %struct.aoetgt* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 8
  %55 = load %struct.aoedev*, %struct.aoedev** %5, align 8
  %56 = load %struct.aoetgt*, %struct.aoetgt** %8, align 8
  %57 = getelementptr inbounds %struct.aoetgt, %struct.aoetgt* %56, i32 0, i32 6
  store %struct.aoedev* %55, %struct.aoedev** %57, align 8
  %58 = load %struct.aoetgt*, %struct.aoetgt** %8, align 8
  %59 = getelementptr inbounds %struct.aoetgt, %struct.aoetgt* %58, i32 0, i32 5
  %60 = load i32, i32* %59, align 4
  %61 = load i8*, i8** %6, align 8
  %62 = call i32 @memcpy(i32 %60, i8* %61, i32 4)
  %63 = load %struct.aoetgt*, %struct.aoetgt** %8, align 8
  %64 = getelementptr inbounds %struct.aoetgt, %struct.aoetgt* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.aoetgt*, %struct.aoetgt** %8, align 8
  %67 = getelementptr inbounds %struct.aoetgt, %struct.aoetgt* %66, i32 0, i32 4
  store i32 %65, i32* %67, align 8
  %68 = load %struct.aoetgt*, %struct.aoetgt** %8, align 8
  %69 = call i32 @aoecmd_wreset(%struct.aoetgt* %68)
  %70 = load %struct.aoetgt*, %struct.aoetgt** %8, align 8
  %71 = getelementptr inbounds %struct.aoetgt, %struct.aoetgt* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = sdiv i32 %72, 2
  %74 = load %struct.aoetgt*, %struct.aoetgt** %8, align 8
  %75 = getelementptr inbounds %struct.aoetgt, %struct.aoetgt* %74, i32 0, i32 1
  store i32 %73, i32* %75, align 4
  %76 = load %struct.aoetgt*, %struct.aoetgt** %8, align 8
  %77 = getelementptr inbounds %struct.aoetgt, %struct.aoetgt* %76, i32 0, i32 2
  %78 = call i32 @INIT_LIST_HEAD(i32* %77)
  %79 = load %struct.aoetgt*, %struct.aoetgt** %8, align 8
  %80 = load %struct.aoetgt**, %struct.aoetgt*** %9, align 8
  store %struct.aoetgt* %79, %struct.aoetgt** %80, align 8
  store %struct.aoetgt* %79, %struct.aoetgt** %4, align 8
  br label %83

81:                                               ; preds = %50, %43
  %82 = call i32 @pr_info(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  store %struct.aoetgt* null, %struct.aoetgt** %4, align 8
  br label %83

83:                                               ; preds = %81, %51
  %84 = load %struct.aoetgt*, %struct.aoetgt** %4, align 8
  ret %struct.aoetgt* %84
}

declare dso_local %struct.aoetgt** @grow_targets(%struct.aoedev*) #1

declare dso_local %struct.aoetgt* @kzalloc(i32, i32) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @aoecmd_wreset(%struct.aoetgt*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @pr_info(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
