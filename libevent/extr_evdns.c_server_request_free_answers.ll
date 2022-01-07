; ModuleID = '/home/carl/AnghaBench/libevent/extr_evdns.c_server_request_free_answers.c'
source_filename = "/home/carl/AnghaBench/libevent/extr_evdns.c_server_request_free_answers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.server_request = type { %struct.server_reply_item*, %struct.server_reply_item*, %struct.server_reply_item* }
%struct.server_reply_item = type { %struct.server_reply_item*, %struct.server_reply_item*, %struct.server_reply_item* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.server_request*)* @server_request_free_answers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @server_request_free_answers(%struct.server_request* %0) #0 {
  %2 = alloca %struct.server_request*, align 8
  %3 = alloca %struct.server_reply_item*, align 8
  %4 = alloca %struct.server_reply_item*, align 8
  %5 = alloca %struct.server_reply_item**, align 8
  %6 = alloca i32, align 4
  store %struct.server_request* %0, %struct.server_request** %2, align 8
  store i32 0, i32* %6, align 4
  br label %7

7:                                                ; preds = %55, %1
  %8 = load i32, i32* %6, align 4
  %9 = icmp slt i32 %8, 3
  br i1 %9, label %10, label %58

10:                                               ; preds = %7
  %11 = load i32, i32* %6, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %10
  %14 = load %struct.server_request*, %struct.server_request** %2, align 8
  %15 = getelementptr inbounds %struct.server_request, %struct.server_request* %14, i32 0, i32 2
  store %struct.server_reply_item** %15, %struct.server_reply_item*** %5, align 8
  br label %26

16:                                               ; preds = %10
  %17 = load i32, i32* %6, align 4
  %18 = icmp eq i32 %17, 1
  br i1 %18, label %19, label %22

19:                                               ; preds = %16
  %20 = load %struct.server_request*, %struct.server_request** %2, align 8
  %21 = getelementptr inbounds %struct.server_request, %struct.server_request* %20, i32 0, i32 1
  store %struct.server_reply_item** %21, %struct.server_reply_item*** %5, align 8
  br label %25

22:                                               ; preds = %16
  %23 = load %struct.server_request*, %struct.server_request** %2, align 8
  %24 = getelementptr inbounds %struct.server_request, %struct.server_request* %23, i32 0, i32 0
  store %struct.server_reply_item** %24, %struct.server_reply_item*** %5, align 8
  br label %25

25:                                               ; preds = %22, %19
  br label %26

26:                                               ; preds = %25, %13
  %27 = load %struct.server_reply_item**, %struct.server_reply_item*** %5, align 8
  %28 = load %struct.server_reply_item*, %struct.server_reply_item** %27, align 8
  store %struct.server_reply_item* %28, %struct.server_reply_item** %3, align 8
  br label %29

29:                                               ; preds = %49, %26
  %30 = load %struct.server_reply_item*, %struct.server_reply_item** %3, align 8
  %31 = icmp ne %struct.server_reply_item* %30, null
  br i1 %31, label %32, label %53

32:                                               ; preds = %29
  %33 = load %struct.server_reply_item*, %struct.server_reply_item** %3, align 8
  %34 = getelementptr inbounds %struct.server_reply_item, %struct.server_reply_item* %33, i32 0, i32 2
  %35 = load %struct.server_reply_item*, %struct.server_reply_item** %34, align 8
  store %struct.server_reply_item* %35, %struct.server_reply_item** %4, align 8
  %36 = load %struct.server_reply_item*, %struct.server_reply_item** %3, align 8
  %37 = getelementptr inbounds %struct.server_reply_item, %struct.server_reply_item* %36, i32 0, i32 1
  %38 = load %struct.server_reply_item*, %struct.server_reply_item** %37, align 8
  %39 = call i32 @mm_free(%struct.server_reply_item* %38)
  %40 = load %struct.server_reply_item*, %struct.server_reply_item** %3, align 8
  %41 = getelementptr inbounds %struct.server_reply_item, %struct.server_reply_item* %40, i32 0, i32 0
  %42 = load %struct.server_reply_item*, %struct.server_reply_item** %41, align 8
  %43 = icmp ne %struct.server_reply_item* %42, null
  br i1 %43, label %44, label %49

44:                                               ; preds = %32
  %45 = load %struct.server_reply_item*, %struct.server_reply_item** %3, align 8
  %46 = getelementptr inbounds %struct.server_reply_item, %struct.server_reply_item* %45, i32 0, i32 0
  %47 = load %struct.server_reply_item*, %struct.server_reply_item** %46, align 8
  %48 = call i32 @mm_free(%struct.server_reply_item* %47)
  br label %49

49:                                               ; preds = %44, %32
  %50 = load %struct.server_reply_item*, %struct.server_reply_item** %3, align 8
  %51 = call i32 @mm_free(%struct.server_reply_item* %50)
  %52 = load %struct.server_reply_item*, %struct.server_reply_item** %4, align 8
  store %struct.server_reply_item* %52, %struct.server_reply_item** %3, align 8
  br label %29

53:                                               ; preds = %29
  %54 = load %struct.server_reply_item**, %struct.server_reply_item*** %5, align 8
  store %struct.server_reply_item* null, %struct.server_reply_item** %54, align 8
  br label %55

55:                                               ; preds = %53
  %56 = load i32, i32* %6, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %6, align 4
  br label %7

58:                                               ; preds = %7
  ret void
}

declare dso_local i32 @mm_free(%struct.server_reply_item*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
