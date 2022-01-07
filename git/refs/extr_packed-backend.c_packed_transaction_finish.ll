; ModuleID = '/home/carl/AnghaBench/git/refs/extr_packed-backend.c_packed_transaction_finish.c'
source_filename = "/home/carl/AnghaBench/git/refs/extr_packed-backend.c_packed_transaction_finish.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ref_store = type { i32 }
%struct.ref_transaction = type { i32 }
%struct.strbuf = type { i32 }
%struct.packed_ref_store = type { i32, i32, i32 }

@REF_STORE_READ = common dso_local global i32 0, align 4
@REF_STORE_WRITE = common dso_local global i32 0, align 4
@REF_STORE_ODB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"ref_transaction_finish\00", align 1
@TRANSACTION_GENERIC_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"error replacing %s: %s\00", align 1
@errno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ref_store*, %struct.ref_transaction*, %struct.strbuf*)* @packed_transaction_finish to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @packed_transaction_finish(%struct.ref_store* %0, %struct.ref_transaction* %1, %struct.strbuf* %2) #0 {
  %4 = alloca %struct.ref_store*, align 8
  %5 = alloca %struct.ref_transaction*, align 8
  %6 = alloca %struct.strbuf*, align 8
  %7 = alloca %struct.packed_ref_store*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store %struct.ref_store* %0, %struct.ref_store** %4, align 8
  store %struct.ref_transaction* %1, %struct.ref_transaction** %5, align 8
  store %struct.strbuf* %2, %struct.strbuf** %6, align 8
  %10 = load %struct.ref_store*, %struct.ref_store** %4, align 8
  %11 = load i32, i32* @REF_STORE_READ, align 4
  %12 = load i32, i32* @REF_STORE_WRITE, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @REF_STORE_ODB, align 4
  %15 = or i32 %13, %14
  %16 = call %struct.packed_ref_store* @packed_downcast(%struct.ref_store* %10, i32 %15, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  store %struct.packed_ref_store* %16, %struct.packed_ref_store** %7, align 8
  %17 = load i32, i32* @TRANSACTION_GENERIC_ERROR, align 4
  store i32 %17, i32* %8, align 4
  %18 = load %struct.packed_ref_store*, %struct.packed_ref_store** %7, align 8
  %19 = call i32 @clear_snapshot(%struct.packed_ref_store* %18)
  %20 = load %struct.packed_ref_store*, %struct.packed_ref_store** %7, align 8
  %21 = getelementptr inbounds %struct.packed_ref_store, %struct.packed_ref_store* %20, i32 0, i32 2
  %22 = call i8* @get_locked_file_path(i32* %21)
  store i8* %22, i8** %9, align 8
  %23 = load %struct.packed_ref_store*, %struct.packed_ref_store** %7, align 8
  %24 = getelementptr inbounds %struct.packed_ref_store, %struct.packed_ref_store* %23, i32 0, i32 1
  %25 = load i8*, i8** %9, align 8
  %26 = call i64 @rename_tempfile(i32* %24, i8* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %36

28:                                               ; preds = %3
  %29 = load %struct.strbuf*, %struct.strbuf** %6, align 8
  %30 = load %struct.packed_ref_store*, %struct.packed_ref_store** %7, align 8
  %31 = getelementptr inbounds %struct.packed_ref_store, %struct.packed_ref_store* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @errno, align 4
  %34 = call i32 @strerror(i32 %33)
  %35 = call i32 @strbuf_addf(%struct.strbuf* %29, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %32, i32 %34)
  br label %37

36:                                               ; preds = %3
  store i32 0, i32* %8, align 4
  br label %37

37:                                               ; preds = %36, %28
  %38 = load i8*, i8** %9, align 8
  %39 = call i32 @free(i8* %38)
  %40 = load %struct.packed_ref_store*, %struct.packed_ref_store** %7, align 8
  %41 = load %struct.ref_transaction*, %struct.ref_transaction** %5, align 8
  %42 = call i32 @packed_transaction_cleanup(%struct.packed_ref_store* %40, %struct.ref_transaction* %41)
  %43 = load i32, i32* %8, align 4
  ret i32 %43
}

declare dso_local %struct.packed_ref_store* @packed_downcast(%struct.ref_store*, i32, i8*) #1

declare dso_local i32 @clear_snapshot(%struct.packed_ref_store*) #1

declare dso_local i8* @get_locked_file_path(i32*) #1

declare dso_local i64 @rename_tempfile(i32*, i8*) #1

declare dso_local i32 @strbuf_addf(%struct.strbuf*, i8*, i32, i32) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @packed_transaction_cleanup(%struct.packed_ref_store*, %struct.ref_transaction*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
