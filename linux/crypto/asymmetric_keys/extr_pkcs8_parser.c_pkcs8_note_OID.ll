; ModuleID = '/home/carl/AnghaBench/linux/crypto/asymmetric_keys/extr_pkcs8_parser.c_pkcs8_note_OID.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/asymmetric_keys/extr_pkcs8_parser.c_pkcs8_note_OID.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pkcs8_parse_context = type { i64, i64 }

@OID__NR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"Unknown OID: [%lu] %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pkcs8_note_OID(i8* %0, i64 %1, i8 zeroext %2, i8* %3, i64 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8, align 1
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.pkcs8_parse_context*, align 8
  %12 = alloca [50 x i8], align 16
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store i8 %2, i8* %8, align 1
  store i8* %3, i8** %9, align 8
  store i64 %4, i64* %10, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = bitcast i8* %13 to %struct.pkcs8_parse_context*
  store %struct.pkcs8_parse_context* %14, %struct.pkcs8_parse_context** %11, align 8
  %15 = load i8*, i8** %9, align 8
  %16 = load i64, i64* %10, align 8
  %17 = call i64 @look_up_OID(i8* %15, i64 %16)
  %18 = load %struct.pkcs8_parse_context*, %struct.pkcs8_parse_context** %11, align 8
  %19 = getelementptr inbounds %struct.pkcs8_parse_context, %struct.pkcs8_parse_context* %18, i32 0, i32 0
  store i64 %17, i64* %19, align 8
  %20 = load %struct.pkcs8_parse_context*, %struct.pkcs8_parse_context** %11, align 8
  %21 = getelementptr inbounds %struct.pkcs8_parse_context, %struct.pkcs8_parse_context* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @OID__NR, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %38

25:                                               ; preds = %5
  %26 = load i8*, i8** %9, align 8
  %27 = load i64, i64* %10, align 8
  %28 = getelementptr inbounds [50 x i8], [50 x i8]* %12, i64 0, i64 0
  %29 = call i32 @sprint_oid(i8* %26, i64 %27, i8* %28, i32 50)
  %30 = load i8*, i8** %9, align 8
  %31 = ptrtoint i8* %30 to i64
  %32 = load %struct.pkcs8_parse_context*, %struct.pkcs8_parse_context** %11, align 8
  %33 = getelementptr inbounds %struct.pkcs8_parse_context, %struct.pkcs8_parse_context* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = sub i64 %31, %34
  %36 = getelementptr inbounds [50 x i8], [50 x i8]* %12, i64 0, i64 0
  %37 = call i32 @pr_info(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i64 %35, i8* %36)
  br label %38

38:                                               ; preds = %25, %5
  ret i32 0
}

declare dso_local i64 @look_up_OID(i8*, i64) #1

declare dso_local i32 @sprint_oid(i8*, i64, i8*, i32) #1

declare dso_local i32 @pr_info(i8*, i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
