; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_rsa_helper.c_rsa_get_q.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_rsa_helper.c_rsa_get_q.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rsa_key = type { i64, i64, i8* }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rsa_get_q(i8* %0, i64 %1, i8 zeroext %2, i8* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8, align 1
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.rsa_key*, align 8
  store i8* %0, i8** %7, align 8
  store i64 %1, i64* %8, align 8
  store i8 %2, i8* %9, align 1
  store i8* %3, i8** %10, align 8
  store i64 %4, i64* %11, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = bitcast i8* %13 to %struct.rsa_key*
  store %struct.rsa_key* %14, %struct.rsa_key** %12, align 8
  %15 = load i8*, i8** %10, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %26

17:                                               ; preds = %5
  %18 = load i64, i64* %11, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %17
  %21 = load i64, i64* %11, align 8
  %22 = load %struct.rsa_key*, %struct.rsa_key** %12, align 8
  %23 = getelementptr inbounds %struct.rsa_key, %struct.rsa_key* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ugt i64 %21, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %20, %17, %5
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %6, align 4
  br label %36

29:                                               ; preds = %20
  %30 = load i8*, i8** %10, align 8
  %31 = load %struct.rsa_key*, %struct.rsa_key** %12, align 8
  %32 = getelementptr inbounds %struct.rsa_key, %struct.rsa_key* %31, i32 0, i32 2
  store i8* %30, i8** %32, align 8
  %33 = load i64, i64* %11, align 8
  %34 = load %struct.rsa_key*, %struct.rsa_key** %12, align 8
  %35 = getelementptr inbounds %struct.rsa_key, %struct.rsa_key* %34, i32 0, i32 1
  store i64 %33, i64* %35, align 8
  store i32 0, i32* %6, align 4
  br label %36

36:                                               ; preds = %29, %26
  %37 = load i32, i32* %6, align 4
  ret i32 %37
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
