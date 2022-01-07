; ModuleID = '/home/carl/AnghaBench/linux/crypto/asymmetric_keys/extr_x509_cert_parser.c_x509_akid_note_serial.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/asymmetric_keys/extr_x509_cert_parser.c_x509_akid_note_serial.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.x509_parse_context = type { %struct.TYPE_4__*, i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.asymmetric_key_id** }
%struct.asymmetric_key_id = type { i32, i8* }

@.str = private unnamed_addr constant [21 x i8] c"AKID: serial: %*phN\0A\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"authkeyid %*phN\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @x509_akid_note_serial(i8* %0, i64 %1, i8 zeroext %2, i8* %3, i64 %4) #0 {
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
  %19 = call i32 @pr_debug(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %17, i8* %18)
  %20 = load %struct.x509_parse_context*, %struct.x509_parse_context** %12, align 8
  %21 = getelementptr inbounds %struct.x509_parse_context, %struct.x509_parse_context* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %35

24:                                               ; preds = %5
  %25 = load %struct.x509_parse_context*, %struct.x509_parse_context** %12, align 8
  %26 = getelementptr inbounds %struct.x509_parse_context, %struct.x509_parse_context* %25, i32 0, i32 0
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load %struct.asymmetric_key_id**, %struct.asymmetric_key_id*** %30, align 8
  %32 = getelementptr inbounds %struct.asymmetric_key_id*, %struct.asymmetric_key_id** %31, i64 0
  %33 = load %struct.asymmetric_key_id*, %struct.asymmetric_key_id** %32, align 8
  %34 = icmp ne %struct.asymmetric_key_id* %33, null
  br i1 %34, label %35, label %36

35:                                               ; preds = %24, %5
  store i32 0, i32* %6, align 4
  br label %69

36:                                               ; preds = %24
  %37 = load i8*, i8** %10, align 8
  %38 = load i64, i64* %11, align 8
  %39 = load %struct.x509_parse_context*, %struct.x509_parse_context** %12, align 8
  %40 = getelementptr inbounds %struct.x509_parse_context, %struct.x509_parse_context* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.x509_parse_context*, %struct.x509_parse_context** %12, align 8
  %43 = getelementptr inbounds %struct.x509_parse_context, %struct.x509_parse_context* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = call %struct.asymmetric_key_id* @asymmetric_key_generate_id(i8* %37, i64 %38, i32 %41, i32 %44)
  store %struct.asymmetric_key_id* %45, %struct.asymmetric_key_id** %13, align 8
  %46 = load %struct.asymmetric_key_id*, %struct.asymmetric_key_id** %13, align 8
  %47 = call i64 @IS_ERR(%struct.asymmetric_key_id* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %36
  %50 = load %struct.asymmetric_key_id*, %struct.asymmetric_key_id** %13, align 8
  %51 = call i32 @PTR_ERR(%struct.asymmetric_key_id* %50)
  store i32 %51, i32* %6, align 4
  br label %69

52:                                               ; preds = %36
  %53 = load %struct.asymmetric_key_id*, %struct.asymmetric_key_id** %13, align 8
  %54 = getelementptr inbounds %struct.asymmetric_key_id, %struct.asymmetric_key_id* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.asymmetric_key_id*, %struct.asymmetric_key_id** %13, align 8
  %57 = getelementptr inbounds %struct.asymmetric_key_id, %struct.asymmetric_key_id* %56, i32 0, i32 1
  %58 = load i8*, i8** %57, align 8
  %59 = call i32 @pr_debug(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %55, i8* %58)
  %60 = load %struct.asymmetric_key_id*, %struct.asymmetric_key_id** %13, align 8
  %61 = load %struct.x509_parse_context*, %struct.x509_parse_context** %12, align 8
  %62 = getelementptr inbounds %struct.x509_parse_context, %struct.x509_parse_context* %61, i32 0, i32 0
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 0
  %67 = load %struct.asymmetric_key_id**, %struct.asymmetric_key_id*** %66, align 8
  %68 = getelementptr inbounds %struct.asymmetric_key_id*, %struct.asymmetric_key_id** %67, i64 0
  store %struct.asymmetric_key_id* %60, %struct.asymmetric_key_id** %68, align 8
  store i32 0, i32* %6, align 4
  br label %69

69:                                               ; preds = %52, %49, %35
  %70 = load i32, i32* %6, align 4
  ret i32 %70
}

declare dso_local i32 @pr_debug(i8*, i32, i8*) #1

declare dso_local %struct.asymmetric_key_id* @asymmetric_key_generate_id(i8*, i64, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.asymmetric_key_id*) #1

declare dso_local i32 @PTR_ERR(%struct.asymmetric_key_id*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
