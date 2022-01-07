; ModuleID = '/home/carl/AnghaBench/linux/crypto/asymmetric_keys/extr_asymmetric_type.c_asymmetric_key_generate_id.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/asymmetric_keys/extr_asymmetric_type.c_asymmetric_key_generate_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asymmetric_key_id = type { i64, i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.asymmetric_key_id* @asymmetric_key_generate_id(i8* %0, i64 %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.asymmetric_key_id*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.asymmetric_key_id*, align 8
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %11 = load i64, i64* %7, align 8
  %12 = add i64 16, %11
  %13 = load i64, i64* %9, align 8
  %14 = add i64 %12, %13
  %15 = trunc i64 %14 to i32
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call %struct.asymmetric_key_id* @kmalloc(i32 %15, i32 %16)
  store %struct.asymmetric_key_id* %17, %struct.asymmetric_key_id** %10, align 8
  %18 = load %struct.asymmetric_key_id*, %struct.asymmetric_key_id** %10, align 8
  %19 = icmp ne %struct.asymmetric_key_id* %18, null
  br i1 %19, label %24, label %20

20:                                               ; preds = %4
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  %23 = call %struct.asymmetric_key_id* @ERR_PTR(i32 %22)
  store %struct.asymmetric_key_id* %23, %struct.asymmetric_key_id** %5, align 8
  br label %45

24:                                               ; preds = %4
  %25 = load i64, i64* %7, align 8
  %26 = load i64, i64* %9, align 8
  %27 = add i64 %25, %26
  %28 = load %struct.asymmetric_key_id*, %struct.asymmetric_key_id** %10, align 8
  %29 = getelementptr inbounds %struct.asymmetric_key_id, %struct.asymmetric_key_id* %28, i32 0, i32 0
  store i64 %27, i64* %29, align 8
  %30 = load %struct.asymmetric_key_id*, %struct.asymmetric_key_id** %10, align 8
  %31 = getelementptr inbounds %struct.asymmetric_key_id, %struct.asymmetric_key_id* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load i8*, i8** %6, align 8
  %34 = load i64, i64* %7, align 8
  %35 = call i32 @memcpy(i64 %32, i8* %33, i64 %34)
  %36 = load %struct.asymmetric_key_id*, %struct.asymmetric_key_id** %10, align 8
  %37 = getelementptr inbounds %struct.asymmetric_key_id, %struct.asymmetric_key_id* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* %7, align 8
  %40 = add i64 %38, %39
  %41 = load i8*, i8** %8, align 8
  %42 = load i64, i64* %9, align 8
  %43 = call i32 @memcpy(i64 %40, i8* %41, i64 %42)
  %44 = load %struct.asymmetric_key_id*, %struct.asymmetric_key_id** %10, align 8
  store %struct.asymmetric_key_id* %44, %struct.asymmetric_key_id** %5, align 8
  br label %45

45:                                               ; preds = %24, %20
  %46 = load %struct.asymmetric_key_id*, %struct.asymmetric_key_id** %5, align 8
  ret %struct.asymmetric_key_id* %46
}

declare dso_local %struct.asymmetric_key_id* @kmalloc(i32, i32) #1

declare dso_local %struct.asymmetric_key_id* @ERR_PTR(i32) #1

declare dso_local i32 @memcpy(i64, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
