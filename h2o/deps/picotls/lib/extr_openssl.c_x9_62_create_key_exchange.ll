; ModuleID = '/home/carl/AnghaBench/h2o/deps/picotls/lib/extr_openssl.c_x9_62_create_key_exchange.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/picotls/lib/extr_openssl.c_x9_62_create_key_exchange.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }
%struct.st_x9_62_keyex_context_t = type { i32, i32* }

@PTLS_ERROR_LIBRARY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i32**)* @x9_62_create_key_exchange to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @x9_62_create_key_exchange(%struct.TYPE_4__* %0, i32** %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i32**, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.st_x9_62_keyex_context_t*, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  store i32** %1, i32*** %4, align 8
  store i32* null, i32** %5, align 8
  store %struct.st_x9_62_keyex_context_t* null, %struct.st_x9_62_keyex_context_t** %6, align 8
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = trunc i64 %10 to i32
  %12 = call i32* @EC_GROUP_new_by_curve_name(i32 %11)
  store i32* %12, i32** %5, align 8
  %13 = icmp eq i32* %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* @PTLS_ERROR_LIBRARY, align 4
  store i32 %15, i32* %7, align 4
  br label %35

16:                                               ; preds = %2
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %18 = call i32 @x9_62_create_context(%struct.TYPE_4__* %17, %struct.st_x9_62_keyex_context_t** %6)
  store i32 %18, i32* %7, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  br label %35

21:                                               ; preds = %16
  %22 = load i32*, i32** %5, align 8
  %23 = call i32* @ecdh_gerenate_key(i32* %22)
  %24 = load %struct.st_x9_62_keyex_context_t*, %struct.st_x9_62_keyex_context_t** %6, align 8
  %25 = getelementptr inbounds %struct.st_x9_62_keyex_context_t, %struct.st_x9_62_keyex_context_t* %24, i32 0, i32 1
  store i32* %23, i32** %25, align 8
  %26 = icmp eq i32* %23, null
  br i1 %26, label %27, label %29

27:                                               ; preds = %21
  %28 = load i32, i32* @PTLS_ERROR_LIBRARY, align 4
  store i32 %28, i32* %7, align 4
  br label %35

29:                                               ; preds = %21
  %30 = load %struct.st_x9_62_keyex_context_t*, %struct.st_x9_62_keyex_context_t** %6, align 8
  %31 = call i32 @x9_62_setup_pubkey(%struct.st_x9_62_keyex_context_t* %30)
  store i32 %31, i32* %7, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %29
  br label %35

34:                                               ; preds = %29
  store i32 0, i32* %7, align 4
  br label %35

35:                                               ; preds = %34, %33, %27, %20, %14
  %36 = load i32*, i32** %5, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %38, label %41

38:                                               ; preds = %35
  %39 = load i32*, i32** %5, align 8
  %40 = call i32 @EC_GROUP_free(i32* %39)
  br label %41

41:                                               ; preds = %38, %35
  %42 = load i32, i32* %7, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %41
  %45 = load %struct.st_x9_62_keyex_context_t*, %struct.st_x9_62_keyex_context_t** %6, align 8
  %46 = getelementptr inbounds %struct.st_x9_62_keyex_context_t, %struct.st_x9_62_keyex_context_t* %45, i32 0, i32 0
  %47 = load i32**, i32*** %4, align 8
  store i32* %46, i32** %47, align 8
  br label %56

48:                                               ; preds = %41
  %49 = load %struct.st_x9_62_keyex_context_t*, %struct.st_x9_62_keyex_context_t** %6, align 8
  %50 = icmp ne %struct.st_x9_62_keyex_context_t* %49, null
  br i1 %50, label %51, label %54

51:                                               ; preds = %48
  %52 = load %struct.st_x9_62_keyex_context_t*, %struct.st_x9_62_keyex_context_t** %6, align 8
  %53 = call i32 @x9_62_free_context(%struct.st_x9_62_keyex_context_t* %52)
  br label %54

54:                                               ; preds = %51, %48
  %55 = load i32**, i32*** %4, align 8
  store i32* null, i32** %55, align 8
  br label %56

56:                                               ; preds = %54, %44
  %57 = load i32, i32* %7, align 4
  ret i32 %57
}

declare dso_local i32* @EC_GROUP_new_by_curve_name(i32) #1

declare dso_local i32 @x9_62_create_context(%struct.TYPE_4__*, %struct.st_x9_62_keyex_context_t**) #1

declare dso_local i32* @ecdh_gerenate_key(i32*) #1

declare dso_local i32 @x9_62_setup_pubkey(%struct.st_x9_62_keyex_context_t*) #1

declare dso_local i32 @EC_GROUP_free(i32*) #1

declare dso_local i32 @x9_62_free_context(%struct.st_x9_62_keyex_context_t*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
