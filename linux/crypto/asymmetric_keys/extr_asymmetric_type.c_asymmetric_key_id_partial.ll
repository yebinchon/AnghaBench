; ModuleID = '/home/carl/AnghaBench/linux/crypto/asymmetric_keys/extr_asymmetric_type.c_asymmetric_key_id_partial.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/asymmetric_keys/extr_asymmetric_type.c_asymmetric_key_id_partial.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asymmetric_key_id = type { i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @asymmetric_key_id_partial(%struct.asymmetric_key_id* %0, %struct.asymmetric_key_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.asymmetric_key_id*, align 8
  %5 = alloca %struct.asymmetric_key_id*, align 8
  store %struct.asymmetric_key_id* %0, %struct.asymmetric_key_id** %4, align 8
  store %struct.asymmetric_key_id* %1, %struct.asymmetric_key_id** %5, align 8
  %6 = load %struct.asymmetric_key_id*, %struct.asymmetric_key_id** %4, align 8
  %7 = icmp ne %struct.asymmetric_key_id* %6, null
  br i1 %7, label %8, label %11

8:                                                ; preds = %2
  %9 = load %struct.asymmetric_key_id*, %struct.asymmetric_key_id** %5, align 8
  %10 = icmp ne %struct.asymmetric_key_id* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %8, %2
  store i32 0, i32* %3, align 4
  br label %42

12:                                               ; preds = %8
  %13 = load %struct.asymmetric_key_id*, %struct.asymmetric_key_id** %4, align 8
  %14 = getelementptr inbounds %struct.asymmetric_key_id, %struct.asymmetric_key_id* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.asymmetric_key_id*, %struct.asymmetric_key_id** %5, align 8
  %17 = getelementptr inbounds %struct.asymmetric_key_id, %struct.asymmetric_key_id* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp slt i64 %15, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %12
  store i32 0, i32* %3, align 4
  br label %42

21:                                               ; preds = %12
  %22 = load %struct.asymmetric_key_id*, %struct.asymmetric_key_id** %4, align 8
  %23 = getelementptr inbounds %struct.asymmetric_key_id, %struct.asymmetric_key_id* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.asymmetric_key_id*, %struct.asymmetric_key_id** %4, align 8
  %26 = getelementptr inbounds %struct.asymmetric_key_id, %struct.asymmetric_key_id* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.asymmetric_key_id*, %struct.asymmetric_key_id** %5, align 8
  %29 = getelementptr inbounds %struct.asymmetric_key_id, %struct.asymmetric_key_id* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = sub nsw i64 %27, %30
  %32 = add nsw i64 %24, %31
  %33 = load %struct.asymmetric_key_id*, %struct.asymmetric_key_id** %5, align 8
  %34 = getelementptr inbounds %struct.asymmetric_key_id, %struct.asymmetric_key_id* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.asymmetric_key_id*, %struct.asymmetric_key_id** %5, align 8
  %37 = getelementptr inbounds %struct.asymmetric_key_id, %struct.asymmetric_key_id* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = call i64 @memcmp(i64 %32, i64 %35, i64 %38)
  %40 = icmp eq i64 %39, 0
  %41 = zext i1 %40 to i32
  store i32 %41, i32* %3, align 4
  br label %42

42:                                               ; preds = %21, %20, %11
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local i64 @memcmp(i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
