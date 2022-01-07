; ModuleID = '/home/carl/AnghaBench/lede/package/libs/libnl-tiny/src/extr_genl_ctrl.c_genl_ctrl_resolve.c'
source_filename = "/home/carl/AnghaBench/lede/package/libs/libnl-tiny/src/extr_genl_ctrl.c_genl_ctrl_resolve.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nl_sock = type { i32 }
%struct.nl_cache = type { i32 }
%struct.genl_family = type { i32 }

@NLE_OBJ_NOTFOUND = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @genl_ctrl_resolve(%struct.nl_sock* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nl_sock*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.nl_cache*, align 8
  %7 = alloca %struct.genl_family*, align 8
  %8 = alloca i32, align 4
  store %struct.nl_sock* %0, %struct.nl_sock** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load %struct.nl_sock*, %struct.nl_sock** %4, align 8
  %10 = call i32 @genl_ctrl_alloc_cache(%struct.nl_sock* %9, %struct.nl_cache** %6)
  store i32 %10, i32* %8, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32, i32* %8, align 4
  store i32 %13, i32* %3, align 4
  br label %32

14:                                               ; preds = %2
  %15 = load %struct.nl_cache*, %struct.nl_cache** %6, align 8
  %16 = load i8*, i8** %5, align 8
  %17 = call %struct.genl_family* @genl_ctrl_search_by_name(%struct.nl_cache* %15, i8* %16)
  store %struct.genl_family* %17, %struct.genl_family** %7, align 8
  %18 = load %struct.genl_family*, %struct.genl_family** %7, align 8
  %19 = icmp eq %struct.genl_family* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %14
  %21 = load i32, i32* @NLE_OBJ_NOTFOUND, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %8, align 4
  br label %28

23:                                               ; preds = %14
  %24 = load %struct.genl_family*, %struct.genl_family** %7, align 8
  %25 = call i32 @genl_family_get_id(%struct.genl_family* %24)
  store i32 %25, i32* %8, align 4
  %26 = load %struct.genl_family*, %struct.genl_family** %7, align 8
  %27 = call i32 @genl_family_put(%struct.genl_family* %26)
  br label %28

28:                                               ; preds = %23, %20
  %29 = load %struct.nl_cache*, %struct.nl_cache** %6, align 8
  %30 = call i32 @nl_cache_free(%struct.nl_cache* %29)
  %31 = load i32, i32* %8, align 4
  store i32 %31, i32* %3, align 4
  br label %32

32:                                               ; preds = %28, %12
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

declare dso_local i32 @genl_ctrl_alloc_cache(%struct.nl_sock*, %struct.nl_cache**) #1

declare dso_local %struct.genl_family* @genl_ctrl_search_by_name(%struct.nl_cache*, i8*) #1

declare dso_local i32 @genl_family_get_id(%struct.genl_family*) #1

declare dso_local i32 @genl_family_put(%struct.genl_family*) #1

declare dso_local i32 @nl_cache_free(%struct.nl_cache*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
