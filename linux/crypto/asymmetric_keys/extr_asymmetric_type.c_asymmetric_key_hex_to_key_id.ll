; ModuleID = '/home/carl/AnghaBench/linux/crypto/asymmetric_keys/extr_asymmetric_type.c_asymmetric_key_hex_to_key_id.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/asymmetric_keys/extr_asymmetric_type.c_asymmetric_key_hex_to_key_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asymmetric_key_id = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.asymmetric_key_id* @asymmetric_key_hex_to_key_id(i8* %0) #0 {
  %2 = alloca %struct.asymmetric_key_id*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.asymmetric_key_id*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = load i8, i8* %7, align 1
  %9 = icmp ne i8 %8, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* @EINVAL, align 4
  %12 = sub nsw i32 0, %11
  %13 = call %struct.asymmetric_key_id* @ERR_PTR(i32 %12)
  store %struct.asymmetric_key_id* %13, %struct.asymmetric_key_id** %2, align 8
  br label %53

14:                                               ; preds = %1
  %15 = load i8*, i8** %3, align 8
  %16 = call i64 @strlen(i8* %15)
  store i64 %16, i64* %5, align 8
  %17 = load i64, i64* %5, align 8
  %18 = and i64 %17, 1
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %14
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  %23 = call %struct.asymmetric_key_id* @ERR_PTR(i32 %22)
  store %struct.asymmetric_key_id* %23, %struct.asymmetric_key_id** %2, align 8
  br label %53

24:                                               ; preds = %14
  %25 = load i64, i64* %5, align 8
  %26 = udiv i64 %25, 2
  %27 = add i64 4, %26
  %28 = trunc i64 %27 to i32
  %29 = load i32, i32* @GFP_KERNEL, align 4
  %30 = call %struct.asymmetric_key_id* @kmalloc(i32 %28, i32 %29)
  store %struct.asymmetric_key_id* %30, %struct.asymmetric_key_id** %4, align 8
  %31 = load %struct.asymmetric_key_id*, %struct.asymmetric_key_id** %4, align 8
  %32 = icmp ne %struct.asymmetric_key_id* %31, null
  br i1 %32, label %37, label %33

33:                                               ; preds = %24
  %34 = load i32, i32* @ENOMEM, align 4
  %35 = sub nsw i32 0, %34
  %36 = call %struct.asymmetric_key_id* @ERR_PTR(i32 %35)
  store %struct.asymmetric_key_id* %36, %struct.asymmetric_key_id** %2, align 8
  br label %53

37:                                               ; preds = %24
  %38 = load i8*, i8** %3, align 8
  %39 = load %struct.asymmetric_key_id*, %struct.asymmetric_key_id** %4, align 8
  %40 = load i64, i64* %5, align 8
  %41 = udiv i64 %40, 2
  %42 = call i32 @__asymmetric_key_hex_to_key_id(i8* %38, %struct.asymmetric_key_id* %39, i64 %41)
  store i32 %42, i32* %6, align 4
  %43 = load i32, i32* %6, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %37
  %46 = load %struct.asymmetric_key_id*, %struct.asymmetric_key_id** %4, align 8
  %47 = call i32 @kfree(%struct.asymmetric_key_id* %46)
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  %50 = call %struct.asymmetric_key_id* @ERR_PTR(i32 %49)
  store %struct.asymmetric_key_id* %50, %struct.asymmetric_key_id** %2, align 8
  br label %53

51:                                               ; preds = %37
  %52 = load %struct.asymmetric_key_id*, %struct.asymmetric_key_id** %4, align 8
  store %struct.asymmetric_key_id* %52, %struct.asymmetric_key_id** %2, align 8
  br label %53

53:                                               ; preds = %51, %45, %33, %20, %10
  %54 = load %struct.asymmetric_key_id*, %struct.asymmetric_key_id** %2, align 8
  ret %struct.asymmetric_key_id* %54
}

declare dso_local %struct.asymmetric_key_id* @ERR_PTR(i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local %struct.asymmetric_key_id* @kmalloc(i32, i32) #1

declare dso_local i32 @__asymmetric_key_hex_to_key_id(i8*, %struct.asymmetric_key_id*, i64) #1

declare dso_local i32 @kfree(%struct.asymmetric_key_id*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
