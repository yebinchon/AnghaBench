; ModuleID = '/home/carl/AnghaBench/libevent/sample/extr_becat.c_ssl_load_cert.c'
source_filename = "/home/carl/AnghaBench/libevent/sample/extr_becat.c_ssl_load_cert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssl_context = type { i32, i32 }

@.str = private unnamed_addr constant [2 x i8] c"C\00", align 1
@MBSTRING_ASC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"--\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"O\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"<NULL>\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"CN\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ssl_context*)* @ssl_load_cert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ssl_load_cert(%struct.ssl_context* %0) #0 {
  %2 = alloca %struct.ssl_context*, align 8
  %3 = alloca i32*, align 8
  store %struct.ssl_context* %0, %struct.ssl_context** %2, align 8
  %4 = call i32 (...) @X509_new()
  %5 = load %struct.ssl_context*, %struct.ssl_context** %2, align 8
  %6 = getelementptr inbounds %struct.ssl_context, %struct.ssl_context* %5, i32 0, i32 1
  store i32 %4, i32* %6, align 4
  %7 = load %struct.ssl_context*, %struct.ssl_context** %2, align 8
  %8 = getelementptr inbounds %struct.ssl_context, %struct.ssl_context* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @X509_get_serialNumber(i32 %9)
  %11 = call i32 @ASN1_INTEGER_set(i32 %10, i32 1)
  %12 = load %struct.ssl_context*, %struct.ssl_context** %2, align 8
  %13 = getelementptr inbounds %struct.ssl_context, %struct.ssl_context* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @X509_get_notBefore(i32 %14)
  %16 = call i32 @X509_gmtime_adj(i32 %15, i64 0)
  %17 = load %struct.ssl_context*, %struct.ssl_context** %2, align 8
  %18 = getelementptr inbounds %struct.ssl_context, %struct.ssl_context* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @X509_get_notAfter(i32 %19)
  %21 = call i64 @time(i32* null)
  %22 = add nsw i64 %21, 31536000
  %23 = call i32 @X509_gmtime_adj(i32 %20, i64 %22)
  %24 = load %struct.ssl_context*, %struct.ssl_context** %2, align 8
  %25 = getelementptr inbounds %struct.ssl_context, %struct.ssl_context* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.ssl_context*, %struct.ssl_context** %2, align 8
  %28 = getelementptr inbounds %struct.ssl_context, %struct.ssl_context* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @X509_set_pubkey(i32 %26, i32 %29)
  %31 = load %struct.ssl_context*, %struct.ssl_context** %2, align 8
  %32 = getelementptr inbounds %struct.ssl_context, %struct.ssl_context* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32* @X509_get_subject_name(i32 %33)
  store i32* %34, i32** %3, align 8
  %35 = load i32*, i32** %3, align 8
  %36 = load i32, i32* @MBSTRING_ASC, align 4
  %37 = call i32 @X509_NAME_add_entry_by_txt(i32* %35, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 %36, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 -1, i32 -1, i32 0)
  %38 = load i32*, i32** %3, align 8
  %39 = load i32, i32* @MBSTRING_ASC, align 4
  %40 = call i32 @X509_NAME_add_entry_by_txt(i32* %38, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32 %39, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 -1, i32 -1, i32 0)
  %41 = load i32*, i32** %3, align 8
  %42 = load i32, i32* @MBSTRING_ASC, align 4
  %43 = call i32 @X509_NAME_add_entry_by_txt(i32* %41, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32 %42, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i32 -1, i32 -1, i32 0)
  %44 = load %struct.ssl_context*, %struct.ssl_context** %2, align 8
  %45 = getelementptr inbounds %struct.ssl_context, %struct.ssl_context* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load i32*, i32** %3, align 8
  %48 = call i32 @X509_set_issuer_name(i32 %46, i32* %47)
  %49 = load %struct.ssl_context*, %struct.ssl_context** %2, align 8
  %50 = getelementptr inbounds %struct.ssl_context, %struct.ssl_context* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.ssl_context*, %struct.ssl_context** %2, align 8
  %53 = getelementptr inbounds %struct.ssl_context, %struct.ssl_context* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 (...) @EVP_sha1()
  %56 = call i32 @X509_sign(i32 %51, i32 %54, i32 %55)
  ret i32 0
}

declare dso_local i32 @X509_new(...) #1

declare dso_local i32 @ASN1_INTEGER_set(i32, i32) #1

declare dso_local i32 @X509_get_serialNumber(i32) #1

declare dso_local i32 @X509_gmtime_adj(i32, i64) #1

declare dso_local i32 @X509_get_notBefore(i32) #1

declare dso_local i32 @X509_get_notAfter(i32) #1

declare dso_local i64 @time(i32*) #1

declare dso_local i32 @X509_set_pubkey(i32, i32) #1

declare dso_local i32* @X509_get_subject_name(i32) #1

declare dso_local i32 @X509_NAME_add_entry_by_txt(i32*, i8*, i32, i8*, i32, i32, i32) #1

declare dso_local i32 @X509_set_issuer_name(i32, i32*) #1

declare dso_local i32 @X509_sign(i32, i32, i32) #1

declare dso_local i32 @EVP_sha1(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
