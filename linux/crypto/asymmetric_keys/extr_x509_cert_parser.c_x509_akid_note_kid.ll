; ModuleID = '/home/carl/AnghaBench/linux/crypto/asymmetric_keys/extr_x509_cert_parser.c_x509_akid_note_kid.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/asymmetric_keys/extr_x509_cert_parser.c_x509_akid_note_kid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.x509_parse_context = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.asymmetric_key_id** }
%struct.asymmetric_key_id = type { i32, i8* }

@.str = private unnamed_addr constant [20 x i8] c"AKID: keyid: %*phN\0A\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"authkeyid %*phN\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @x509_akid_note_kid(i8* %0, i64 %1, i8 zeroext %2, i8* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8, align 1
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.x509_parse_context*, align 8
  %13 = alloca %struct.asymmetric_key_id*, align 8
  store i8* %0, i8** %7, align 8
  store i64 %1, i64* %8, align 8
  store i8 %2, i8* %9, align 1
  store i8* %3, i8** %10, align 8
  store i64 %4, i64* %11, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = bitcast i8* %14 to %struct.x509_parse_context*
  store %struct.x509_parse_context* %15, %struct.x509_parse_context** %12, align 8
  %16 = load i64, i64* %11, align 8
  %17 = trunc i64 %16 to i32
  %18 = load i8*, i8** %10, align 8
  %19 = call i32 @pr_debug(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %17, i8* %18)
  %20 = load %struct.x509_parse_context*, %struct.x509_parse_context** %12, align 8
  %21 = getelementptr inbounds %struct.x509_parse_context, %struct.x509_parse_context* %20, i32 0, i32 0
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load %struct.asymmetric_key_id**, %struct.asymmetric_key_id*** %25, align 8
  %27 = getelementptr inbounds %struct.asymmetric_key_id*, %struct.asymmetric_key_id** %26, i64 1
  %28 = load %struct.asymmetric_key_id*, %struct.asymmetric_key_id** %27, align 8
  %29 = icmp ne %struct.asymmetric_key_id* %28, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %58

31:                                               ; preds = %5
  %32 = load i8*, i8** %10, align 8
  %33 = load i64, i64* %11, align 8
  %34 = call %struct.asymmetric_key_id* @asymmetric_key_generate_id(i8* %32, i64 %33, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i32 0)
  store %struct.asymmetric_key_id* %34, %struct.asymmetric_key_id** %13, align 8
  %35 = load %struct.asymmetric_key_id*, %struct.asymmetric_key_id** %13, align 8
  %36 = call i64 @IS_ERR(%struct.asymmetric_key_id* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %31
  %39 = load %struct.asymmetric_key_id*, %struct.asymmetric_key_id** %13, align 8
  %40 = call i32 @PTR_ERR(%struct.asymmetric_key_id* %39)
  store i32 %40, i32* %6, align 4
  br label %58

41:                                               ; preds = %31
  %42 = load %struct.asymmetric_key_id*, %struct.asymmetric_key_id** %13, align 8
  %43 = getelementptr inbounds %struct.asymmetric_key_id, %struct.asymmetric_key_id* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.asymmetric_key_id*, %struct.asymmetric_key_id** %13, align 8
  %46 = getelementptr inbounds %struct.asymmetric_key_id, %struct.asymmetric_key_id* %45, i32 0, i32 1
  %47 = load i8*, i8** %46, align 8
  %48 = call i32 @pr_debug(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32 %44, i8* %47)
  %49 = load %struct.asymmetric_key_id*, %struct.asymmetric_key_id** %13, align 8
  %50 = load %struct.x509_parse_context*, %struct.x509_parse_context** %12, align 8
  %51 = getelementptr inbounds %struct.x509_parse_context, %struct.x509_parse_context* %50, i32 0, i32 0
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = load %struct.asymmetric_key_id**, %struct.asymmetric_key_id*** %55, align 8
  %57 = getelementptr inbounds %struct.asymmetric_key_id*, %struct.asymmetric_key_id** %56, i64 1
  store %struct.asymmetric_key_id* %49, %struct.asymmetric_key_id** %57, align 8
  store i32 0, i32* %6, align 4
  br label %58

58:                                               ; preds = %41, %38, %30
  %59 = load i32, i32* %6, align 4
  ret i32 %59
}

declare dso_local i32 @pr_debug(i8*, i32, i8*) #1

declare dso_local %struct.asymmetric_key_id* @asymmetric_key_generate_id(i8*, i64, i8*, i32) #1

declare dso_local i64 @IS_ERR(%struct.asymmetric_key_id*) #1

declare dso_local i32 @PTR_ERR(%struct.asymmetric_key_id*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
