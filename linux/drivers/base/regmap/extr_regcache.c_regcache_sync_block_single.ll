; ModuleID = '/home/carl/AnghaBench/linux/drivers/base/regmap/extr_regcache.c_regcache_sync_block_single.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/base/regmap/extr_regcache.c_regcache_sync_block_single.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regmap = type { i32, i32, i32 }

@.str = private unnamed_addr constant [33 x i8] c"Unable to sync register %#x. %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"Synced register %#x, value %#x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regmap*, i8*, i64*, i32, i32, i32)* @regcache_sync_block_single to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @regcache_sync_block_single(%struct.regmap* %0, i8* %1, i64* %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.regmap*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.regmap* %0, %struct.regmap** %8, align 8
  store i8* %1, i8** %9, align 8
  store i64* %2, i64** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %18 = load i32, i32* %12, align 4
  store i32 %18, i32* %14, align 4
  br label %19

19:                                               ; preds = %78, %6
  %20 = load i32, i32* %14, align 4
  %21 = load i32, i32* %13, align 4
  %22 = icmp ult i32 %20, %21
  br i1 %22, label %23, label %81

23:                                               ; preds = %19
  %24 = load i32, i32* %11, align 4
  %25 = load i32, i32* %14, align 4
  %26 = load %struct.regmap*, %struct.regmap** %8, align 8
  %27 = getelementptr inbounds %struct.regmap, %struct.regmap* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = mul i32 %25, %28
  %30 = add i32 %24, %29
  store i32 %30, i32* %15, align 4
  %31 = load i64*, i64** %10, align 8
  %32 = load i32, i32* %14, align 4
  %33 = call i32 @regcache_reg_present(i64* %31, i32 %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %23
  %36 = load %struct.regmap*, %struct.regmap** %8, align 8
  %37 = load i32, i32* %15, align 4
  %38 = call i32 @regmap_writeable(%struct.regmap* %36, i32 %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %35, %23
  br label %78

41:                                               ; preds = %35
  %42 = load %struct.regmap*, %struct.regmap** %8, align 8
  %43 = load i8*, i8** %9, align 8
  %44 = load i32, i32* %14, align 4
  %45 = call i32 @regcache_get_val(%struct.regmap* %42, i8* %43, i32 %44)
  store i32 %45, i32* %16, align 4
  %46 = load %struct.regmap*, %struct.regmap** %8, align 8
  %47 = load i32, i32* %15, align 4
  %48 = load i32, i32* %16, align 4
  %49 = call i32 @regcache_reg_needs_sync(%struct.regmap* %46, i32 %47, i32 %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %41
  br label %78

52:                                               ; preds = %41
  %53 = load %struct.regmap*, %struct.regmap** %8, align 8
  %54 = getelementptr inbounds %struct.regmap, %struct.regmap* %53, i32 0, i32 1
  store i32 1, i32* %54, align 4
  %55 = load %struct.regmap*, %struct.regmap** %8, align 8
  %56 = load i32, i32* %15, align 4
  %57 = load i32, i32* %16, align 4
  %58 = call i32 @_regmap_write(%struct.regmap* %55, i32 %56, i32 %57)
  store i32 %58, i32* %17, align 4
  %59 = load %struct.regmap*, %struct.regmap** %8, align 8
  %60 = getelementptr inbounds %struct.regmap, %struct.regmap* %59, i32 0, i32 1
  store i32 0, i32* %60, align 4
  %61 = load i32, i32* %17, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %71

63:                                               ; preds = %52
  %64 = load %struct.regmap*, %struct.regmap** %8, align 8
  %65 = getelementptr inbounds %struct.regmap, %struct.regmap* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* %15, align 4
  %68 = load i32, i32* %17, align 4
  %69 = call i32 @dev_err(i32 %66, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %67, i32 %68)
  %70 = load i32, i32* %17, align 4
  store i32 %70, i32* %7, align 4
  br label %82

71:                                               ; preds = %52
  %72 = load %struct.regmap*, %struct.regmap** %8, align 8
  %73 = getelementptr inbounds %struct.regmap, %struct.regmap* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* %15, align 4
  %76 = load i32, i32* %16, align 4
  %77 = call i32 @dev_dbg(i32 %74, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %75, i32 %76)
  br label %78

78:                                               ; preds = %71, %51, %40
  %79 = load i32, i32* %14, align 4
  %80 = add i32 %79, 1
  store i32 %80, i32* %14, align 4
  br label %19

81:                                               ; preds = %19
  store i32 0, i32* %7, align 4
  br label %82

82:                                               ; preds = %81, %63
  %83 = load i32, i32* %7, align 4
  ret i32 %83
}

declare dso_local i32 @regcache_reg_present(i64*, i32) #1

declare dso_local i32 @regmap_writeable(%struct.regmap*, i32) #1

declare dso_local i32 @regcache_get_val(%struct.regmap*, i8*, i32) #1

declare dso_local i32 @regcache_reg_needs_sync(%struct.regmap*, i32, i32) #1

declare dso_local i32 @_regmap_write(%struct.regmap*, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
