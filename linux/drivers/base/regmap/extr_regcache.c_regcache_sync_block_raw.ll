; ModuleID = '/home/carl/AnghaBench/linux/drivers/base/regmap/extr_regcache.c_regcache_sync_block_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/base/regmap/extr_regcache.c_regcache_sync_block_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regmap = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regmap*, i8*, i64*, i32, i32, i32)* @regcache_sync_block_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @regcache_sync_block_raw(%struct.regmap* %0, i8* %1, i64* %2, i32 %3, i32 %4, i32 %5) #0 {
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
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  store %struct.regmap* %0, %struct.regmap** %8, align 8
  store i8* %1, i8** %9, align 8
  store i64* %2, i64** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  store i8* null, i8** %18, align 8
  %20 = load i32, i32* %12, align 4
  store i32 %20, i32* %14, align 4
  br label %21

21:                                               ; preds = %82, %6
  %22 = load i32, i32* %14, align 4
  %23 = load i32, i32* %13, align 4
  %24 = icmp ult i32 %22, %23
  br i1 %24, label %25, label %85

25:                                               ; preds = %21
  %26 = load i32, i32* %11, align 4
  %27 = load i32, i32* %14, align 4
  %28 = load %struct.regmap*, %struct.regmap** %8, align 8
  %29 = getelementptr inbounds %struct.regmap, %struct.regmap* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = mul i32 %27, %30
  %32 = add i32 %26, %31
  store i32 %32, i32* %16, align 4
  %33 = load i64*, i64** %10, align 8
  %34 = load i32, i32* %14, align 4
  %35 = call i32 @regcache_reg_present(i64* %33, i32 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %25
  %38 = load %struct.regmap*, %struct.regmap** %8, align 8
  %39 = load i32, i32* %16, align 4
  %40 = call i32 @regmap_writeable(%struct.regmap* %38, i32 %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %52, label %42

42:                                               ; preds = %37, %25
  %43 = load %struct.regmap*, %struct.regmap** %8, align 8
  %44 = load i32, i32* %17, align 4
  %45 = load i32, i32* %16, align 4
  %46 = call i32 @regcache_sync_block_raw_flush(%struct.regmap* %43, i8** %18, i32 %44, i32 %45)
  store i32 %46, i32* %19, align 4
  %47 = load i32, i32* %19, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %42
  %50 = load i32, i32* %19, align 4
  store i32 %50, i32* %7, align 4
  br label %94

51:                                               ; preds = %42
  br label %82

52:                                               ; preds = %37
  %53 = load %struct.regmap*, %struct.regmap** %8, align 8
  %54 = load i8*, i8** %9, align 8
  %55 = load i32, i32* %14, align 4
  %56 = call i32 @regcache_get_val(%struct.regmap* %53, i8* %54, i32 %55)
  store i32 %56, i32* %15, align 4
  %57 = load %struct.regmap*, %struct.regmap** %8, align 8
  %58 = load i32, i32* %16, align 4
  %59 = load i32, i32* %15, align 4
  %60 = call i32 @regcache_reg_needs_sync(%struct.regmap* %57, i32 %58, i32 %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %72, label %62

62:                                               ; preds = %52
  %63 = load %struct.regmap*, %struct.regmap** %8, align 8
  %64 = load i32, i32* %17, align 4
  %65 = load i32, i32* %16, align 4
  %66 = call i32 @regcache_sync_block_raw_flush(%struct.regmap* %63, i8** %18, i32 %64, i32 %65)
  store i32 %66, i32* %19, align 4
  %67 = load i32, i32* %19, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %62
  %70 = load i32, i32* %19, align 4
  store i32 %70, i32* %7, align 4
  br label %94

71:                                               ; preds = %62
  br label %82

72:                                               ; preds = %52
  %73 = load i8*, i8** %18, align 8
  %74 = icmp ne i8* %73, null
  br i1 %74, label %81, label %75

75:                                               ; preds = %72
  %76 = load %struct.regmap*, %struct.regmap** %8, align 8
  %77 = load i8*, i8** %9, align 8
  %78 = load i32, i32* %14, align 4
  %79 = call i8* @regcache_get_val_addr(%struct.regmap* %76, i8* %77, i32 %78)
  store i8* %79, i8** %18, align 8
  %80 = load i32, i32* %16, align 4
  store i32 %80, i32* %17, align 4
  br label %81

81:                                               ; preds = %75, %72
  br label %82

82:                                               ; preds = %81, %71, %51
  %83 = load i32, i32* %14, align 4
  %84 = add i32 %83, 1
  store i32 %84, i32* %14, align 4
  br label %21

85:                                               ; preds = %21
  %86 = load %struct.regmap*, %struct.regmap** %8, align 8
  %87 = load i32, i32* %17, align 4
  %88 = load i32, i32* %16, align 4
  %89 = load %struct.regmap*, %struct.regmap** %8, align 8
  %90 = getelementptr inbounds %struct.regmap, %struct.regmap* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = add i32 %88, %91
  %93 = call i32 @regcache_sync_block_raw_flush(%struct.regmap* %86, i8** %18, i32 %87, i32 %92)
  store i32 %93, i32* %7, align 4
  br label %94

94:                                               ; preds = %85, %69, %49
  %95 = load i32, i32* %7, align 4
  ret i32 %95
}

declare dso_local i32 @regcache_reg_present(i64*, i32) #1

declare dso_local i32 @regmap_writeable(%struct.regmap*, i32) #1

declare dso_local i32 @regcache_sync_block_raw_flush(%struct.regmap*, i8**, i32, i32) #1

declare dso_local i32 @regcache_get_val(%struct.regmap*, i8*, i32) #1

declare dso_local i32 @regcache_reg_needs_sync(%struct.regmap*, i32, i32) #1

declare dso_local i8* @regcache_get_val_addr(%struct.regmap*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
