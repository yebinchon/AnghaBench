; ModuleID = '/home/carl/AnghaBench/kphp-kdb/msg-search/extr_msg-search-binlog.c_dyn_alloc_new_msg.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/msg-search/extr_msg-search-binlog.c_dyn_alloc_new_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32, i32, i32*, %struct.TYPE_6__* }

@tot_kept_messages = common dso_local global i32 0, align 4
@tot_kept_msg_bytes = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @dyn_alloc_new_msg(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca %struct.TYPE_6__*, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* %5, align 4
  %12 = call %struct.TYPE_5__* @dyn_user_header(i32 %11, i32 1)
  store %struct.TYPE_5__* %12, %struct.TYPE_5__** %8, align 8
  %13 = load i32, i32* %7, align 4
  %14 = sub nsw i32 %13, 1
  %15 = sext i32 %14 to i64
  %16 = mul i64 %15, 4
  %17 = add i64 32, %16
  %18 = trunc i64 %17 to i32
  store i32 %18, i32* %10, align 4
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %20 = icmp ne %struct.TYPE_5__* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %3
  store i32* null, i32** %4, align 8
  br label %54

22:                                               ; preds = %3
  %23 = load i32, i32* %10, align 4
  %24 = call %struct.TYPE_6__* @dyn_alloc(i32 %23, i32 4)
  store %struct.TYPE_6__* %24, %struct.TYPE_6__** %9, align 8
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %26 = icmp ne %struct.TYPE_6__* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %22
  store i32* null, i32** %4, align 8
  br label %54

28:                                               ; preds = %22
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %30, align 8
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 4
  store %struct.TYPE_6__* %31, %struct.TYPE_6__** %33, align 8
  %34 = load i32, i32* %5, align 4
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 8
  %37 = load i32, i32* %6, align 4
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 4
  %40 = load i32, i32* %7, align 4
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 2
  store i32 %40, i32* %42, align 8
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  store %struct.TYPE_6__* %43, %struct.TYPE_6__** %45, align 8
  %46 = load i32, i32* @tot_kept_messages, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* @tot_kept_messages, align 4
  %48 = load i32, i32* %10, align 4
  %49 = load i32, i32* @tot_kept_msg_bytes, align 4
  %50 = add nsw i32 %49, %48
  store i32 %50, i32* @tot_kept_msg_bytes, align 4
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 3
  %53 = load i32*, i32** %52, align 8
  store i32* %53, i32** %4, align 8
  br label %54

54:                                               ; preds = %28, %27, %21
  %55 = load i32*, i32** %4, align 8
  ret i32* %55
}

declare dso_local %struct.TYPE_5__* @dyn_user_header(i32, i32) #1

declare dso_local %struct.TYPE_6__* @dyn_alloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
