; ModuleID = '/home/carl/AnghaBench/libevent/sample/extr_becat.c_ssl_load_key.c'
source_filename = "/home/carl/AnghaBench/libevent/sample/extr_becat.c_ssl_load_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssl_context = type { i32 }

@RSA_F4 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ssl_context*)* @ssl_load_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ssl_load_key(%struct.ssl_context* %0) #0 {
  %2 = alloca %struct.ssl_context*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  store %struct.ssl_context* %0, %struct.ssl_context** %2, align 8
  store i32 1, i32* %3, align 4
  %6 = call i32 (...) @EVP_PKEY_new()
  %7 = load %struct.ssl_context*, %struct.ssl_context** %2, align 8
  %8 = getelementptr inbounds %struct.ssl_context, %struct.ssl_context* %7, i32 0, i32 0
  store i32 %6, i32* %8, align 4
  %9 = call i32* (...) @BN_new()
  store i32* %9, i32** %4, align 8
  %10 = load i32*, i32** %4, align 8
  %11 = load i32, i32* @RSA_F4, align 4
  %12 = call i32 @BN_set_word(i32* %10, i32 %11)
  %13 = icmp ne i32 %12, 1
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  br label %31

15:                                               ; preds = %1
  %16 = call i32* (...) @RSA_new()
  store i32* %16, i32** %5, align 8
  %17 = load i32*, i32** %5, align 8
  %18 = load i32*, i32** %4, align 8
  %19 = call i32 @RSA_generate_key_ex(i32* %17, i32 2048, i32* %18, i32* null)
  %20 = icmp ne i32 %19, 1
  br i1 %20, label %21, label %22

21:                                               ; preds = %15
  br label %31

22:                                               ; preds = %15
  %23 = load %struct.ssl_context*, %struct.ssl_context** %2, align 8
  %24 = getelementptr inbounds %struct.ssl_context, %struct.ssl_context* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32*, i32** %5, align 8
  %27 = call i32 @EVP_PKEY_assign_RSA(i32 %25, i32* %26)
  %28 = icmp ne i32 %27, 1
  br i1 %28, label %29, label %30

29:                                               ; preds = %22
  br label %31

30:                                               ; preds = %22
  store i32 0, i32* %3, align 4
  br label %31

31:                                               ; preds = %30, %29, %21, %14
  %32 = load i32*, i32** %4, align 8
  %33 = call i32 @BN_free(i32* %32)
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

declare dso_local i32 @EVP_PKEY_new(...) #1

declare dso_local i32* @BN_new(...) #1

declare dso_local i32 @BN_set_word(i32*, i32) #1

declare dso_local i32* @RSA_new(...) #1

declare dso_local i32 @RSA_generate_key_ex(i32*, i32, i32*, i32*) #1

declare dso_local i32 @EVP_PKEY_assign_RSA(i32, i32*) #1

declare dso_local i32 @BN_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
