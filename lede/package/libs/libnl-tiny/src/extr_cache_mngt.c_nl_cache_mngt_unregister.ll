; ModuleID = '/home/carl/AnghaBench/lede/package/libs/libnl-tiny/src/extr_cache_mngt.c_nl_cache_mngt_unregister.c'
source_filename = "/home/carl/AnghaBench/lede/package/libs/libnl-tiny/src/extr_cache_mngt.c_nl_cache_mngt_unregister.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nl_cache_ops = type { %struct.nl_cache_ops*, i32 }

@cache_ops = common dso_local global %struct.nl_cache_ops* null, align 8
@NLE_NOCACHE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Unregistered cache operations %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nl_cache_mngt_unregister(%struct.nl_cache_ops* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nl_cache_ops*, align 8
  %4 = alloca %struct.nl_cache_ops*, align 8
  %5 = alloca %struct.nl_cache_ops**, align 8
  store %struct.nl_cache_ops* %0, %struct.nl_cache_ops** %3, align 8
  store %struct.nl_cache_ops** @cache_ops, %struct.nl_cache_ops*** %5, align 8
  br label %6

6:                                                ; preds = %16, %1
  %7 = load %struct.nl_cache_ops**, %struct.nl_cache_ops*** %5, align 8
  %8 = load %struct.nl_cache_ops*, %struct.nl_cache_ops** %7, align 8
  store %struct.nl_cache_ops* %8, %struct.nl_cache_ops** %4, align 8
  %9 = icmp ne %struct.nl_cache_ops* %8, null
  br i1 %9, label %10, label %19

10:                                               ; preds = %6
  %11 = load %struct.nl_cache_ops*, %struct.nl_cache_ops** %4, align 8
  %12 = load %struct.nl_cache_ops*, %struct.nl_cache_ops** %3, align 8
  %13 = icmp eq %struct.nl_cache_ops* %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %10
  br label %19

15:                                               ; preds = %10
  br label %16

16:                                               ; preds = %15
  %17 = load %struct.nl_cache_ops*, %struct.nl_cache_ops** %4, align 8
  %18 = getelementptr inbounds %struct.nl_cache_ops, %struct.nl_cache_ops* %17, i32 0, i32 0
  store %struct.nl_cache_ops** %18, %struct.nl_cache_ops*** %5, align 8
  br label %6

19:                                               ; preds = %14, %6
  %20 = load %struct.nl_cache_ops*, %struct.nl_cache_ops** %4, align 8
  %21 = icmp ne %struct.nl_cache_ops* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %19
  %23 = load i32, i32* @NLE_NOCACHE, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %34

25:                                               ; preds = %19
  %26 = load %struct.nl_cache_ops*, %struct.nl_cache_ops** %3, align 8
  %27 = getelementptr inbounds %struct.nl_cache_ops, %struct.nl_cache_ops* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @NL_DBG(i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %28)
  %30 = load %struct.nl_cache_ops*, %struct.nl_cache_ops** %4, align 8
  %31 = getelementptr inbounds %struct.nl_cache_ops, %struct.nl_cache_ops* %30, i32 0, i32 0
  %32 = load %struct.nl_cache_ops*, %struct.nl_cache_ops** %31, align 8
  %33 = load %struct.nl_cache_ops**, %struct.nl_cache_ops*** %5, align 8
  store %struct.nl_cache_ops* %32, %struct.nl_cache_ops** %33, align 8
  store i32 0, i32* %2, align 4
  br label %34

34:                                               ; preds = %25, %22
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

declare dso_local i32 @NL_DBG(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
