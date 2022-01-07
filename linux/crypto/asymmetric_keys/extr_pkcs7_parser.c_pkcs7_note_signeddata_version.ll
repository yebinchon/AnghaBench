; ModuleID = '/home/carl/AnghaBench/linux/crypto/asymmetric_keys/extr_pkcs7_parser.c_pkcs7_note_signeddata_version.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/asymmetric_keys/extr_pkcs7_parser.c_pkcs7_note_signeddata_version.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pkcs7_parse_context = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [32 x i8] c"Unsupported SignedData version\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pkcs7_note_signeddata_version(i8* %0, i64 %1, i8 zeroext %2, i8* %3, i64 %4) #0 {
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
  br label %32

19:                                               ; preds = %5
  %20 = load i8*, i8** %10, align 8
  %21 = bitcast i8* %20 to i32*
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %13, align 4
  %23 = load %struct.pkcs7_parse_context*, %struct.pkcs7_parse_context** %12, align 8
  %24 = getelementptr inbounds %struct.pkcs7_parse_context, %struct.pkcs7_parse_context* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  store i32 %22, i32* %26, align 4
  %27 = load i32, i32* %13, align 4
  switch i32 %27, label %30 [
    i32 1, label %28
    i32 3, label %29
  ]

28:                                               ; preds = %19
  br label %31

29:                                               ; preds = %19
  br label %31

30:                                               ; preds = %19
  br label %32

31:                                               ; preds = %29, %28
  store i32 0, i32* %6, align 4
  br label %36

32:                                               ; preds = %30, %18
  %33 = call i32 @pr_warn(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %6, align 4
  br label %36

36:                                               ; preds = %32, %31
  %37 = load i32, i32* %6, align 4
  ret i32 %37
}

declare dso_local i32 @pr_warn(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
