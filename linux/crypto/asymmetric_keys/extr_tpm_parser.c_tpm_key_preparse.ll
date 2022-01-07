; ModuleID = '/home/carl/AnghaBench/linux/crypto/asymmetric_keys/extr_tpm_parser.c_tpm_key_preparse.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/asymmetric_keys/extr_tpm_parser.c_tpm_key_preparse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tpm_key = type { i32 }
%struct.key_preparsed_payload = type { i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { %struct.tpm_key** }

@EMSGSIZE = common dso_local global i32 0, align 4
@asym_tpm_subtype = common dso_local global %struct.tpm_key zeroinitializer, align 4
@asym_subtype = common dso_local global i64 0, align 8
@asym_key_ids = common dso_local global i64 0, align 8
@asym_crypto = common dso_local global i64 0, align 8
@asym_auth = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.key_preparsed_payload*)* @tpm_key_preparse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tpm_key_preparse(%struct.key_preparsed_payload* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.key_preparsed_payload*, align 8
  %4 = alloca %struct.tpm_key*, align 8
  store %struct.key_preparsed_payload* %0, %struct.key_preparsed_payload** %3, align 8
  %5 = load %struct.key_preparsed_payload*, %struct.key_preparsed_payload** %3, align 8
  %6 = getelementptr inbounds %struct.key_preparsed_payload, %struct.key_preparsed_payload* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = icmp sgt i32 %7, 1024
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = load i32, i32* @EMSGSIZE, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %2, align 4
  br label %56

12:                                               ; preds = %1
  %13 = load %struct.key_preparsed_payload*, %struct.key_preparsed_payload** %3, align 8
  %14 = getelementptr inbounds %struct.key_preparsed_payload, %struct.key_preparsed_payload* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.key_preparsed_payload*, %struct.key_preparsed_payload** %3, align 8
  %17 = getelementptr inbounds %struct.key_preparsed_payload, %struct.key_preparsed_payload* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call %struct.tpm_key* @tpm_parse(i32 %15, i32 %18)
  store %struct.tpm_key* %19, %struct.tpm_key** %4, align 8
  %20 = load %struct.tpm_key*, %struct.tpm_key** %4, align 8
  %21 = call i64 @IS_ERR(%struct.tpm_key* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %12
  %24 = load %struct.tpm_key*, %struct.tpm_key** %4, align 8
  %25 = call i32 @PTR_ERR(%struct.tpm_key* %24)
  store i32 %25, i32* %2, align 4
  br label %56

26:                                               ; preds = %12
  %27 = load i32, i32* getelementptr inbounds (%struct.tpm_key, %struct.tpm_key* @asym_tpm_subtype, i32 0, i32 0), align 4
  %28 = call i32 @__module_get(i32 %27)
  %29 = load %struct.key_preparsed_payload*, %struct.key_preparsed_payload** %3, align 8
  %30 = getelementptr inbounds %struct.key_preparsed_payload, %struct.key_preparsed_payload* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load %struct.tpm_key**, %struct.tpm_key*** %31, align 8
  %33 = load i64, i64* @asym_subtype, align 8
  %34 = getelementptr inbounds %struct.tpm_key*, %struct.tpm_key** %32, i64 %33
  store %struct.tpm_key* @asym_tpm_subtype, %struct.tpm_key** %34, align 8
  %35 = load %struct.key_preparsed_payload*, %struct.key_preparsed_payload** %3, align 8
  %36 = getelementptr inbounds %struct.key_preparsed_payload, %struct.key_preparsed_payload* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load %struct.tpm_key**, %struct.tpm_key*** %37, align 8
  %39 = load i64, i64* @asym_key_ids, align 8
  %40 = getelementptr inbounds %struct.tpm_key*, %struct.tpm_key** %38, i64 %39
  store %struct.tpm_key* null, %struct.tpm_key** %40, align 8
  %41 = load %struct.tpm_key*, %struct.tpm_key** %4, align 8
  %42 = load %struct.key_preparsed_payload*, %struct.key_preparsed_payload** %3, align 8
  %43 = getelementptr inbounds %struct.key_preparsed_payload, %struct.key_preparsed_payload* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load %struct.tpm_key**, %struct.tpm_key*** %44, align 8
  %46 = load i64, i64* @asym_crypto, align 8
  %47 = getelementptr inbounds %struct.tpm_key*, %struct.tpm_key** %45, i64 %46
  store %struct.tpm_key* %41, %struct.tpm_key** %47, align 8
  %48 = load %struct.key_preparsed_payload*, %struct.key_preparsed_payload** %3, align 8
  %49 = getelementptr inbounds %struct.key_preparsed_payload, %struct.key_preparsed_payload* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load %struct.tpm_key**, %struct.tpm_key*** %50, align 8
  %52 = load i64, i64* @asym_auth, align 8
  %53 = getelementptr inbounds %struct.tpm_key*, %struct.tpm_key** %51, i64 %52
  store %struct.tpm_key* null, %struct.tpm_key** %53, align 8
  %54 = load %struct.key_preparsed_payload*, %struct.key_preparsed_payload** %3, align 8
  %55 = getelementptr inbounds %struct.key_preparsed_payload, %struct.key_preparsed_payload* %54, i32 0, i32 1
  store i32 100, i32* %55, align 4
  store i32 0, i32* %2, align 4
  br label %56

56:                                               ; preds = %26, %23, %9
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

declare dso_local %struct.tpm_key* @tpm_parse(i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.tpm_key*) #1

declare dso_local i32 @PTR_ERR(%struct.tpm_key*) #1

declare dso_local i32 @__module_get(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
