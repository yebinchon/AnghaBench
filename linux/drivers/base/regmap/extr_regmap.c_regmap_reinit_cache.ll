; ModuleID = '/home/carl/AnghaBench/linux/drivers/base/regmap/extr_regmap.c_regmap_reinit_cache.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/base/regmap/extr_regmap.c_regmap_reinit_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regmap = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.regmap_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @regmap_reinit_cache(%struct.regmap* %0, %struct.regmap_config* %1) #0 {
  %3 = alloca %struct.regmap*, align 8
  %4 = alloca %struct.regmap_config*, align 8
  store %struct.regmap* %0, %struct.regmap** %3, align 8
  store %struct.regmap_config* %1, %struct.regmap_config** %4, align 8
  %5 = load %struct.regmap*, %struct.regmap** %3, align 8
  %6 = call i32 @regcache_exit(%struct.regmap* %5)
  %7 = load %struct.regmap*, %struct.regmap** %3, align 8
  %8 = call i32 @regmap_debugfs_exit(%struct.regmap* %7)
  %9 = load %struct.regmap_config*, %struct.regmap_config** %4, align 8
  %10 = getelementptr inbounds %struct.regmap_config, %struct.regmap_config* %9, i32 0, i32 8
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.regmap*, %struct.regmap** %3, align 8
  %13 = getelementptr inbounds %struct.regmap, %struct.regmap* %12, i32 0, i32 9
  store i32 %11, i32* %13, align 4
  %14 = load %struct.regmap_config*, %struct.regmap_config** %4, align 8
  %15 = getelementptr inbounds %struct.regmap_config, %struct.regmap_config* %14, i32 0, i32 7
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.regmap*, %struct.regmap** %3, align 8
  %18 = getelementptr inbounds %struct.regmap, %struct.regmap* %17, i32 0, i32 8
  store i32 %16, i32* %18, align 4
  %19 = load %struct.regmap_config*, %struct.regmap_config** %4, align 8
  %20 = getelementptr inbounds %struct.regmap_config, %struct.regmap_config* %19, i32 0, i32 6
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.regmap*, %struct.regmap** %3, align 8
  %23 = getelementptr inbounds %struct.regmap, %struct.regmap* %22, i32 0, i32 7
  store i32 %21, i32* %23, align 4
  %24 = load %struct.regmap_config*, %struct.regmap_config** %4, align 8
  %25 = getelementptr inbounds %struct.regmap_config, %struct.regmap_config* %24, i32 0, i32 5
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.regmap*, %struct.regmap** %3, align 8
  %28 = getelementptr inbounds %struct.regmap, %struct.regmap* %27, i32 0, i32 6
  store i32 %26, i32* %28, align 4
  %29 = load %struct.regmap_config*, %struct.regmap_config** %4, align 8
  %30 = getelementptr inbounds %struct.regmap_config, %struct.regmap_config* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.regmap*, %struct.regmap** %3, align 8
  %33 = getelementptr inbounds %struct.regmap, %struct.regmap* %32, i32 0, i32 5
  store i32 %31, i32* %33, align 4
  %34 = load %struct.regmap_config*, %struct.regmap_config** %4, align 8
  %35 = getelementptr inbounds %struct.regmap_config, %struct.regmap_config* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.regmap*, %struct.regmap** %3, align 8
  %38 = getelementptr inbounds %struct.regmap, %struct.regmap* %37, i32 0, i32 4
  store i32 %36, i32* %38, align 4
  %39 = load %struct.regmap_config*, %struct.regmap_config** %4, align 8
  %40 = getelementptr inbounds %struct.regmap_config, %struct.regmap_config* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.regmap*, %struct.regmap** %3, align 8
  %43 = getelementptr inbounds %struct.regmap, %struct.regmap* %42, i32 0, i32 3
  store i32 %41, i32* %43, align 4
  %44 = load %struct.regmap_config*, %struct.regmap_config** %4, align 8
  %45 = getelementptr inbounds %struct.regmap_config, %struct.regmap_config* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.regmap*, %struct.regmap** %3, align 8
  %48 = getelementptr inbounds %struct.regmap, %struct.regmap* %47, i32 0, i32 2
  store i32 %46, i32* %48, align 4
  %49 = load %struct.regmap*, %struct.regmap** %3, align 8
  %50 = load %struct.regmap_config*, %struct.regmap_config** %4, align 8
  %51 = getelementptr inbounds %struct.regmap_config, %struct.regmap_config* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @regmap_debugfs_init(%struct.regmap* %49, i32 %52)
  %54 = load %struct.regmap*, %struct.regmap** %3, align 8
  %55 = getelementptr inbounds %struct.regmap, %struct.regmap* %54, i32 0, i32 0
  store i32 0, i32* %55, align 4
  %56 = load %struct.regmap*, %struct.regmap** %3, align 8
  %57 = getelementptr inbounds %struct.regmap, %struct.regmap* %56, i32 0, i32 1
  store i32 0, i32* %57, align 4
  %58 = load %struct.regmap*, %struct.regmap** %3, align 8
  %59 = load %struct.regmap_config*, %struct.regmap_config** %4, align 8
  %60 = call i32 @regcache_init(%struct.regmap* %58, %struct.regmap_config* %59)
  ret i32 %60
}

declare dso_local i32 @regcache_exit(%struct.regmap*) #1

declare dso_local i32 @regmap_debugfs_exit(%struct.regmap*) #1

declare dso_local i32 @regmap_debugfs_init(%struct.regmap*, i32) #1

declare dso_local i32 @regcache_init(%struct.regmap*, %struct.regmap_config*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
