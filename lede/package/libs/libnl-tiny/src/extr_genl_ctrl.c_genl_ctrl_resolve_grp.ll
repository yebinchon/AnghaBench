; ModuleID = '/home/carl/AnghaBench/lede/package/libs/libnl-tiny/src/extr_genl_ctrl.c_genl_ctrl_resolve_grp.c'
source_filename = "/home/carl/AnghaBench/lede/package/libs/libnl-tiny/src/extr_genl_ctrl.c_genl_ctrl_resolve_grp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nl_sock = type { i32 }
%struct.nl_cache = type { i32 }
%struct.genl_family = type { i32 }

@NLE_OBJ_NOTFOUND = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @genl_ctrl_resolve_grp(%struct.nl_sock* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nl_sock*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.nl_cache*, align 8
  %9 = alloca %struct.genl_family*, align 8
  %10 = alloca i32, align 4
  store %struct.nl_sock* %0, %struct.nl_sock** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = load %struct.nl_sock*, %struct.nl_sock** %5, align 8
  %12 = call i32 @genl_ctrl_alloc_cache(%struct.nl_sock* %11, %struct.nl_cache** %8)
  store i32 %12, i32* %10, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %3
  %15 = load i32, i32* %10, align 4
  store i32 %15, i32* %4, align 4
  br label %35

16:                                               ; preds = %3
  %17 = load %struct.nl_cache*, %struct.nl_cache** %8, align 8
  %18 = load i8*, i8** %6, align 8
  %19 = call %struct.genl_family* @genl_ctrl_search_by_name(%struct.nl_cache* %17, i8* %18)
  store %struct.genl_family* %19, %struct.genl_family** %9, align 8
  %20 = load %struct.genl_family*, %struct.genl_family** %9, align 8
  %21 = icmp eq %struct.genl_family* %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %16
  %23 = load i32, i32* @NLE_OBJ_NOTFOUND, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %10, align 4
  br label %31

25:                                               ; preds = %16
  %26 = load %struct.genl_family*, %struct.genl_family** %9, align 8
  %27 = load i8*, i8** %7, align 8
  %28 = call i32 @genl_ctrl_grp_by_name(%struct.genl_family* %26, i8* %27)
  store i32 %28, i32* %10, align 4
  %29 = load %struct.genl_family*, %struct.genl_family** %9, align 8
  %30 = call i32 @genl_family_put(%struct.genl_family* %29)
  br label %31

31:                                               ; preds = %25, %22
  %32 = load %struct.nl_cache*, %struct.nl_cache** %8, align 8
  %33 = call i32 @nl_cache_free(%struct.nl_cache* %32)
  %34 = load i32, i32* %10, align 4
  store i32 %34, i32* %4, align 4
  br label %35

35:                                               ; preds = %31, %14
  %36 = load i32, i32* %4, align 4
  ret i32 %36
}

declare dso_local i32 @genl_ctrl_alloc_cache(%struct.nl_sock*, %struct.nl_cache**) #1

declare dso_local %struct.genl_family* @genl_ctrl_search_by_name(%struct.nl_cache*, i8*) #1

declare dso_local i32 @genl_ctrl_grp_by_name(%struct.genl_family*, i8*) #1

declare dso_local i32 @genl_family_put(%struct.genl_family*) #1

declare dso_local i32 @nl_cache_free(%struct.nl_cache*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
