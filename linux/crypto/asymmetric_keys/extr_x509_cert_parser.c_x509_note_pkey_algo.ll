; ModuleID = '/home/carl/AnghaBench/linux/crypto/asymmetric_keys/extr_x509_cert_parser.c_x509_note_pkey_algo.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/asymmetric_keys/extr_x509_cert_parser.c_x509_note_pkey_algo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.x509_parse_context = type { i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i8*, i8*, i8* }

@.str = private unnamed_addr constant [17 x i8] c"PubKey Algo: %u\0A\00", align 1
@ENOPKG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"md4\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"sha1\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"sha256\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"sha384\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"sha512\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"sha224\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"streebog256\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"streebog512\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"rsa\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"pkcs1\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"ecrdsa\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"raw\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @x509_note_pkey_algo(i8* %0, i64 %1, i8 zeroext %2, i8* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8, align 1
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.x509_parse_context*, align 8
  store i8* %0, i8** %7, align 8
  store i64 %1, i64* %8, align 8
  store i8 %2, i8* %9, align 1
  store i8* %3, i8** %10, align 8
  store i64 %4, i64* %11, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = bitcast i8* %13 to %struct.x509_parse_context*
  store %struct.x509_parse_context* %14, %struct.x509_parse_context** %12, align 8
  %15 = load %struct.x509_parse_context*, %struct.x509_parse_context** %12, align 8
  %16 = getelementptr inbounds %struct.x509_parse_context, %struct.x509_parse_context* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @pr_debug(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load %struct.x509_parse_context*, %struct.x509_parse_context** %12, align 8
  %20 = getelementptr inbounds %struct.x509_parse_context, %struct.x509_parse_context* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  switch i32 %21, label %23 [
    i32 135, label %22
    i32 134, label %22
    i32 133, label %26
    i32 132, label %33
    i32 130, label %40
    i32 129, label %47
    i32 128, label %54
    i32 131, label %61
    i32 137, label %68
    i32 136, label %75
  ]

22:                                               ; preds = %5, %5
  br label %23

23:                                               ; preds = %5, %22
  %24 = load i32, i32* @ENOPKG, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %6, align 4
  br label %118

26:                                               ; preds = %5
  %27 = load %struct.x509_parse_context*, %struct.x509_parse_context** %12, align 8
  %28 = getelementptr inbounds %struct.x509_parse_context, %struct.x509_parse_context* %27, i32 0, i32 2
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8** %32, align 8
  br label %82

33:                                               ; preds = %5
  %34 = load %struct.x509_parse_context*, %struct.x509_parse_context** %12, align 8
  %35 = getelementptr inbounds %struct.x509_parse_context, %struct.x509_parse_context* %34, i32 0, i32 2
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8** %39, align 8
  br label %82

40:                                               ; preds = %5
  %41 = load %struct.x509_parse_context*, %struct.x509_parse_context** %12, align 8
  %42 = getelementptr inbounds %struct.x509_parse_context, %struct.x509_parse_context* %41, i32 0, i32 2
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8** %46, align 8
  br label %82

47:                                               ; preds = %5
  %48 = load %struct.x509_parse_context*, %struct.x509_parse_context** %12, align 8
  %49 = getelementptr inbounds %struct.x509_parse_context, %struct.x509_parse_context* %48, i32 0, i32 2
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8** %53, align 8
  br label %82

54:                                               ; preds = %5
  %55 = load %struct.x509_parse_context*, %struct.x509_parse_context** %12, align 8
  %56 = getelementptr inbounds %struct.x509_parse_context, %struct.x509_parse_context* %55, i32 0, i32 2
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8** %60, align 8
  br label %82

61:                                               ; preds = %5
  %62 = load %struct.x509_parse_context*, %struct.x509_parse_context** %12, align 8
  %63 = getelementptr inbounds %struct.x509_parse_context, %struct.x509_parse_context* %62, i32 0, i32 2
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i8** %67, align 8
  br label %82

68:                                               ; preds = %5
  %69 = load %struct.x509_parse_context*, %struct.x509_parse_context** %12, align 8
  %70 = getelementptr inbounds %struct.x509_parse_context, %struct.x509_parse_context* %69, i32 0, i32 2
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 0
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0), i8** %74, align 8
  br label %100

75:                                               ; preds = %5
  %76 = load %struct.x509_parse_context*, %struct.x509_parse_context** %12, align 8
  %77 = getelementptr inbounds %struct.x509_parse_context, %struct.x509_parse_context* %76, i32 0, i32 2
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 0
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0), i8** %81, align 8
  br label %100

82:                                               ; preds = %61, %54, %47, %40, %33, %26
  %83 = load %struct.x509_parse_context*, %struct.x509_parse_context** %12, align 8
  %84 = getelementptr inbounds %struct.x509_parse_context, %struct.x509_parse_context* %83, i32 0, i32 2
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 1
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), i8** %88, align 8
  %89 = load %struct.x509_parse_context*, %struct.x509_parse_context** %12, align 8
  %90 = getelementptr inbounds %struct.x509_parse_context, %struct.x509_parse_context* %89, i32 0, i32 2
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 0
  %93 = load %struct.TYPE_3__*, %struct.TYPE_3__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 2
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), i8** %94, align 8
  %95 = load %struct.x509_parse_context*, %struct.x509_parse_context** %12, align 8
  %96 = getelementptr inbounds %struct.x509_parse_context, %struct.x509_parse_context* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.x509_parse_context*, %struct.x509_parse_context** %12, align 8
  %99 = getelementptr inbounds %struct.x509_parse_context, %struct.x509_parse_context* %98, i32 0, i32 1
  store i32 %97, i32* %99, align 4
  store i32 0, i32* %6, align 4
  br label %118

100:                                              ; preds = %75, %68
  %101 = load %struct.x509_parse_context*, %struct.x509_parse_context** %12, align 8
  %102 = getelementptr inbounds %struct.x509_parse_context, %struct.x509_parse_context* %101, i32 0, i32 2
  %103 = load %struct.TYPE_4__*, %struct.TYPE_4__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 0
  %105 = load %struct.TYPE_3__*, %struct.TYPE_3__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0), i8** %106, align 8
  %107 = load %struct.x509_parse_context*, %struct.x509_parse_context** %12, align 8
  %108 = getelementptr inbounds %struct.x509_parse_context, %struct.x509_parse_context* %107, i32 0, i32 2
  %109 = load %struct.TYPE_4__*, %struct.TYPE_4__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 0
  %111 = load %struct.TYPE_3__*, %struct.TYPE_3__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %111, i32 0, i32 2
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), i8** %112, align 8
  %113 = load %struct.x509_parse_context*, %struct.x509_parse_context** %12, align 8
  %114 = getelementptr inbounds %struct.x509_parse_context, %struct.x509_parse_context* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = load %struct.x509_parse_context*, %struct.x509_parse_context** %12, align 8
  %117 = getelementptr inbounds %struct.x509_parse_context, %struct.x509_parse_context* %116, i32 0, i32 1
  store i32 %115, i32* %117, align 4
  store i32 0, i32* %6, align 4
  br label %118

118:                                              ; preds = %100, %82, %23
  %119 = load i32, i32* %6, align 4
  ret i32 %119
}

declare dso_local i32 @pr_debug(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
