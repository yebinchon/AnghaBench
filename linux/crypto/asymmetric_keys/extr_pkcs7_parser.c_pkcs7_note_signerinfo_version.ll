; ModuleID = '/home/carl/AnghaBench/linux/crypto/asymmetric_keys/extr_pkcs7_parser.c_pkcs7_note_signerinfo_version.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/asymmetric_keys/extr_pkcs7_parser.c_pkcs7_note_signerinfo_version.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pkcs7_parse_context = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [32 x i8] c"Unsupported SignerInfo version\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"SignedData-SignerInfo version mismatch\0A\00", align 1
@EBADMSG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pkcs7_note_signerinfo_version(i8* %0, i64 %1, i8 zeroext %2, i8* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8, align 1
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.pkcs7_parse_context*, align 8
  %13 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i64 %1, i64* %8, align 8
  store i8 %2, i8* %9, align 1
  store i8* %3, i8** %10, align 8
  store i64 %4, i64* %11, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = bitcast i8* %14 to %struct.pkcs7_parse_context*
  store %struct.pkcs7_parse_context* %15, %struct.pkcs7_parse_context** %12, align 8
  %16 = load i64, i64* %11, align 8
  %17 = icmp ne i64 %16, 1
  br i1 %17, label %18, label %19

18:                                               ; preds = %5
  br label %48

19:                                               ; preds = %5
  %20 = load i8*, i8** %10, align 8
  %21 = bitcast i8* %20 to i32*
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %13, align 4
  %23 = load i32, i32* %13, align 4
  switch i32 %23, label %46 [
    i32 1, label %24
    i32 3, label %35
  ]

24:                                               ; preds = %19
  %25 = load %struct.pkcs7_parse_context*, %struct.pkcs7_parse_context** %12, align 8
  %26 = getelementptr inbounds %struct.pkcs7_parse_context, %struct.pkcs7_parse_context* %25, i32 0, i32 1
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 1
  br i1 %30, label %31, label %32

31:                                               ; preds = %24
  br label %52

32:                                               ; preds = %24
  %33 = load %struct.pkcs7_parse_context*, %struct.pkcs7_parse_context** %12, align 8
  %34 = getelementptr inbounds %struct.pkcs7_parse_context, %struct.pkcs7_parse_context* %33, i32 0, i32 0
  store i32 0, i32* %34, align 8
  br label %47

35:                                               ; preds = %19
  %36 = load %struct.pkcs7_parse_context*, %struct.pkcs7_parse_context** %12, align 8
  %37 = getelementptr inbounds %struct.pkcs7_parse_context, %struct.pkcs7_parse_context* %36, i32 0, i32 1
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = icmp eq i32 %40, 1
  br i1 %41, label %42, label %43

42:                                               ; preds = %35
  br label %52

43:                                               ; preds = %35
  %44 = load %struct.pkcs7_parse_context*, %struct.pkcs7_parse_context** %12, align 8
  %45 = getelementptr inbounds %struct.pkcs7_parse_context, %struct.pkcs7_parse_context* %44, i32 0, i32 0
  store i32 1, i32* %45, align 8
  br label %47

46:                                               ; preds = %19
  br label %48

47:                                               ; preds = %43, %32
  store i32 0, i32* %6, align 4
  br label %56

48:                                               ; preds = %46, %18
  %49 = call i32 @pr_warn(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %6, align 4
  br label %56

52:                                               ; preds = %42, %31
  %53 = call i32 @pr_warn(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  %54 = load i32, i32* @EBADMSG, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %6, align 4
  br label %56

56:                                               ; preds = %52, %48, %47
  %57 = load i32, i32* %6, align 4
  ret i32 %57
}

declare dso_local i32 @pr_warn(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
