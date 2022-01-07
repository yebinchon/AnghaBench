; ModuleID = '/home/carl/AnghaBench/h2o/deps/picotls/t/extr_..libpicotls.c_parse_record_header.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/picotls/t/extr_..libpicotls.c_parse_record_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.st_ptls_record_t = type { i64, i64, i8* }

@PTLS_CONTENT_TYPE_APPDATA = common dso_local global i64 0, align 8
@PTLS_MAX_ENCRYPTED_RECORD_SIZE = common dso_local global i64 0, align 8
@PTLS_MAX_PLAINTEXT_RECORD_SIZE = common dso_local global i64 0, align 8
@PTLS_ALERT_DECODE_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.st_ptls_record_t*, i64*)* @parse_record_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_record_header(%struct.st_ptls_record_t* %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.st_ptls_record_t*, align 8
  %5 = alloca i64*, align 8
  store %struct.st_ptls_record_t* %0, %struct.st_ptls_record_t** %4, align 8
  store i64* %1, i64** %5, align 8
  %6 = load i64*, i64** %5, align 8
  %7 = getelementptr inbounds i64, i64* %6, i64 0
  %8 = load i64, i64* %7, align 8
  %9 = load %struct.st_ptls_record_t*, %struct.st_ptls_record_t** %4, align 8
  %10 = getelementptr inbounds %struct.st_ptls_record_t, %struct.st_ptls_record_t* %9, i32 0, i32 0
  store i64 %8, i64* %10, align 8
  %11 = load i64*, i64** %5, align 8
  %12 = getelementptr inbounds i64, i64* %11, i64 1
  %13 = call i8* @ntoh16(i64* %12)
  %14 = load %struct.st_ptls_record_t*, %struct.st_ptls_record_t** %4, align 8
  %15 = getelementptr inbounds %struct.st_ptls_record_t, %struct.st_ptls_record_t* %14, i32 0, i32 2
  store i8* %13, i8** %15, align 8
  %16 = load i64*, i64** %5, align 8
  %17 = getelementptr inbounds i64, i64* %16, i64 3
  %18 = call i8* @ntoh16(i64* %17)
  %19 = ptrtoint i8* %18 to i64
  %20 = load %struct.st_ptls_record_t*, %struct.st_ptls_record_t** %4, align 8
  %21 = getelementptr inbounds %struct.st_ptls_record_t, %struct.st_ptls_record_t* %20, i32 0, i32 1
  store i64 %19, i64* %21, align 8
  %22 = load %struct.st_ptls_record_t*, %struct.st_ptls_record_t** %4, align 8
  %23 = getelementptr inbounds %struct.st_ptls_record_t, %struct.st_ptls_record_t* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.st_ptls_record_t*, %struct.st_ptls_record_t** %4, align 8
  %26 = getelementptr inbounds %struct.st_ptls_record_t, %struct.st_ptls_record_t* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @PTLS_CONTENT_TYPE_APPDATA, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %2
  %31 = load i64, i64* @PTLS_MAX_ENCRYPTED_RECORD_SIZE, align 8
  br label %34

32:                                               ; preds = %2
  %33 = load i64, i64* @PTLS_MAX_PLAINTEXT_RECORD_SIZE, align 8
  br label %34

34:                                               ; preds = %32, %30
  %35 = phi i64 [ %31, %30 ], [ %33, %32 ]
  %36 = icmp ugt i64 %24, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %34
  %38 = load i32, i32* @PTLS_ALERT_DECODE_ERROR, align 4
  store i32 %38, i32* %3, align 4
  br label %40

39:                                               ; preds = %34
  store i32 0, i32* %3, align 4
  br label %40

40:                                               ; preds = %39, %37
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local i8* @ntoh16(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
