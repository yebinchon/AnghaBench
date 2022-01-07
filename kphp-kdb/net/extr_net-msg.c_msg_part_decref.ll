; ModuleID = '/home/carl/AnghaBench/kphp-kdb/net/extr_net-msg.c_msg_part_decref.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/net/extr_net-msg.c_msg_part_decref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msg_part = type { i64, %struct.msg_part*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.msg_part*)* @msg_part_decref to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @msg_part_decref(%struct.msg_part* %0) #0 {
  %2 = alloca %struct.msg_part*, align 8
  %3 = alloca %struct.msg_part*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.msg_part* %0, %struct.msg_part** %2, align 8
  store i32 0, i32* %4, align 4
  br label %6

6:                                                ; preds = %43, %1
  %7 = load %struct.msg_part*, %struct.msg_part** %2, align 8
  %8 = icmp ne %struct.msg_part* %7, null
  br i1 %8, label %9, label %54

9:                                                ; preds = %6
  %10 = load %struct.msg_part*, %struct.msg_part** %2, align 8
  %11 = getelementptr inbounds %struct.msg_part, %struct.msg_part* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = add nsw i64 %12, -1
  store i64 %13, i64* %11, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %22

15:                                               ; preds = %9
  %16 = load %struct.msg_part*, %struct.msg_part** %2, align 8
  %17 = getelementptr inbounds %struct.msg_part, %struct.msg_part* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp sgt i64 %18, 0
  %20 = zext i1 %19 to i32
  %21 = call i32 @assert(i32 %20)
  br label %54

22:                                               ; preds = %9
  %23 = load %struct.msg_part*, %struct.msg_part** %2, align 8
  %24 = getelementptr inbounds %struct.msg_part, %struct.msg_part* %23, i32 0, i32 2
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = add nsw i32 %27, -1
  store i32 %28, i32* %26, align 4
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %5, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %38, label %31

31:                                               ; preds = %22
  %32 = load %struct.msg_part*, %struct.msg_part** %2, align 8
  %33 = getelementptr inbounds %struct.msg_part, %struct.msg_part* %32, i32 0, i32 2
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = call i32 @free_msg_buffer(%struct.TYPE_2__* %34)
  %36 = load i32, i32* %4, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %4, align 4
  br label %43

38:                                               ; preds = %22
  %39 = load i32, i32* %5, align 4
  %40 = icmp sgt i32 %39, 0
  %41 = zext i1 %40 to i32
  %42 = call i32 @assert(i32 %41)
  br label %43

43:                                               ; preds = %38, %31
  %44 = load %struct.msg_part*, %struct.msg_part** %2, align 8
  %45 = getelementptr inbounds %struct.msg_part, %struct.msg_part* %44, i32 0, i32 1
  %46 = load %struct.msg_part*, %struct.msg_part** %45, align 8
  store %struct.msg_part* %46, %struct.msg_part** %3, align 8
  %47 = load %struct.msg_part*, %struct.msg_part** %2, align 8
  %48 = getelementptr inbounds %struct.msg_part, %struct.msg_part* %47, i32 0, i32 2
  store %struct.TYPE_2__* null, %struct.TYPE_2__** %48, align 8
  %49 = load %struct.msg_part*, %struct.msg_part** %2, align 8
  %50 = getelementptr inbounds %struct.msg_part, %struct.msg_part* %49, i32 0, i32 1
  store %struct.msg_part* null, %struct.msg_part** %50, align 8
  %51 = load %struct.msg_part*, %struct.msg_part** %2, align 8
  %52 = call i32 @free_msg_part(%struct.msg_part* %51)
  %53 = load %struct.msg_part*, %struct.msg_part** %3, align 8
  store %struct.msg_part* %53, %struct.msg_part** %2, align 8
  br label %6

54:                                               ; preds = %15, %6
  %55 = load i32, i32* %4, align 4
  ret i32 %55
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @free_msg_buffer(%struct.TYPE_2__*) #1

declare dso_local i32 @free_msg_part(%struct.msg_part*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
