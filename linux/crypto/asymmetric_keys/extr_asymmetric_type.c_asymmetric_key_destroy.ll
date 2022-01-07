; ModuleID = '/home/carl/AnghaBench/linux/crypto/asymmetric_keys/extr_asymmetric_type.c_asymmetric_key_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/asymmetric_keys/extr_asymmetric_type.c_asymmetric_key_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.key = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.asymmetric_key_ids** }
%struct.asymmetric_key_ids = type { i32 }
%struct.asymmetric_key_subtype = type { i32, i32 (i8*, i8*)* }

@asym_key_ids = common dso_local global i64 0, align 8
@asym_crypto = common dso_local global i64 0, align 8
@asym_auth = common dso_local global i64 0, align 8
@asym_subtype = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.key*)* @asymmetric_key_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @asymmetric_key_destroy(%struct.key* %0) #0 {
  %2 = alloca %struct.key*, align 8
  %3 = alloca %struct.asymmetric_key_subtype*, align 8
  %4 = alloca %struct.asymmetric_key_ids*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %struct.key* %0, %struct.key** %2, align 8
  %7 = load %struct.key*, %struct.key** %2, align 8
  %8 = call %struct.asymmetric_key_subtype* @asymmetric_key_subtype(%struct.key* %7)
  store %struct.asymmetric_key_subtype* %8, %struct.asymmetric_key_subtype** %3, align 8
  %9 = load %struct.key*, %struct.key** %2, align 8
  %10 = getelementptr inbounds %struct.key, %struct.key* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load %struct.asymmetric_key_ids**, %struct.asymmetric_key_ids*** %11, align 8
  %13 = load i64, i64* @asym_key_ids, align 8
  %14 = getelementptr inbounds %struct.asymmetric_key_ids*, %struct.asymmetric_key_ids** %12, i64 %13
  %15 = load %struct.asymmetric_key_ids*, %struct.asymmetric_key_ids** %14, align 8
  store %struct.asymmetric_key_ids* %15, %struct.asymmetric_key_ids** %4, align 8
  %16 = load %struct.key*, %struct.key** %2, align 8
  %17 = getelementptr inbounds %struct.key, %struct.key* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load %struct.asymmetric_key_ids**, %struct.asymmetric_key_ids*** %18, align 8
  %20 = load i64, i64* @asym_crypto, align 8
  %21 = getelementptr inbounds %struct.asymmetric_key_ids*, %struct.asymmetric_key_ids** %19, i64 %20
  %22 = load %struct.asymmetric_key_ids*, %struct.asymmetric_key_ids** %21, align 8
  %23 = bitcast %struct.asymmetric_key_ids* %22 to i8*
  store i8* %23, i8** %5, align 8
  %24 = load %struct.key*, %struct.key** %2, align 8
  %25 = getelementptr inbounds %struct.key, %struct.key* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load %struct.asymmetric_key_ids**, %struct.asymmetric_key_ids*** %26, align 8
  %28 = load i64, i64* @asym_auth, align 8
  %29 = getelementptr inbounds %struct.asymmetric_key_ids*, %struct.asymmetric_key_ids** %27, i64 %28
  %30 = load %struct.asymmetric_key_ids*, %struct.asymmetric_key_ids** %29, align 8
  %31 = bitcast %struct.asymmetric_key_ids* %30 to i8*
  store i8* %31, i8** %6, align 8
  %32 = load %struct.key*, %struct.key** %2, align 8
  %33 = getelementptr inbounds %struct.key, %struct.key* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load %struct.asymmetric_key_ids**, %struct.asymmetric_key_ids*** %34, align 8
  %36 = load i64, i64* @asym_crypto, align 8
  %37 = getelementptr inbounds %struct.asymmetric_key_ids*, %struct.asymmetric_key_ids** %35, i64 %36
  store %struct.asymmetric_key_ids* null, %struct.asymmetric_key_ids** %37, align 8
  %38 = load %struct.key*, %struct.key** %2, align 8
  %39 = getelementptr inbounds %struct.key, %struct.key* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load %struct.asymmetric_key_ids**, %struct.asymmetric_key_ids*** %40, align 8
  %42 = load i64, i64* @asym_subtype, align 8
  %43 = getelementptr inbounds %struct.asymmetric_key_ids*, %struct.asymmetric_key_ids** %41, i64 %42
  store %struct.asymmetric_key_ids* null, %struct.asymmetric_key_ids** %43, align 8
  %44 = load %struct.key*, %struct.key** %2, align 8
  %45 = getelementptr inbounds %struct.key, %struct.key* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load %struct.asymmetric_key_ids**, %struct.asymmetric_key_ids*** %46, align 8
  %48 = load i64, i64* @asym_key_ids, align 8
  %49 = getelementptr inbounds %struct.asymmetric_key_ids*, %struct.asymmetric_key_ids** %47, i64 %48
  store %struct.asymmetric_key_ids* null, %struct.asymmetric_key_ids** %49, align 8
  %50 = load %struct.key*, %struct.key** %2, align 8
  %51 = getelementptr inbounds %struct.key, %struct.key* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load %struct.asymmetric_key_ids**, %struct.asymmetric_key_ids*** %52, align 8
  %54 = load i64, i64* @asym_auth, align 8
  %55 = getelementptr inbounds %struct.asymmetric_key_ids*, %struct.asymmetric_key_ids** %53, i64 %54
  store %struct.asymmetric_key_ids* null, %struct.asymmetric_key_ids** %55, align 8
  %56 = load %struct.asymmetric_key_subtype*, %struct.asymmetric_key_subtype** %3, align 8
  %57 = icmp ne %struct.asymmetric_key_subtype* %56, null
  br i1 %57, label %58, label %69

58:                                               ; preds = %1
  %59 = load %struct.asymmetric_key_subtype*, %struct.asymmetric_key_subtype** %3, align 8
  %60 = getelementptr inbounds %struct.asymmetric_key_subtype, %struct.asymmetric_key_subtype* %59, i32 0, i32 1
  %61 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %60, align 8
  %62 = load i8*, i8** %5, align 8
  %63 = load i8*, i8** %6, align 8
  %64 = call i32 %61(i8* %62, i8* %63)
  %65 = load %struct.asymmetric_key_subtype*, %struct.asymmetric_key_subtype** %3, align 8
  %66 = getelementptr inbounds %struct.asymmetric_key_subtype, %struct.asymmetric_key_subtype* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @module_put(i32 %67)
  br label %69

69:                                               ; preds = %58, %1
  %70 = load %struct.asymmetric_key_ids*, %struct.asymmetric_key_ids** %4, align 8
  %71 = call i32 @asymmetric_key_free_kids(%struct.asymmetric_key_ids* %70)
  ret void
}

declare dso_local %struct.asymmetric_key_subtype* @asymmetric_key_subtype(%struct.key*) #1

declare dso_local i32 @module_put(i32) #1

declare dso_local i32 @asymmetric_key_free_kids(%struct.asymmetric_key_ids*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
