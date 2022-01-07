; ModuleID = '/home/carl/AnghaBench/lede/package/libs/libnl-tiny/src/extr_nl.c_nl_send_simple.c'
source_filename = "/home/carl/AnghaBench/lede/package/libs/libnl-tiny/src/extr_nl.c_nl_send_simple.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nl_sock = type { i32 }
%struct.nl_msg = type { i32 }

@NLE_NOMEM = common dso_local global i32 0, align 4
@NLMSG_ALIGNTO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nl_send_simple(%struct.nl_sock* %0, i32 %1, i32 %2, i8* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.nl_sock*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.nl_msg*, align 8
  store %struct.nl_sock* %0, %struct.nl_sock** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i64 %4, i64* %11, align 8
  %14 = load i32, i32* %8, align 4
  %15 = load i32, i32* %9, align 4
  %16 = call %struct.nl_msg* @nlmsg_alloc_simple(i32 %14, i32 %15)
  store %struct.nl_msg* %16, %struct.nl_msg** %13, align 8
  %17 = load %struct.nl_msg*, %struct.nl_msg** %13, align 8
  %18 = icmp ne %struct.nl_msg* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %5
  %20 = load i32, i32* @NLE_NOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %6, align 4
  br label %46

22:                                               ; preds = %5
  %23 = load i8*, i8** %10, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %25, label %38

25:                                               ; preds = %22
  %26 = load i64, i64* %11, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %38

28:                                               ; preds = %25
  %29 = load %struct.nl_msg*, %struct.nl_msg** %13, align 8
  %30 = load i8*, i8** %10, align 8
  %31 = load i64, i64* %11, align 8
  %32 = load i32, i32* @NLMSG_ALIGNTO, align 4
  %33 = call i32 @nlmsg_append(%struct.nl_msg* %29, i8* %30, i64 %31, i32 %32)
  store i32 %33, i32* %12, align 4
  %34 = load i32, i32* %12, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %28
  br label %42

37:                                               ; preds = %28
  br label %38

38:                                               ; preds = %37, %25, %22
  %39 = load %struct.nl_sock*, %struct.nl_sock** %7, align 8
  %40 = load %struct.nl_msg*, %struct.nl_msg** %13, align 8
  %41 = call i32 @nl_send_auto_complete(%struct.nl_sock* %39, %struct.nl_msg* %40)
  store i32 %41, i32* %12, align 4
  br label %42

42:                                               ; preds = %38, %36
  %43 = load %struct.nl_msg*, %struct.nl_msg** %13, align 8
  %44 = call i32 @nlmsg_free(%struct.nl_msg* %43)
  %45 = load i32, i32* %12, align 4
  store i32 %45, i32* %6, align 4
  br label %46

46:                                               ; preds = %42, %19
  %47 = load i32, i32* %6, align 4
  ret i32 %47
}

declare dso_local %struct.nl_msg* @nlmsg_alloc_simple(i32, i32) #1

declare dso_local i32 @nlmsg_append(%struct.nl_msg*, i8*, i64, i32) #1

declare dso_local i32 @nl_send_auto_complete(%struct.nl_sock*, %struct.nl_msg*) #1

declare dso_local i32 @nlmsg_free(%struct.nl_msg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
