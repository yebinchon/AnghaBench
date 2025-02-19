; ModuleID = '/home/carl/AnghaBench/h2o/deps/picotls/t/extr_..libopenssl.c_ptls_openssl_create_default_certificate_store.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/picotls/t/extr_..libopenssl.c_ptls_openssl_create_default_certificate_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@X509_FILETYPE_DEFAULT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @ptls_openssl_create_default_certificate_store() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = call i32* (...) @X509_STORE_new()
  store i32* %4, i32** %2, align 8
  %5 = icmp eq i32* %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %0
  br label %27

7:                                                ; preds = %0
  %8 = load i32*, i32** %2, align 8
  %9 = call i32 (...) @X509_LOOKUP_file()
  %10 = call i32* @X509_STORE_add_lookup(i32* %8, i32 %9)
  store i32* %10, i32** %3, align 8
  %11 = icmp eq i32* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %7
  br label %27

13:                                               ; preds = %7
  %14 = load i32*, i32** %3, align 8
  %15 = load i32, i32* @X509_FILETYPE_DEFAULT, align 4
  %16 = call i32 @X509_LOOKUP_load_file(i32* %14, i32* null, i32 %15)
  %17 = load i32*, i32** %2, align 8
  %18 = call i32 (...) @X509_LOOKUP_hash_dir()
  %19 = call i32* @X509_STORE_add_lookup(i32* %17, i32 %18)
  store i32* %19, i32** %3, align 8
  %20 = icmp eq i32* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %13
  br label %27

22:                                               ; preds = %13
  %23 = load i32*, i32** %3, align 8
  %24 = load i32, i32* @X509_FILETYPE_DEFAULT, align 4
  %25 = call i32 @X509_LOOKUP_add_dir(i32* %23, i32* null, i32 %24)
  %26 = load i32*, i32** %2, align 8
  store i32* %26, i32** %1, align 8
  br label %34

27:                                               ; preds = %21, %12, %6
  %28 = load i32*, i32** %2, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %30, label %33

30:                                               ; preds = %27
  %31 = load i32*, i32** %2, align 8
  %32 = call i32 @X509_STORE_free(i32* %31)
  br label %33

33:                                               ; preds = %30, %27
  store i32* null, i32** %1, align 8
  br label %34

34:                                               ; preds = %33, %22
  %35 = load i32*, i32** %1, align 8
  ret i32* %35
}

declare dso_local i32* @X509_STORE_new(...) #1

declare dso_local i32* @X509_STORE_add_lookup(i32*, i32) #1

declare dso_local i32 @X509_LOOKUP_file(...) #1

declare dso_local i32 @X509_LOOKUP_load_file(i32*, i32*, i32) #1

declare dso_local i32 @X509_LOOKUP_hash_dir(...) #1

declare dso_local i32 @X509_LOOKUP_add_dir(i32*, i32*, i32) #1

declare dso_local i32 @X509_STORE_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
