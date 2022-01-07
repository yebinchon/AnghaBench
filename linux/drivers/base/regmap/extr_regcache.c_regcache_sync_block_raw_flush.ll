; ModuleID = '/home/carl/AnghaBench/linux/drivers/base/regmap/extr_regcache.c_regcache_sync_block_raw_flush.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/base/regmap/extr_regcache.c_regcache_sync_block_raw_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regmap = type { i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [51 x i8] c"Writing %zu bytes for %d registers from 0x%x-0x%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"Unable to sync registers %#x-%#x. %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regmap*, i8**, i32, i32)* @regcache_sync_block_raw_flush to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @regcache_sync_block_raw_flush(%struct.regmap* %0, i8** %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.regmap*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.regmap* %0, %struct.regmap** %6, align 8
  store i8** %1, i8*** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load %struct.regmap*, %struct.regmap** %6, align 8
  %14 = getelementptr inbounds %struct.regmap, %struct.regmap* %13, i32 0, i32 3
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %10, align 8
  %17 = load i8**, i8*** %7, align 8
  %18 = load i8*, i8** %17, align 8
  %19 = icmp eq i8* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %76

21:                                               ; preds = %4
  %22 = load i32, i32* %9, align 4
  %23 = load i32, i32* %8, align 4
  %24 = sub i32 %22, %23
  %25 = load %struct.regmap*, %struct.regmap** %6, align 8
  %26 = getelementptr inbounds %struct.regmap, %struct.regmap* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = udiv i32 %24, %27
  store i32 %28, i32* %12, align 4
  %29 = load %struct.regmap*, %struct.regmap** %6, align 8
  %30 = getelementptr inbounds %struct.regmap, %struct.regmap* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* %12, align 4
  %33 = sext i32 %32 to i64
  %34 = load i64, i64* %10, align 8
  %35 = mul i64 %33, %34
  %36 = trunc i64 %35 to i32
  %37 = load i32, i32* %12, align 4
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* %9, align 4
  %40 = load %struct.regmap*, %struct.regmap** %6, align 8
  %41 = getelementptr inbounds %struct.regmap, %struct.regmap* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = sub i32 %39, %42
  %44 = call i32 @dev_dbg(i32 %31, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %36, i32 %37, i32 %38, i32 %43)
  %45 = load %struct.regmap*, %struct.regmap** %6, align 8
  %46 = getelementptr inbounds %struct.regmap, %struct.regmap* %45, i32 0, i32 1
  store i32 1, i32* %46, align 4
  %47 = load %struct.regmap*, %struct.regmap** %6, align 8
  %48 = load i32, i32* %8, align 4
  %49 = load i8**, i8*** %7, align 8
  %50 = load i8*, i8** %49, align 8
  %51 = load i32, i32* %12, align 4
  %52 = sext i32 %51 to i64
  %53 = load i64, i64* %10, align 8
  %54 = mul i64 %52, %53
  %55 = trunc i64 %54 to i32
  %56 = call i32 @_regmap_raw_write(%struct.regmap* %47, i32 %48, i8* %50, i32 %55)
  store i32 %56, i32* %11, align 4
  %57 = load i32, i32* %11, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %71

59:                                               ; preds = %21
  %60 = load %struct.regmap*, %struct.regmap** %6, align 8
  %61 = getelementptr inbounds %struct.regmap, %struct.regmap* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* %8, align 4
  %64 = load i32, i32* %9, align 4
  %65 = load %struct.regmap*, %struct.regmap** %6, align 8
  %66 = getelementptr inbounds %struct.regmap, %struct.regmap* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = sub i32 %64, %67
  %69 = load i32, i32* %11, align 4
  %70 = call i32 @dev_err(i32 %62, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %63, i32 %68, i32 %69)
  br label %71

71:                                               ; preds = %59, %21
  %72 = load %struct.regmap*, %struct.regmap** %6, align 8
  %73 = getelementptr inbounds %struct.regmap, %struct.regmap* %72, i32 0, i32 1
  store i32 0, i32* %73, align 4
  %74 = load i8**, i8*** %7, align 8
  store i8* null, i8** %74, align 8
  %75 = load i32, i32* %11, align 4
  store i32 %75, i32* %5, align 4
  br label %76

76:                                               ; preds = %71, %20
  %77 = load i32, i32* %5, align 4
  ret i32 %77
}

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @_regmap_raw_write(%struct.regmap*, i32, i8*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
