; ModuleID = '/home/carl/AnghaBench/lede/package/lean/shortcut-fe/src/extr_userspace_example.c_fast_classifier_init.c'
source_filename = "/home/carl/AnghaBench/lede/package/lean/shortcut-fe/src/extr_userspace_example.c_fast_classifier_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@sock = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Unable to allocation socket.\0A\00", align 1
@sock_event = common dso_local global i32 0, align 4
@FAST_CLASSIFIER_GENL_NAME = common dso_local global i32 0, align 4
@family = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [26 x i8] c"Unable to resolve family\0A\00", align 1
@FAST_CLASSIFIER_GENL_MCGRP = common dso_local global i32 0, align 4
@grp_id = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [31 x i8] c"Unable to resolve mcast group\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"Unable to add membership\0A\00", align 1
@NL_CB_VALID = common dso_local global i32 0, align 4
@NL_CB_CUSTOM = common dso_local global i32 0, align 4
@parse_cb = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fast_classifier_init() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = call i32 (...) @nl_socket_alloc()
  store i32 %3, i32* @sock, align 4
  %4 = load i32, i32* @sock, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %0
  %7 = call i32 @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %1, align 4
  br label %63

8:                                                ; preds = %0
  %9 = load i32, i32* @sock, align 4
  %10 = call i32 @genl_connect(i32 %9)
  %11 = call i32 (...) @nl_socket_alloc()
  store i32 %11, i32* @sock_event, align 4
  %12 = load i32, i32* @sock_event, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %20, label %14

14:                                               ; preds = %8
  %15 = load i32, i32* @sock, align 4
  %16 = call i32 @nl_close(i32 %15)
  %17 = load i32, i32* @sock, align 4
  %18 = call i32 @nl_socket_free(i32 %17)
  %19 = call i32 @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %1, align 4
  br label %63

20:                                               ; preds = %8
  %21 = load i32, i32* @sock_event, align 4
  %22 = call i32 @genl_connect(i32 %21)
  %23 = load i32, i32* @sock, align 4
  %24 = load i32, i32* @FAST_CLASSIFIER_GENL_NAME, align 4
  %25 = call i64 @genl_ctrl_resolve(i32 %23, i32 %24)
  store i64 %25, i64* @family, align 8
  %26 = load i64, i64* @family, align 8
  %27 = icmp slt i64 %26, 0
  br i1 %27, label %28, label %38

28:                                               ; preds = %20
  %29 = load i32, i32* @sock_event, align 4
  %30 = call i32 @nl_close(i32 %29)
  %31 = load i32, i32* @sock, align 4
  %32 = call i32 @nl_close(i32 %31)
  %33 = load i32, i32* @sock, align 4
  %34 = call i32 @nl_socket_free(i32 %33)
  %35 = load i32, i32* @sock_event, align 4
  %36 = call i32 @nl_socket_free(i32 %35)
  %37 = call i32 @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %1, align 4
  br label %63

38:                                               ; preds = %20
  %39 = load i32, i32* @sock, align 4
  %40 = load i32, i32* @FAST_CLASSIFIER_GENL_NAME, align 4
  %41 = load i32, i32* @FAST_CLASSIFIER_GENL_MCGRP, align 4
  %42 = call i64 @genl_ctrl_resolve_grp(i32 %39, i32 %40, i32 %41)
  store i64 %42, i64* @grp_id, align 8
  %43 = load i64, i64* @grp_id, align 8
  %44 = icmp slt i64 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %38
  %46 = call i32 @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %1, align 4
  br label %63

47:                                               ; preds = %38
  %48 = load i32, i32* @sock_event, align 4
  %49 = load i64, i64* @grp_id, align 8
  %50 = call i32 @nl_socket_add_membership(i32 %48, i64 %49)
  store i32 %50, i32* %2, align 4
  %51 = load i32, i32* %2, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %47
  %54 = call i32 @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  store i32 -1, i32* %1, align 4
  br label %63

55:                                               ; preds = %47
  %56 = load i32, i32* @sock_event, align 4
  %57 = call i32 @nl_socket_disable_seq_check(i32 %56)
  %58 = load i32, i32* @sock_event, align 4
  %59 = load i32, i32* @NL_CB_VALID, align 4
  %60 = load i32, i32* @NL_CB_CUSTOM, align 4
  %61 = load i32, i32* @parse_cb, align 4
  %62 = call i32 @nl_socket_modify_cb(i32 %58, i32 %59, i32 %60, i32 %61, i32* null)
  store i32 0, i32* %1, align 4
  br label %63

63:                                               ; preds = %55, %53, %45, %28, %14, %6
  %64 = load i32, i32* %1, align 4
  ret i32 %64
}

declare dso_local i32 @nl_socket_alloc(...) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @genl_connect(i32) #1

declare dso_local i32 @nl_close(i32) #1

declare dso_local i32 @nl_socket_free(i32) #1

declare dso_local i64 @genl_ctrl_resolve(i32, i32) #1

declare dso_local i64 @genl_ctrl_resolve_grp(i32, i32, i32) #1

declare dso_local i32 @nl_socket_add_membership(i32, i64) #1

declare dso_local i32 @nl_socket_disable_seq_check(i32) #1

declare dso_local i32 @nl_socket_modify_cb(i32, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
