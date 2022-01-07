; ModuleID = '/home/carl/AnghaBench/lede/package/libs/libnl-tiny/src/extr_cache_mngt.c_nl_cache_mngt_register.c'
source_filename = "/home/carl/AnghaBench/lede/package/libs/libnl-tiny/src/extr_cache_mngt.c_nl_cache_mngt_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nl_cache_ops = type { i32, %struct.nl_cache_ops*, i32 }

@NLE_INVAL = common dso_local global i32 0, align 4
@NLE_EXIST = common dso_local global i32 0, align 4
@cache_ops = common dso_local global %struct.nl_cache_ops* null, align 8
@.str = private unnamed_addr constant [32 x i8] c"Registered cache operations %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nl_cache_mngt_register(%struct.nl_cache_ops* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nl_cache_ops*, align 8
  store %struct.nl_cache_ops* %0, %struct.nl_cache_ops** %3, align 8
  %4 = load %struct.nl_cache_ops*, %struct.nl_cache_ops** %3, align 8
  %5 = getelementptr inbounds %struct.nl_cache_ops, %struct.nl_cache_ops* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %13

8:                                                ; preds = %1
  %9 = load %struct.nl_cache_ops*, %struct.nl_cache_ops** %3, align 8
  %10 = getelementptr inbounds %struct.nl_cache_ops, %struct.nl_cache_ops* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 8
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %8, %1
  %14 = load i32, i32* @NLE_INVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %34

16:                                               ; preds = %8
  %17 = load %struct.nl_cache_ops*, %struct.nl_cache_ops** %3, align 8
  %18 = getelementptr inbounds %struct.nl_cache_ops, %struct.nl_cache_ops* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call i64 @nl_cache_ops_lookup(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %16
  %23 = load i32, i32* @NLE_EXIST, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %34

25:                                               ; preds = %16
  %26 = load %struct.nl_cache_ops*, %struct.nl_cache_ops** @cache_ops, align 8
  %27 = load %struct.nl_cache_ops*, %struct.nl_cache_ops** %3, align 8
  %28 = getelementptr inbounds %struct.nl_cache_ops, %struct.nl_cache_ops* %27, i32 0, i32 1
  store %struct.nl_cache_ops* %26, %struct.nl_cache_ops** %28, align 8
  %29 = load %struct.nl_cache_ops*, %struct.nl_cache_ops** %3, align 8
  store %struct.nl_cache_ops* %29, %struct.nl_cache_ops** @cache_ops, align 8
  %30 = load %struct.nl_cache_ops*, %struct.nl_cache_ops** %3, align 8
  %31 = getelementptr inbounds %struct.nl_cache_ops, %struct.nl_cache_ops* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @NL_DBG(i32 1, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %32)
  store i32 0, i32* %2, align 4
  br label %34

34:                                               ; preds = %25, %22, %13
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

declare dso_local i64 @nl_cache_ops_lookup(i32) #1

declare dso_local i32 @NL_DBG(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
