; ModuleID = '/home/carl/AnghaBench/linux/crypto/asymmetric_keys/extr_pkcs7_parser.c_pkcs7_check_authattrs.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/asymmetric_keys/extr_pkcs7_parser.c_pkcs7_check_authattrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pkcs7_message = type { i32, %struct.pkcs7_signed_info* }
%struct.pkcs7_signed_info = type { i64, %struct.pkcs7_signed_info* }

@.str = private unnamed_addr constant [35 x i8] c"Inconsistently supplied authAttrs\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pkcs7_message*)* @pkcs7_check_authattrs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pkcs7_check_authattrs(%struct.pkcs7_message* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pkcs7_message*, align 8
  %4 = alloca %struct.pkcs7_signed_info*, align 8
  %5 = alloca i32, align 4
  store %struct.pkcs7_message* %0, %struct.pkcs7_message** %3, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.pkcs7_message*, %struct.pkcs7_message** %3, align 8
  %7 = getelementptr inbounds %struct.pkcs7_message, %struct.pkcs7_message* %6, i32 0, i32 1
  %8 = load %struct.pkcs7_signed_info*, %struct.pkcs7_signed_info** %7, align 8
  store %struct.pkcs7_signed_info* %8, %struct.pkcs7_signed_info** %4, align 8
  %9 = load %struct.pkcs7_signed_info*, %struct.pkcs7_signed_info** %4, align 8
  %10 = icmp ne %struct.pkcs7_signed_info* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  br label %44

12:                                               ; preds = %1
  %13 = load %struct.pkcs7_signed_info*, %struct.pkcs7_signed_info** %4, align 8
  %14 = getelementptr inbounds %struct.pkcs7_signed_info, %struct.pkcs7_signed_info* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %12
  store i32 1, i32* %5, align 4
  %18 = load %struct.pkcs7_message*, %struct.pkcs7_message** %3, align 8
  %19 = getelementptr inbounds %struct.pkcs7_message, %struct.pkcs7_message* %18, i32 0, i32 0
  store i32 1, i32* %19, align 8
  br label %20

20:                                               ; preds = %17, %12
  %21 = load %struct.pkcs7_signed_info*, %struct.pkcs7_signed_info** %4, align 8
  %22 = getelementptr inbounds %struct.pkcs7_signed_info, %struct.pkcs7_signed_info* %21, i32 0, i32 1
  %23 = load %struct.pkcs7_signed_info*, %struct.pkcs7_signed_info** %22, align 8
  store %struct.pkcs7_signed_info* %23, %struct.pkcs7_signed_info** %4, align 8
  br label %24

24:                                               ; preds = %39, %20
  %25 = load %struct.pkcs7_signed_info*, %struct.pkcs7_signed_info** %4, align 8
  %26 = icmp ne %struct.pkcs7_signed_info* %25, null
  br i1 %26, label %27, label %43

27:                                               ; preds = %24
  %28 = load %struct.pkcs7_signed_info*, %struct.pkcs7_signed_info** %4, align 8
  %29 = getelementptr inbounds %struct.pkcs7_signed_info, %struct.pkcs7_signed_info* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  %32 = xor i1 %31, true
  %33 = xor i1 %32, true
  %34 = zext i1 %33 to i32
  %35 = load i32, i32* %5, align 4
  %36 = icmp ne i32 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %27
  br label %44

38:                                               ; preds = %27
  br label %39

39:                                               ; preds = %38
  %40 = load %struct.pkcs7_signed_info*, %struct.pkcs7_signed_info** %4, align 8
  %41 = getelementptr inbounds %struct.pkcs7_signed_info, %struct.pkcs7_signed_info* %40, i32 0, i32 1
  %42 = load %struct.pkcs7_signed_info*, %struct.pkcs7_signed_info** %41, align 8
  store %struct.pkcs7_signed_info* %42, %struct.pkcs7_signed_info** %4, align 8
  br label %24

43:                                               ; preds = %24
  store i32 0, i32* %2, align 4
  br label %48

44:                                               ; preds = %37, %11
  %45 = call i32 @pr_warn(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %2, align 4
  br label %48

48:                                               ; preds = %44, %43
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

declare dso_local i32 @pr_warn(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
