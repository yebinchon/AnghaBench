; ModuleID = '/home/carl/AnghaBench/h2o/lib/handler/configurator/extr_proxy.c_update_ssl_ctx.c'
source_filename = "/home/carl/AnghaBench/h2o/lib/handler/configurator/extr_proxy.c_update_ssl_ctx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@H2O_SESSID_CTX = common dso_local global i32 0, align 4
@H2O_SESSID_CTX_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32**, i32*, i32, i32**)* @update_ssl_ctx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_ssl_ctx(i32** %0, i32* %1, i32 %2, i32** %3) #0 {
  %5 = alloca i32**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  store i32** %0, i32*** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32** %3, i32*** %8, align 8
  %11 = load i32**, i32*** %5, align 8
  %12 = load i32*, i32** %11, align 8
  %13 = icmp ne i32* %12, null
  %14 = zext i1 %13 to i32
  %15 = call i32 @assert(i32 %14)
  %16 = load i32*, i32** %6, align 8
  %17 = icmp eq i32* %16, null
  br i1 %17, label %18, label %22

18:                                               ; preds = %4
  %19 = load i32**, i32*** %5, align 8
  %20 = load i32*, i32** %19, align 8
  %21 = call i32* @SSL_CTX_get_cert_store(i32* %20)
  store i32* %21, i32** %6, align 8
  br label %22

22:                                               ; preds = %18, %4
  %23 = load i32*, i32** %6, align 8
  %24 = call i32 @X509_STORE_up_ref(i32* %23)
  %25 = load i32, i32* %7, align 4
  %26 = icmp eq i32 %25, -1
  br i1 %26, label %27, label %31

27:                                               ; preds = %22
  %28 = load i32**, i32*** %5, align 8
  %29 = load i32*, i32** %28, align 8
  %30 = call i32 @SSL_CTX_get_verify_mode(i32* %29)
  store i32 %30, i32* %7, align 4
  br label %31

31:                                               ; preds = %27, %22
  %32 = load i32**, i32*** %8, align 8
  %33 = icmp eq i32** %32, null
  br i1 %33, label %34, label %49

34:                                               ; preds = %31
  %35 = load i32**, i32*** %5, align 8
  %36 = load i32*, i32** %35, align 8
  %37 = call i32* @h2o_socket_ssl_get_session_cache(i32* %36)
  store i32* %37, i32** %10, align 8
  %38 = load i32*, i32** %10, align 8
  %39 = icmp eq i32* %38, null
  br i1 %39, label %40, label %41

40:                                               ; preds = %34
  br label %47

41:                                               ; preds = %34
  %42 = load i32*, i32** %10, align 8
  %43 = call i32 @h2o_cache_get_capacity(i32* %42)
  %44 = load i32*, i32** %10, align 8
  %45 = call i32 @h2o_cache_get_duration(i32* %44)
  %46 = call i32* @create_ssl_session_cache(i32 %43, i32 %45)
  br label %47

47:                                               ; preds = %41, %40
  %48 = phi i32* [ null, %40 ], [ %46, %41 ]
  store i32* %48, i32** %9, align 8
  br label %52

49:                                               ; preds = %31
  %50 = load i32**, i32*** %8, align 8
  %51 = load i32*, i32** %50, align 8
  store i32* %51, i32** %9, align 8
  br label %52

52:                                               ; preds = %49, %47
  %53 = load i32**, i32*** %5, align 8
  %54 = load i32*, i32** %53, align 8
  %55 = icmp ne i32* %54, null
  br i1 %55, label %56, label %60

56:                                               ; preds = %52
  %57 = load i32**, i32*** %5, align 8
  %58 = load i32*, i32** %57, align 8
  %59 = call i32 @SSL_CTX_free(i32* %58)
  br label %60

60:                                               ; preds = %56, %52
  %61 = call i32* (...) @create_ssl_ctx()
  %62 = load i32**, i32*** %5, align 8
  store i32* %61, i32** %62, align 8
  %63 = load i32**, i32*** %5, align 8
  %64 = load i32*, i32** %63, align 8
  %65 = load i32, i32* @H2O_SESSID_CTX, align 4
  %66 = load i32, i32* @H2O_SESSID_CTX_LEN, align 4
  %67 = call i32 @SSL_CTX_set_session_id_context(i32* %64, i32 %65, i32 %66)
  %68 = load i32**, i32*** %5, align 8
  %69 = load i32*, i32** %68, align 8
  %70 = load i32*, i32** %6, align 8
  %71 = call i32 @SSL_CTX_set_cert_store(i32* %69, i32* %70)
  %72 = load i32**, i32*** %5, align 8
  %73 = load i32*, i32** %72, align 8
  %74 = load i32, i32* %7, align 4
  %75 = call i32 @SSL_CTX_set_verify(i32* %73, i32 %74, i32* null)
  %76 = load i32*, i32** %9, align 8
  %77 = icmp ne i32* %76, null
  br i1 %77, label %78, label %83

78:                                               ; preds = %60
  %79 = load i32**, i32*** %5, align 8
  %80 = load i32*, i32** %79, align 8
  %81 = load i32*, i32** %9, align 8
  %82 = call i32 @h2o_socket_ssl_set_session_cache(i32* %80, i32* %81)
  br label %83

83:                                               ; preds = %78, %60
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32* @SSL_CTX_get_cert_store(i32*) #1

declare dso_local i32 @X509_STORE_up_ref(i32*) #1

declare dso_local i32 @SSL_CTX_get_verify_mode(i32*) #1

declare dso_local i32* @h2o_socket_ssl_get_session_cache(i32*) #1

declare dso_local i32* @create_ssl_session_cache(i32, i32) #1

declare dso_local i32 @h2o_cache_get_capacity(i32*) #1

declare dso_local i32 @h2o_cache_get_duration(i32*) #1

declare dso_local i32 @SSL_CTX_free(i32*) #1

declare dso_local i32* @create_ssl_ctx(...) #1

declare dso_local i32 @SSL_CTX_set_session_id_context(i32*, i32, i32) #1

declare dso_local i32 @SSL_CTX_set_cert_store(i32*, i32*) #1

declare dso_local i32 @SSL_CTX_set_verify(i32*, i32, i32*) #1

declare dso_local i32 @h2o_socket_ssl_set_session_cache(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
