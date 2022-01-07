; ModuleID = '/home/carl/AnghaBench/h2o/deps/neverbleed/extr_neverbleed.c_create_pkey.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/neverbleed/extr_neverbleed.c_create_pkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.st_neverbleed_rsa_exdata_t = type { i64, %struct.TYPE_3__* }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"no memory\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"failed to parse e:%s\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"failed to parse n:%s\0A\00", align 1
@RSA_FLAG_EXT_PKEY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_3__*, i64, i8*, i8*)* @create_pkey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @create_pkey(%struct.TYPE_3__* %0, i64 %1, i8* %2, i8* %3) #0 {
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.st_neverbleed_rsa_exdata_t*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  store i32* null, i32** %12, align 8
  store i32* null, i32** %13, align 8
  %14 = call %struct.st_neverbleed_rsa_exdata_t* @malloc(i32 16)
  store %struct.st_neverbleed_rsa_exdata_t* %14, %struct.st_neverbleed_rsa_exdata_t** %9, align 8
  %15 = icmp eq %struct.st_neverbleed_rsa_exdata_t* %14, null
  br i1 %15, label %16, label %20

16:                                               ; preds = %4
  %17 = load i32, i32* @stderr, align 4
  %18 = call i32 (i32, i8*, ...) @fprintf(i32 %17, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %19 = call i32 (...) @abort() #3
  unreachable

20:                                               ; preds = %4
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %22 = load %struct.st_neverbleed_rsa_exdata_t*, %struct.st_neverbleed_rsa_exdata_t** %9, align 8
  %23 = getelementptr inbounds %struct.st_neverbleed_rsa_exdata_t, %struct.st_neverbleed_rsa_exdata_t* %22, i32 0, i32 1
  store %struct.TYPE_3__* %21, %struct.TYPE_3__** %23, align 8
  %24 = load i64, i64* %6, align 8
  %25 = load %struct.st_neverbleed_rsa_exdata_t*, %struct.st_neverbleed_rsa_exdata_t** %9, align 8
  %26 = getelementptr inbounds %struct.st_neverbleed_rsa_exdata_t, %struct.st_neverbleed_rsa_exdata_t* %25, i32 0, i32 0
  store i64 %24, i64* %26, align 8
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32* @RSA_new_method(i32 %29)
  store i32* %30, i32** %10, align 8
  %31 = load i32*, i32** %10, align 8
  %32 = load %struct.st_neverbleed_rsa_exdata_t*, %struct.st_neverbleed_rsa_exdata_t** %9, align 8
  %33 = call i32 @RSA_set_ex_data(i32* %31, i32 0, %struct.st_neverbleed_rsa_exdata_t* %32)
  %34 = load i8*, i8** %7, align 8
  %35 = call i64 @BN_hex2bn(i32** %12, i8* %34)
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %20
  %38 = load i32, i32* @stderr, align 4
  %39 = load i8*, i8** %7, align 8
  %40 = call i32 (i32, i8*, ...) @fprintf(i32 %38, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i8* %39)
  %41 = call i32 (...) @abort() #3
  unreachable

42:                                               ; preds = %20
  %43 = load i8*, i8** %8, align 8
  %44 = call i64 @BN_hex2bn(i32** %13, i8* %43)
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %42
  %47 = load i32, i32* @stderr, align 4
  %48 = load i8*, i8** %8, align 8
  %49 = call i32 (i32, i8*, ...) @fprintf(i32 %47, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i8* %48)
  %50 = call i32 (...) @abort() #3
  unreachable

51:                                               ; preds = %42
  %52 = load i32*, i32** %10, align 8
  %53 = load i32*, i32** %13, align 8
  %54 = load i32*, i32** %12, align 8
  %55 = call i32 @RSA_set0_key(i32* %52, i32* %53, i32* %54, i32* null)
  %56 = load i32*, i32** %10, align 8
  %57 = load i32, i32* @RSA_FLAG_EXT_PKEY, align 4
  %58 = call i32 @RSA_set_flags(i32* %56, i32 %57)
  %59 = call i32* (...) @EVP_PKEY_new()
  store i32* %59, i32** %11, align 8
  %60 = load i32*, i32** %11, align 8
  %61 = load i32*, i32** %10, align 8
  %62 = call i32 @EVP_PKEY_set1_RSA(i32* %60, i32* %61)
  %63 = load i32*, i32** %10, align 8
  %64 = call i32 @RSA_free(i32* %63)
  %65 = load i32*, i32** %11, align 8
  ret i32* %65
}

declare dso_local %struct.st_neverbleed_rsa_exdata_t* @malloc(i32) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

declare dso_local i32* @RSA_new_method(i32) #1

declare dso_local i32 @RSA_set_ex_data(i32*, i32, %struct.st_neverbleed_rsa_exdata_t*) #1

declare dso_local i64 @BN_hex2bn(i32**, i8*) #1

declare dso_local i32 @RSA_set0_key(i32*, i32*, i32*, i32*) #1

declare dso_local i32 @RSA_set_flags(i32*, i32) #1

declare dso_local i32* @EVP_PKEY_new(...) #1

declare dso_local i32 @EVP_PKEY_set1_RSA(i32*, i32*) #1

declare dso_local i32 @RSA_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
