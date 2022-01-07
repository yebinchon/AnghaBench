; ModuleID = '/home/carl/AnghaBench/kphp-kdb/statsx/extr_statsx-data.c_tl_serialize_subcnt_list.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/statsx/extr_statsx-data.c_tl_serialize_subcnt_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.counter = type { i32, i64, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tl_serialize_subcnt_list(%struct.counter* %0) #0 {
  %2 = alloca %struct.counter*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.counter* %0, %struct.counter** %2, align 8
  %7 = load %struct.counter*, %struct.counter** %2, align 8
  %8 = getelementptr inbounds %struct.counter, %struct.counter* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp slt i32 %9, 1296637200
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = call i32 @tl_store_int(i32 0)
  br label %48

13:                                               ; preds = %1
  %14 = load %struct.counter*, %struct.counter** %2, align 8
  %15 = getelementptr inbounds %struct.counter, %struct.counter* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = call i32 @ipopcount(i64 %16)
  store i32 %17, i32* %3, align 4
  %18 = load i32, i32* %3, align 4
  %19 = call i32 @tl_store_int(i32 %18)
  store i64 1, i64* %4, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %20

20:                                               ; preds = %43, %13
  %21 = load i32, i32* %5, align 4
  %22 = icmp slt i32 %21, 64
  br i1 %22, label %23, label %48

23:                                               ; preds = %20
  %24 = load i64, i64* %4, align 8
  %25 = load %struct.counter*, %struct.counter** %2, align 8
  %26 = getelementptr inbounds %struct.counter, %struct.counter* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = and i64 %24, %27
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %42

30:                                               ; preds = %23
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @tl_store_int(i32 %31)
  %33 = load %struct.counter*, %struct.counter** %2, align 8
  %34 = getelementptr inbounds %struct.counter, %struct.counter* %33, i32 0, i32 2
  %35 = load i32*, i32** %34, align 8
  %36 = load i32, i32* %6, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %6, align 4
  %38 = sext i32 %36 to i64
  %39 = getelementptr inbounds i32, i32* %35, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @tl_store_int(i32 %40)
  br label %42

42:                                               ; preds = %30, %23
  br label %43

43:                                               ; preds = %42
  %44 = load i32, i32* %5, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %5, align 4
  %46 = load i64, i64* %4, align 8
  %47 = shl i64 %46, 1
  store i64 %47, i64* %4, align 8
  br label %20

48:                                               ; preds = %11, %20
  ret void
}

declare dso_local i32 @tl_store_int(i32) #1

declare dso_local i32 @ipopcount(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
