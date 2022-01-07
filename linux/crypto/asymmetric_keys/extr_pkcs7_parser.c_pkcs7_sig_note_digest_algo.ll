; ModuleID = '/home/carl/AnghaBench/linux/crypto/asymmetric_keys/extr_pkcs7_parser.c_pkcs7_sig_note_digest_algo.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/asymmetric_keys/extr_pkcs7_parser.c_pkcs7_sig_note_digest_algo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pkcs7_parse_context = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i8* }

@.str = private unnamed_addr constant [4 x i8] c"md4\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"md5\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"sha1\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"sha256\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"sha384\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"sha512\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"sha224\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"Unsupported digest algo: %u\0A\00", align 1
@ENOPKG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pkcs7_sig_note_digest_algo(i8* %0, i64 %1, i8 zeroext %2, i8* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8, align 1
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.pkcs7_parse_context*, align 8
  store i8* %0, i8** %7, align 8
  store i64 %1, i64* %8, align 8
  store i8 %2, i8* %9, align 1
  store i8* %3, i8** %10, align 8
  store i64 %4, i64* %11, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = bitcast i8* %13 to %struct.pkcs7_parse_context*
  store %struct.pkcs7_parse_context* %14, %struct.pkcs7_parse_context** %12, align 8
  %15 = load %struct.pkcs7_parse_context*, %struct.pkcs7_parse_context** %12, align 8
  %16 = getelementptr inbounds %struct.pkcs7_parse_context, %struct.pkcs7_parse_context* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  switch i32 %17, label %67 [
    i32 134, label %18
    i32 133, label %25
    i32 132, label %32
    i32 130, label %39
    i32 129, label %46
    i32 128, label %53
    i32 131, label %60
  ]

18:                                               ; preds = %5
  %19 = load %struct.pkcs7_parse_context*, %struct.pkcs7_parse_context** %12, align 8
  %20 = getelementptr inbounds %struct.pkcs7_parse_context, %struct.pkcs7_parse_context* %19, i32 0, i32 1
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8** %24, align 8
  br label %74

25:                                               ; preds = %5
  %26 = load %struct.pkcs7_parse_context*, %struct.pkcs7_parse_context** %12, align 8
  %27 = getelementptr inbounds %struct.pkcs7_parse_context, %struct.pkcs7_parse_context* %26, i32 0, i32 1
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8** %31, align 8
  br label %74

32:                                               ; preds = %5
  %33 = load %struct.pkcs7_parse_context*, %struct.pkcs7_parse_context** %12, align 8
  %34 = getelementptr inbounds %struct.pkcs7_parse_context, %struct.pkcs7_parse_context* %33, i32 0, i32 1
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8** %38, align 8
  br label %74

39:                                               ; preds = %5
  %40 = load %struct.pkcs7_parse_context*, %struct.pkcs7_parse_context** %12, align 8
  %41 = getelementptr inbounds %struct.pkcs7_parse_context, %struct.pkcs7_parse_context* %40, i32 0, i32 1
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8** %45, align 8
  br label %74

46:                                               ; preds = %5
  %47 = load %struct.pkcs7_parse_context*, %struct.pkcs7_parse_context** %12, align 8
  %48 = getelementptr inbounds %struct.pkcs7_parse_context, %struct.pkcs7_parse_context* %47, i32 0, i32 1
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8** %52, align 8
  br label %74

53:                                               ; preds = %5
  %54 = load %struct.pkcs7_parse_context*, %struct.pkcs7_parse_context** %12, align 8
  %55 = getelementptr inbounds %struct.pkcs7_parse_context, %struct.pkcs7_parse_context* %54, i32 0, i32 1
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8** %59, align 8
  br label %74

60:                                               ; preds = %5
  %61 = load %struct.pkcs7_parse_context*, %struct.pkcs7_parse_context** %12, align 8
  %62 = getelementptr inbounds %struct.pkcs7_parse_context, %struct.pkcs7_parse_context* %61, i32 0, i32 1
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i8** %66, align 8
  br label %74

67:                                               ; preds = %5
  %68 = load %struct.pkcs7_parse_context*, %struct.pkcs7_parse_context** %12, align 8
  %69 = getelementptr inbounds %struct.pkcs7_parse_context, %struct.pkcs7_parse_context* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @printk(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0), i32 %70)
  %72 = load i32, i32* @ENOPKG, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %6, align 4
  br label %75

74:                                               ; preds = %60, %53, %46, %39, %32, %25, %18
  store i32 0, i32* %6, align 4
  br label %75

75:                                               ; preds = %74, %67
  %76 = load i32, i32* %6, align 4
  ret i32 %76
}

declare dso_local i32 @printk(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
