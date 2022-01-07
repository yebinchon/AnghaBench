; ModuleID = '/home/carl/AnghaBench/linux/crypto/asymmetric_keys/extr_pkcs8_parser.c_pkcs8_key_preparse.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/asymmetric_keys/extr_pkcs8_parser.c_pkcs8_key_preparse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.public_key = type { i8*, i32, i32 }
%struct.key_preparsed_payload = type { i32, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { %struct.public_key** }

@.str = private unnamed_addr constant [19 x i8] c"Cert Key Algo: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"PKCS8\00", align 1
@public_key_subtype = common dso_local global %struct.public_key zeroinitializer, align 8
@asym_subtype = common dso_local global i64 0, align 8
@asym_key_ids = common dso_local global i64 0, align 8
@asym_crypto = common dso_local global i64 0, align 8
@asym_auth = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.key_preparsed_payload*)* @pkcs8_key_preparse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pkcs8_key_preparse(%struct.key_preparsed_payload* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.key_preparsed_payload*, align 8
  %4 = alloca %struct.public_key*, align 8
  store %struct.key_preparsed_payload* %0, %struct.key_preparsed_payload** %3, align 8
  %5 = load %struct.key_preparsed_payload*, %struct.key_preparsed_payload** %3, align 8
  %6 = getelementptr inbounds %struct.key_preparsed_payload, %struct.key_preparsed_payload* %5, i32 0, i32 3
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.key_preparsed_payload*, %struct.key_preparsed_payload** %3, align 8
  %9 = getelementptr inbounds %struct.key_preparsed_payload, %struct.key_preparsed_payload* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 8
  %11 = call %struct.public_key* @pkcs8_parse(i32 %7, i32 %10)
  store %struct.public_key* %11, %struct.public_key** %4, align 8
  %12 = load %struct.public_key*, %struct.public_key** %4, align 8
  %13 = call i64 @IS_ERR(%struct.public_key* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = load %struct.public_key*, %struct.public_key** %4, align 8
  %17 = call i32 @PTR_ERR(%struct.public_key* %16)
  store i32 %17, i32* %2, align 4
  br label %54

18:                                               ; preds = %1
  %19 = load %struct.public_key*, %struct.public_key** %4, align 8
  %20 = getelementptr inbounds %struct.public_key, %struct.public_key* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @pr_devel(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = load %struct.public_key*, %struct.public_key** %4, align 8
  %24 = getelementptr inbounds %struct.public_key, %struct.public_key* %23, i32 0, i32 0
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8** %24, align 8
  %25 = load i32, i32* getelementptr inbounds (%struct.public_key, %struct.public_key* @public_key_subtype, i32 0, i32 1), align 8
  %26 = call i32 @__module_get(i32 %25)
  %27 = load %struct.key_preparsed_payload*, %struct.key_preparsed_payload** %3, align 8
  %28 = getelementptr inbounds %struct.key_preparsed_payload, %struct.key_preparsed_payload* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load %struct.public_key**, %struct.public_key*** %29, align 8
  %31 = load i64, i64* @asym_subtype, align 8
  %32 = getelementptr inbounds %struct.public_key*, %struct.public_key** %30, i64 %31
  store %struct.public_key* @public_key_subtype, %struct.public_key** %32, align 8
  %33 = load %struct.key_preparsed_payload*, %struct.key_preparsed_payload** %3, align 8
  %34 = getelementptr inbounds %struct.key_preparsed_payload, %struct.key_preparsed_payload* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load %struct.public_key**, %struct.public_key*** %35, align 8
  %37 = load i64, i64* @asym_key_ids, align 8
  %38 = getelementptr inbounds %struct.public_key*, %struct.public_key** %36, i64 %37
  store %struct.public_key* null, %struct.public_key** %38, align 8
  %39 = load %struct.public_key*, %struct.public_key** %4, align 8
  %40 = load %struct.key_preparsed_payload*, %struct.key_preparsed_payload** %3, align 8
  %41 = getelementptr inbounds %struct.key_preparsed_payload, %struct.key_preparsed_payload* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load %struct.public_key**, %struct.public_key*** %42, align 8
  %44 = load i64, i64* @asym_crypto, align 8
  %45 = getelementptr inbounds %struct.public_key*, %struct.public_key** %43, i64 %44
  store %struct.public_key* %39, %struct.public_key** %45, align 8
  %46 = load %struct.key_preparsed_payload*, %struct.key_preparsed_payload** %3, align 8
  %47 = getelementptr inbounds %struct.key_preparsed_payload, %struct.key_preparsed_payload* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load %struct.public_key**, %struct.public_key*** %48, align 8
  %50 = load i64, i64* @asym_auth, align 8
  %51 = getelementptr inbounds %struct.public_key*, %struct.public_key** %49, i64 %50
  store %struct.public_key* null, %struct.public_key** %51, align 8
  %52 = load %struct.key_preparsed_payload*, %struct.key_preparsed_payload** %3, align 8
  %53 = getelementptr inbounds %struct.key_preparsed_payload, %struct.key_preparsed_payload* %52, i32 0, i32 0
  store i32 100, i32* %53, align 8
  store i32 0, i32* %2, align 4
  br label %54

54:                                               ; preds = %18, %15
  %55 = load i32, i32* %2, align 4
  ret i32 %55
}

declare dso_local %struct.public_key* @pkcs8_parse(i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.public_key*) #1

declare dso_local i32 @PTR_ERR(%struct.public_key*) #1

declare dso_local i32 @pr_devel(i8*, i32) #1

declare dso_local i32 @__module_get(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
