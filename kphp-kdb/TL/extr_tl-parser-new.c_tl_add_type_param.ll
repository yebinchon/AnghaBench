; ModuleID = '/home/carl/AnghaBench/kphp-kdb/TL/extr_tl-parser-new.c_tl_add_type_param.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/TL/extr_tl-parser-new.c_tl_add_type_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tl_type = type { i32, i32, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tl_add_type_param(%struct.tl_type* %0, i32 %1) #0 {
  %3 = alloca %struct.tl_type*, align 8
  %4 = alloca i32, align 4
  store %struct.tl_type* %0, %struct.tl_type** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.tl_type*, %struct.tl_type** %3, align 8
  %6 = getelementptr inbounds %struct.tl_type, %struct.tl_type* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = and i32 %7, 4
  %9 = call i32 @assert(i32 %8)
  %10 = load %struct.tl_type*, %struct.tl_type** %3, align 8
  %11 = getelementptr inbounds %struct.tl_type, %struct.tl_type* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = icmp sle i32 %12, 64
  %14 = zext i1 %13 to i32
  %15 = call i32 @assert(i32 %14)
  %16 = load i32, i32* %4, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %29

18:                                               ; preds = %2
  %19 = load %struct.tl_type*, %struct.tl_type** %3, align 8
  %20 = getelementptr inbounds %struct.tl_type, %struct.tl_type* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %20, align 4
  %23 = zext i32 %21 to i64
  %24 = shl i64 1, %23
  %25 = load %struct.tl_type*, %struct.tl_type** %3, align 8
  %26 = getelementptr inbounds %struct.tl_type, %struct.tl_type* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = or i64 %27, %24
  store i64 %28, i64* %26, align 8
  br label %34

29:                                               ; preds = %2
  %30 = load %struct.tl_type*, %struct.tl_type** %3, align 8
  %31 = getelementptr inbounds %struct.tl_type, %struct.tl_type* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %31, align 4
  br label %34

34:                                               ; preds = %29, %18
  ret void
}

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
