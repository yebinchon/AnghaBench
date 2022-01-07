; ModuleID = '/home/carl/AnghaBench/linux/certs/extr_blacklist.c_is_hash_blacklisted.c'
source_filename = "/home/carl/AnghaBench/linux/certs/extr_blacklist.c_is_hash_blacklisted.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@blacklist_keyring = common dso_local global i32 0, align 4
@key_type_blacklist = common dso_local global i32 0, align 4
@EKEYREJECTED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @is_hash_blacklisted(i32* %0, i64 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = call i64 @strlen(i8* %13)
  store i64 %14, i64* %9, align 8
  store i32 0, i32* %12, align 4
  %15 = load i64, i64* %9, align 8
  %16 = add i64 %15, 1
  %17 = load i64, i64* %6, align 8
  %18 = mul i64 %17, 2
  %19 = add i64 %16, %18
  %20 = add i64 %19, 1
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = call i8* @kmalloc(i64 %20, i32 %21)
  store i8* %22, i8** %10, align 8
  %23 = load i8*, i8** %10, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %3
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %4, align 4
  br label %63

28:                                               ; preds = %3
  %29 = load i8*, i8** %10, align 8
  %30 = load i8*, i8** %7, align 8
  %31 = load i64, i64* %9, align 8
  %32 = call i8* @memcpy(i8* %29, i8* %30, i64 %31)
  store i8* %32, i8** %11, align 8
  %33 = load i64, i64* %9, align 8
  %34 = load i8*, i8** %11, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 %33
  store i8* %35, i8** %11, align 8
  %36 = load i8*, i8** %11, align 8
  %37 = getelementptr inbounds i8, i8* %36, i32 1
  store i8* %37, i8** %11, align 8
  store i8 58, i8* %36, align 1
  %38 = load i8*, i8** %11, align 8
  %39 = load i32*, i32** %5, align 8
  %40 = load i64, i64* %6, align 8
  %41 = call i32 @bin2hex(i8* %38, i32* %39, i64 %40)
  %42 = load i64, i64* %6, align 8
  %43 = mul i64 %42, 2
  %44 = load i8*, i8** %11, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 %43
  store i8* %45, i8** %11, align 8
  %46 = load i8*, i8** %11, align 8
  store i8 0, i8* %46, align 1
  %47 = load i32, i32* @blacklist_keyring, align 4
  %48 = call i32 @make_key_ref(i32 %47, i32 1)
  %49 = load i8*, i8** %10, align 8
  %50 = call i32 @keyring_search(i32 %48, i32* @key_type_blacklist, i8* %49, i32 0)
  store i32 %50, i32* %8, align 4
  %51 = load i32, i32* %8, align 4
  %52 = call i32 @IS_ERR(i32 %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %59, label %54

54:                                               ; preds = %28
  %55 = load i32, i32* %8, align 4
  %56 = call i32 @key_ref_put(i32 %55)
  %57 = load i32, i32* @EKEYREJECTED, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %12, align 4
  br label %59

59:                                               ; preds = %54, %28
  %60 = load i8*, i8** %10, align 8
  %61 = call i32 @kfree(i8* %60)
  %62 = load i32, i32* %12, align 4
  store i32 %62, i32* %4, align 4
  br label %63

63:                                               ; preds = %59, %25
  %64 = load i32, i32* %4, align 4
  ret i32 %64
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i8* @kmalloc(i64, i32) #1

declare dso_local i8* @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @bin2hex(i8*, i32*, i64) #1

declare dso_local i32 @keyring_search(i32, i32*, i8*, i32) #1

declare dso_local i32 @make_key_ref(i32, i32) #1

declare dso_local i32 @IS_ERR(i32) #1

declare dso_local i32 @key_ref_put(i32) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
