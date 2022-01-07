; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/aoe/extr_aoecmd.c_grow_targets.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/aoe/extr_aoecmd.c_grow_targets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aoetgt = type { i32 }
%struct.aoedev = type { i32, %struct.aoetgt**, %struct.aoetgt** }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.aoetgt** (%struct.aoedev*)* @grow_targets to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.aoetgt** @grow_targets(%struct.aoedev* %0) #0 {
  %2 = alloca %struct.aoetgt**, align 8
  %3 = alloca %struct.aoedev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.aoetgt**, align 8
  store %struct.aoedev* %0, %struct.aoedev** %3, align 8
  %7 = load %struct.aoedev*, %struct.aoedev** %3, align 8
  %8 = getelementptr inbounds %struct.aoedev, %struct.aoedev* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = mul nsw i32 %10, 2
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @GFP_ATOMIC, align 4
  %14 = call %struct.aoetgt** @kcalloc(i32 %12, i32 8, i32 %13)
  store %struct.aoetgt** %14, %struct.aoetgt*** %6, align 8
  %15 = load %struct.aoetgt**, %struct.aoetgt*** %6, align 8
  %16 = icmp ne %struct.aoetgt** %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %1
  store %struct.aoetgt** null, %struct.aoetgt*** %2, align 8
  br label %58

18:                                               ; preds = %1
  %19 = load %struct.aoetgt**, %struct.aoetgt*** %6, align 8
  %20 = load %struct.aoedev*, %struct.aoedev** %3, align 8
  %21 = getelementptr inbounds %struct.aoedev, %struct.aoedev* %20, i32 0, i32 1
  %22 = load %struct.aoetgt**, %struct.aoetgt*** %21, align 8
  %23 = load i32, i32* %4, align 4
  %24 = sext i32 %23 to i64
  %25 = mul i64 8, %24
  %26 = trunc i64 %25 to i32
  %27 = call i32 @memmove(%struct.aoetgt** %19, %struct.aoetgt** %22, i32 %26)
  %28 = load %struct.aoetgt**, %struct.aoetgt*** %6, align 8
  %29 = load %struct.aoedev*, %struct.aoedev** %3, align 8
  %30 = getelementptr inbounds %struct.aoedev, %struct.aoedev* %29, i32 0, i32 2
  %31 = load %struct.aoetgt**, %struct.aoetgt*** %30, align 8
  %32 = load %struct.aoedev*, %struct.aoedev** %3, align 8
  %33 = getelementptr inbounds %struct.aoedev, %struct.aoedev* %32, i32 0, i32 1
  %34 = load %struct.aoetgt**, %struct.aoetgt*** %33, align 8
  %35 = ptrtoint %struct.aoetgt** %31 to i64
  %36 = ptrtoint %struct.aoetgt** %34 to i64
  %37 = sub i64 %35, %36
  %38 = sdiv exact i64 %37, 8
  %39 = getelementptr inbounds %struct.aoetgt*, %struct.aoetgt** %28, i64 %38
  %40 = load %struct.aoedev*, %struct.aoedev** %3, align 8
  %41 = getelementptr inbounds %struct.aoedev, %struct.aoedev* %40, i32 0, i32 2
  store %struct.aoetgt** %39, %struct.aoetgt*** %41, align 8
  %42 = load %struct.aoedev*, %struct.aoedev** %3, align 8
  %43 = getelementptr inbounds %struct.aoedev, %struct.aoedev* %42, i32 0, i32 1
  %44 = load %struct.aoetgt**, %struct.aoetgt*** %43, align 8
  %45 = call i32 @kfree(%struct.aoetgt** %44)
  %46 = load %struct.aoetgt**, %struct.aoetgt*** %6, align 8
  %47 = load %struct.aoedev*, %struct.aoedev** %3, align 8
  %48 = getelementptr inbounds %struct.aoedev, %struct.aoedev* %47, i32 0, i32 1
  store %struct.aoetgt** %46, %struct.aoetgt*** %48, align 8
  %49 = load i32, i32* %5, align 4
  %50 = load %struct.aoedev*, %struct.aoedev** %3, align 8
  %51 = getelementptr inbounds %struct.aoedev, %struct.aoedev* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 8
  %52 = load %struct.aoedev*, %struct.aoedev** %3, align 8
  %53 = getelementptr inbounds %struct.aoedev, %struct.aoedev* %52, i32 0, i32 1
  %54 = load %struct.aoetgt**, %struct.aoetgt*** %53, align 8
  %55 = load i32, i32* %4, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.aoetgt*, %struct.aoetgt** %54, i64 %56
  store %struct.aoetgt** %57, %struct.aoetgt*** %2, align 8
  br label %58

58:                                               ; preds = %18, %17
  %59 = load %struct.aoetgt**, %struct.aoetgt*** %2, align 8
  ret %struct.aoetgt** %59
}

declare dso_local %struct.aoetgt** @kcalloc(i32, i32, i32) #1

declare dso_local i32 @memmove(%struct.aoetgt**, %struct.aoetgt**, i32) #1

declare dso_local i32 @kfree(%struct.aoetgt**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
