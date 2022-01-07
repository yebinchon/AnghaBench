; ModuleID = '/home/carl/AnghaBench/linux/drivers/base/regmap/extr_regmap.c_regmap_register_patch.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/base/regmap/extr_regmap.c_regmap_register_patch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regmap = type { i32, i32, i32, i32, i32 (i32)*, i32 (i32)*, %struct.reg_sequence* }
%struct.reg_sequence = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"invalid registers number (%d)\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @regmap_register_patch(%struct.regmap* %0, %struct.reg_sequence* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.regmap*, align 8
  %6 = alloca %struct.reg_sequence*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.reg_sequence*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.regmap* %0, %struct.regmap** %5, align 8
  store %struct.reg_sequence* %1, %struct.reg_sequence** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  %12 = icmp sle i32 %11, 0
  %13 = zext i1 %12 to i32
  %14 = load i32, i32* %7, align 4
  %15 = call i64 @WARN_ONCE(i32 %13, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %92

18:                                               ; preds = %3
  %19 = load %struct.regmap*, %struct.regmap** %5, align 8
  %20 = getelementptr inbounds %struct.regmap, %struct.regmap* %19, i32 0, i32 6
  %21 = load %struct.reg_sequence*, %struct.reg_sequence** %20, align 8
  %22 = load %struct.regmap*, %struct.regmap** %5, align 8
  %23 = getelementptr inbounds %struct.regmap, %struct.regmap* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* %7, align 4
  %26 = add nsw i32 %24, %25
  %27 = sext i32 %26 to i64
  %28 = mul i64 4, %27
  %29 = trunc i64 %28 to i32
  %30 = load i32, i32* @GFP_KERNEL, align 4
  %31 = call %struct.reg_sequence* @krealloc(%struct.reg_sequence* %21, i32 %29, i32 %30)
  store %struct.reg_sequence* %31, %struct.reg_sequence** %8, align 8
  %32 = load %struct.reg_sequence*, %struct.reg_sequence** %8, align 8
  %33 = icmp ne %struct.reg_sequence* %32, null
  br i1 %33, label %34, label %55

34:                                               ; preds = %18
  %35 = load %struct.reg_sequence*, %struct.reg_sequence** %8, align 8
  %36 = load %struct.regmap*, %struct.regmap** %5, align 8
  %37 = getelementptr inbounds %struct.regmap, %struct.regmap* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.reg_sequence, %struct.reg_sequence* %35, i64 %39
  %41 = load %struct.reg_sequence*, %struct.reg_sequence** %6, align 8
  %42 = load i32, i32* %7, align 4
  %43 = sext i32 %42 to i64
  %44 = mul i64 %43, 4
  %45 = trunc i64 %44 to i32
  %46 = call i32 @memcpy(%struct.reg_sequence* %40, %struct.reg_sequence* %41, i32 %45)
  %47 = load %struct.reg_sequence*, %struct.reg_sequence** %8, align 8
  %48 = load %struct.regmap*, %struct.regmap** %5, align 8
  %49 = getelementptr inbounds %struct.regmap, %struct.regmap* %48, i32 0, i32 6
  store %struct.reg_sequence* %47, %struct.reg_sequence** %49, align 8
  %50 = load i32, i32* %7, align 4
  %51 = load %struct.regmap*, %struct.regmap** %5, align 8
  %52 = getelementptr inbounds %struct.regmap, %struct.regmap* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = add nsw i32 %53, %50
  store i32 %54, i32* %52, align 8
  br label %58

55:                                               ; preds = %18
  %56 = load i32, i32* @ENOMEM, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %4, align 4
  br label %92

58:                                               ; preds = %34
  %59 = load %struct.regmap*, %struct.regmap** %5, align 8
  %60 = getelementptr inbounds %struct.regmap, %struct.regmap* %59, i32 0, i32 5
  %61 = load i32 (i32)*, i32 (i32)** %60, align 8
  %62 = load %struct.regmap*, %struct.regmap** %5, align 8
  %63 = getelementptr inbounds %struct.regmap, %struct.regmap* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 4
  %65 = call i32 %61(i32 %64)
  %66 = load %struct.regmap*, %struct.regmap** %5, align 8
  %67 = getelementptr inbounds %struct.regmap, %struct.regmap* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  store i32 %68, i32* %10, align 4
  %69 = load %struct.regmap*, %struct.regmap** %5, align 8
  %70 = getelementptr inbounds %struct.regmap, %struct.regmap* %69, i32 0, i32 1
  store i32 1, i32* %70, align 4
  %71 = load %struct.regmap*, %struct.regmap** %5, align 8
  %72 = getelementptr inbounds %struct.regmap, %struct.regmap* %71, i32 0, i32 2
  store i32 1, i32* %72, align 8
  %73 = load %struct.regmap*, %struct.regmap** %5, align 8
  %74 = load %struct.reg_sequence*, %struct.reg_sequence** %6, align 8
  %75 = load i32, i32* %7, align 4
  %76 = call i32 @_regmap_multi_reg_write(%struct.regmap* %73, %struct.reg_sequence* %74, i32 %75)
  store i32 %76, i32* %9, align 4
  %77 = load %struct.regmap*, %struct.regmap** %5, align 8
  %78 = getelementptr inbounds %struct.regmap, %struct.regmap* %77, i32 0, i32 2
  store i32 0, i32* %78, align 8
  %79 = load i32, i32* %10, align 4
  %80 = load %struct.regmap*, %struct.regmap** %5, align 8
  %81 = getelementptr inbounds %struct.regmap, %struct.regmap* %80, i32 0, i32 1
  store i32 %79, i32* %81, align 4
  %82 = load %struct.regmap*, %struct.regmap** %5, align 8
  %83 = getelementptr inbounds %struct.regmap, %struct.regmap* %82, i32 0, i32 4
  %84 = load i32 (i32)*, i32 (i32)** %83, align 8
  %85 = load %struct.regmap*, %struct.regmap** %5, align 8
  %86 = getelementptr inbounds %struct.regmap, %struct.regmap* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 4
  %88 = call i32 %84(i32 %87)
  %89 = load %struct.regmap*, %struct.regmap** %5, align 8
  %90 = call i32 @regmap_async_complete(%struct.regmap* %89)
  %91 = load i32, i32* %9, align 4
  store i32 %91, i32* %4, align 4
  br label %92

92:                                               ; preds = %58, %55, %17
  %93 = load i32, i32* %4, align 4
  ret i32 %93
}

declare dso_local i64 @WARN_ONCE(i32, i8*, i32) #1

declare dso_local %struct.reg_sequence* @krealloc(%struct.reg_sequence*, i32, i32) #1

declare dso_local i32 @memcpy(%struct.reg_sequence*, %struct.reg_sequence*, i32) #1

declare dso_local i32 @_regmap_multi_reg_write(%struct.regmap*, %struct.reg_sequence*, i32) #1

declare dso_local i32 @regmap_async_complete(%struct.regmap*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
