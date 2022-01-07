; ModuleID = '/home/carl/AnghaBench/kphp-kdb/vkext/extr_vkext_schema_memcache.c_get_var_space.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/vkext/extr_vkext_schema_memcache.c_get_var_space.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tl_tree = type { i32 }

@__vars = common dso_local global %struct.tl_tree** null, align 8
@last_var_ptr = common dso_local global %struct.tl_tree** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.tl_tree** @get_var_space(%struct.tl_tree** %0, i32 %1) #0 {
  %3 = alloca %struct.tl_tree**, align 8
  %4 = alloca %struct.tl_tree**, align 8
  %5 = alloca i32, align 4
  store %struct.tl_tree** %0, %struct.tl_tree*** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.tl_tree**, %struct.tl_tree*** %4, align 8
  %7 = load i32, i32* %5, align 4
  %8 = sext i32 %7 to i64
  %9 = sub i64 0, %8
  %10 = getelementptr inbounds %struct.tl_tree*, %struct.tl_tree** %6, i64 %9
  %11 = load %struct.tl_tree**, %struct.tl_tree*** @__vars, align 8
  %12 = icmp ult %struct.tl_tree** %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store %struct.tl_tree** null, %struct.tl_tree*** %3, align 8
  br label %34

14:                                               ; preds = %2
  %15 = load %struct.tl_tree**, %struct.tl_tree*** @last_var_ptr, align 8
  %16 = load %struct.tl_tree**, %struct.tl_tree*** %4, align 8
  %17 = load i32, i32* %5, align 4
  %18 = sext i32 %17 to i64
  %19 = sub i64 0, %18
  %20 = getelementptr inbounds %struct.tl_tree*, %struct.tl_tree** %16, i64 %19
  %21 = icmp ugt %struct.tl_tree** %15, %20
  br i1 %21, label %22, label %28

22:                                               ; preds = %14
  %23 = load %struct.tl_tree**, %struct.tl_tree*** %4, align 8
  %24 = load i32, i32* %5, align 4
  %25 = sext i32 %24 to i64
  %26 = sub i64 0, %25
  %27 = getelementptr inbounds %struct.tl_tree*, %struct.tl_tree** %23, i64 %26
  store %struct.tl_tree** %27, %struct.tl_tree*** @last_var_ptr, align 8
  br label %28

28:                                               ; preds = %22, %14
  %29 = load %struct.tl_tree**, %struct.tl_tree*** %4, align 8
  %30 = load i32, i32* %5, align 4
  %31 = sext i32 %30 to i64
  %32 = sub i64 0, %31
  %33 = getelementptr inbounds %struct.tl_tree*, %struct.tl_tree** %29, i64 %32
  store %struct.tl_tree** %33, %struct.tl_tree*** %3, align 8
  br label %34

34:                                               ; preds = %28, %13
  %35 = load %struct.tl_tree**, %struct.tl_tree*** %3, align 8
  ret %struct.tl_tree** %35
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
