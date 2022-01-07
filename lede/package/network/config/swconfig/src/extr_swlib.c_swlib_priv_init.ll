; ModuleID = '/home/carl/AnghaBench/lede/package/network/config/swconfig/src/extr_swlib.c_swlib_priv_init.c'
source_filename = "/home/carl/AnghaBench/lede/package/network/config/swconfig/src/extr_swlib.c_swlib_priv_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@handle = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Failed to create handle\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"Failed to connect to generic netlink\0A\00", align 1
@cache = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"Failed to allocate netlink cache\0A\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"switch\00", align 1
@family = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [24 x i8] c"Switch API not present\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @swlib_priv_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @swlib_priv_init() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = call i32 (...) @nl_socket_alloc()
  store i32 %3, i32* @handle, align 4
  %4 = load i32, i32* @handle, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %0
  %7 = call i32 @DPRINTF(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %29

8:                                                ; preds = %0
  %9 = load i32, i32* @handle, align 4
  %10 = call i64 @genl_connect(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %8
  %13 = call i32 @DPRINTF(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  br label %29

14:                                               ; preds = %8
  %15 = load i32, i32* @handle, align 4
  %16 = call i32 @genl_ctrl_alloc_cache(i32 %15, i32* @cache)
  store i32 %16, i32* %2, align 4
  %17 = load i32, i32* %2, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %14
  %20 = call i32 @DPRINTF(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  br label %29

21:                                               ; preds = %14
  %22 = load i32, i32* @cache, align 4
  %23 = call i32 @genl_ctrl_search_by_name(i32 %22, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  store i32 %23, i32* @family, align 4
  %24 = load i32, i32* @family, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %21
  %27 = call i32 @DPRINTF(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0))
  br label %29

28:                                               ; preds = %21
  store i32 0, i32* %1, align 4
  br label %33

29:                                               ; preds = %26, %19, %12, %6
  %30 = call i32 (...) @swlib_priv_free()
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %1, align 4
  br label %33

33:                                               ; preds = %29, %28
  %34 = load i32, i32* %1, align 4
  ret i32 %34
}

declare dso_local i32 @nl_socket_alloc(...) #1

declare dso_local i32 @DPRINTF(i8*) #1

declare dso_local i64 @genl_connect(i32) #1

declare dso_local i32 @genl_ctrl_alloc_cache(i32, i32*) #1

declare dso_local i32 @genl_ctrl_search_by_name(i32, i8*) #1

declare dso_local i32 @swlib_priv_free(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
