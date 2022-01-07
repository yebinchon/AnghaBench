; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/mm/extr_init.c_maar_res_walk.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/mm/extr_init.c_maar_res_walk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.maar_walk_info = type { i64, %struct.maar_config* }
%struct.maar_config = type { i32, i64, i32 }

@MIPS_MAAR_ADDR_SHIFT = common dso_local global i64 0, align 8
@MIPS_MAAR_S = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64, i8*)* @maar_res_walk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @maar_res_walk(i64 %0, i64 %1, i8* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.maar_walk_info*, align 8
  %8 = alloca %struct.maar_config*, align 8
  %9 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  store i8* %2, i8** %6, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = bitcast i8* %10 to %struct.maar_walk_info*
  store %struct.maar_walk_info* %11, %struct.maar_walk_info** %7, align 8
  %12 = load %struct.maar_walk_info*, %struct.maar_walk_info** %7, align 8
  %13 = getelementptr inbounds %struct.maar_walk_info, %struct.maar_walk_info* %12, i32 0, i32 1
  %14 = load %struct.maar_config*, %struct.maar_config** %13, align 8
  %15 = load %struct.maar_walk_info*, %struct.maar_walk_info** %7, align 8
  %16 = getelementptr inbounds %struct.maar_walk_info, %struct.maar_walk_info* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = getelementptr inbounds %struct.maar_config, %struct.maar_config* %14, i64 %17
  store %struct.maar_config* %18, %struct.maar_config** %8, align 8
  %19 = load i64, i64* @MIPS_MAAR_ADDR_SHIFT, align 8
  %20 = add nsw i64 %19, 4
  %21 = call i32 @BIT(i64 %20)
  store i32 %21, i32* %9, align 4
  %22 = load i64, i64* %4, align 8
  %23 = call i32 @PFN_PHYS(i64 %22)
  %24 = load i32, i32* %9, align 4
  %25 = call i32 @ALIGN(i32 %23, i32 %24)
  %26 = load %struct.maar_config*, %struct.maar_config** %8, align 8
  %27 = getelementptr inbounds %struct.maar_config, %struct.maar_config* %26, i32 0, i32 2
  store i32 %25, i32* %27, align 8
  %28 = load i64, i64* %4, align 8
  %29 = load i64, i64* %5, align 8
  %30 = add i64 %28, %29
  %31 = call i32 @PFN_PHYS(i64 %30)
  %32 = load i32, i32* %9, align 4
  %33 = call i64 @ALIGN_DOWN(i32 %31, i32 %32)
  %34 = sub nsw i64 %33, 1
  %35 = load %struct.maar_config*, %struct.maar_config** %8, align 8
  %36 = getelementptr inbounds %struct.maar_config, %struct.maar_config* %35, i32 0, i32 1
  store i64 %34, i64* %36, align 8
  %37 = load i32, i32* @MIPS_MAAR_S, align 4
  %38 = load %struct.maar_config*, %struct.maar_config** %8, align 8
  %39 = getelementptr inbounds %struct.maar_config, %struct.maar_config* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 8
  %40 = load %struct.maar_walk_info*, %struct.maar_walk_info** %7, align 8
  %41 = getelementptr inbounds %struct.maar_walk_info, %struct.maar_walk_info* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.maar_walk_info*, %struct.maar_walk_info** %7, align 8
  %44 = getelementptr inbounds %struct.maar_walk_info, %struct.maar_walk_info* %43, i32 0, i32 1
  %45 = load %struct.maar_config*, %struct.maar_config** %44, align 8
  %46 = call i64 @ARRAY_SIZE(%struct.maar_config* %45)
  %47 = icmp uge i64 %42, %46
  %48 = zext i1 %47 to i32
  %49 = call i32 @WARN_ON(i32 %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %56, label %51

51:                                               ; preds = %3
  %52 = load %struct.maar_walk_info*, %struct.maar_walk_info** %7, align 8
  %53 = getelementptr inbounds %struct.maar_walk_info, %struct.maar_walk_info* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = add i64 %54, 1
  store i64 %55, i64* %53, align 8
  br label %56

56:                                               ; preds = %51, %3
  ret i32 0
}

declare dso_local i32 @BIT(i64) #1

declare dso_local i32 @ALIGN(i32, i32) #1

declare dso_local i32 @PFN_PHYS(i64) #1

declare dso_local i64 @ALIGN_DOWN(i32, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i64 @ARRAY_SIZE(%struct.maar_config*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
