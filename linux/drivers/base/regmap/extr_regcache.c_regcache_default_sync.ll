; ModuleID = '/home/carl/AnghaBench/linux/drivers/base/regmap/extr_regcache.c_regcache_default_sync.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/base/regmap/extr_regcache.c_regcache_default_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regmap = type { i32, i32, i64 }

@.str = private unnamed_addr constant [33 x i8] c"Unable to sync register %#x. %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"Synced register %#x, value %#x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regmap*, i32, i32)* @regcache_default_sync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @regcache_default_sync(%struct.regmap* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.regmap*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.regmap* %0, %struct.regmap** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* %6, align 4
  store i32 %11, i32* %8, align 4
  br label %12

12:                                               ; preds = %68, %3
  %13 = load i32, i32* %8, align 4
  %14 = load i32, i32* %7, align 4
  %15 = icmp ule i32 %13, %14
  br i1 %15, label %16, label %76

16:                                               ; preds = %12
  %17 = load %struct.regmap*, %struct.regmap** %5, align 8
  %18 = load i32, i32* %8, align 4
  %19 = call i64 @regmap_volatile(%struct.regmap* %17, i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %26, label %21

21:                                               ; preds = %16
  %22 = load %struct.regmap*, %struct.regmap** %5, align 8
  %23 = load i32, i32* %8, align 4
  %24 = call i32 @regmap_writeable(%struct.regmap* %22, i32 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %21, %16
  br label %68

27:                                               ; preds = %21
  %28 = load %struct.regmap*, %struct.regmap** %5, align 8
  %29 = load i32, i32* %8, align 4
  %30 = call i32 @regcache_read(%struct.regmap* %28, i32 %29, i32* %9)
  store i32 %30, i32* %10, align 4
  %31 = load i32, i32* %10, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %27
  %34 = load i32, i32* %10, align 4
  store i32 %34, i32* %4, align 4
  br label %77

35:                                               ; preds = %27
  %36 = load %struct.regmap*, %struct.regmap** %5, align 8
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* %9, align 4
  %39 = call i32 @regcache_reg_needs_sync(%struct.regmap* %36, i32 %37, i32 %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %35
  br label %68

42:                                               ; preds = %35
  %43 = load %struct.regmap*, %struct.regmap** %5, align 8
  %44 = getelementptr inbounds %struct.regmap, %struct.regmap* %43, i32 0, i32 0
  store i32 1, i32* %44, align 8
  %45 = load %struct.regmap*, %struct.regmap** %5, align 8
  %46 = load i32, i32* %8, align 4
  %47 = load i32, i32* %9, align 4
  %48 = call i32 @_regmap_write(%struct.regmap* %45, i32 %46, i32 %47)
  store i32 %48, i32* %10, align 4
  %49 = load %struct.regmap*, %struct.regmap** %5, align 8
  %50 = getelementptr inbounds %struct.regmap, %struct.regmap* %49, i32 0, i32 0
  store i32 0, i32* %50, align 8
  %51 = load i32, i32* %10, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %61

53:                                               ; preds = %42
  %54 = load %struct.regmap*, %struct.regmap** %5, align 8
  %55 = getelementptr inbounds %struct.regmap, %struct.regmap* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %8, align 4
  %58 = load i32, i32* %10, align 4
  %59 = call i32 @dev_err(i32 %56, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %57, i32 %58)
  %60 = load i32, i32* %10, align 4
  store i32 %60, i32* %4, align 4
  br label %77

61:                                               ; preds = %42
  %62 = load %struct.regmap*, %struct.regmap** %5, align 8
  %63 = getelementptr inbounds %struct.regmap, %struct.regmap* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* %8, align 4
  %66 = load i32, i32* %9, align 4
  %67 = call i32 @dev_dbg(i32 %64, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %65, i32 %66)
  br label %68

68:                                               ; preds = %61, %41, %26
  %69 = load %struct.regmap*, %struct.regmap** %5, align 8
  %70 = getelementptr inbounds %struct.regmap, %struct.regmap* %69, i32 0, i32 2
  %71 = load i64, i64* %70, align 8
  %72 = load i32, i32* %8, align 4
  %73 = zext i32 %72 to i64
  %74 = add nsw i64 %73, %71
  %75 = trunc i64 %74 to i32
  store i32 %75, i32* %8, align 4
  br label %12

76:                                               ; preds = %12
  store i32 0, i32* %4, align 4
  br label %77

77:                                               ; preds = %76, %53, %33
  %78 = load i32, i32* %4, align 4
  ret i32 %78
}

declare dso_local i64 @regmap_volatile(%struct.regmap*, i32) #1

declare dso_local i32 @regmap_writeable(%struct.regmap*, i32) #1

declare dso_local i32 @regcache_read(%struct.regmap*, i32, i32*) #1

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
